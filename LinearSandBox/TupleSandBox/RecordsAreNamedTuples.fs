module RecordsAreNamedTuples

type pointTuple = | Point of int * int * int

let tupleX = function | Point(x, _, _) -> x
let tupleY = function | Point(_, y, _) -> y
let tupleZ = function | Point(_, _, z) -> z

let myPointTuple : pointTuple = Point(1, 2, 3)
let myPointTuple2 : pointTuple = Point(7, 8, 9)

type pointRec = {X:int; Y:int; Z:int}

let myPointRec = {X = 1; Y = 2; Z = 3}

let recX p = p.X
let recY p = p.Y
let recZ p = p.Z

let myList = [4,5,6]