##Demo code from Functional Linear Data Structures in FSharp
##Lambda Jam Chicago, July 2013

##DeletingHeap Sandbox

Implementation of deleting heap from excercise in Okasaki's book. Future deletes (inserted deletes for which there is no corresponding value in the current heap) drop off from subsequent generations when head passes the internal negative heap head.

Excercise for the reader: implement deleting heap that keeps future deletes live for all subsequent generations while keeping delete, rev, and tail O(log n).

##IL Sandbox

Step 0 -- create aliases 

>set-alias fsc "C:\Program Files (x86)\Microsoft SDKs\F#\3.0\Framework\v4.0\fsc.exe"<br/>
>set-alias ildasm "C:\Program Files (x86)\Microsoft SDKs\Windows\v7.0A\Bin\x64\ildasm.exe"<br/>
>set-alias ilasm64 C:\Windows\Microsoft.NET\Framework64\v4.0.30319\ilasm.exe<br/>

Step 1 -- disassemble the ilSandBox project executable into IL

>cd [LinearSandBox path]\bin\Release<br/>
>ildasm /out=ilSandBox.il ilSandBox.exe

Step 2 -- you will need a signature file 

>cd [LinearSandBox path]<br/>
>fsc --sig:IlSandBox\obj\Release\FSharpSignatureData.IlSandBox -r:packages\FSharpx.Core.1.8.22\lib\40\FSharpx.Core.dll -r:packages\FSharpx.Collections.Experimental.1.8.22\lib\40\FSharpx.Collections.Experimental.dll IlSandBox\VanillaArray.fs IlSandBox\VanillaFlatList.fs IlSandBox\Program.fs 

Step 3 -- copy FSharpSignatureData.IlSandBox, FSharpOptimizationData.IlSandBox, and required DLLs to another folder

>cd [LinearSandBox path]\IlSandBox\IlSrc<br/>
>ilasm64 iLSandBox.il<br/>
>.\ilSandBox.exe 

Step 4 -- Now manipulate the il source. 

iLSandBox.il the original and an altered version, iLSandBox.il-altered are already in [LinearSandBox path]\IlSandBox\IlSrc

The critical section of code can be found in<br/> 
<code>.class private abstract auto ansi sealed '&lt;StartupCode$IlSandBox>'.$VanillaFlatList</code><br/>
beginning on line 386 in the original file and line 308 in the altered file. (The properties, getters, and setters associated with the unneccessary Struct copies has also been eliminated.) The altered file does not copy the orginal local Struct each time an indexed element is accessed. Instead the original local version of the Struct is used each time. Note in the call to <code>RangeInt32</code> the altered version is changed to create the range <code>2..11</code> to prove the altered code is running.

Saved code for each element by index fetch:<br/>
<code>call       valuetype [FSharpx.Collections.Experimental]FSharpx.Collections.Experimental.FlatList(...)VanillaFlatList::get_varFlatList()</code><br/>
<code>stsfld     valuetype [FSharpx.Collections.Experimental]FSharpx.Collections.Experimental.FlatList(...)$VanillaFlatList::'copyOfStruct@9-2</code>
	
which calls into the method performing:<br/>
<code>ldsfld     valuetype [FSharpx.Collections.Experimental]FSharpx.Collections.Experimental.FlatList(...)$VanillaFlatList::varFlatList@5</code><br/>
<code>ret</code>

All-in-all not a huge savings, unless you consider the addtional overhead roughly doubles the cost in operations to retrieve each element.

##LazyList Sandbox

Unfolding and appending lazy lists.

##Linear Sandbox

Modules and types for Unfolding Sequence, Multiway Tree, and Deleting Heap  

##Linear Sandbox Test

FsCheck 0.9.0.1, FsUnit 1.2.1.0, and NUnit 2.6.2 tests of DeletingHeap.

##MultiwayTree Sandbox

multiway tree from windowed sequence of data

Breadth first traversal of multiway tree

##Seq Sandbox

Composing all functional linear data structures.

Pattern matching all functional linear data structures (except Heap...an exercise for the reader).

Unfolding infinite sequence of Markov Chain.

##Tuple Sandbox

Explore tuple and record with Telerik Just Decompile or ILSpy

##Windowing Sandbox

Creating and manipulating windowed data sequences with vector

