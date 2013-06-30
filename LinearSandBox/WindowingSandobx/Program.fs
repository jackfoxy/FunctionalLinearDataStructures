namespace WindowingSandbox

#if INTERACTIVE
#I @"E:\Documents\GitHub\fsharpx\src\FSharpx.Core\bin\Release" ;;
#r "FSharpx.Core.dll" ;;
#r @"E:\Documents\GitHub\FunctionalLinearDataStructures\LinearSandBox\LinearSandBox\bin\Release\LinearSandBox.dll" ;;
#endif

open System
open FSharpx.Collections
open UnfoldingSeq

module console1 =
    [<EntryPoint>]
    let main argv = 
        printfn "%A" argv

        let windowFun windowLength = 
            fun (v : Vector<Vector<Weather>>) t ->
            if v.Last.Length = windowLength 
            then 
                v 
                |> Vector.conj (Vector.empty.Conj(t))
            else 
                Vector.initial v 
                |> Vector.conj (Vector.last v |> Vector.conj t)

        let windowedForecast = 
            Seq.unfold nextState (Sunny, (new Random()), 0L)
            |> Seq.truncate 365 
            |> Seq.fold (windowFun 7) (Vector.empty.Conj Vector.empty<Weather>)

        //removes the last day from a window
        let initialFun =    
            fun (v : Vector<Vector<Weather>>) (t : Vector<Weather>) -> Vector.conj t.Initial v

        let sabbathRespectingForecast =
            windowedForecast
            |> Vector.fold initialFun Vector.empty<Vector<Weather>>

        let startAndEndFun =    
            fun (v : Vector<Weather * Weather>) (t : Vector<Weather>) -> 
            let dQ = t |> Deque.ofSeq 
            v.Conj(dQ.Head, dQ.Last)

        //of course it would have made more sense to do original seq fold to deque, this is just a demo
        let startAndEndForecast =
            windowedForecast
            |> Vector.fold startAndEndFun Vector.empty<Weather * Weather>


        printfn "Hit any key to exit."
        System.Console.ReadKey() |> ignore
        0