# Module: `stdgo.internal.abi`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [`function commonOffset(ptrSize:Int, twoWordAlignSlices:Bool):stdgo.internal.abi.Offset`](<#function-commonoffset>)

- [`function commonSize(ptrSize:Int):Int`](<#function-commonsize>)

- [`function funcPCABI0(f:stdgo.AnyInterface):stdgo.GoUIntptr`](<#function-funcpcabi0>)

- [`function funcPCABIInternal(f:stdgo.AnyInterface):stdgo.GoUIntptr`](<#function-funcpcabiinternal>)

- [`function imethodSize(ptrSize:Int):Int`](<#function-imethodsize>)

- [`function initializedOffset(off:Int, align:UInt, ptrSize:UInt, twoWordAlignSlices:Bool):stdgo.internal.abi.Offset`](<#function-initializedoffset>)

- [`function kindOff(ptrSize:Int):Int`](<#function-kindoff>)

- [`function newName(n:String, tag:String, exported:Bool, embedded:Bool):stdgo.internal.abi.Name`](<#function-newname>)

- [`function newOffset(ptrSize:UInt, twoWordAlignSlices:Bool):stdgo.internal.abi.Offset`](<#function-newoffset>)

- [`function ptrBytesOff(ptrSize:Int):Int`](<#function-ptrbytesoff>)

- [`function sizeOff(ptrSize:Int):Int`](<#function-sizeoff>)

- [`function structFieldSize(ptrSize:Int):Int`](<#function-structfieldsize>)

- [`function tflagOff(ptrSize:Int):Int`](<#function-tflagoff>)

- [`function uncommonSize():haxe.UInt64`](<#function-uncommonsize>)

- [typedef ArrayType](<#typedef-arraytype>)

- [typedef ArrayType\_asInterface](<#typedef-arraytype_asinterface>)

- [typedef ArrayType\_static\_extension](<#typedef-arraytype_static_extension>)

- [typedef ChanDir](<#typedef-chandir>)

- [typedef ChanType](<#typedef-chantype>)

- [typedef ChanType\_asInterface](<#typedef-chantype_asinterface>)

- [typedef ChanType\_static\_extension](<#typedef-chantype_static_extension>)

- [typedef FuncFlag](<#typedef-funcflag>)

- [typedef FuncID](<#typedef-funcid>)

- [typedef FuncType](<#typedef-functype>)

- [typedef FuncType\_asInterface](<#typedef-functype_asinterface>)

- [typedef FuncType\_static\_extension](<#typedef-functype_static_extension>)

- [typedef Imethod](<#typedef-imethod>)

- [typedef IntArgRegBitmap](<#typedef-intargregbitmap>)

- [typedef IntArgRegBitmap\_asInterface](<#typedef-intargregbitmap_asinterface>)

- [typedef IntArgRegBitmap\_static\_extension](<#typedef-intargregbitmap_static_extension>)

- [typedef InterfaceType](<#typedef-interfacetype>)

- [typedef InterfaceType\_asInterface](<#typedef-interfacetype_asinterface>)

- [typedef InterfaceType\_static\_extension](<#typedef-interfacetype_static_extension>)

- [typedef Kind](<#typedef-kind>)

- [typedef Kind\_asInterface](<#typedef-kind_asinterface>)

- [typedef Kind\_static\_extension](<#typedef-kind_static_extension>)

- [typedef MapType](<#typedef-maptype>)

- [typedef MapType\_asInterface](<#typedef-maptype_asinterface>)

- [typedef MapType\_static\_extension](<#typedef-maptype_static_extension>)

- [typedef Method](<#typedef-method>)

- [typedef Name](<#typedef-name>)

- [typedef NameOff](<#typedef-nameoff>)

- [typedef Name\_asInterface](<#typedef-name_asinterface>)

- [typedef Name\_static\_extension](<#typedef-name_static_extension>)

- [typedef Offset](<#typedef-offset>)

- [typedef Offset\_asInterface](<#typedef-offset_asinterface>)

- [typedef Offset\_static\_extension](<#typedef-offset_static_extension>)

- [typedef PtrType](<#typedef-ptrtype>)

- [typedef PtrType\_asInterface](<#typedef-ptrtype_asinterface>)

- [typedef PtrType\_static\_extension](<#typedef-ptrtype_static_extension>)

- [typedef RegArgs](<#typedef-regargs>)

- [typedef RegArgs\_asInterface](<#typedef-regargs_asinterface>)

- [typedef RegArgs\_static\_extension](<#typedef-regargs_static_extension>)

- [typedef SliceType](<#typedef-slicetype>)

- [typedef SliceType\_asInterface](<#typedef-slicetype_asinterface>)

- [typedef SliceType\_static\_extension](<#typedef-slicetype_static_extension>)

- [typedef StructField](<#typedef-structfield>)

- [typedef StructField\_asInterface](<#typedef-structfield_asinterface>)

- [typedef StructField\_static\_extension](<#typedef-structfield_static_extension>)

- [typedef StructType](<#typedef-structtype>)

- [typedef StructType\_asInterface](<#typedef-structtype_asinterface>)

- [typedef StructType\_static\_extension](<#typedef-structtype_static_extension>)

- [typedef TFlag](<#typedef-tflag>)

- [typedef T\_structTypeUncommon](<#typedef-t_structtypeuncommon>)

- [typedef T\_structTypeUncommon\_asInterface](<#typedef-t_structtypeuncommon_asinterface>)

- [typedef T\_structTypeUncommon\_static\_extension](<#typedef-t_structtypeuncommon_static_extension>)

- [typedef T\_uncommon\_43\_\_\_localname\_\_\_u](<#typedef-t_uncommon_43localnameu>)

- [typedef T\_uncommon\_44\_\_\_localname\_\_\_u](<#typedef-t_uncommon_44localnameu>)

- [typedef T\_uncommon\_45\_\_\_localname\_\_\_u](<#typedef-t_uncommon_45localnameu>)

- [typedef T\_uncommon\_46\_\_\_localname\_\_\_u](<#typedef-t_uncommon_46localnameu>)

- [typedef T\_uncommon\_47\_\_\_localname\_\_\_u](<#typedef-t_uncommon_47localnameu>)

- [typedef T\_uncommon\_48\_\_\_localname\_\_\_u](<#typedef-t_uncommon_48localnameu>)

- [typedef T\_uncommon\_49\_\_\_localname\_\_\_u](<#typedef-t_uncommon_49localnameu>)

- [typedef T\_uncommon\_50\_\_\_localname\_\_\_u](<#typedef-t_uncommon_50localnameu>)

- [typedef TextOff](<#typedef-textoff>)

- [typedef TypeOff](<#typedef-typeoff>)

- [typedef Type\_](<#typedef-type_>)

- [typedef Type\_\_asInterface](<#typedef-type__asinterface>)

- [typedef Type\_\_static\_extension](<#typedef-type__static_extension>)

- [typedef UncommonType](<#typedef-uncommontype>)

- [typedef UncommonType\_asInterface](<#typedef-uncommontype_asinterface>)

- [typedef UncommonType\_static\_extension](<#typedef-uncommontype_static_extension>)

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
final bothDir:stdgo._internal.internal.abi.ChanDir = stdgo._internal.internal.abi.Abi.bothDir
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
final funcFlagTopFrame:stdgo._internal.internal.abi.FuncFlag = stdgo._internal.internal.abi.Abi.funcFlagTopFrame
```


```haxe
final funcIDNormal:stdgo._internal.internal.abi.FuncID = stdgo._internal.internal.abi.Abi.funcIDNormal
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
final invalid:stdgo._internal.internal.abi.Kind = stdgo._internal.internal.abi.Abi.invalid
```


```haxe
final invalidDir:stdgo._internal.internal.abi.ChanDir = stdgo._internal.internal.abi.Abi.invalidDir
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
final recvDir:stdgo._internal.internal.abi.ChanDir = stdgo._internal.internal.abi.Abi.recvDir
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
final tflagExtraStar:stdgo._internal.internal.abi.TFlag = stdgo._internal.internal.abi.Abi.tflagExtraStar
```


```haxe
final tflagNamed:stdgo._internal.internal.abi.TFlag = stdgo._internal.internal.abi.Abi.tflagNamed
```


```haxe
final tflagRegularMemory:stdgo._internal.internal.abi.TFlag = stdgo._internal.internal.abi.Abi.tflagRegularMemory
```


```haxe
final tflagUncommon:stdgo._internal.internal.abi.TFlag = stdgo._internal.internal.abi.Abi.tflagUncommon
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


# Functions


```haxe
import stdgo.internal.abi.Abi
```


## function commonOffset


```haxe
function commonOffset(ptrSize:Int, twoWordAlignSlices:Bool):stdgo.internal.abi.Offset
```



CommonOffset returns the Offset to the data after the common portion of type data structures.  

[\(view code\)](<./Abi.hx#L163>)


## function commonSize


```haxe
function commonSize(ptrSize:Int):Int
```



CommonSize returns sizeof\(Type\) for a compilation target with a given ptrSize  

[\(view code\)](<./Abi.hx#L122>)


## function funcPCABI0


```haxe
function funcPCABI0(f:stdgo.AnyInterface):stdgo.GoUIntptr
```


```
FuncPCABI0 returns the entry PC of the function f, which must be a
    direct reference of a function defined as ABI0. Otherwise it is a
    compile-time error.
```

Implemented as a compile intrinsic.  

[\(view code\)](<./Abi.hx#L171>)


## function funcPCABIInternal


```haxe
function funcPCABIInternal(f:stdgo.AnyInterface):stdgo.GoUIntptr
```


```
FuncPCABIInternal returns the entry PC of the function f. If f is a
    direct reference of a function, it must be defined as ABIInternal.
    Otherwise it is a compile-time error. If f is not a direct reference
    of a defined function, it assumes that f is a func value. Otherwise
    the behavior is undefined.
```

Implemented as a compile intrinsic.  

[\(view code\)](<./Abi.hx#L181>)


## function imethodSize


```haxe
function imethodSize(ptrSize:Int):Int
```



IMethodSize returns sizeof\(IMethod\) for a compilation target with a given ptrSize  

[\(view code\)](<./Abi.hx#L135>)


## function initializedOffset


```haxe
function initializedOffset(off:Int, align:UInt, ptrSize:UInt, twoWordAlignSlices:Bool):stdgo.internal.abi.Offset
```



InitializedOffset returns a new Offset with specified offset, alignment, pointer size, and slice alignment.  

[\(view code\)](<./Abi.hx#L159>)


## function kindOff


```haxe
function kindOff(ptrSize:Int):Int
```



KindOff returns the offset of Type.Kind\_ for a compilation target with a given ptrSize  

[\(view code\)](<./Abi.hx#L139>)


## function newName


```haxe
function newName(n:String, tag:String, exported:Bool, embedded:Bool):stdgo.internal.abi.Name
```


[\(view code\)](<./Abi.hx#L182>)


## function newOffset


```haxe
function newOffset(ptrSize:UInt, twoWordAlignSlices:Bool):stdgo.internal.abi.Offset
```



NewOffset returns a new Offset with offset 0 and alignment 1.  

[\(view code\)](<./Abi.hx#L155>)


## function ptrBytesOff


```haxe
function ptrBytesOff(ptrSize:Int):Int
```



PtrBytes returns the offset of Type.PtrBytes for a compilation target with a given ptrSize  

[\(view code\)](<./Abi.hx#L147>)


## function sizeOff


```haxe
function sizeOff(ptrSize:Int):Int
```



SizeOff returns the offset of Type.Size\_ for a compilation target with a given ptrSize  

[\(view code\)](<./Abi.hx#L143>)


## function structFieldSize


```haxe
function structFieldSize(ptrSize:Int):Int
```



StructFieldSize returns sizeof\(StructField\) for a compilation target with a given ptrSize  

[\(view code\)](<./Abi.hx#L126>)


## function tflagOff


```haxe
function tflagOff(ptrSize:Int):Int
```



TFlagOff returns the offset of Type.TFlag for a compilation target with a given ptrSize  

[\(view code\)](<./Abi.hx#L151>)


## function uncommonSize


```haxe
function uncommonSize():haxe.UInt64
```


```
UncommonSize returns sizeof(UncommonType).  This currently does not depend on ptrSize.
    This exported function is in an internal package, so it may change to depend on ptrSize in the future.
```
[\(view code\)](<./Abi.hx#L131>)


# Typedefs


```haxe
import stdgo.internal.abi.*
```


## typedef ArrayType


```haxe
typedef ArrayType = Dynamic;
```


## typedef ArrayType\_asInterface


```haxe
typedef ArrayType_asInterface = Dynamic;
```


## typedef ArrayType\_static\_extension


```haxe
typedef ArrayType_static_extension = Dynamic;
```


## typedef ChanDir


```haxe
typedef ChanDir = stdgo._internal.internal.abi.ChanDir;
```


## typedef ChanType


```haxe
typedef ChanType = Dynamic;
```


## typedef ChanType\_asInterface


```haxe
typedef ChanType_asInterface = Dynamic;
```


## typedef ChanType\_static\_extension


```haxe
typedef ChanType_static_extension = Dynamic;
```


## typedef FuncFlag


```haxe
typedef FuncFlag = stdgo._internal.internal.abi.FuncFlag;
```


## typedef FuncID


```haxe
typedef FuncID = stdgo._internal.internal.abi.FuncID;
```


## typedef FuncType


```haxe
typedef FuncType = Dynamic;
```


## typedef FuncType\_asInterface


```haxe
typedef FuncType_asInterface = Dynamic;
```


## typedef FuncType\_static\_extension


```haxe
typedef FuncType_static_extension = Dynamic;
```


## typedef Imethod


```haxe
typedef Imethod = Dynamic;
```


## typedef IntArgRegBitmap


```haxe
typedef IntArgRegBitmap = stdgo._internal.internal.abi.IntArgRegBitmap;
```


## typedef IntArgRegBitmap\_asInterface


```haxe
typedef IntArgRegBitmap_asInterface = Dynamic;
```


## typedef IntArgRegBitmap\_static\_extension


```haxe
typedef IntArgRegBitmap_static_extension = Dynamic;
```


## typedef InterfaceType


```haxe
typedef InterfaceType = Dynamic;
```


## typedef InterfaceType\_asInterface


```haxe
typedef InterfaceType_asInterface = Dynamic;
```


## typedef InterfaceType\_static\_extension


```haxe
typedef InterfaceType_static_extension = Dynamic;
```


## typedef Kind


```haxe
typedef Kind = stdgo._internal.internal.abi.Kind;
```


## typedef Kind\_asInterface


```haxe
typedef Kind_asInterface = Dynamic;
```


## typedef Kind\_static\_extension


```haxe
typedef Kind_static_extension = Dynamic;
```


## typedef MapType


```haxe
typedef MapType = Dynamic;
```


## typedef MapType\_asInterface


```haxe
typedef MapType_asInterface = Dynamic;
```


## typedef MapType\_static\_extension


```haxe
typedef MapType_static_extension = Dynamic;
```


## typedef Method


```haxe
typedef Method = Dynamic;
```


## typedef Name


```haxe
typedef Name = Dynamic;
```


## typedef NameOff


```haxe
typedef NameOff = stdgo._internal.internal.abi.NameOff;
```


## typedef Name\_asInterface


```haxe
typedef Name_asInterface = Dynamic;
```


## typedef Name\_static\_extension


```haxe
typedef Name_static_extension = Dynamic;
```


## typedef Offset


```haxe
typedef Offset = Dynamic;
```


## typedef Offset\_asInterface


```haxe
typedef Offset_asInterface = Dynamic;
```


## typedef Offset\_static\_extension


```haxe
typedef Offset_static_extension = Dynamic;
```


## typedef PtrType


```haxe
typedef PtrType = Dynamic;
```


## typedef PtrType\_asInterface


```haxe
typedef PtrType_asInterface = Dynamic;
```


## typedef PtrType\_static\_extension


```haxe
typedef PtrType_static_extension = Dynamic;
```


## typedef RegArgs


```haxe
typedef RegArgs = Dynamic;
```


## typedef RegArgs\_asInterface


```haxe
typedef RegArgs_asInterface = Dynamic;
```


## typedef RegArgs\_static\_extension


```haxe
typedef RegArgs_static_extension = Dynamic;
```


## typedef SliceType


```haxe
typedef SliceType = Dynamic;
```


## typedef SliceType\_asInterface


```haxe
typedef SliceType_asInterface = Dynamic;
```


## typedef SliceType\_static\_extension


```haxe
typedef SliceType_static_extension = Dynamic;
```


## typedef StructField


```haxe
typedef StructField = Dynamic;
```


## typedef StructField\_asInterface


```haxe
typedef StructField_asInterface = Dynamic;
```


## typedef StructField\_static\_extension


```haxe
typedef StructField_static_extension = Dynamic;
```


## typedef StructType


```haxe
typedef StructType = Dynamic;
```


## typedef StructType\_asInterface


```haxe
typedef StructType_asInterface = Dynamic;
```


## typedef StructType\_static\_extension


```haxe
typedef StructType_static_extension = Dynamic;
```


## typedef TFlag


```haxe
typedef TFlag = stdgo._internal.internal.abi.TFlag;
```


## typedef T\_structTypeUncommon


```haxe
typedef T_structTypeUncommon = Dynamic;
```


## typedef T\_structTypeUncommon\_asInterface


```haxe
typedef T_structTypeUncommon_asInterface = Dynamic;
```


## typedef T\_structTypeUncommon\_static\_extension


```haxe
typedef T_structTypeUncommon_static_extension = Dynamic;
```


## typedef T\_uncommon\_43\_\_\_localname\_\_\_u


```haxe
typedef T_uncommon_43___localname___u = Dynamic;
```


## typedef T\_uncommon\_44\_\_\_localname\_\_\_u


```haxe
typedef T_uncommon_44___localname___u = Dynamic;
```


## typedef T\_uncommon\_45\_\_\_localname\_\_\_u


```haxe
typedef T_uncommon_45___localname___u = Dynamic;
```


## typedef T\_uncommon\_46\_\_\_localname\_\_\_u


```haxe
typedef T_uncommon_46___localname___u = Dynamic;
```


## typedef T\_uncommon\_47\_\_\_localname\_\_\_u


```haxe
typedef T_uncommon_47___localname___u = Dynamic;
```


## typedef T\_uncommon\_48\_\_\_localname\_\_\_u


```haxe
typedef T_uncommon_48___localname___u = Dynamic;
```


## typedef T\_uncommon\_49\_\_\_localname\_\_\_u


```haxe
typedef T_uncommon_49___localname___u = Dynamic;
```


## typedef T\_uncommon\_50\_\_\_localname\_\_\_u


```haxe
typedef T_uncommon_50___localname___u = Dynamic;
```


## typedef TextOff


```haxe
typedef TextOff = stdgo._internal.internal.abi.TextOff;
```


## typedef TypeOff


```haxe
typedef TypeOff = stdgo._internal.internal.abi.TypeOff;
```


## typedef Type\_


```haxe
typedef Type_ = Dynamic;
```


## typedef Type\_\_asInterface


```haxe
typedef Type__asInterface = Dynamic;
```


## typedef Type\_\_static\_extension


```haxe
typedef Type__static_extension = Dynamic;
```


## typedef UncommonType


```haxe
typedef UncommonType = Dynamic;
```


## typedef UncommonType\_asInterface


```haxe
typedef UncommonType_asInterface = Dynamic;
```


## typedef UncommonType\_static\_extension


```haxe
typedef UncommonType_static_extension = Dynamic;
```


