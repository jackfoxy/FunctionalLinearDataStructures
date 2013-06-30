namespace MultiwayTreeSandbox

#if INTERACTIVE
#I @"E:\Documents\GitHub\fsharpx\src\FSharpx.Core\bin\Release" ;;
#r "FSharpx.Core.dll" ;;
#r @"E:\Documents\GitHub\FunctionalLinearDataStructures\LinearSandBox\LinearSandBox\bin\Release\LinearSandBox.dll" ;;
#endif

open System
open FSharpx.Collections
open UnfoldingSeq
open MultiwayTreeSandbox

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

        let myRootFunc (v: Vector<Weather>) : Weather = v.[0]

        MultiwayTree.forestFromSeq windowedForecast myRootFunc
        |> printfn "%A" 

        MultiwayTree.forestFromSeq windowedForecast myRootFunc
        |> MultiwayTree.breadth1stForest 
        |> printfn "%A" 

        printfn "Hit any key to exit."
        System.Console.ReadKey() |> ignore
        0