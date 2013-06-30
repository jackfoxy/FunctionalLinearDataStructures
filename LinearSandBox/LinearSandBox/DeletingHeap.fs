namespace DeletingHeapSandbox

open FSharpx.Collections
open System.Collections
open System.Collections.Generic

type DeletingHeap<'T when 'T : comparison>(isDescending : bool, posHeap : Heap<'T>, negHeap : Heap<'T>) =
    
    member internal this.heapPos = posHeap
    member internal this.heapNeg = negHeap

    static member internal ofSeq (isDescending: bool) (s:seq<'T>) : DeletingHeap<'T> = 
        DeletingHeap(isDescending, (Heap.ofSeq isDescending s), (Heap.empty<'T> isDescending))

    static member internal maintainInvariant (isDescending: bool) (pHeap : Heap<'T>) (nHeap : Heap<'T>) =
        let rec loop (pH : Heap<'T>) (nH : Heap<'T>) =
            if pH.IsEmpty then DeletingHeap(isDescending, (Heap.empty<'T> isDescending), (Heap.empty<'T> isDescending))
            else
            if nH.IsEmpty then DeletingHeap(isDescending, pH, nH)
            else
            match pH.Head with
            | h when h = nH.Head -> loop (pH.Tail()) (nH.Tail())
            | h when h < nH.Head -> 
                if isDescending then  loop pH (nH.Tail())
                else  DeletingHeap(isDescending, pH, nH)
            | _ -> 
                if isDescending then DeletingHeap(isDescending, pH, nH)
                else loop pH (nH.Tail())

        loop pHeap nHeap
        
    ///O (log n). Future deletes (inserted deletes for which there is no corresponding value in the current heap) 
    ///drop off from subsequent generations when head passes the internal negative heap head. Each delete insert deletes
    ///one occurence of value.
    member this.Delete x = 
        match posHeap.Head with
        | h when h = x -> this.Tail()
        | h when h < x -> 
            if isDescending then this
            else DeletingHeap(isDescending, posHeap, (negHeap.Insert x) )
        | _ -> 
            if isDescending then DeletingHeap(isDescending, posHeap, (negHeap.Insert x) )
            else this

    member this.Head = posHeap.Head

    member this.TryHead = posHeap.TryHead
        
    member this.Insert x  = DeletingHeap(isDescending, (posHeap.Insert x), negHeap)
        
    member this.IsEmpty = posHeap.IsEmpty
        
    member this.IsDescending = posHeap.IsDescending

    member this.Merge (xs : DeletingHeap<'T>) = DeletingHeap(isDescending, (posHeap.Merge xs.heapPos), (negHeap.Merge xs.heapNeg))
       
    member this.TryMerge (xs : DeletingHeap<'T>) = 
        if isDescending = xs.IsDescending then Some(DeletingHeap(isDescending, (posHeap.Merge xs.heapPos), (negHeap.Merge xs.heapNeg)))
        else None

    member this.Rev() = DeletingHeap.maintainInvariant (not isDescending) (posHeap.Rev()) (negHeap.Rev())
        
    member this.Tail() = DeletingHeap.maintainInvariant isDescending (posHeap.Tail()) negHeap

    member this.TryTail() = 
        if posHeap.IsEmpty then None
        else Some(this.Tail())
       
    member this.Uncons() = 
        if posHeap.IsEmpty then invalidArg "DeletingHeap" "DeletingHeap is empty"
        else this.Head, (this.Tail())
        
    member this.TryUncons() = 
        if posHeap.IsEmpty then None
        else Some (this.Head, (this.Tail()))
        
    interface IEnumerable<'T> with

        member this.GetEnumerator() = 
            let e = 
                let posList = posHeap |> List.ofSeq |> List.sort
                let negList = negHeap |> List.ofSeq |> List.sort

                let foldFun = 
                    fun ((acc, neg)  : 'T list * 'T list) (t : 'T) ->
                    if neg.IsEmpty then t::acc, neg
                    else 
                        let rec loop (nL : list<'T>) =
                            if nL.IsEmpty then t::acc, nL
                            else
                            match t with
                            | h when h = nL.Head -> acc, nL.Tail
                            | h when h < nL.Head -> h::acc, nL
                            | h -> loop nL.Tail

                        loop neg

                let x, _ = 
                    if negList.IsEmpty then (posList |> List.rev), []
                    else List.fold foldFun ([], negList) posList

                if isDescending
                then List.toSeq x
                else List.rev x |> List.toSeq

            e.GetEnumerator()

        member this.GetEnumerator() = (this :> _ seq).GetEnumerator() :> IEnumerator

[<CompilationRepresentation(CompilationRepresentationFlags.ModuleSuffix)>]
module DeletingHeap =   
    //pattern discriminator

    let (|Cons|Nil|) (h: DeletingHeap<'T>) = match h.TryUncons() with Some(a,b) -> Cons(a,b) | None -> Nil
  
    let empty<'T when 'T : comparison> (isDescending: bool) = DeletingHeap(isDescending, (Heap.empty<'T> isDescending), (Heap.empty<'T> isDescending))

    let inline head (xs: DeletingHeap<'T>)  = xs.Head

    let inline tryHead (xs: DeletingHeap<'T>)  = xs.TryHead

    let inline insert x (xs: DeletingHeap<'T>) = xs.Insert x   

    let inline isEmpty (xs: DeletingHeap<'T>) = xs.IsEmpty

    let inline isDescending (xs: DeletingHeap<'T>) = xs.IsDescending

    let inline length (xs: DeletingHeap<'T>) = Seq.length xs 

    let inline merge (xs: DeletingHeap<'T>) (ys: DeletingHeap<'T>) = xs.Merge ys

    let inline tryMerge (xs: DeletingHeap<'T>) (ys: DeletingHeap<'T>) = xs.TryMerge ys

    let ofSeq isDescending s  = DeletingHeap<'T>.ofSeq isDescending s 
    
    let inline rev (xs: DeletingHeap<'T>) = xs.Rev()

    let inline tail (xs: DeletingHeap<'T>) = xs.Tail()

    let inline tryTail (xs: DeletingHeap<'T>) = xs.TryTail()

    let inline uncons (xs: DeletingHeap<'T>) = xs.Uncons()

    let inline tryUncons (xs: DeletingHeap<'T>) = xs.TryUncons()