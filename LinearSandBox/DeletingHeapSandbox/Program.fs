namespace DeletingHeapSandbox

module console1 =
    [<EntryPoint>]
    let main argv = 
        printfn "%A" argv

        printfn "See LinearSandBoxTest for delete examples."
        printfn "Use NUnit 2.6.2 test runner and break into code by attaching to process 'nunit-agent.exe'."
        printfn ""
        printfn "Hit any key to exit."
        System.Console.ReadKey() |> ignore
        0