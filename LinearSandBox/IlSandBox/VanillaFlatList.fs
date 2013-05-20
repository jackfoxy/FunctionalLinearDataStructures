module VanillaFlatList

open FSharpx.Collections.Experimental

let varFlatList = seq{1..10} |> FlatList.ofSeq

let x1 = varFlatList.[1]
let x2 = varFlatList.[2]
let x3 = varFlatList.[3]

let rnd = new System.Random()         //not properly seeded         

let print10Random() = 
    for i = 1 to 10 do
        printfn "%i" varFlatList.[(rnd.Next 10)]
        ()