
//  Microsoft (R) .NET Framework IL Disassembler.  Version 3.5.30729.1
//  Copyright (c) Microsoft Corporation.  All rights reserved.



// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly extern FSharp.Core
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 4:3:0:0
}
.assembly extern FSharpx.Collections.Experimental
{
  .ver 1:8:22:0
}
.assembly IlSandBox
{
  .custom instance void [FSharp.Core]Microsoft.FSharp.Core.FSharpInterfaceDataVersionAttribute::.ctor(int32,
                                                                                                      int32,
                                                                                                      int32) = ( 01 00 02 00 00 00 00 00 00 00 00 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.Versioning.TargetFrameworkAttribute::.ctor(string) = ( 01 00 1A 2E 4E 45 54 46 72 61 6D 65 77 6F 72 6B   // ....NETFramework
                                                                                                        2C 56 65 72 73 69 6F 6E 3D 76 34 2E 35 01 00 54   // ,Version=v4.5..T
                                                                                                        0E 14 46 72 61 6D 65 77 6F 72 6B 44 69 73 70 6C   // ..FrameworkDispl
                                                                                                        61 79 4E 61 6D 65 12 2E 4E 45 54 20 46 72 61 6D   // ayName..NET Fram
                                                                                                        65 77 6F 72 6B 20 34 2E 35 )                      // ework 4.5

  // --- The following custom attribute is added automatically, do not uncomment -------
  //  .custom instance void [mscorlib]System.Diagnostics.DebuggableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggableAttribute/DebuggingModes) = ( 01 00 02 00 00 00 00 00 ) 

  .hash algorithm 0x00008004
  .ver 0:0:0:0
}
.mresource public FSharpSignatureData.IlSandBox
{
  // Offset: 0x00000000 Length: 0x0000070B
  // WARNING: managed resource file FSharpSignatureData.IlSandBox created
}
.mresource public FSharpOptimizationData.IlSandBox
{
  // Offset: 0x00000710 Length: 0x000001F4
  // WARNING: managed resource file FSharpOptimizationData.IlSandBox created
}
.module IlSandBox.exe
// MVID: {51994FA1-67CC-F991-A745-0383A14F9951}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x00000000003E0000


// =============== CLASS MEMBERS DECLARATION ===================

.class public abstract auto ansi sealed IlSandBox.console1
       extends [mscorlib]System.Object
{
  .custom instance void [FSharp.Core]Microsoft.FSharp.Core.CompilationMappingAttribute::.ctor(valuetype [FSharp.Core]Microsoft.FSharp.Core.SourceConstructFlags) = ( 01 00 07 00 00 00 00 00 ) 
  .method public static int32  main(string[] argv) cil managed
  {
    .entrypoint
    .custom instance void [FSharp.Core]Microsoft.FSharp.Core.EntryPointAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       341 (0x155)
    .maxstack  4
    .locals init ([0] class [FSharp.Core]Microsoft.FSharp.Core.PrintfFormat`4<class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<string,class [FSharp.Core]Microsoft.FSharp.Core.Unit>,class [mscorlib]System.IO.TextWriter,class [FSharp.Core]Microsoft.FSharp.Core.Unit,class [FSharp.Core]Microsoft.FSharp.Core.Unit> V_0,
             [1] class [FSharp.Core]Microsoft.FSharp.Core.PrintfFormat`4<class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<int32,class [FSharp.Core]Microsoft.FSharp.Core.Unit>,class [mscorlib]System.IO.TextWriter,class [FSharp.Core]Microsoft.FSharp.Core.Unit,class [FSharp.Core]Microsoft.FSharp.Core.Unit> V_1,
             [2] class [FSharp.Core]Microsoft.FSharp.Core.PrintfFormat`4<class [FSharp.Core]Microsoft.FSharp.Core.Unit,class [mscorlib]System.IO.TextWriter,class [FSharp.Core]Microsoft.FSharp.Core.Unit,class [FSharp.Core]Microsoft.FSharp.Core.Unit> V_2,
             [3] valuetype [mscorlib]System.ConsoleKeyInfo V_3)
    IL_0000:  nop
    IL_0001:  ldstr      "%s"
    IL_0006:  newobj     instance void class [FSharp.Core]Microsoft.FSharp.Core.PrintfFormat`5<class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<string,class [FSharp.Core]Microsoft.FSharp.Core.Unit>,class [mscorlib]System.IO.TextWriter,class [FSharp.Core]Microsoft.FSharp.Core.Unit,class [FSharp.Core]Microsoft.FSharp.Core.Unit,string>::.ctor(string)
    IL_000b:  stloc.0
    IL_000c:  call       class [mscorlib]System.IO.TextWriter [mscorlib]System.Console::get_Out()
    IL_0011:  ldloc.0
    IL_0012:  call       !!0 [FSharp.Core]Microsoft.FSharp.Core.PrintfModule::PrintFormatLineToTextWriter<class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<string,class [FSharp.Core]Microsoft.FSharp.Core.Unit>>(class [mscorlib]System.IO.TextWriter,
                                                                                                                                                                                                                       class [FSharp.Core]Microsoft.FSharp.Core.PrintfFormat`4<!!0,class [mscorlib]System.IO.TextWriter,class [FSharp.Core]Microsoft.FSharp.Core.Unit,class [FSharp.Core]Microsoft.FSharp.Core.Unit>)
    IL_0017:  ldstr      "printing from vanilla array"
    IL_001c:  callvirt   instance !1 class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<string,class [FSharp.Core]Microsoft.FSharp.Core.Unit>::Invoke(!0)
    IL_0021:  pop
    IL_0022:  ldstr      "%i"
    IL_0027:  newobj     instance void class [FSharp.Core]Microsoft.FSharp.Core.PrintfFormat`5<class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<int32,class [FSharp.Core]Microsoft.FSharp.Core.Unit>,class [mscorlib]System.IO.TextWriter,class [FSharp.Core]Microsoft.FSharp.Core.Unit,class [FSharp.Core]Microsoft.FSharp.Core.Unit,int32>::.ctor(string)
    IL_002c:  stloc.1
    IL_002d:  call       class [mscorlib]System.IO.TextWriter [mscorlib]System.Console::get_Out()
    IL_0032:  ldloc.1
    IL_0033:  call       !!0 [FSharp.Core]Microsoft.FSharp.Core.PrintfModule::PrintFormatLineToTextWriter<class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<int32,class [FSharp.Core]Microsoft.FSharp.Core.Unit>>(class [mscorlib]System.IO.TextWriter,
                                                                                                                                                                                                                      class [FSharp.Core]Microsoft.FSharp.Core.PrintfFormat`4<!!0,class [mscorlib]System.IO.TextWriter,class [FSharp.Core]Microsoft.FSharp.Core.Unit,class [FSharp.Core]Microsoft.FSharp.Core.Unit>)
    IL_0038:  call       int32 VanillaArray::get_x1()
    IL_003d:  callvirt   instance !1 class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<int32,class [FSharp.Core]Microsoft.FSharp.Core.Unit>::Invoke(!0)
    IL_0042:  pop
    IL_0043:  ldstr      "%i"
    IL_0048:  newobj     instance void class [FSharp.Core]Microsoft.FSharp.Core.PrintfFormat`5<class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<int32,class [FSharp.Core]Microsoft.FSharp.Core.Unit>,class [mscorlib]System.IO.TextWriter,class [FSharp.Core]Microsoft.FSharp.Core.Unit,class [FSharp.Core]Microsoft.FSharp.Core.Unit,int32>::.ctor(string)
    IL_004d:  stloc.1
    IL_004e:  call       class [mscorlib]System.IO.TextWriter [mscorlib]System.Console::get_Out()
    IL_0053:  ldloc.1
    IL_0054:  call       !!0 [FSharp.Core]Microsoft.FSharp.Core.PrintfModule::PrintFormatLineToTextWriter<class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<int32,class [FSharp.Core]Microsoft.FSharp.Core.Unit>>(class [mscorlib]System.IO.TextWriter,
                                                                                                                                                                                                                      class [FSharp.Core]Microsoft.FSharp.Core.PrintfFormat`4<!!0,class [mscorlib]System.IO.TextWriter,class [FSharp.Core]Microsoft.FSharp.Core.Unit,class [FSharp.Core]Microsoft.FSharp.Core.Unit>)
    IL_0059:  call       int32 VanillaArray::get_x2()
    IL_005e:  callvirt   instance !1 class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<int32,class [FSharp.Core]Microsoft.FSharp.Core.Unit>::Invoke(!0)
    IL_0063:  pop
    IL_0064:  ldstr      "%i"
    IL_0069:  newobj     instance void class [FSharp.Core]Microsoft.FSharp.Core.PrintfFormat`5<class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<int32,class [FSharp.Core]Microsoft.FSharp.Core.Unit>,class [mscorlib]System.IO.TextWriter,class [FSharp.Core]Microsoft.FSharp.Core.Unit,class [FSharp.Core]Microsoft.FSharp.Core.Unit,int32>::.ctor(string)
    IL_006e:  stloc.1
    IL_006f:  call       class [mscorlib]System.IO.TextWriter [mscorlib]System.Console::get_Out()
    IL_0074:  ldloc.1
    IL_0075:  call       !!0 [FSharp.Core]Microsoft.FSharp.Core.PrintfModule::PrintFormatLineToTextWriter<class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<int32,class [FSharp.Core]Microsoft.FSharp.Core.Unit>>(class [mscorlib]System.IO.TextWriter,
                                                                                                                                                                                                                      class [FSharp.Core]Microsoft.FSharp.Core.PrintfFormat`4<!!0,class [mscorlib]System.IO.TextWriter,class [FSharp.Core]Microsoft.FSharp.Core.Unit,class [FSharp.Core]Microsoft.FSharp.Core.Unit>)
    IL_007a:  call       int32 VanillaArray::get_x3()
    IL_007f:  callvirt   instance !1 class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<int32,class [FSharp.Core]Microsoft.FSharp.Core.Unit>::Invoke(!0)
    IL_0084:  pop
    IL_0085:  call       void VanillaArray::print10Random()
    IL_008a:  nop
    IL_008b:  ldstr      "%s"
    IL_0090:  newobj     instance void class [FSharp.Core]Microsoft.FSharp.Core.PrintfFormat`5<class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<string,class [FSharp.Core]Microsoft.FSharp.Core.Unit>,class [mscorlib]System.IO.TextWriter,class [FSharp.Core]Microsoft.FSharp.Core.Unit,class [FSharp.Core]Microsoft.FSharp.Core.Unit,string>::.ctor(string)
    IL_0095:  stloc.0
    IL_0096:  call       class [mscorlib]System.IO.TextWriter [mscorlib]System.Console::get_Out()
    IL_009b:  ldloc.0
    IL_009c:  call       !!0 [FSharp.Core]Microsoft.FSharp.Core.PrintfModule::PrintFormatLineToTextWriter<class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<string,class [FSharp.Core]Microsoft.FSharp.Core.Unit>>(class [mscorlib]System.IO.TextWriter,
                                                                                                                                                                                                                       class [FSharp.Core]Microsoft.FSharp.Core.PrintfFormat`4<!!0,class [mscorlib]System.IO.TextWriter,class [FSharp.Core]Microsoft.FSharp.Core.Unit,class [FSharp.Core]Microsoft.FSharp.Core.Unit>)
    IL_00a1:  ldstr      ""
    IL_00a6:  callvirt   instance !1 class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<string,class [FSharp.Core]Microsoft.FSharp.Core.Unit>::Invoke(!0)
    IL_00ab:  pop
    IL_00ac:  ldstr      "%s"
    IL_00b1:  newobj     instance void class [FSharp.Core]Microsoft.FSharp.Core.PrintfFormat`5<class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<string,class [FSharp.Core]Microsoft.FSharp.Core.Unit>,class [mscorlib]System.IO.TextWriter,class [FSharp.Core]Microsoft.FSharp.Core.Unit,class [FSharp.Core]Microsoft.FSharp.Core.Unit,string>::.ctor(string)
    IL_00b6:  stloc.0
    IL_00b7:  call       class [mscorlib]System.IO.TextWriter [mscorlib]System.Console::get_Out()
    IL_00bc:  ldloc.0
    IL_00bd:  call       !!0 [FSharp.Core]Microsoft.FSharp.Core.PrintfModule::PrintFormatLineToTextWriter<class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<string,class [FSharp.Core]Microsoft.FSharp.Core.Unit>>(class [mscorlib]System.IO.TextWriter,
                                                                                                                                                                                                                       class [FSharp.Core]Microsoft.FSharp.Core.PrintfFormat`4<!!0,class [mscorlib]System.IO.TextWriter,class [FSharp.Core]Microsoft.FSharp.Core.Unit,class [FSharp.Core]Microsoft.FSharp.Core.Unit>)
    IL_00c2:  ldstr      "printing from vanilla flatlist"
    IL_00c7:  callvirt   instance !1 class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<string,class [FSharp.Core]Microsoft.FSharp.Core.Unit>::Invoke(!0)
    IL_00cc:  pop
    IL_00cd:  ldstr      "%i"
    IL_00d2:  newobj     instance void class [FSharp.Core]Microsoft.FSharp.Core.PrintfFormat`5<class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<int32,class [FSharp.Core]Microsoft.FSharp.Core.Unit>,class [mscorlib]System.IO.TextWriter,class [FSharp.Core]Microsoft.FSharp.Core.Unit,class [FSharp.Core]Microsoft.FSharp.Core.Unit,int32>::.ctor(string)
    IL_00d7:  stloc.1
    IL_00d8:  call       class [mscorlib]System.IO.TextWriter [mscorlib]System.Console::get_Out()
    IL_00dd:  ldloc.1
    IL_00de:  call       !!0 [FSharp.Core]Microsoft.FSharp.Core.PrintfModule::PrintFormatLineToTextWriter<class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<int32,class [FSharp.Core]Microsoft.FSharp.Core.Unit>>(class [mscorlib]System.IO.TextWriter,
                                                                                                                                                                                                                      class [FSharp.Core]Microsoft.FSharp.Core.PrintfFormat`4<!!0,class [mscorlib]System.IO.TextWriter,class [FSharp.Core]Microsoft.FSharp.Core.Unit,class [FSharp.Core]Microsoft.FSharp.Core.Unit>)
    IL_00e3:  call       int32 VanillaFlatList::get_x1()
    IL_00e8:  callvirt   instance !1 class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<int32,class [FSharp.Core]Microsoft.FSharp.Core.Unit>::Invoke(!0)
    IL_00ed:  pop
    IL_00ee:  ldstr      "%i"
    IL_00f3:  newobj     instance void class [FSharp.Core]Microsoft.FSharp.Core.PrintfFormat`5<class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<int32,class [FSharp.Core]Microsoft.FSharp.Core.Unit>,class [mscorlib]System.IO.TextWriter,class [FSharp.Core]Microsoft.FSharp.Core.Unit,class [FSharp.Core]Microsoft.FSharp.Core.Unit,int32>::.ctor(string)
    IL_00f8:  stloc.1
    IL_00f9:  call       class [mscorlib]System.IO.TextWriter [mscorlib]System.Console::get_Out()
    IL_00fe:  ldloc.1
    IL_00ff:  call       !!0 [FSharp.Core]Microsoft.FSharp.Core.PrintfModule::PrintFormatLineToTextWriter<class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<int32,class [FSharp.Core]Microsoft.FSharp.Core.Unit>>(class [mscorlib]System.IO.TextWriter,
                                                                                                                                                                                                                      class [FSharp.Core]Microsoft.FSharp.Core.PrintfFormat`4<!!0,class [mscorlib]System.IO.TextWriter,class [FSharp.Core]Microsoft.FSharp.Core.Unit,class [FSharp.Core]Microsoft.FSharp.Core.Unit>)
    IL_0104:  call       int32 VanillaFlatList::get_x2()
    IL_0109:  callvirt   instance !1 class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<int32,class [FSharp.Core]Microsoft.FSharp.Core.Unit>::Invoke(!0)
    IL_010e:  pop
    IL_010f:  ldstr      "%i"
    IL_0114:  newobj     instance void class [FSharp.Core]Microsoft.FSharp.Core.PrintfFormat`5<class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<int32,class [FSharp.Core]Microsoft.FSharp.Core.Unit>,class [mscorlib]System.IO.TextWriter,class [FSharp.Core]Microsoft.FSharp.Core.Unit,class [FSharp.Core]Microsoft.FSharp.Core.Unit,int32>::.ctor(string)
    IL_0119:  stloc.1
    IL_011a:  call       class [mscorlib]System.IO.TextWriter [mscorlib]System.Console::get_Out()
    IL_011f:  ldloc.1
    IL_0120:  call       !!0 [FSharp.Core]Microsoft.FSharp.Core.PrintfModule::PrintFormatLineToTextWriter<class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<int32,class [FSharp.Core]Microsoft.FSharp.Core.Unit>>(class [mscorlib]System.IO.TextWriter,
                                                                                                                                                                                                                      class [FSharp.Core]Microsoft.FSharp.Core.PrintfFormat`4<!!0,class [mscorlib]System.IO.TextWriter,class [FSharp.Core]Microsoft.FSharp.Core.Unit,class [FSharp.Core]Microsoft.FSharp.Core.Unit>)
    IL_0125:  call       int32 VanillaFlatList::get_x3()
    IL_012a:  callvirt   instance !1 class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<int32,class [FSharp.Core]Microsoft.FSharp.Core.Unit>::Invoke(!0)
    IL_012f:  pop
    IL_0130:  call       void VanillaFlatList::print10Random()
    IL_0135:  nop
    IL_0136:  ldstr      "Hit any key to exit."
    IL_013b:  newobj     instance void class [FSharp.Core]Microsoft.FSharp.Core.PrintfFormat`5<class [FSharp.Core]Microsoft.FSharp.Core.Unit,class [mscorlib]System.IO.TextWriter,class [FSharp.Core]Microsoft.FSharp.Core.Unit,class [FSharp.Core]Microsoft.FSharp.Core.Unit,class [FSharp.Core]Microsoft.FSharp.Core.Unit>::.ctor(string)
    IL_0140:  stloc.2
    IL_0141:  call       class [mscorlib]System.IO.TextWriter [mscorlib]System.Console::get_Out()
    IL_0146:  ldloc.2
    IL_0147:  call       !!0 [FSharp.Core]Microsoft.FSharp.Core.PrintfModule::PrintFormatLineToTextWriter<class [FSharp.Core]Microsoft.FSharp.Core.Unit>(class [mscorlib]System.IO.TextWriter,
                                                                                                                                                         class [FSharp.Core]Microsoft.FSharp.Core.PrintfFormat`4<!!0,class [mscorlib]System.IO.TextWriter,class [FSharp.Core]Microsoft.FSharp.Core.Unit,class [FSharp.Core]Microsoft.FSharp.Core.Unit>)
    IL_014c:  pop
    IL_014d:  call       valuetype [mscorlib]System.ConsoleKeyInfo [mscorlib]System.Console::ReadKey()
    IL_0152:  stloc.3
    IL_0153:  ldc.i4.0
    IL_0154:  ret
  } // end of method console1::main

} // end of class IlSandBox.console1

.class private abstract auto ansi sealed '<StartupCode$IlSandBox>'.$Program
       extends [mscorlib]System.Object
{
} // end of class '<StartupCode$IlSandBox>'.$Program

.class public abstract auto ansi sealed VanillaFlatList
       extends [mscorlib]System.Object
{
  .custom instance void [FSharp.Core]Microsoft.FSharp.Core.CompilationMappingAttribute::.ctor(valuetype [FSharp.Core]Microsoft.FSharp.Core.SourceConstructFlags) = ( 01 00 07 00 00 00 00 00 ) 
  .method public specialname static valuetype [FSharpx.Collections.Experimental]FSharpx.Collections.Experimental.FlatList`1<int32> 
          get_varFlatList() cil managed
  {
    // Code size       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     valuetype [FSharpx.Collections.Experimental]FSharpx.Collections.Experimental.FlatList`1<int32> '<StartupCode$IlSandBox>'.$VanillaFlatList::varFlatList@5
    IL_0005:  ret
  } // end of method VanillaFlatList::get_varFlatList

  .method public specialname static int32 
          get_x1() cil managed
  {
    // Code size       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     int32 '<StartupCode$IlSandBox>'.$VanillaFlatList::'x1@7-2'
    IL_0005:  ret
  } // end of method VanillaFlatList::get_x1

  .method assembly specialname static valuetype [FSharpx.Collections.Experimental]FSharpx.Collections.Experimental.FlatList`1<int32> 
          get_copyOfStruct@7() cil managed
  {
    // Code size       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     valuetype [FSharpx.Collections.Experimental]FSharpx.Collections.Experimental.FlatList`1<int32> '<StartupCode$IlSandBox>'.$VanillaFlatList::copyOfStruct@7
    IL_0005:  ret
  } // end of method VanillaFlatList::get_copyOfStruct@7

  .method assembly specialname static void 
          set_copyOfStruct@7(valuetype [FSharpx.Collections.Experimental]FSharpx.Collections.Experimental.FlatList`1<int32> 'value') cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     valuetype [FSharpx.Collections.Experimental]FSharpx.Collections.Experimental.FlatList`1<int32> '<StartupCode$IlSandBox>'.$VanillaFlatList::copyOfStruct@7
    IL_0006:  ret
  } // end of method VanillaFlatList::set_copyOfStruct@7

  .method public specialname static int32 
          get_x2() cil managed
  {
    // Code size       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     int32 '<StartupCode$IlSandBox>'.$VanillaFlatList::'x2@8-2'
    IL_0005:  ret
  } // end of method VanillaFlatList::get_x2

  .method assembly specialname static valuetype [FSharpx.Collections.Experimental]FSharpx.Collections.Experimental.FlatList`1<int32> 
          'get_copyOfStruct@8-1'() cil managed
  {
    // Code size       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     valuetype [FSharpx.Collections.Experimental]FSharpx.Collections.Experimental.FlatList`1<int32> '<StartupCode$IlSandBox>'.$VanillaFlatList::'copyOfStruct@8-1'
    IL_0005:  ret
  } // end of method VanillaFlatList::'get_copyOfStruct@8-1'

  .method assembly specialname static void 
          'set_copyOfStruct@8-1'(valuetype [FSharpx.Collections.Experimental]FSharpx.Collections.Experimental.FlatList`1<int32> 'value') cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     valuetype [FSharpx.Collections.Experimental]FSharpx.Collections.Experimental.FlatList`1<int32> '<StartupCode$IlSandBox>'.$VanillaFlatList::'copyOfStruct@8-1'
    IL_0006:  ret
  } // end of method VanillaFlatList::'set_copyOfStruct@8-1'

  .method public specialname static int32 
          get_x3() cil managed
  {
    // Code size       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     int32 '<StartupCode$IlSandBox>'.$VanillaFlatList::'x3@9-2'
    IL_0005:  ret
  } // end of method VanillaFlatList::get_x3

  .method assembly specialname static valuetype [FSharpx.Collections.Experimental]FSharpx.Collections.Experimental.FlatList`1<int32> 
          'get_copyOfStruct@9-2'() cil managed
  {
    // Code size       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     valuetype [FSharpx.Collections.Experimental]FSharpx.Collections.Experimental.FlatList`1<int32> '<StartupCode$IlSandBox>'.$VanillaFlatList::'copyOfStruct@9-2'
    IL_0005:  ret
  } // end of method VanillaFlatList::'get_copyOfStruct@9-2'

  .method assembly specialname static void 
          'set_copyOfStruct@9-2'(valuetype [FSharpx.Collections.Experimental]FSharpx.Collections.Experimental.FlatList`1<int32> 'value') cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     valuetype [FSharpx.Collections.Experimental]FSharpx.Collections.Experimental.FlatList`1<int32> '<StartupCode$IlSandBox>'.$VanillaFlatList::'copyOfStruct@9-2'
    IL_0006:  ret
  } // end of method VanillaFlatList::'set_copyOfStruct@9-2'

  .method public specialname static class [mscorlib]System.Random 
          get_rnd() cil managed
  {
    // Code size       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     class [mscorlib]System.Random '<StartupCode$IlSandBox>'.$VanillaFlatList::'rnd@11-2'
    IL_0005:  ret
  } // end of method VanillaFlatList::get_rnd

  .method public static void  print10Random() cil managed
  {
    // Code size       68 (0x44)
    .maxstack  6
    .locals init ([0] int32 i,
             [1] class [FSharp.Core]Microsoft.FSharp.Core.PrintfFormat`4<class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<int32,class [FSharp.Core]Microsoft.FSharp.Core.Unit>,class [mscorlib]System.IO.TextWriter,class [FSharp.Core]Microsoft.FSharp.Core.Unit,class [FSharp.Core]Microsoft.FSharp.Core.Unit> V_1,
             [2] valuetype [FSharpx.Collections.Experimental]FSharpx.Collections.Experimental.FlatList`1<int32> V_2)
    IL_0000:  nop
    IL_0001:  ldc.i4.1
    IL_0002:  stloc.0
    IL_0003:  br.s       IL_003e

    IL_0005:  ldstr      "%i"
    IL_000a:  newobj     instance void class [FSharp.Core]Microsoft.FSharp.Core.PrintfFormat`5<class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<int32,class [FSharp.Core]Microsoft.FSharp.Core.Unit>,class [mscorlib]System.IO.TextWriter,class [FSharp.Core]Microsoft.FSharp.Core.Unit,class [FSharp.Core]Microsoft.FSharp.Core.Unit,int32>::.ctor(string)
    IL_000f:  stloc.1
    IL_0010:  call       class [mscorlib]System.IO.TextWriter [mscorlib]System.Console::get_Out()
    IL_0015:  ldloc.1
    IL_0016:  call       !!0 [FSharp.Core]Microsoft.FSharp.Core.PrintfModule::PrintFormatLineToTextWriter<class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<int32,class [FSharp.Core]Microsoft.FSharp.Core.Unit>>(class [mscorlib]System.IO.TextWriter,
                                                                                                                                                                                                                      class [FSharp.Core]Microsoft.FSharp.Core.PrintfFormat`4<!!0,class [mscorlib]System.IO.TextWriter,class [FSharp.Core]Microsoft.FSharp.Core.Unit,class [FSharp.Core]Microsoft.FSharp.Core.Unit>)
    IL_001b:  call       valuetype [FSharpx.Collections.Experimental]FSharpx.Collections.Experimental.FlatList`1<int32> VanillaFlatList::get_varFlatList()
    IL_0020:  stloc.2
    IL_0021:  ldloca.s   V_2
    IL_0023:  call       class [mscorlib]System.Random VanillaFlatList::get_rnd()
    IL_0028:  ldc.i4.s   10
    IL_002a:  callvirt   instance int32 [mscorlib]System.Random::Next(int32)
    IL_002f:  call       instance !0 valuetype [FSharpx.Collections.Experimental]FSharpx.Collections.Experimental.FlatList`1<int32>::get_Item(int32)
    IL_0034:  callvirt   instance !1 class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<int32,class [FSharp.Core]Microsoft.FSharp.Core.Unit>::Invoke(!0)
    IL_0039:  pop
    IL_003a:  ldloc.0
    IL_003b:  ldc.i4.1
    IL_003c:  add
    IL_003d:  stloc.0
    IL_003e:  ldloc.0
    IL_003f:  ldc.i4.s   11
    IL_0041:  blt.s      IL_0005

    IL_0043:  ret
  } // end of method VanillaFlatList::print10Random

  .property valuetype [FSharpx.Collections.Experimental]FSharpx.Collections.Experimental.FlatList`1<int32>
          varFlatList()
  {
    .custom instance void [FSharp.Core]Microsoft.FSharp.Core.CompilationMappingAttribute::.ctor(valuetype [FSharp.Core]Microsoft.FSharp.Core.SourceConstructFlags) = ( 01 00 09 00 00 00 00 00 ) 
    .get valuetype [FSharpx.Collections.Experimental]FSharpx.Collections.Experimental.FlatList`1<int32> VanillaFlatList::get_varFlatList()
  } // end of property VanillaFlatList::varFlatList
  .property int32 x1()
  {
    .custom instance void [FSharp.Core]Microsoft.FSharp.Core.CompilationMappingAttribute::.ctor(valuetype [FSharp.Core]Microsoft.FSharp.Core.SourceConstructFlags) = ( 01 00 09 00 00 00 00 00 ) 
    .get int32 VanillaFlatList::get_x1()
  } // end of property VanillaFlatList::x1
  .property valuetype [FSharpx.Collections.Experimental]FSharpx.Collections.Experimental.FlatList`1<int32>
          copyOfStruct@7()
  {
    .custom instance void [FSharp.Core]Microsoft.FSharp.Core.CompilationMappingAttribute::.ctor(valuetype [FSharp.Core]Microsoft.FSharp.Core.SourceConstructFlags) = ( 01 00 09 00 00 00 00 00 ) 
    .set void VanillaFlatList::set_copyOfStruct@7(valuetype [FSharpx.Collections.Experimental]FSharpx.Collections.Experimental.FlatList`1<int32>)
    .get valuetype [FSharpx.Collections.Experimental]FSharpx.Collections.Experimental.FlatList`1<int32> VanillaFlatList::get_copyOfStruct@7()
  } // end of property VanillaFlatList::copyOfStruct@7
  .property int32 x2()
  {
    .custom instance void [FSharp.Core]Microsoft.FSharp.Core.CompilationMappingAttribute::.ctor(valuetype [FSharp.Core]Microsoft.FSharp.Core.SourceConstructFlags) = ( 01 00 09 00 00 00 00 00 ) 
    .get int32 VanillaFlatList::get_x2()
  } // end of property VanillaFlatList::x2
  .property valuetype [FSharpx.Collections.Experimental]FSharpx.Collections.Experimental.FlatList`1<int32>
          'copyOfStruct@8-1'()
  {
    .custom instance void [FSharp.Core]Microsoft.FSharp.Core.CompilationMappingAttribute::.ctor(valuetype [FSharp.Core]Microsoft.FSharp.Core.SourceConstructFlags) = ( 01 00 09 00 00 00 00 00 ) 
    .set void VanillaFlatList::'set_copyOfStruct@8-1'(valuetype [FSharpx.Collections.Experimental]FSharpx.Collections.Experimental.FlatList`1<int32>)
    .get valuetype [FSharpx.Collections.Experimental]FSharpx.Collections.Experimental.FlatList`1<int32> VanillaFlatList::'get_copyOfStruct@8-1'()
  } // end of property VanillaFlatList::'copyOfStruct@8-1'
  .property int32 x3()
  {
    .custom instance void [FSharp.Core]Microsoft.FSharp.Core.CompilationMappingAttribute::.ctor(valuetype [FSharp.Core]Microsoft.FSharp.Core.SourceConstructFlags) = ( 01 00 09 00 00 00 00 00 ) 
    .get int32 VanillaFlatList::get_x3()
  } // end of property VanillaFlatList::x3
  .property valuetype [FSharpx.Collections.Experimental]FSharpx.Collections.Experimental.FlatList`1<int32>
          'copyOfStruct@9-2'()
  {
    .custom instance void [FSharp.Core]Microsoft.FSharp.Core.CompilationMappingAttribute::.ctor(valuetype [FSharp.Core]Microsoft.FSharp.Core.SourceConstructFlags) = ( 01 00 09 00 00 00 00 00 ) 
    .set void VanillaFlatList::'set_copyOfStruct@9-2'(valuetype [FSharpx.Collections.Experimental]FSharpx.Collections.Experimental.FlatList`1<int32>)
    .get valuetype [FSharpx.Collections.Experimental]FSharpx.Collections.Experimental.FlatList`1<int32> VanillaFlatList::'get_copyOfStruct@9-2'()
  } // end of property VanillaFlatList::'copyOfStruct@9-2'
  .property class [mscorlib]System.Random
          rnd()
  {
    .custom instance void [FSharp.Core]Microsoft.FSharp.Core.CompilationMappingAttribute::.ctor(valuetype [FSharp.Core]Microsoft.FSharp.Core.SourceConstructFlags) = ( 01 00 09 00 00 00 00 00 ) 
    .get class [mscorlib]System.Random VanillaFlatList::get_rnd()
  } // end of property VanillaFlatList::rnd
} // end of class VanillaFlatList

.class private abstract auto ansi sealed '<StartupCode$IlSandBox>'.$VanillaFlatList
       extends [mscorlib]System.Object
{
  .field static assembly initonly valuetype [FSharpx.Collections.Experimental]FSharpx.Collections.Experimental.FlatList`1<int32> varFlatList@5
  .custom instance void [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field static assembly initonly int32 'x1@7-2'
  .custom instance void [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field static assembly valuetype [FSharpx.Collections.Experimental]FSharpx.Collections.Experimental.FlatList`1<int32> copyOfStruct@7
  .custom instance void [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field static assembly initonly int32 'x2@8-2'
  .custom instance void [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field static assembly valuetype [FSharpx.Collections.Experimental]FSharpx.Collections.Experimental.FlatList`1<int32> 'copyOfStruct@8-1'
  .custom instance void [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field static assembly initonly int32 'x3@9-2'
  .custom instance void [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field static assembly valuetype [FSharpx.Collections.Experimental]FSharpx.Collections.Experimental.FlatList`1<int32> 'copyOfStruct@9-2'
  .custom instance void [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field static assembly initonly class [mscorlib]System.Random 'rnd@11-2'
  .custom instance void [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field static assembly int32 init@
  .custom instance void [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [mscorlib]System.Diagnostics.DebuggerNonUserCodeAttribute::.ctor() = ( 01 00 00 00 ) 
  .method private specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // Code size       114 (0x72)
    .maxstack  5
    IL_0000:  nop
    IL_0001:  ldc.i4.1
    IL_0002:  ldc.i4.1
    IL_0003:  ldc.i4.s   10
    IL_0005:  call       class [mscorlib]System.Collections.Generic.IEnumerable`1<int32> [FSharp.Core]Microsoft.FSharp.Core.Operators/OperatorIntrinsics::RangeInt32(int32,
                                                                                                                                                                     int32,
                                                                                                                                                                     int32)
    IL_000a:  call       class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0> [FSharp.Core]Microsoft.FSharp.Core.Operators::CreateSequence<int32>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_000f:  call       valuetype [FSharpx.Collections.Experimental]FSharpx.Collections.Experimental.FlatList`1<!!0> [FSharpx.Collections.Experimental]FSharpx.Collections.Experimental.FlatListModule::ofSeq<int32>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_0014:  stsfld     valuetype [FSharpx.Collections.Experimental]FSharpx.Collections.Experimental.FlatList`1<int32> '<StartupCode$IlSandBox>'.$VanillaFlatList::varFlatList@5
    IL_0019:  call       valuetype [FSharpx.Collections.Experimental]FSharpx.Collections.Experimental.FlatList`1<int32> VanillaFlatList::get_varFlatList()
    IL_001e:  stsfld     valuetype [FSharpx.Collections.Experimental]FSharpx.Collections.Experimental.FlatList`1<int32> '<StartupCode$IlSandBox>'.$VanillaFlatList::copyOfStruct@7
    IL_0023:  ldsflda    valuetype [FSharpx.Collections.Experimental]FSharpx.Collections.Experimental.FlatList`1<int32> '<StartupCode$IlSandBox>'.$VanillaFlatList::copyOfStruct@7
    IL_0028:  ldc.i4.1
    IL_0029:  call       instance !0 valuetype [FSharpx.Collections.Experimental]FSharpx.Collections.Experimental.FlatList`1<int32>::get_Item(int32)
    IL_002e:  stsfld     int32 '<StartupCode$IlSandBox>'.$VanillaFlatList::'x1@7-2'
    IL_0033:  call       valuetype [FSharpx.Collections.Experimental]FSharpx.Collections.Experimental.FlatList`1<int32> VanillaFlatList::get_varFlatList()
    IL_0038:  stsfld     valuetype [FSharpx.Collections.Experimental]FSharpx.Collections.Experimental.FlatList`1<int32> '<StartupCode$IlSandBox>'.$VanillaFlatList::'copyOfStruct@8-1'
    IL_003d:  ldsflda    valuetype [FSharpx.Collections.Experimental]FSharpx.Collections.Experimental.FlatList`1<int32> '<StartupCode$IlSandBox>'.$VanillaFlatList::'copyOfStruct@8-1'
    IL_0042:  ldc.i4.2
    IL_0043:  call       instance !0 valuetype [FSharpx.Collections.Experimental]FSharpx.Collections.Experimental.FlatList`1<int32>::get_Item(int32)
    IL_0048:  stsfld     int32 '<StartupCode$IlSandBox>'.$VanillaFlatList::'x2@8-2'
    IL_004d:  call       valuetype [FSharpx.Collections.Experimental]FSharpx.Collections.Experimental.FlatList`1<int32> VanillaFlatList::get_varFlatList()
    IL_0052:  stsfld     valuetype [FSharpx.Collections.Experimental]FSharpx.Collections.Experimental.FlatList`1<int32> '<StartupCode$IlSandBox>'.$VanillaFlatList::'copyOfStruct@9-2'
    IL_0057:  ldsflda    valuetype [FSharpx.Collections.Experimental]FSharpx.Collections.Experimental.FlatList`1<int32> '<StartupCode$IlSandBox>'.$VanillaFlatList::'copyOfStruct@9-2'
    IL_005c:  ldc.i4.3
    IL_005d:  call       instance !0 valuetype [FSharpx.Collections.Experimental]FSharpx.Collections.Experimental.FlatList`1<int32>::get_Item(int32)
    IL_0062:  stsfld     int32 '<StartupCode$IlSandBox>'.$VanillaFlatList::'x3@9-2'
    IL_0067:  newobj     instance void [mscorlib]System.Random::.ctor()
    IL_006c:  stsfld     class [mscorlib]System.Random '<StartupCode$IlSandBox>'.$VanillaFlatList::'rnd@11-2'
    IL_0071:  ret
  } // end of method $VanillaFlatList::.cctor

} // end of class '<StartupCode$IlSandBox>'.$VanillaFlatList

.class public abstract auto ansi sealed VanillaArray
       extends [mscorlib]System.Object
{
  .custom instance void [FSharp.Core]Microsoft.FSharp.Core.CompilationMappingAttribute::.ctor(valuetype [FSharp.Core]Microsoft.FSharp.Core.SourceConstructFlags) = ( 01 00 07 00 00 00 00 00 ) 
  .method public specialname static int32[] 
          get_varArr() cil managed
  {
    // Code size       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     int32[] '<StartupCode$IlSandBox>'.$VanillaArray::varArr@4
    IL_0005:  ret
  } // end of method VanillaArray::get_varArr

  .method public specialname static int32 
          get_x1() cil managed
  {
    // Code size       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     int32 '<StartupCode$IlSandBox>'.$VanillaArray::x1@6
    IL_0005:  ret
  } // end of method VanillaArray::get_x1

  .method public specialname static int32 
          get_x2() cil managed
  {
    // Code size       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     int32 '<StartupCode$IlSandBox>'.$VanillaArray::x2@7
    IL_0005:  ret
  } // end of method VanillaArray::get_x2

  .method public specialname static int32 
          get_x3() cil managed
  {
    // Code size       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     int32 '<StartupCode$IlSandBox>'.$VanillaArray::x3@8
    IL_0005:  ret
  } // end of method VanillaArray::get_x3

  .method public specialname static class [mscorlib]System.Random 
          get_rnd() cil managed
  {
    // Code size       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     class [mscorlib]System.Random '<StartupCode$IlSandBox>'.$VanillaArray::rnd@10
    IL_0005:  ret
  } // end of method VanillaArray::get_rnd

  .method public static void  print10Random() cil managed
  {
    // Code size       65 (0x41)
    .maxstack  6
    .locals init ([0] int32 i,
             [1] class [FSharp.Core]Microsoft.FSharp.Core.PrintfFormat`4<class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<int32,class [FSharp.Core]Microsoft.FSharp.Core.Unit>,class [mscorlib]System.IO.TextWriter,class [FSharp.Core]Microsoft.FSharp.Core.Unit,class [FSharp.Core]Microsoft.FSharp.Core.Unit> V_1)
    IL_0000:  nop
    IL_0001:  ldc.i4.1
    IL_0002:  stloc.0
    IL_0003:  br.s       IL_003b

    IL_0005:  ldstr      "%i"
    IL_000a:  newobj     instance void class [FSharp.Core]Microsoft.FSharp.Core.PrintfFormat`5<class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<int32,class [FSharp.Core]Microsoft.FSharp.Core.Unit>,class [mscorlib]System.IO.TextWriter,class [FSharp.Core]Microsoft.FSharp.Core.Unit,class [FSharp.Core]Microsoft.FSharp.Core.Unit,int32>::.ctor(string)
    IL_000f:  stloc.1
    IL_0010:  call       class [mscorlib]System.IO.TextWriter [mscorlib]System.Console::get_Out()
    IL_0015:  ldloc.1
    IL_0016:  call       !!0 [FSharp.Core]Microsoft.FSharp.Core.PrintfModule::PrintFormatLineToTextWriter<class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<int32,class [FSharp.Core]Microsoft.FSharp.Core.Unit>>(class [mscorlib]System.IO.TextWriter,
                                                                                                                                                                                                                      class [FSharp.Core]Microsoft.FSharp.Core.PrintfFormat`4<!!0,class [mscorlib]System.IO.TextWriter,class [FSharp.Core]Microsoft.FSharp.Core.Unit,class [FSharp.Core]Microsoft.FSharp.Core.Unit>)
    IL_001b:  call       int32[] VanillaArray::get_varArr()
    IL_0020:  call       class [mscorlib]System.Random VanillaArray::get_rnd()
    IL_0025:  ldc.i4.s   10
    IL_0027:  callvirt   instance int32 [mscorlib]System.Random::Next(int32)
    IL_002c:  ldelem     [mscorlib]System.Int32
    IL_0031:  callvirt   instance !1 class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<int32,class [FSharp.Core]Microsoft.FSharp.Core.Unit>::Invoke(!0)
    IL_0036:  pop
    IL_0037:  ldloc.0
    IL_0038:  ldc.i4.1
    IL_0039:  add
    IL_003a:  stloc.0
    IL_003b:  ldloc.0
    IL_003c:  ldc.i4.s   11
    IL_003e:  blt.s      IL_0005

    IL_0040:  ret
  } // end of method VanillaArray::print10Random

  .property int32[] varArr()
  {
    .custom instance void [FSharp.Core]Microsoft.FSharp.Core.CompilationMappingAttribute::.ctor(valuetype [FSharp.Core]Microsoft.FSharp.Core.SourceConstructFlags) = ( 01 00 09 00 00 00 00 00 ) 
    .get int32[] VanillaArray::get_varArr()
  } // end of property VanillaArray::varArr
  .property int32 x1()
  {
    .custom instance void [FSharp.Core]Microsoft.FSharp.Core.CompilationMappingAttribute::.ctor(valuetype [FSharp.Core]Microsoft.FSharp.Core.SourceConstructFlags) = ( 01 00 09 00 00 00 00 00 ) 
    .get int32 VanillaArray::get_x1()
  } // end of property VanillaArray::x1
  .property int32 x2()
  {
    .custom instance void [FSharp.Core]Microsoft.FSharp.Core.CompilationMappingAttribute::.ctor(valuetype [FSharp.Core]Microsoft.FSharp.Core.SourceConstructFlags) = ( 01 00 09 00 00 00 00 00 ) 
    .get int32 VanillaArray::get_x2()
  } // end of property VanillaArray::x2
  .property int32 x3()
  {
    .custom instance void [FSharp.Core]Microsoft.FSharp.Core.CompilationMappingAttribute::.ctor(valuetype [FSharp.Core]Microsoft.FSharp.Core.SourceConstructFlags) = ( 01 00 09 00 00 00 00 00 ) 
    .get int32 VanillaArray::get_x3()
  } // end of property VanillaArray::x3
  .property class [mscorlib]System.Random
          rnd()
  {
    .custom instance void [FSharp.Core]Microsoft.FSharp.Core.CompilationMappingAttribute::.ctor(valuetype [FSharp.Core]Microsoft.FSharp.Core.SourceConstructFlags) = ( 01 00 09 00 00 00 00 00 ) 
    .get class [mscorlib]System.Random VanillaArray::get_rnd()
  } // end of property VanillaArray::rnd
} // end of class VanillaArray

.class private abstract auto ansi sealed '<StartupCode$IlSandBox>'.$VanillaArray
       extends [mscorlib]System.Object
{
  .field static assembly initonly int32[] varArr@4
  .custom instance void [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field static assembly initonly int32 x1@6
  .custom instance void [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field static assembly initonly int32 x2@7
  .custom instance void [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field static assembly initonly int32 x3@8
  .custom instance void [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field static assembly initonly class [mscorlib]System.Random rnd@10
  .custom instance void [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field static assembly int32 init@
  .custom instance void [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [mscorlib]System.Diagnostics.DebuggerNonUserCodeAttribute::.ctor() = ( 01 00 00 00 ) 
  .method private specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // Code size       84 (0x54)
    .maxstack  5
    IL_0000:  nop
    IL_0001:  ldc.i4.1
    IL_0002:  ldc.i4.1
    IL_0003:  ldc.i4.s   10
    IL_0005:  call       class [mscorlib]System.Collections.Generic.IEnumerable`1<int32> [FSharp.Core]Microsoft.FSharp.Core.Operators/OperatorIntrinsics::RangeInt32(int32,
                                                                                                                                                                     int32,
                                                                                                                                                                     int32)
    IL_000a:  call       class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0> [FSharp.Core]Microsoft.FSharp.Core.Operators::CreateSequence<int32>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_000f:  call       !!0[] [FSharp.Core]Microsoft.FSharp.Collections.ArrayModule::OfSeq<int32>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_0014:  stsfld     int32[] '<StartupCode$IlSandBox>'.$VanillaArray::varArr@4
    IL_0019:  call       int32[] VanillaArray::get_varArr()
    IL_001e:  ldc.i4.1
    IL_001f:  ldelem     [mscorlib]System.Int32
    IL_0024:  stsfld     int32 '<StartupCode$IlSandBox>'.$VanillaArray::x1@6
    IL_0029:  call       int32[] VanillaArray::get_varArr()
    IL_002e:  ldc.i4.2
    IL_002f:  ldelem     [mscorlib]System.Int32
    IL_0034:  stsfld     int32 '<StartupCode$IlSandBox>'.$VanillaArray::x2@7
    IL_0039:  call       int32[] VanillaArray::get_varArr()
    IL_003e:  ldc.i4.3
    IL_003f:  ldelem     [mscorlib]System.Int32
    IL_0044:  stsfld     int32 '<StartupCode$IlSandBox>'.$VanillaArray::x3@8
    IL_0049:  newobj     instance void [mscorlib]System.Random::.ctor()
    IL_004e:  stsfld     class [mscorlib]System.Random '<StartupCode$IlSandBox>'.$VanillaArray::rnd@10
    IL_0053:  ret
  } // end of method $VanillaArray::.cctor

} // end of class '<StartupCode$IlSandBox>'.$VanillaArray

.class private abstract auto ansi sealed '<StartupCode$IlSandBox>.$.NETFramework,Version=v4.5'.AssemblyAttributes
       extends [mscorlib]System.Object
{
} // end of class '<StartupCode$IlSandBox>.$.NETFramework,Version=v4.5'.AssemblyAttributes


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
