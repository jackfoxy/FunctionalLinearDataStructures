module VanillaArray
open System

let varArr = seq{1..10} |> Array.ofSeq

let x1 = varArr.[1]
let x2 = varArr.[2]
let x3 = varArr.[3]

let rnd = new System.Random()         //not properly seeded     

let print10Random() = 
    for i = 1 to 10 do
        printfn "%i" varArr.[(rnd.Next 10)]
        ()