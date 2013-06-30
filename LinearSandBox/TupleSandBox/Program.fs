namespace TupleSandBox

module console1 =
    [<EntryPoint>]
    let main argv = 
        printfn "%A" argv

        //explore with Telerik Just Decompile or ILSpy

        printfn "%s" "printing Point Record"
        printfn "%A" RecordsAreNamedTuples.myPointRec

        printfn "%s" "printing Point Tuples"
        printfn "%A" RecordsAreNamedTuples.myPointTuple
        printfn "%A" RecordsAreNamedTuples.myPointTuple2

        printfn "x coordinate of point tuple is %i" (RecordsAreNamedTuples.tupleX RecordsAreNamedTuples.myPointTuple)
        printfn "y coordinate of point tuple is %i" (RecordsAreNamedTuples.tupleY RecordsAreNamedTuples.myPointTuple)
        printfn "z coordinate of point tuple is %i" (RecordsAreNamedTuples.tupleZ RecordsAreNamedTuples.myPointTuple)

        printfn "Hit any key to exit."
        System.Console.ReadKey() |> ignore
        0
