namespace IlSandBox

module console1 =
    [<EntryPoint>]
    let main argv = 

        printfn "%s" "printing from vanilla array"

        printfn "%i" VanillaArray.x1
        printfn "%i" VanillaArray.x2
        printfn "%i" VanillaArray.x3
        VanillaArray.print10Random()

        printfn "%s" ""
        printfn "%s" "printing from vanilla flatlist"

        printfn "%i" VanillaFlatList.x1
        printfn "%i" VanillaFlatList.x2
        printfn "%i" VanillaFlatList.x3
        VanillaFlatList.print10Random()

        printfn "Hit any key to exit."
        System.Console.ReadKey() |> ignore
        0