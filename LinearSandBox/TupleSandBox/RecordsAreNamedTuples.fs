module RecordsAreNamedTuples

type pointRec = {X:int; Y:int; Z:int}

type pointTuple = |Point of int * int * int

let myPointRec = {X = 1; Y = 2; Z = 3}

let myPointTuple : pointTuple = Point(1, 2, 3)
let myPointTuple2 : pointTuple = Point(7, 8, 9)


let myList = [4,5,6]