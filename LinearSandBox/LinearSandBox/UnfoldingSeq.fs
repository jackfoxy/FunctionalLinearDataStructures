module UnfoldingSeq

#if INTERACTIVE
#I @"E:\Documents\GitHub\FunctionalLinearDataStructures\LinearSandBox\packages\FSharpx.Core.1.8.26\lib\40" ;;
#r "FSharpx.Core.dll" ;;
#endif
    
open System
open FSharpx.Collections

type Weather = Sunny | Cloudy | Rainy

let nextDayWeather today probability =
    match (today, probability) with
    | Sunny,  p when p < 0.05 -> Rainy
    | Sunny,  p when p < 0.40 -> Cloudy
    | Sunny, _                -> Sunny
    | Cloudy, p when p < 0.30 -> Rainy
    | Cloudy, p when p < 0.50 -> Sunny
    | Cloudy, _               -> Cloudy
    | Rainy,  p when p < 0.15 -> Sunny
    | Rainy,  p when p < 0.75 -> Cloudy
    | Rainy, _                -> Rainy
    
//the counter is purely for demonstration purposes
let nextState (today, (random:Random), i) =
    let nextDay = nextDayWeather today (random.NextDouble())
    printfn "day %i is forecast %A" i nextDay
    Some (nextDay, (nextDay, random, (i + 1L)))

let forecastDays = Seq.unfold nextState (Sunny, (new Random()), 0L)

//requires instantiating to real structure
printfn "%A" (Seq.take 5 forecastDays |> Seq.toList)

//requires exectuing intervening elements when
printfn "%A" (Seq.skip 5 forecastDays |> Seq.take 5 |> Seq.toList)

//don't try to take the whole infinite (well, except for the fact we have a 64-bit counter) sequence or its length
printfn "don't try this at home! %i" (Seq.length forecastDays)
printfn "don't try this at home either! %A" (forecastDays |> List.ofSeq)

//problem: probabilistic sequences will be inconsistent
printfn "%A" (Seq.take 5 forecastDays |> Seq.toList)
printfn "%A" (Seq.take 7 forecastDays |> Seq.toList)


