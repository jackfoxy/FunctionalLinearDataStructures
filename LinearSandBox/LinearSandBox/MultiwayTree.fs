namespace MultiwayTreeSandbox

open FSharpx
open FSharpx.Collections
open System
open System.Linq

/// Multi-way tree, also known as rose tree.
/// This RoseTree uses a Vector for the children RoseTree forest.
/// Adapted from @mausch F# adaptation of Experimental.RoseTree.
// Ported from http://hackage.haskell.org/packages/archive/containers/latest/doc/html/src/Data-Tree.html
[<CustomEquality; NoComparison>]
type 'a MultiwayTree = { Root: 'a; Children: 'a MultiwayForest }
    with
    override x.Equals y = 
        match y with
        | :? MultiwayTree<'a> as y ->
            (x :> _ IEquatable).Equals y
        | _ -> false
    override x.GetHashCode() = 
        391
        + (box x.Root).GetHashCode() * 23
        + x.Children.GetHashCode()
    interface IEquatable<'a MultiwayTree> with
        member x.Equals y = 
            obj.Equals(x.Root, y.Root) && (x.Children :> _ seq).SequenceEqual y.Children       

and 'a MultiwayForest = 'a MultiwayTree Vector

[<CompilationRepresentation(CompilationRepresentationFlags.ModuleSuffix)>]
module MultiwayTree =

    let inline create root children = { Root = root; Children = children }

    let inline singleton x = create x Vector.empty

    let inline forestFromSeq (s : #seq<#seq<_>>) (f : #seq<'a> -> 'a) =
        let rec loop acc l =
            match l with
            | [] -> acc
            | head::tail ->  
                let forest = Seq.fold (fun s t -> Vector.conj(singleton t) s) Vector.empty<_> head
                loop (Vector.conj (create (f head) forest) acc) tail

        loop Vector.empty<MultiwayTree<_>> (List.ofSeq s)

    let inline breadth1stForest forest = 
        let rec loop acc dl =
            match dl with
            | DList.Nil -> acc
            | DList.Cons(head, tail) -> loop (Queue.conj head.Root acc) (DList.append tail (DList.ofSeq head.Children))

        loop Queue.empty (DList.ofSeq forest)

    let rec map f (x: _ MultiwayTree) = 
        { MultiwayTree.Root = f x.Root
          Children = Vector.map (map f) x.Children }

    let rec ap x f =
        { MultiwayTree.Root = f.Root x.Root
          Children = 
            let a = Vector.map (map f.Root) x.Children
            let b = Vector.map (fun c -> ap x c) f.Children
            Vector.append a b }

    let inline lift2 f a b = singleton f |> ap a |> ap b

    let rec bind f x =
        let a = f x.Root
        { MultiwayTree.Root = a.Root
          Children = Vector.append a.Children (Vector.map (bind f) x.Children) }

    let rec preOrder (x: _ MultiwayTree) =
        seq {
            yield x.Root
            yield! Seq.collect preOrder x.Children
        }

    let rec postOrder (x: _ MultiwayTree) =
        seq {
            yield! Seq.collect postOrder x.Children
            yield x.Root
        }

    let rec unfold f seed =
        let root, bs = f seed
        create root (unfoldForest f bs)

    and unfoldForest f =
        Vector.map (unfold f)

    let rec foldMap (monoid: _ Monoid) f (tree: _ MultiwayTree) =
        let inline (++) a b = monoid.Combine(a,b)
        f tree.Root ++ Seq.foldMap monoid (foldMap monoid f) tree.Children
