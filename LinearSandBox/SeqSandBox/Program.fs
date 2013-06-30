namespace SeqSandBox

#if INTERACTIVE
#I @"E:\Documents\GitHub\fsharpx\src\FSharpx.Core\bin\Release" ;;
#r "FSharpx.Core.dll" ;;
#r @"E:\Documents\GitHub\FunctionalLinearDataStructures\LinearSandBox\LinearSandBox\bin\Release\LinearSandBox.dll" ;;
#r @"E:\Documents\GitHub\FunctionalLinearDataStructures\LinearSandBox\packages\FSharpx.Collections.Experimental.1.8.26\lib\40\FSharpx.Collections.Experimental.dll" ;;
#endif

open FSharpx.Collections.Experimental
open FSharpx.Collections
open UnfoldingSeq
open System

module console1 =
    [<EntryPoint>]
    let main argv = 

        let thisIsTrue = 
            seq {1..10}
            |> Array.ofSeq
            |> Deque.ofSeq
            |> DList.ofSeq
            |> FlatList.ofSeq
            |> Heap.ofSeq false
            |> LazyList.ofSeq 
            |> Queue.ofSeq
            |> RandomAccessList.ofSeq
            |> Vector.ofSeq
            |> List.ofSeq = [1..10]

        printfn "this is %b" thisIsTrue

        printfn "average %f" (seq {1.0..10.0}
                              |> Heap.ofSeq false
                              |> Seq.average)

        printfn "folded %A" (seq {1..10}
                             |> Deque.ofSeq
                             |> Seq.fold (fun state t -> (2 * t)::state) [])

        printfn "mapi %A" (seq {1..10}
                             |> RandomAccessList.ofSeq
                             |> Seq.mapi (fun i t -> i * t ) )

        printfn "reduce %A" (seq {1..10}
                             |> Vector.ofSeq
                             |> Seq.reduce (fun acc t -> acc * t ) )


        let forecast = 
            Seq.unfold nextState (Sunny, (new Random()), 0L)
            |> Seq.truncate 365 
            |> List.ofSeq

        match forecast with
        | Rainy::tail -> printfn "tomorrow will be rainy"
        | _::tail ->    
            match (LazyList.ofSeq tail) with
            | LazyList.Nil -> printfn "only 1 day in the forecast"
            | LazyList.Cons(Rainy, tail) -> printfn "the day after tomorrow will be rainy"
            | LazyList.Cons(_, tail) -> 
                match (Deque.ofSeq tail) with
                | Deque.Nil -> printfn "only 2 days in the forecast"
                | Deque.Cons(Rainy, Deque.Conj(initial, Rainy)) -> printfn "3rd and last day of year rainy"
                | x -> 
                    match (DList.ofSeq x) with
                    //| DList.Nil -> printfn "only 3 days in the forecast"    //strange bug that this line will not build
                    | DList.Cons(_, DList.Cons(Rainy, _)) -> printfn "4th day to be rainy"
                    | x -> 
                        match (Queue.ofSeq x) with
                        | Queue.Nil -> printfn "only 4 days in the forecast"
                        | Queue.Cons(_, tail) -> 
                            match (RandomAccessList.ofSeq tail) with
                            | RandomAccessList.Nil -> printfn "only 5 days in the forecast"
                            | RandomAccessList.Cons(_, tail) -> 
                                match (Vector.ofSeq tail) with
                                | Vector.Nil -> printfn "only 6 days in the forecast"
                                | Vector.Conj(initial, lastDay) -> printfn "the last day will be %A" lastDay

            
        | _ -> printfn "don't know"

//see UnfoldingSeq.fs for Seq.unfold samples

        let NextState (today, (random:Random), i) =
            let nextDay = nextDayWeather today (random.NextDouble())
            printfn "day %i is forecast %A" i nextDay
            Some (nextDay, (nextDay, random, (i + 1L)))

        //accessing subsequent seq items always results in threading through previous items
        let nextItem i =
            printfn "item %i"  i
            i

        let nonUnfoldedSeq = 
            seq { 
            for i = 1 to 10 do
                yield (nextItem i)
                }

        let nonUnfoldedList = 
            nonUnfoldedSeq
            |> Seq.skip 2
            |> Seq.take 2
            |> List.ofSeq

        printfn "%A" nonUnfoldedList

        printfn "Hit any key to exit."
        System.Console.ReadKey() |> ignore
        0