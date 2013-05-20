
namespace ds_benchmark

module console1 =
    [<EntryPoint>]
    let main argv = 
        printfn "%A" argv

        printfn "%s" "printing Point Record"
        printfn "%A" RecordsAreNamedTuples.myPointRec

        printfn "%s" "printing Point Tuples"
        printfn "%A" RecordsAreNamedTuples.myPointTuple
        printfn "%A" RecordsAreNamedTuples.myPointTuple2

        printfn "Hit any key to exit."
        System.Console.ReadKey() |> ignore
        0
