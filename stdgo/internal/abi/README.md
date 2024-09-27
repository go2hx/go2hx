# Module: `stdgo.internal.abi`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [class Abi](<#class-abi>)

  - [`function commonOffset(_ptrSize:Int, _twoWordAlignSlices:Bool):stdgo.internal.abi.Offset`](<#abi-function-commonoffset>)

  - [`function commonSize(_ptrSize:Int):Int`](<#abi-function-commonsize>)

  - [`function funcPCABI0(_f:stdgo.AnyInterface):stdgo.GoUIntptr`](<#abi-function-funcpcabi0>)

  - [`function funcPCABIInternal(_f:stdgo.AnyInterface):stdgo.GoUIntptr`](<#abi-function-funcpcabiinternal>)

  - [`function funcPCTest():stdgo.GoUIntptr`](<#abi-function-funcpctest>)

  - [`function funcPCTestFn():Void`](<#abi-function-funcpctestfn>)

  - [`function imethodSize(_ptrSize:Int):Int`](<#abi-function-imethodsize>)

  - [`function initializedOffset(_off:Int, _align:UInt, _ptrSize:UInt, _twoWordAlignSlices:Bool):stdgo.internal.abi.Offset`](<#abi-function-initializedoffset>)

  - [`function kindOff(_ptrSize:Int):Int`](<#abi-function-kindoff>)

  - [`function newName(_n:String, _tag:String, _exported:Bool, _embedded:Bool):stdgo.internal.abi.Name`](<#abi-function-newname>)

  - [`function newOffset(_ptrSize:UInt, _twoWordAlignSlices:Bool):stdgo.internal.abi.Offset`](<#abi-function-newoffset>)

  - [`function ptrBytesOff(_ptrSize:Int):Int`](<#abi-function-ptrbytesoff>)

  - [`function sizeOff(_ptrSize:Int):Int`](<#abi-function-sizeoff>)

  - [`function structFieldSize(_ptrSize:Int):Int`](<#abi-function-structfieldsize>)

  - [`function tflagOff(_ptrSize:Int):Int`](<#abi-function-tflagoff>)

  - [`function uncommonSize():haxe.UInt64`](<#abi-function-uncommonsize>)

- [typedef ChanDir](<#typedef-chandir>)

- [typedef FuncFlag](<#typedef-funcflag>)

- [typedef FuncID](<#typedef-funcid>)

- [typedef IntArgRegBitmap](<#typedef-intargregbitmap>)

- [typedef Kind](<#typedef-kind>)

- [typedef NameOff](<#typedef-nameoff>)

- [typedef TFlag](<#typedef-tflag>)

- [typedef TextOff](<#typedef-textoff>)

- [typedef TypeOff](<#typedef-typeoff>)

- [abstract RegArgs](<#abstract-regargs>)

- [abstract Offset](<#abstract-offset>)

- [abstract Type\_](<#abstract-type_>)

- [abstract Method](<#abstract-method>)

- [abstract UncommonType](<#abstract-uncommontype>)

- [abstract Imethod](<#abstract-imethod>)

- [abstract ArrayType](<#abstract-arraytype>)

- [abstract ChanType](<#abstract-chantype>)

- [abstract T\_structTypeUncommon](<#abstract-t_structtypeuncommon>)

- [abstract InterfaceType](<#abstract-interfacetype>)

- [abstract MapType](<#abstract-maptype>)

- [abstract SliceType](<#abstract-slicetype>)

- [abstract FuncType](<#abstract-functype>)

- [abstract PtrType](<#abstract-ptrtype>)

- [abstract StructField](<#abstract-structfield>)

- [abstract StructType](<#abstract-structtype>)

- [abstract Name](<#abstract-name>)

- [abstract T\_uncommon\_\_\_localname\_\_\_u\_8324](<#abstract-t_uncommonlocalnameu_8324>)

- [abstract T\_uncommon\_\_\_localname\_\_\_u\_8423](<#abstract-t_uncommonlocalnameu_8423>)

- [abstract T\_uncommon\_\_\_localname\_\_\_u\_8524](<#abstract-t_uncommonlocalnameu_8524>)

- [abstract T\_uncommon\_\_\_localname\_\_\_u\_8626](<#abstract-t_uncommonlocalnameu_8626>)

- [abstract T\_uncommon\_\_\_localname\_\_\_u\_8727](<#abstract-t_uncommonlocalnameu_8727>)

- [abstract T\_uncommon\_\_\_localname\_\_\_u\_8826](<#abstract-t_uncommonlocalnameu_8826>)

- [abstract T\_uncommon\_\_\_localname\_\_\_u\_8930](<#abstract-t_uncommonlocalnameu_8930>)

- [abstract T\_uncommon\_\_\_localname\_\_\_u\_9033](<#abstract-t_uncommonlocalnameu_9033>)

# Constants


```haxe
import stdgo.internal.abi.Abi
```


```haxe
final argsSizeUnknown:haxe.UInt64 = stdgo._internal.internal.abi.Abi_argsSizeUnknown.argsSizeUnknown
```


```haxe
final array:stdgo._internal.internal.abi.Kind = stdgo._internal.internal.abi.Abi_array.array
```


```haxe
final bool_:stdgo._internal.internal.abi.Kind = stdgo._internal.internal.abi.Abi_bool_.bool_
```


```haxe
final bothDir:stdgo.internal.abi.ChanDir = stdgo._internal.internal.abi.Abi_bothDir.bothDir
```


```haxe
final chan:stdgo._internal.internal.abi.Kind = stdgo._internal.internal.abi.Abi_chan.chan
```


```haxe
final complex128:stdgo._internal.internal.abi.Kind = stdgo._internal.internal.abi.Abi_complex128.complex128
```


```haxe
final complex64:stdgo._internal.internal.abi.Kind = stdgo._internal.internal.abi.Abi_complex64.complex64
```


```haxe
final effectiveFloatRegSize:haxe.UInt64 = stdgo._internal.internal.abi.Abi_effectiveFloatRegSize.effectiveFloatRegSize
```


```haxe
final float32:stdgo._internal.internal.abi.Kind = stdgo._internal.internal.abi.Abi_float32.float32
```


```haxe
final float64:stdgo._internal.internal.abi.Kind = stdgo._internal.internal.abi.Abi_float64.float64
```


```haxe
final floatArgRegs:haxe.UInt64 = stdgo._internal.internal.abi.Abi_floatArgRegs.floatArgRegs
```


```haxe
final func:stdgo._internal.internal.abi.Kind = stdgo._internal.internal.abi.Abi_func.func
```


```haxe
final funcFlagAsm:stdgo._internal.internal.abi.FuncFlag = stdgo._internal.internal.abi.Abi_funcFlagAsm.funcFlagAsm
```


```haxe
final funcFlagSPWrite:stdgo._internal.internal.abi.FuncFlag = stdgo._internal.internal.abi.Abi_funcFlagSPWrite.funcFlagSPWrite
```


```haxe
final funcFlagTopFrame:stdgo.internal.abi.FuncFlag = stdgo._internal.internal.abi.Abi_funcFlagTopFrame.funcFlagTopFrame
```


```haxe
final funcIDNormal:stdgo.internal.abi.FuncID = stdgo._internal.internal.abi.Abi_funcIDNormal.funcIDNormal
```


```haxe
final funcIDWrapper:stdgo._internal.internal.abi.FuncID = stdgo._internal.internal.abi.Abi_funcIDWrapper.funcIDWrapper
```


```haxe
final funcID_abort:stdgo._internal.internal.abi.FuncID = stdgo._internal.internal.abi.Abi_funcID_abort.funcID_abort
```


```haxe
final funcID_asmcgocall:stdgo._internal.internal.abi.FuncID = stdgo._internal.internal.abi.Abi_funcID_asmcgocall.funcID_asmcgocall
```


```haxe
final funcID_asyncPreempt:stdgo._internal.internal.abi.FuncID = stdgo._internal.internal.abi.Abi_funcID_asyncPreempt.funcID_asyncPreempt
```


```haxe
final funcID_cgocallback:stdgo._internal.internal.abi.FuncID = stdgo._internal.internal.abi.Abi_funcID_cgocallback.funcID_cgocallback
```


```haxe
final funcID_debugCallV2:stdgo._internal.internal.abi.FuncID = stdgo._internal.internal.abi.Abi_funcID_debugCallV2.funcID_debugCallV2
```


```haxe
final funcID_gcBgMarkWorker:stdgo._internal.internal.abi.FuncID = stdgo._internal.internal.abi.Abi_funcID_gcBgMarkWorker.funcID_gcBgMarkWorker
```


```haxe
final funcID_goexit:stdgo._internal.internal.abi.FuncID = stdgo._internal.internal.abi.Abi_funcID_goexit.funcID_goexit
```


```haxe
final funcID_gogo:stdgo._internal.internal.abi.FuncID = stdgo._internal.internal.abi.Abi_funcID_gogo.funcID_gogo
```


```haxe
final funcID_gopanic:stdgo._internal.internal.abi.FuncID = stdgo._internal.internal.abi.Abi_funcID_gopanic.funcID_gopanic
```


```haxe
final funcID_handleAsyncEvent:stdgo._internal.internal.abi.FuncID = stdgo._internal.internal.abi.Abi_funcID_handleAsyncEvent.funcID_handleAsyncEvent
```


```haxe
final funcID_mcall:stdgo._internal.internal.abi.FuncID = stdgo._internal.internal.abi.Abi_funcID_mcall.funcID_mcall
```


```haxe
final funcID_morestack:stdgo._internal.internal.abi.FuncID = stdgo._internal.internal.abi.Abi_funcID_morestack.funcID_morestack
```


```haxe
final funcID_mstart:stdgo._internal.internal.abi.FuncID = stdgo._internal.internal.abi.Abi_funcID_mstart.funcID_mstart
```


```haxe
final funcID_panicwrap:stdgo._internal.internal.abi.FuncID = stdgo._internal.internal.abi.Abi_funcID_panicwrap.funcID_panicwrap
```


```haxe
final funcID_rt0_go:stdgo._internal.internal.abi.FuncID = stdgo._internal.internal.abi.Abi_funcID_rt0_go.funcID_rt0_go
```


```haxe
final funcID_runfinq:stdgo._internal.internal.abi.FuncID = stdgo._internal.internal.abi.Abi_funcID_runfinq.funcID_runfinq
```


```haxe
final funcID_runtime_main:stdgo._internal.internal.abi.FuncID = stdgo._internal.internal.abi.Abi_funcID_runtime_main.funcID_runtime_main
```


```haxe
final funcID_sigpanic:stdgo._internal.internal.abi.FuncID = stdgo._internal.internal.abi.Abi_funcID_sigpanic.funcID_sigpanic
```


```haxe
final funcID_systemstack:stdgo._internal.internal.abi.FuncID = stdgo._internal.internal.abi.Abi_funcID_systemstack.funcID_systemstack
```


```haxe
final funcID_systemstack_switch:stdgo._internal.internal.abi.FuncID = stdgo._internal.internal.abi.Abi_funcID_systemstack_switch.funcID_systemstack_switch
```


```haxe
final funcdata_ArgInfo:haxe.UInt64 = stdgo._internal.internal.abi.Abi_funcdata_ArgInfo.funcdata_ArgInfo
```


```haxe
final funcdata_ArgLiveInfo:haxe.UInt64 = stdgo._internal.internal.abi.Abi_funcdata_ArgLiveInfo.funcdata_ArgLiveInfo
```


```haxe
final funcdata_ArgsPointerMaps:haxe.UInt64 = stdgo._internal.internal.abi.Abi_funcdata_ArgsPointerMaps.funcdata_ArgsPointerMaps
```


```haxe
final funcdata_InlTree:haxe.UInt64 = stdgo._internal.internal.abi.Abi_funcdata_InlTree.funcdata_InlTree
```


```haxe
final funcdata_LocalsPointerMaps:haxe.UInt64 = stdgo._internal.internal.abi.Abi_funcdata_LocalsPointerMaps.funcdata_LocalsPointerMaps
```


```haxe
final funcdata_OpenCodedDeferInfo:haxe.UInt64 = stdgo._internal.internal.abi.Abi_funcdata_OpenCodedDeferInfo.funcdata_OpenCodedDeferInfo
```


```haxe
final funcdata_StackObjects:haxe.UInt64 = stdgo._internal.internal.abi.Abi_funcdata_StackObjects.funcdata_StackObjects
```


```haxe
final funcdata_WrapInfo:haxe.UInt64 = stdgo._internal.internal.abi.Abi_funcdata_WrapInfo.funcdata_WrapInfo
```


```haxe
final int16:stdgo._internal.internal.abi.Kind = stdgo._internal.internal.abi.Abi_int16.int16
```


```haxe
final int32:stdgo._internal.internal.abi.Kind = stdgo._internal.internal.abi.Abi_int32.int32
```


```haxe
final int64:stdgo._internal.internal.abi.Kind = stdgo._internal.internal.abi.Abi_int64.int64
```


```haxe
final int8:stdgo._internal.internal.abi.Kind = stdgo._internal.internal.abi.Abi_int8.int8
```


```haxe
final intArgRegs:haxe.UInt64 = stdgo._internal.internal.abi.Abi_intArgRegs.intArgRegs
```


```haxe
final int_:stdgo._internal.internal.abi.Kind = stdgo._internal.internal.abi.Abi_int_.int_
```


```haxe
final interface_:stdgo._internal.internal.abi.Kind = stdgo._internal.internal.abi.Abi_interface_.interface_
```


```haxe
final invalid:stdgo.internal.abi.Kind = stdgo._internal.internal.abi.Abi_invalid.invalid
```


```haxe
final invalidDir:stdgo.internal.abi.ChanDir = stdgo._internal.internal.abi.Abi_invalidDir.invalidDir
```


```haxe
final kindDirectIface:haxe.UInt64 = stdgo._internal.internal.abi.Abi_kindDirectIface.kindDirectIface
```


```haxe
final kindGCProg:haxe.UInt64 = stdgo._internal.internal.abi.Abi_kindGCProg.kindGCProg
```


```haxe
final kindMask:haxe.UInt64 = stdgo._internal.internal.abi.Abi_kindMask.kindMask
```


```haxe
final mapBucketCount:haxe.UInt64 = stdgo._internal.internal.abi.Abi_mapBucketCount.mapBucketCount
```


```haxe
final mapBucketCountBits:haxe.UInt64 = stdgo._internal.internal.abi.Abi_mapBucketCountBits.mapBucketCountBits
```


```haxe
final mapMaxElemBytes:haxe.UInt64 = stdgo._internal.internal.abi.Abi_mapMaxElemBytes.mapMaxElemBytes
```


```haxe
final mapMaxKeyBytes:haxe.UInt64 = stdgo._internal.internal.abi.Abi_mapMaxKeyBytes.mapMaxKeyBytes
```


```haxe
final map_:stdgo._internal.internal.abi.Kind = stdgo._internal.internal.abi.Abi_map_.map_
```


```haxe
final pcdata_ArgLiveIndex:haxe.UInt64 = stdgo._internal.internal.abi.Abi_pcdata_ArgLiveIndex.pcdata_ArgLiveIndex
```


```haxe
final pcdata_InlTreeIndex:haxe.UInt64 = stdgo._internal.internal.abi.Abi_pcdata_InlTreeIndex.pcdata_InlTreeIndex
```


```haxe
final pcdata_StackMapIndex:haxe.UInt64 = stdgo._internal.internal.abi.Abi_pcdata_StackMapIndex.pcdata_StackMapIndex
```


```haxe
final pcdata_UnsafePoint:haxe.UInt64 = stdgo._internal.internal.abi.Abi_pcdata_UnsafePoint.pcdata_UnsafePoint
```


```haxe
final pointer:stdgo._internal.internal.abi.Kind = stdgo._internal.internal.abi.Abi_pointer.pointer
```


```haxe
final recvDir:stdgo.internal.abi.ChanDir = stdgo._internal.internal.abi.Abi_recvDir.recvDir
```


```haxe
final sendDir:stdgo._internal.internal.abi.ChanDir = stdgo._internal.internal.abi.Abi_sendDir.sendDir
```


```haxe
final slice:stdgo._internal.internal.abi.Kind = stdgo._internal.internal.abi.Abi_slice.slice
```


```haxe
final stackBig:haxe.UInt64 = stdgo._internal.internal.abi.Abi_stackBig.stackBig
```


```haxe
final stackNosplitBase:haxe.UInt64 = stdgo._internal.internal.abi.Abi_stackNosplitBase.stackNosplitBase
```


```haxe
final stackSmall:haxe.UInt64 = stdgo._internal.internal.abi.Abi_stackSmall.stackSmall
```


```haxe
final string:stdgo._internal.internal.abi.Kind = stdgo._internal.internal.abi.Abi_string.string
```


```haxe
final struct_:stdgo._internal.internal.abi.Kind = stdgo._internal.internal.abi.Abi_struct_.struct_
```


```haxe
final tflagExtraStar:stdgo.internal.abi.TFlag = stdgo._internal.internal.abi.Abi_tflagExtraStar.tflagExtraStar
```


```haxe
final tflagNamed:stdgo.internal.abi.TFlag = stdgo._internal.internal.abi.Abi_tflagNamed.tflagNamed
```


```haxe
final tflagRegularMemory:stdgo.internal.abi.TFlag = stdgo._internal.internal.abi.Abi_tflagRegularMemory.tflagRegularMemory
```


```haxe
final tflagUncommon:stdgo.internal.abi.TFlag = stdgo._internal.internal.abi.Abi_tflagUncommon.tflagUncommon
```


```haxe
final uint:stdgo._internal.internal.abi.Kind = stdgo._internal.internal.abi.Abi_uint.uint
```


```haxe
final uint16:stdgo._internal.internal.abi.Kind = stdgo._internal.internal.abi.Abi_uint16.uint16
```


```haxe
final uint32:stdgo._internal.internal.abi.Kind = stdgo._internal.internal.abi.Abi_uint32.uint32
```


```haxe
final uint64:stdgo._internal.internal.abi.Kind = stdgo._internal.internal.abi.Abi_uint64.uint64
```


```haxe
final uint8:stdgo._internal.internal.abi.Kind = stdgo._internal.internal.abi.Abi_uint8.uint8
```


```haxe
final uintptr:stdgo._internal.internal.abi.Kind = stdgo._internal.internal.abi.Abi_uintptr.uintptr
```


```haxe
final unsafePointRestart1:haxe.UInt64 = stdgo._internal.internal.abi.Abi_unsafePointRestart1.unsafePointRestart1
```


```haxe
final unsafePointRestart2:haxe.UInt64 = stdgo._internal.internal.abi.Abi_unsafePointRestart2.unsafePointRestart2
```


```haxe
final unsafePointRestartAtEntry:haxe.UInt64 = stdgo._internal.internal.abi.Abi_unsafePointRestartAtEntry.unsafePointRestartAtEntry
```


```haxe
final unsafePointSafe:haxe.UInt64 = stdgo._internal.internal.abi.Abi_unsafePointSafe.unsafePointSafe
```


```haxe
final unsafePointUnsafe:haxe.UInt64 = stdgo._internal.internal.abi.Abi_unsafePointUnsafe.unsafePointUnsafe
```


```haxe
final unsafePointer:stdgo._internal.internal.abi.Kind = stdgo._internal.internal.abi.Abi_unsafePointer.unsafePointer
```


# Variables


```haxe
import stdgo.internal.abi.Abi
```


```haxe
var funcPCTestFnAddr:stdgo.GoUIntptr
```


# Classes


```haxe
import stdgo.internal.abi.*
```


## class Abi


### Abi function commonOffset


```haxe
function commonOffset(_ptrSize:Int, _twoWordAlignSlices:Bool):stdgo.internal.abi.Offset
```



CommonOffset returns the Offset to the data after the common portion of type data structures.  

[\(view code\)](<./Abi.hx#L1594>)


### Abi function commonSize


```haxe
function commonSize(_ptrSize:Int):Int
```



CommonSize returns sizeof\(Type\) for a compilation target with a given ptrSize  

[\(view code\)](<./Abi.hx#L1533>)


### Abi function funcPCABI0


```haxe
function funcPCABI0(_f:stdgo.AnyInterface):stdgo.GoUIntptr
```


```
FuncPCABI0 returns the entry PC of the function f, which must be a
        direct reference of a function defined as ABI0. Otherwise it is a
        compile-time error.
```

Implemented as a compile intrinsic.  

[\(view code\)](<./Abi.hx#L1613>)


### Abi function funcPCABIInternal


```haxe
function funcPCABIInternal(_f:stdgo.AnyInterface):stdgo.GoUIntptr
```


```
FuncPCABIInternal returns the entry PC of the function f. If f is a
        direct reference of a function, it must be defined as ABIInternal.
        Otherwise it is a compile-time error. If f is not a direct reference
        of a defined function, it assumes that f is a func value. Otherwise
        the behavior is undefined.
```

Implemented as a compile intrinsic.  

[\(view code\)](<./Abi.hx#L1625>)


### Abi function funcPCTest


```haxe
function funcPCTest():stdgo.GoUIntptr
```



go:noinline  

[\(view code\)](<./Abi.hx#L1603>)


### Abi function funcPCTestFn


```haxe
function funcPCTestFn():Void
```


[\(view code\)](<./Abi.hx#L1597>)


### Abi function imethodSize


```haxe
function imethodSize(_ptrSize:Int):Int
```



IMethodSize returns sizeof\(IMethod\) for a compilation target with a given ptrSize  

[\(view code\)](<./Abi.hx#L1552>)


### Abi function initializedOffset


```haxe
function initializedOffset(_off:Int, _align:UInt, _ptrSize:UInt, _twoWordAlignSlices:Bool):stdgo.internal.abi.Offset
```



InitializedOffset returns a new Offset with specified offset, alignment, pointer size, and slice alignment.  

[\(view code\)](<./Abi.hx#L1588>)


### Abi function kindOff


```haxe
function kindOff(_ptrSize:Int):Int
```



KindOff returns the offset of Type.Kind\_ for a compilation target with a given ptrSize  

[\(view code\)](<./Abi.hx#L1558>)


### Abi function newName


```haxe
function newName(_n:String, _tag:String, _exported:Bool, _embedded:Bool):stdgo.internal.abi.Name
```


[\(view code\)](<./Abi.hx#L1628>)


### Abi function newOffset


```haxe
function newOffset(_ptrSize:UInt, _twoWordAlignSlices:Bool):stdgo.internal.abi.Offset
```



NewOffset returns a new Offset with offset 0 and alignment 1.  

[\(view code\)](<./Abi.hx#L1582>)


### Abi function ptrBytesOff


```haxe
function ptrBytesOff(_ptrSize:Int):Int
```



PtrBytes returns the offset of Type.PtrBytes for a compilation target with a given ptrSize  

[\(view code\)](<./Abi.hx#L1570>)


### Abi function sizeOff


```haxe
function sizeOff(_ptrSize:Int):Int
```



SizeOff returns the offset of Type.Size\_ for a compilation target with a given ptrSize  

[\(view code\)](<./Abi.hx#L1564>)


### Abi function structFieldSize


```haxe
function structFieldSize(_ptrSize:Int):Int
```



StructFieldSize returns sizeof\(StructField\) for a compilation target with a given ptrSize  

[\(view code\)](<./Abi.hx#L1539>)


### Abi function tflagOff


```haxe
function tflagOff(_ptrSize:Int):Int
```



TFlagOff returns the offset of Type.TFlag for a compilation target with a given ptrSize  

[\(view code\)](<./Abi.hx#L1576>)


### Abi function uncommonSize


```haxe
function uncommonSize():haxe.UInt64
```


```
UncommonSize returns sizeof(UncommonType).  This currently does not depend on ptrSize.
        This exported function is in an internal package, so it may change to depend on ptrSize in the future.
```
[\(view code\)](<./Abi.hx#L1546>)


# Typedefs


```haxe
import stdgo.internal.abi.*
```


## typedef ChanDir


```haxe
typedef ChanDir = stdgo._internal.internal.abi.ChanDir;
```


## typedef FuncFlag


```haxe
typedef FuncFlag = stdgo._internal.internal.abi.FuncFlag;
```


## typedef FuncID


```haxe
typedef FuncID = stdgo._internal.internal.abi.FuncID;
```


## typedef IntArgRegBitmap


```haxe
typedef IntArgRegBitmap = stdgo._internal.internal.abi.IntArgRegBitmap;
```


## typedef Kind


```haxe
typedef Kind = stdgo._internal.internal.abi.Kind;
```


## typedef NameOff


```haxe
typedef NameOff = stdgo._internal.internal.abi.NameOff;
```


## typedef TFlag


```haxe
typedef TFlag = stdgo._internal.internal.abi.TFlag;
```


## typedef TextOff


```haxe
typedef TextOff = stdgo._internal.internal.abi.TextOff;
```


## typedef TypeOff


```haxe
typedef TypeOff = stdgo._internal.internal.abi.TypeOff;
```


# Abstracts


## abstract RegArgs


[\(view file containing code\)](<./Abi.hx>)


## abstract Offset


[\(view file containing code\)](<./Abi.hx>)


## abstract Type\_


[\(view file containing code\)](<./Abi.hx>)


## abstract Method


[\(view file containing code\)](<./Abi.hx>)


## abstract UncommonType


[\(view file containing code\)](<./Abi.hx>)


## abstract Imethod


[\(view file containing code\)](<./Abi.hx>)


## abstract ArrayType


[\(view file containing code\)](<./Abi.hx>)


## abstract ChanType


[\(view file containing code\)](<./Abi.hx>)


## abstract T\_structTypeUncommon


[\(view file containing code\)](<./Abi.hx>)


## abstract InterfaceType


[\(view file containing code\)](<./Abi.hx>)


## abstract MapType


[\(view file containing code\)](<./Abi.hx>)


## abstract SliceType


[\(view file containing code\)](<./Abi.hx>)


## abstract FuncType


[\(view file containing code\)](<./Abi.hx>)


## abstract PtrType


[\(view file containing code\)](<./Abi.hx>)


## abstract StructField


[\(view file containing code\)](<./Abi.hx>)


## abstract StructType


[\(view file containing code\)](<./Abi.hx>)


## abstract Name


[\(view file containing code\)](<./Abi.hx>)


## abstract T\_uncommon\_\_\_localname\_\_\_u\_8324


[\(view file containing code\)](<./Abi.hx>)


## abstract T\_uncommon\_\_\_localname\_\_\_u\_8423


[\(view file containing code\)](<./Abi.hx>)


## abstract T\_uncommon\_\_\_localname\_\_\_u\_8524


[\(view file containing code\)](<./Abi.hx>)


## abstract T\_uncommon\_\_\_localname\_\_\_u\_8626


[\(view file containing code\)](<./Abi.hx>)


## abstract T\_uncommon\_\_\_localname\_\_\_u\_8727


[\(view file containing code\)](<./Abi.hx>)


## abstract T\_uncommon\_\_\_localname\_\_\_u\_8826


[\(view file containing code\)](<./Abi.hx>)


## abstract T\_uncommon\_\_\_localname\_\_\_u\_8930


[\(view file containing code\)](<./Abi.hx>)


## abstract T\_uncommon\_\_\_localname\_\_\_u\_9033


[\(view file containing code\)](<./Abi.hx>)


