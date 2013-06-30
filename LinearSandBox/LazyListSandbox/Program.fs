namespace LazyListSandBox

#if INTERACTIVE
#I @"E:\Documents\GitHub\FunctionalLinearDataStructures\LinearSandBox\packages\FSharpx.Core.1.8.26\lib\40" ;;
#r "FSharpx.Core.dll" ;;
#r @"E:\Documents\GitHub\FunctionalLinearDataStructures\LinearSandBox\LinearSandBox\bin\Release\LinearSandBox.dll" ;;
#endif

open System
open FSharpx.Collections
open UnfoldingSeq

module console1 =
    [<EntryPoint>]
    let main argv = 
        
        let lazyWeatherList =
            LazyList.unfold nextState (Sunny, (new Random()), 0L)

        //problem resolved: probabilistic sequences will be consistent
        printfn "%A" (LazyList.take 3 lazyWeatherList)
        printfn "%A" (LazyList.take 4 lazyWeatherList)

        let observedWeatherList = LazyList.ofList [Sunny; Sunny; Cloudy; Cloudy; Rainy;]

        //O(1) append
        let combinedWeatherList = LazyList.append observedWeatherList lazyWeatherList

        printfn "%A" (LazyList.skip 4 combinedWeatherList |> LazyList.take 3)


        //accessing subsequent items always results in threading through previous items
        //...but I have not (yet) evaluated this version of LazyList:
        //https://github.com/jack-pappas/ExtCore/blob/master/ExtCore/Collections.LazyList.fs

        let nextItem i =
            printfn "item %i"  i
            i

        //whether constructing
        let nonUnfoldedLLCons = 
            let rec loop acc dec =
                if dec = 0 then acc
                else loop (LazyList.cons (nextItem dec) acc) (dec - 1)

            loop (LazyList.empty) 10
            
        //...or loading from sequence
        let nonUnfoldedLL = 
            LazyList.ofSeq (seq { 
                                for i = 1 to 10 do
                                    yield (nextItem i)
                                    })

        //at this point even the skipped items will evaluate
        let nonUnfoldedList = 
            nonUnfoldedLL
            |> LazyList.skip 2
            |> LazyList.take 2
            |> List.ofSeq

        printfn "%A" nonUnfoldedList

        printfn "Hit any key to exit."
        System.Console.ReadKey() |> ignore
        0
