# Module: `stdgo.internal.abi`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [class Abi](<#class-abi>)

  - [`function commonOffset(_ptrSize:Int, _twoWordAlignSlices:Bool):stdgo.internal.abi.Offset`](<#abi-function-commonoffset>)

  - [`function commonSize(_ptrSize:Int):Int`](<#abi-function-commonsize>)

  - [`function funcPCABI0(_f:stdgo.AnyInterface):stdgo.GoUIntptr`](<#abi-function-funcpcabi0>)

  - [`function funcPCABIInternal(_f:stdgo.AnyInterface):stdgo.GoUIntptr`](<#abi-function-funcpcabiinternal>)

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
final argsSizeUnknown:haxe.UInt64 = stdgo._internal.internal.abi.Abi.argsSizeUnknown
```


```haxe
final array:stdgo._internal.internal.abi.Kind = stdgo._internal.internal.abi.Abi.array
```


```haxe
final bool_:stdgo._internal.internal.abi.Kind = stdgo._internal.internal.abi.Abi.bool_
```


```haxe
final bothDir:stdgo.internal.abi.ChanDir = stdgo._internal.internal.abi.Abi.bothDir
```


```haxe
final chan:stdgo._internal.internal.abi.Kind = stdgo._internal.internal.abi.Abi.chan
```


```haxe
final complex128:stdgo._internal.internal.abi.Kind = stdgo._internal.internal.abi.Abi.complex128
```


```haxe
final complex64:stdgo._internal.internal.abi.Kind = stdgo._internal.internal.abi.Abi.complex64
```


```haxe
final effectiveFloatRegSize:haxe.UInt64 = stdgo._internal.internal.abi.Abi.effectiveFloatRegSize
```


```haxe
final float32:stdgo._internal.internal.abi.Kind = stdgo._internal.internal.abi.Abi.float32
```


```haxe
final float64:stdgo._internal.internal.abi.Kind = stdgo._internal.internal.abi.Abi.float64
```


```haxe
final floatArgRegs:haxe.UInt64 = stdgo._internal.internal.abi.Abi.floatArgRegs
```


```haxe
final func:stdgo._internal.internal.abi.Kind = stdgo._internal.internal.abi.Abi.func
```


```haxe
final funcFlagAsm:stdgo._internal.internal.abi.FuncFlag = stdgo._internal.internal.abi.Abi.funcFlagAsm
```


```haxe
final funcFlagSPWrite:stdgo._internal.internal.abi.FuncFlag = stdgo._internal.internal.abi.Abi.funcFlagSPWrite
```


```haxe
final funcFlagTopFrame:stdgo.internal.abi.FuncFlag = stdgo._internal.internal.abi.Abi.funcFlagTopFrame
```


```haxe
final funcIDNormal:stdgo.internal.abi.FuncID = stdgo._internal.internal.abi.Abi.funcIDNormal
```


```haxe
final funcIDWrapper:stdgo._internal.internal.abi.FuncID = stdgo._internal.internal.abi.Abi.funcIDWrapper
```


```haxe
final funcID_abort:stdgo._internal.internal.abi.FuncID = stdgo._internal.internal.abi.Abi.funcID_abort
```


```haxe
final funcID_asmcgocall:stdgo._internal.internal.abi.FuncID = stdgo._internal.internal.abi.Abi.funcID_asmcgocall
```


```haxe
final funcID_asyncPreempt:stdgo._internal.internal.abi.FuncID = stdgo._internal.internal.abi.Abi.funcID_asyncPreempt
```


```haxe
final funcID_cgocallback:stdgo._internal.internal.abi.FuncID = stdgo._internal.internal.abi.Abi.funcID_cgocallback
```


```haxe
final funcID_debugCallV2:stdgo._internal.internal.abi.FuncID = stdgo._internal.internal.abi.Abi.funcID_debugCallV2
```


```haxe
final funcID_gcBgMarkWorker:stdgo._internal.internal.abi.FuncID = stdgo._internal.internal.abi.Abi.funcID_gcBgMarkWorker
```


```haxe
final funcID_goexit:stdgo._internal.internal.abi.FuncID = stdgo._internal.internal.abi.Abi.funcID_goexit
```


```haxe
final funcID_gogo:stdgo._internal.internal.abi.FuncID = stdgo._internal.internal.abi.Abi.funcID_gogo
```


```haxe
final funcID_gopanic:stdgo._internal.internal.abi.FuncID = stdgo._internal.internal.abi.Abi.funcID_gopanic
```


```haxe
final funcID_handleAsyncEvent:stdgo._internal.internal.abi.FuncID = stdgo._internal.internal.abi.Abi.funcID_handleAsyncEvent
```


```haxe
final funcID_mcall:stdgo._internal.internal.abi.FuncID = stdgo._internal.internal.abi.Abi.funcID_mcall
```


```haxe
final funcID_morestack:stdgo._internal.internal.abi.FuncID = stdgo._internal.internal.abi.Abi.funcID_morestack
```


```haxe
final funcID_mstart:stdgo._internal.internal.abi.FuncID = stdgo._internal.internal.abi.Abi.funcID_mstart
```


```haxe
final funcID_panicwrap:stdgo._internal.internal.abi.FuncID = stdgo._internal.internal.abi.Abi.funcID_panicwrap
```


```haxe
final funcID_rt0_go:stdgo._internal.internal.abi.FuncID = stdgo._internal.internal.abi.Abi.funcID_rt0_go
```


```haxe
final funcID_runfinq:stdgo._internal.internal.abi.FuncID = stdgo._internal.internal.abi.Abi.funcID_runfinq
```


```haxe
final funcID_runtime_main:stdgo._internal.internal.abi.FuncID = stdgo._internal.internal.abi.Abi.funcID_runtime_main
```


```haxe
final funcID_sigpanic:stdgo._internal.internal.abi.FuncID = stdgo._internal.internal.abi.Abi.funcID_sigpanic
```


```haxe
final funcID_systemstack:stdgo._internal.internal.abi.FuncID = stdgo._internal.internal.abi.Abi.funcID_systemstack
```


```haxe
final funcID_systemstack_switch:stdgo._internal.internal.abi.FuncID = stdgo._internal.internal.abi.Abi.funcID_systemstack_switch
```


```haxe
final funcdata_ArgInfo:haxe.UInt64 = stdgo._internal.internal.abi.Abi.funcdata_ArgInfo
```


```haxe
final funcdata_ArgLiveInfo:haxe.UInt64 = stdgo._internal.internal.abi.Abi.funcdata_ArgLiveInfo
```


```haxe
final funcdata_ArgsPointerMaps:haxe.UInt64 = stdgo._internal.internal.abi.Abi.funcdata_ArgsPointerMaps
```


```haxe
final funcdata_InlTree:haxe.UInt64 = stdgo._internal.internal.abi.Abi.funcdata_InlTree
```


```haxe
final funcdata_LocalsPointerMaps:haxe.UInt64 = stdgo._internal.internal.abi.Abi.funcdata_LocalsPointerMaps
```


```haxe
final funcdata_OpenCodedDeferInfo:haxe.UInt64 = stdgo._internal.internal.abi.Abi.funcdata_OpenCodedDeferInfo
```


```haxe
final funcdata_StackObjects:haxe.UInt64 = stdgo._internal.internal.abi.Abi.funcdata_StackObjects
```


```haxe
final funcdata_WrapInfo:haxe.UInt64 = stdgo._internal.internal.abi.Abi.funcdata_WrapInfo
```


```haxe
final int16:stdgo._internal.internal.abi.Kind = stdgo._internal.internal.abi.Abi.int16
```


```haxe
final int32:stdgo._internal.internal.abi.Kind = stdgo._internal.internal.abi.Abi.int32
```


```haxe
final int64:stdgo._internal.internal.abi.Kind = stdgo._internal.internal.abi.Abi.int64
```


```haxe
final int8:stdgo._internal.internal.abi.Kind = stdgo._internal.internal.abi.Abi.int8
```


```haxe
final intArgRegs:haxe.UInt64 = stdgo._internal.internal.abi.Abi.intArgRegs
```


```haxe
final int_:stdgo._internal.internal.abi.Kind = stdgo._internal.internal.abi.Abi.int_
```


```haxe
final interface_:stdgo._internal.internal.abi.Kind = stdgo._internal.internal.abi.Abi.interface_
```


```haxe
final invalid:stdgo.internal.abi.Kind = stdgo._internal.internal.abi.Abi.invalid
```


```haxe
final invalidDir:stdgo.internal.abi.ChanDir = stdgo._internal.internal.abi.Abi.invalidDir
```


```haxe
final kindDirectIface:haxe.UInt64 = stdgo._internal.internal.abi.Abi.kindDirectIface
```


```haxe
final kindGCProg:haxe.UInt64 = stdgo._internal.internal.abi.Abi.kindGCProg
```


```haxe
final kindMask:haxe.UInt64 = stdgo._internal.internal.abi.Abi.kindMask
```


```haxe
final mapBucketCount:haxe.UInt64 = stdgo._internal.internal.abi.Abi.mapBucketCount
```


```haxe
final mapBucketCountBits:haxe.UInt64 = stdgo._internal.internal.abi.Abi.mapBucketCountBits
```


```haxe
final mapMaxElemBytes:haxe.UInt64 = stdgo._internal.internal.abi.Abi.mapMaxElemBytes
```


```haxe
final mapMaxKeyBytes:haxe.UInt64 = stdgo._internal.internal.abi.Abi.mapMaxKeyBytes
```


```haxe
final map_:stdgo._internal.internal.abi.Kind = stdgo._internal.internal.abi.Abi.map_
```


```haxe
final pcdata_ArgLiveIndex:haxe.UInt64 = stdgo._internal.internal.abi.Abi.pcdata_ArgLiveIndex
```


```haxe
final pcdata_InlTreeIndex:haxe.UInt64 = stdgo._internal.internal.abi.Abi.pcdata_InlTreeIndex
```


```haxe
final pcdata_StackMapIndex:haxe.UInt64 = stdgo._internal.internal.abi.Abi.pcdata_StackMapIndex
```


```haxe
final pcdata_UnsafePoint:haxe.UInt64 = stdgo._internal.internal.abi.Abi.pcdata_UnsafePoint
```


```haxe
final pointer:stdgo._internal.internal.abi.Kind = stdgo._internal.internal.abi.Abi.pointer
```


```haxe
final recvDir:stdgo.internal.abi.ChanDir = stdgo._internal.internal.abi.Abi.recvDir
```


```haxe
final sendDir:stdgo._internal.internal.abi.ChanDir = stdgo._internal.internal.abi.Abi.sendDir
```


```haxe
final slice:stdgo._internal.internal.abi.Kind = stdgo._internal.internal.abi.Abi.slice
```


```haxe
final stackBig:haxe.UInt64 = stdgo._internal.internal.abi.Abi.stackBig
```


```haxe
final stackNosplitBase:haxe.UInt64 = stdgo._internal.internal.abi.Abi.stackNosplitBase
```


```haxe
final stackSmall:haxe.UInt64 = stdgo._internal.internal.abi.Abi.stackSmall
```


```haxe
final string:stdgo._internal.internal.abi.Kind = stdgo._internal.internal.abi.Abi.string
```


```haxe
final struct_:stdgo._internal.internal.abi.Kind = stdgo._internal.internal.abi.Abi.struct_
```


```haxe
final tflagExtraStar:stdgo.internal.abi.TFlag = stdgo._internal.internal.abi.Abi.tflagExtraStar
```


```haxe
final tflagNamed:stdgo.internal.abi.TFlag = stdgo._internal.internal.abi.Abi.tflagNamed
```


```haxe
final tflagRegularMemory:stdgo.internal.abi.TFlag = stdgo._internal.internal.abi.Abi.tflagRegularMemory
```


```haxe
final tflagUncommon:stdgo.internal.abi.TFlag = stdgo._internal.internal.abi.Abi.tflagUncommon
```


```haxe
final uint:stdgo._internal.internal.abi.Kind = stdgo._internal.internal.abi.Abi.uint
```


```haxe
final uint16:stdgo._internal.internal.abi.Kind = stdgo._internal.internal.abi.Abi.uint16
```


```haxe
final uint32:stdgo._internal.internal.abi.Kind = stdgo._internal.internal.abi.Abi.uint32
```


```haxe
final uint64:stdgo._internal.internal.abi.Kind = stdgo._internal.internal.abi.Abi.uint64
```


```haxe
final uint8:stdgo._internal.internal.abi.Kind = stdgo._internal.internal.abi.Abi.uint8
```


```haxe
final uintptr:stdgo._internal.internal.abi.Kind = stdgo._internal.internal.abi.Abi.uintptr
```


```haxe
final unsafePointRestart1:haxe.UInt64 = stdgo._internal.internal.abi.Abi.unsafePointRestart1
```


```haxe
final unsafePointRestart2:haxe.UInt64 = stdgo._internal.internal.abi.Abi.unsafePointRestart2
```


```haxe
final unsafePointRestartAtEntry:haxe.UInt64 = stdgo._internal.internal.abi.Abi.unsafePointRestartAtEntry
```


```haxe
final unsafePointSafe:haxe.UInt64 = stdgo._internal.internal.abi.Abi.unsafePointSafe
```


```haxe
final unsafePointUnsafe:haxe.UInt64 = stdgo._internal.internal.abi.Abi.unsafePointUnsafe
```


```haxe
final unsafePointer:stdgo._internal.internal.abi.Kind = stdgo._internal.internal.abi.Abi.unsafePointer
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

[\(view code\)](<./Abi.hx#L1588>)


### Abi function commonSize


```haxe
function commonSize(_ptrSize:Int):Int
```



CommonSize returns sizeof\(Type\) for a compilation target with a given ptrSize  

[\(view code\)](<./Abi.hx#L1527>)


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

[\(view code\)](<./Abi.hx#L1598>)


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

[\(view code\)](<./Abi.hx#L1610>)


### Abi function imethodSize


```haxe
function imethodSize(_ptrSize:Int):Int
```



IMethodSize returns sizeof\(IMethod\) for a compilation target with a given ptrSize  

[\(view code\)](<./Abi.hx#L1546>)


### Abi function initializedOffset


```haxe
function initializedOffset(_off:Int, _align:UInt, _ptrSize:UInt, _twoWordAlignSlices:Bool):stdgo.internal.abi.Offset
```



InitializedOffset returns a new Offset with specified offset, alignment, pointer size, and slice alignment.  

[\(view code\)](<./Abi.hx#L1582>)


### Abi function kindOff


```haxe
function kindOff(_ptrSize:Int):Int
```



KindOff returns the offset of Type.Kind\_ for a compilation target with a given ptrSize  

[\(view code\)](<./Abi.hx#L1552>)


### Abi function newName


```haxe
function newName(_n:String, _tag:String, _exported:Bool, _embedded:Bool):stdgo.internal.abi.Name
```


[\(view code\)](<./Abi.hx#L1613>)


### Abi function newOffset


```haxe
function newOffset(_ptrSize:UInt, _twoWordAlignSlices:Bool):stdgo.internal.abi.Offset
```



NewOffset returns a new Offset with offset 0 and alignment 1.  

[\(view code\)](<./Abi.hx#L1576>)


### Abi function ptrBytesOff


```haxe
function ptrBytesOff(_ptrSize:Int):Int
```



PtrBytes returns the offset of Type.PtrBytes for a compilation target with a given ptrSize  

[\(view code\)](<./Abi.hx#L1564>)


### Abi function sizeOff


```haxe
function sizeOff(_ptrSize:Int):Int
```



SizeOff returns the offset of Type.Size\_ for a compilation target with a given ptrSize  

[\(view code\)](<./Abi.hx#L1558>)


### Abi function structFieldSize


```haxe
function structFieldSize(_ptrSize:Int):Int
```



StructFieldSize returns sizeof\(StructField\) for a compilation target with a given ptrSize  

[\(view code\)](<./Abi.hx#L1533>)


### Abi function tflagOff


```haxe
function tflagOff(_ptrSize:Int):Int
```



TFlagOff returns the offset of Type.TFlag for a compilation target with a given ptrSize  

[\(view code\)](<./Abi.hx#L1570>)


### Abi function uncommonSize


```haxe
function uncommonSize():haxe.UInt64
```


```
UncommonSize returns sizeof(UncommonType).  This currently does not depend on ptrSize.
        This exported function is in an internal package, so it may change to depend on ptrSize in the future.
```
[\(view code\)](<./Abi.hx#L1540>)


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


