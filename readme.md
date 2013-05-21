##Demo code from Functional Linear Data Structures in FSharp
##Lambda Jam Chicago, July 2013

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
<code>call       valuetype [FSharpx.Collections.Experimental]FSharpx.Collections.Experimental.FlatList`1<int32> VanillaFlatList::get_varFlatList()</code><br/>
<code>stsfld     valuetype [FSharpx.Collections.Experimental]FSharpx.Collections.Experimental.FlatList`1&lt;int32> '&lt;StartupCode$IlSandBox>'.$VanillaFlatList::'copyOfStruct@9-2</code>
	
which calls into the method performing:<br/>
<code>ldsfld     valuetype [FSharpx.Collections.Experimental]FSharpx.Collections.Experimental.FlatList`1&lt;int32> '&lt;StartupCode$IlSandBox>'.$VanillaFlatList::varFlatList@5</code><br/>
<code>ret</code>

All-in-all not a huge savings, unless you consider the addtional overhead roughly doubles the cost in operations to retrieve each element.
