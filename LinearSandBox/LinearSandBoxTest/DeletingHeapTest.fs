module DeletingHeapTest

open FSharpx
open FSharpx.Collections
open DeletingHeapSandbox
open DeletingHeapSandbox.DeletingHeap
open FsCheckProperties
open NUnit.Framework
open FsCheck
open FsCheck.NUnit
open FsUnit


//testing lifted from FSharpx

let insertThruList l h =
    List.fold (fun (h' : DeletingHeap<'a>) x -> h'.Insert  x  ) h l

let maxHeapIntGen =
    gen {   let! n = Gen.length2thru12
            let! n2 = Gen.length1thru12
            let! x =  Gen.listInt n
            let! y =  Gen.listInt n2
            return ( (DeletingHeap.ofSeq true x |> insertThruList y), ((x @ y) |> List.sort |> List.rev) ) }

let maxHeapIntOfSeqGen =
    gen {   let! n = Gen.length1thru12
            let! x =  Gen.listInt n
            return ( (DeletingHeap.ofSeq true x), (x |> List.sort |> List.rev) ) }

let maxHeapIntInsertGen =
    gen {   let! n = Gen.length1thru12
            let! x =  Gen.listInt n
            return ( (DeletingHeap.empty true |> insertThruList x), (x |> List.sort |> List.rev) ) }

let maxHeapStringGen =
    gen {   let! n = Gen.length1thru12
            let! n2 = Gen.length2thru12
            let! x =  Gen.listString n
            let! y =  Gen.listString n2
            return ( (DeletingHeap.ofSeq true x |> insertThruList y), ((x @ y) |> List.sort |> List.rev) ) }

let minHeapIntGen =
    gen {   let! n = Gen.length2thru12
            let! n2 = Gen.length1thru12
            let! x =  Gen.listInt n
            let! y =  Gen.listInt n2
            return ( (DeletingHeap.ofSeq false x |> insertThruList y), ((x @ y) |> List.sort) ) }

let minHeapIntOfSeqGen =
    gen {   let! n = Gen.length1thru12
            let! x =  Gen.listInt n
            return ( (DeletingHeap.ofSeq false x), (x |> List.sort) ) }

let minHeapIntInsertGen =
    gen {   let! n = Gen.length1thru12
            let! x =  Gen.listInt n
            return ( (DeletingHeap.empty false |> insertThruList x), (x |> List.sort) ) }

let minHeapStringGen =
    gen {   let! n = Gen.length1thru12
            let! n2 = Gen.length2thru12
            let! x =  Gen.listString n
            let! y =  Gen.listString n2
            return ( (DeletingHeap.ofSeq false x |> insertThruList y), ((x @ y) |> List.sort) ) }

// NUnit TestCaseSource does not understand array of tuples at runtime
let intGens start =
    let v = Array.create 6 (box (maxHeapIntGen, "max Heap int"))
    v.[1] <- box ((maxHeapIntOfSeqGen  |> Gen.suchThat (fun (q, l) -> l.Length >= start)), "max Heap OfSeq")
    v.[2] <- box ((maxHeapIntInsertGen  |> Gen.suchThat (fun (q, l) -> l.Length >= start)), "max Heap from Insert")
    v.[3] <- box (minHeapIntGen , "min Heap int")
    v.[4] <- box ((minHeapIntOfSeqGen  |> Gen.suchThat (fun (q, l) -> l.Length >= start)), "min Heap OfSeq")
    v.[5] <- box ((minHeapIntInsertGen  |> Gen.suchThat (fun (q, l) -> l.Length >= start)), "min Heap from Insert")
    v

let stringGens =
    let v = Array.create 2 (box (maxHeapStringGen, "max Heap string"))
    v.[1] <- box (minHeapStringGen, "min Heap string")
    v

let intGensStart1 =
    intGens 1  //this will accept all

let intGensStart2 =
    intGens 2 // this will accept 11 out of 12

[<Test>]
let ``cons pattern discriminator``() =
    let h = ofSeq true ["f";"e";"d";"c";"b";"a"]
    let h1, t1 = uncons h 

    let h2, t2 = 
        match t1 with
        | Cons(h, t) -> h, t
        | _ ->  "x", t1

    ((h2 = "e") && ((length t2) = 4)) |> should equal true

[<Test>]
let ``cons pattern discriminator 2``() =
    let h = ofSeq true ["f";"e";"d";"c";"b";"a"]

    let t2 = 
        match h with
        | Cons("f", Cons(_, t)) -> t
        | _ ->  h

    let h1, t3 = uncons t2 

    ((h1 = "d") && ((length t2) = 4)) |> should equal true



[<Test>]
let ``delete: ascending``() =
    let h = ofSeq false ["f";"e";"d";"c";"b";"a"]
    h.Delete "e" |> List.ofSeq |> should equal ["a";"b";"c";"d";"f";]

[<Test>]
let ``delete: ascending deletes only once, test 1``() =
    let h = ofSeq false ["f";"e";"d";"c";"b";"a"]
    (h.Insert "b" ).Delete "b" |> List.ofSeq |> should equal ["a";"b";"c";"d";"e";"f"]

[<Test>]
let ``delete: ascending deletes only once, test 2``() =
    let h = ofSeq false ["f";"e";"d";"c";"b";"a"]
    (((h.Insert "b" ).Delete "b").Tail()).Tail() |> List.ofSeq |> should equal ["c";"d";"e";"f"]



[<Test>]
let ``delete: ascending delete twice, test 1``() =
    let h = ofSeq false ["f";"e";"d";"c";"b";"a"]
    ((h.Insert "b" ).Delete "b").Delete "b" |> List.ofSeq |> should equal ["a";"c";"d";"e";"f"]

[<Test>]
let ``delete: ascending deletes twice, test 2``() =
    let h = ofSeq false ["f";"e";"d";"c";"b";"a"]
    ((((h.Insert "b" ).Delete "b").Delete "b").Tail()).Tail() |> List.ofSeq |> should equal ["d";"e";"f"]



[<Test>]
let ``delete: descending``() =
    let h = ofSeq true ["f";"e";"d";"c";"b";"a"]
    h.Delete "e" |> List.ofSeq |> should equal ["f";"d";"c";"b";"a"]

[<Test>]
let ``delete: descending after last``() =
    let h = ofSeq true ["g";"f";"e";"d";"c";"b"]
    h.Delete "a" |> List.ofSeq |> should equal ["g";"f";"e";"d";"c";"b"]

[<Test>]
let ``delete: descending before first``() =
    let h = ofSeq true ["f";"e";"d";"c";"b";"a"]
    h.Delete "g" |> List.ofSeq |> should equal ["f";"e";"d";"c";"b";"a"]

[<Test>]
let ``delete: descending down to empty``() =
    let h = ofSeq true ["f";"d";"a"]
    ((((h.Delete "f").Delete "a").Delete "g").Delete "d").IsEmpty |> should equal true

[<Test>]
let ``delete: descending first``() =
    let h = ofSeq true ["f";"e";"d";"c";"b";"a"]
    h.Delete "f" |> List.ofSeq |> should equal ["e";"d";"c";"b";"a"]

[<Test>]
let ``delete: descending first, last, before first, after last``() =
    let h = ofSeq true ["f";"e";"d";"c";"b";"a"]
    (((h.Delete "f").Delete "a").Delete "g").Delete "" |> List.ofSeq |> should equal ["e";"d";"c";"b"]

[<Test>]
let ``delete: descending last``() =
    let h = ofSeq true ["f";"e";"d";"c";"b";"a"]
    h.Delete "a" |> List.ofSeq |> should equal ["f";"e";"d";"c";"b"]




[<Test>]
let ``empty list should be empty``() = 
    (DeletingHeap.empty true).IsEmpty |> should equal true

[<Test>]
[<TestCaseSource("intGensStart2")>]
let ``head should return``(x : obj) =
    let genAndName = unbox x 
    fsCheck (snd genAndName) (Prop.forAll (Arb.fromGen (fst genAndName)) (fun ((h : DeletingHeap<int>), (l : int list)) ->    
                                                                            (h.Head = l.Head) ))
[<Test>]
let ``insert works``() =
    (((DeletingHeap.empty true).Insert 1).Insert 2).IsEmpty |> should equal false

[<Test>]
let ``seq enumerate matches build list``() =

    fsCheck "maxHeap" (Prop.forAll (Arb.fromGen maxHeapIntGen) 
        (fun (h, l) -> h |> List.ofSeq = l |> classifyCollect h (length h)))

    fsCheck "minHeap" (Prop.forAll (Arb.fromGen minHeapIntGen) 
        (fun (h, l) -> h |> List.ofSeq = l |> classifyCollect h (length h)))

[<Test>]
let ``rev works``() =

    let h = empty true
    h |> rev |> isEmpty |> should equal true
    let h' = empty false
    h' |> rev |> isEmpty |> should equal true

    fsCheck "isDescending" (Prop.forAll (Arb.fromGen maxHeapIntGen) 
        (fun (h, l) -> h |> rev |> List.ofSeq = (h |> List.ofSeq |> List.rev) ))

    fsCheck "ascending" (Prop.forAll (Arb.fromGen minHeapIntGen) 
        (fun (h, l) -> h |> rev |> List.ofSeq = (h |> List.ofSeq |> List.rev) ))

[<Test>]
let ``length of empty is 0``() =
    length (DeletingHeap.empty true) |> should equal 0

[<Test>]
[<TestCaseSource("intGensStart1")>]
let ``seq enumerate matches build list int``(x : obj) =
    let genAndName = unbox x
    fsCheck (snd genAndName) (Prop.forAll (Arb.fromGen (fst genAndName)) (fun (h : DeletingHeap<int>, l) -> h |> Seq.toList = l ))

[<Test>]
[<TestCaseSource("stringGens")>]
let ``seq enumerate matches build list string``(x : obj) =
    let genAndName = unbox x
    fsCheck (snd genAndName) (Prop.forAll (Arb.fromGen (fst genAndName)) (fun (h : DeletingHeap<string>, l) -> h |> Seq.toList = l ))

[<Test>]
[<TestCaseSource("intGensStart2")>]
let ``tail should return``(x : obj) =
    let genAndName = unbox x 
    fsCheck (snd genAndName) (Prop.forAll (Arb.fromGen (fst genAndName)) (fun ((h : DeletingHeap<int>), (l : int list)) ->    
                                                                            let tl = h.Tail()
                                                                            let tlHead =
                                                                                if ((length tl) > 0) then (tl.Head = l.Item(1))
                                                                                else true
                                                                            (tlHead && ((length tl) = (l.Length - 1))) ))

[<Test>]
let ``tryHead on empty should return None``() =
    (DeletingHeap.empty true).TryHead |> should equal None

[<Test>]
[<TestCaseSource("intGensStart2")>]
let ``tryHead should return``(x : obj) =
    let genAndName = unbox x 
    fsCheck (snd genAndName) (Prop.forAll (Arb.fromGen (fst genAndName)) (fun ((h : DeletingHeap<int>), (l : int list)) ->    
                                                                            (h.TryHead.Value = l.Head) ))

[<Test>]
let ``tryTail on empty should return None``() =
    (DeletingHeap.empty true).TryTail() |> should equal None

[<Test>]
let ``tryTail on len 1 should return Some empty``() =
    let h = DeletingHeap.empty true |> insert 1 |> tryTail
    h.Value |> isEmpty |> should equal true

[<Test>]
let ``tryMerge max and mis should be None``() =
    let h1 = ofSeq true ["f";"e";"d";"c";"b";"a"]
    let h2 = ofSeq false ["t";"u";"v";"w";"x";"y";"z"]

    tryMerge h1 h2 |> should equal None

[<Test>]
[<TestCaseSource("intGensStart2")>]
let ``tryUncons 1 element``(x : obj) =
    let genAndName = unbox x 
    fsCheck (snd genAndName) (Prop.forAll (Arb.fromGen (fst genAndName)) (fun ((h : DeletingHeap<int>), (l : int list)) ->    
                                                                            let x, tl = h.TryUncons().Value
                                                                            ((x = l.Head) && ((length tl) = (l.Length - 1))) ))

[<Test>]
let ``tryUncons empty``() =
    (DeletingHeap.empty true).TryUncons() |> should equal None

[<Test>]
[<TestCaseSource("intGensStart2")>]
let ``uncons 1 element``(x : obj) =
    let genAndName = unbox x 
    fsCheck (snd genAndName) (Prop.forAll (Arb.fromGen (fst genAndName)) (fun ((h : DeletingHeap<int>), (l : int list)) ->    
                                                                            let x, tl = h.Uncons()
                                                                            ((x = l.Head) && ((length tl) = (l.Length - 1))) ))

type HeapGen =
    static member Heap() =
        let rec heapGen() = 
            gen {
                let! n = Gen.length1thru100
                let! xs =  Gen.listInt n
                return DeletingHeap.ofSeq true xs
            }
        Arb.fromGen (heapGen())

let registerGen = lazy (Arb.register<HeapGen>() |> ignore)
