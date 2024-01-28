# Module: `stdgo.internal.abi`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function _addChecked(_p:stdgo._internal.unsafe.UnsafePointer, _x:stdgo.GoUIntptr, _whySafe:stdgo.GoString):Void`](<#function-_addchecked>)

- [`function _assertIsAPowerOfTwo(_x:stdgo.GoUInt8):Void`](<#function-_assertisapoweroftwo>)

- [`function _unsafeSliceFor(_b:stdgo.Pointer<stdgo.GoByte>, _l:stdgo.GoInt):Void`](<#function-_unsafeslicefor>)

- [`function _unsafeStringFor(_b:stdgo.Pointer<stdgo.GoByte>, _l:stdgo.GoInt):Void`](<#function-_unsafestringfor>)

- [`function _writeVarint(_buf:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):Void`](<#function-_writevarint>)

- [`function commonOffset(_ptrSize:stdgo.GoInt, _twoWordAlignSlices:Bool):Void`](<#function-commonoffset>)

- [`function commonSize(_ptrSize:stdgo.GoInt):Void`](<#function-commonsize>)

- [`function funcPCABI0(_f:stdgo.AnyInterface):Void`](<#function-funcpcabi0>)

- [`function funcPCABIInternal(_f:stdgo.AnyInterface):Void`](<#function-funcpcabiinternal>)

- [`function imethodSize(_ptrSize:stdgo.GoInt):Void`](<#function-imethodsize>)

- [`function initializedOffset(_off:stdgo.GoInt, _align:stdgo.GoUInt8, _ptrSize:stdgo.GoUInt8, _twoWordAlignSlices:Bool):Void`](<#function-initializedoffset>)

- [`function kindOff(_ptrSize:stdgo.GoInt):Void`](<#function-kindoff>)

- [`function newName(_n:stdgo.GoString, _tag:stdgo.GoString, _exported:Bool, _embedded:Bool):Void`](<#function-newname>)

- [`function newOffset(_ptrSize:stdgo.GoUInt8, _twoWordAlignSlices:Bool):Void`](<#function-newoffset>)

- [`function ptrBytesOff(_ptrSize:stdgo.GoInt):Void`](<#function-ptrbytesoff>)

- [`function sizeOff(_ptrSize:stdgo.GoInt):Void`](<#function-sizeoff>)

- [`function structFieldSize(_ptrSize:stdgo.GoInt):Void`](<#function-structfieldsize>)

- [`function tflagOff(_ptrSize:stdgo.GoInt):Void`](<#function-tflagoff>)

- [`function uncommonSize():Void`](<#function-uncommonsize>)

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

# Variables


```haxe
import stdgo.internal.abi.Abi
```


```haxe
var _kindNames:Dynamic
```


```haxe
var argsSizeUnknown:Dynamic
```


```haxe
var array:Dynamic
```


```haxe
var bool_:Dynamic
```


```haxe
var bothDir:Dynamic
```


```haxe
var chan:Dynamic
```


```haxe
var complex128:Dynamic
```


```haxe
var complex64:Dynamic
```


```haxe
var effectiveFloatRegSize:Dynamic
```


```haxe
var float32:Dynamic
```


```haxe
var float64:Dynamic
```


```haxe
var floatArgRegs:Dynamic
```


```haxe
var func:Dynamic
```


```haxe
var funcFlagAsm:Dynamic
```


```haxe
var funcFlagSPWrite:Dynamic
```


```haxe
var funcFlagTopFrame:Dynamic
```


```haxe
var funcIDNormal:Dynamic
```


```haxe
var funcIDWrapper:Dynamic
```


```haxe
var funcID_abort:Dynamic
```


```haxe
var funcID_asmcgocall:Dynamic
```


```haxe
var funcID_asyncPreempt:Dynamic
```


```haxe
var funcID_cgocallback:Dynamic
```


```haxe
var funcID_debugCallV2:Dynamic
```


```haxe
var funcID_gcBgMarkWorker:Dynamic
```


```haxe
var funcID_goexit:Dynamic
```


```haxe
var funcID_gogo:Dynamic
```


```haxe
var funcID_gopanic:Dynamic
```


```haxe
var funcID_handleAsyncEvent:Dynamic
```


```haxe
var funcID_mcall:Dynamic
```


```haxe
var funcID_morestack:Dynamic
```


```haxe
var funcID_mstart:Dynamic
```


```haxe
var funcID_panicwrap:Dynamic
```


```haxe
var funcID_rt0_go:Dynamic
```


```haxe
var funcID_runfinq:Dynamic
```


```haxe
var funcID_runtime_main:Dynamic
```


```haxe
var funcID_sigpanic:Dynamic
```


```haxe
var funcID_systemstack:Dynamic
```


```haxe
var funcID_systemstack_switch:Dynamic
```


```haxe
var funcdata_ArgInfo:Dynamic
```


```haxe
var funcdata_ArgLiveInfo:Dynamic
```


```haxe
var funcdata_ArgsPointerMaps:Dynamic
```


```haxe
var funcdata_InlTree:Dynamic
```


```haxe
var funcdata_LocalsPointerMaps:Dynamic
```


```haxe
var funcdata_OpenCodedDeferInfo:Dynamic
```


```haxe
var funcdata_StackObjects:Dynamic
```


```haxe
var funcdata_WrapInfo:Dynamic
```


```haxe
var int16:Dynamic
```


```haxe
var int32:Dynamic
```


```haxe
var int64:Dynamic
```


```haxe
var int8:Dynamic
```


```haxe
var intArgRegs:Dynamic
```


```haxe
var int_:Dynamic
```


```haxe
var interface_:Dynamic
```


```haxe
var invalid:Dynamic
```


```haxe
var invalidDir:Dynamic
```


```haxe
var kindDirectIface:Dynamic
```


```haxe
var kindGCProg:Dynamic
```


```haxe
var kindMask:Dynamic
```


```haxe
var mapBucketCount:Dynamic
```


```haxe
var mapBucketCountBits:Dynamic
```


```haxe
var mapMaxElemBytes:Dynamic
```


```haxe
var mapMaxKeyBytes:Dynamic
```


```haxe
var map_:Dynamic
```


```haxe
var pcdata_ArgLiveIndex:Dynamic
```


```haxe
var pcdata_InlTreeIndex:Dynamic
```


```haxe
var pcdata_StackMapIndex:Dynamic
```


```haxe
var pcdata_UnsafePoint:Dynamic
```


```haxe
var pointer:Dynamic
```


```haxe
var recvDir:Dynamic
```


```haxe
var sendDir:Dynamic
```


```haxe
var slice:Dynamic
```


```haxe
var stackBig:Dynamic
```


```haxe
var stackNosplitBase:Dynamic
```


```haxe
var stackSmall:Dynamic
```


```haxe
var string:Dynamic
```


```haxe
var struct_:Dynamic
```


```haxe
var tflagExtraStar:Dynamic
```


```haxe
var tflagNamed:Dynamic
```


```haxe
var tflagRegularMemory:Dynamic
```


```haxe
var tflagUncommon:Dynamic
```


```haxe
var uint:Dynamic
```


```haxe
var uint16:Dynamic
```


```haxe
var uint32:Dynamic
```


```haxe
var uint64:Dynamic
```


```haxe
var uint8:Dynamic
```


```haxe
var uintptr:Dynamic
```


```haxe
var unsafePointRestart1:Dynamic
```


```haxe
var unsafePointRestart2:Dynamic
```


```haxe
var unsafePointRestartAtEntry:Dynamic
```


```haxe
var unsafePointSafe:Dynamic
```


```haxe
var unsafePointUnsafe:Dynamic
```


```haxe
var unsafePointer:Dynamic
```


# Functions


```haxe
import stdgo.internal.abi.Abi
```


## function \_addChecked


```haxe
function _addChecked(_p:stdgo._internal.unsafe.UnsafePointer, _x:stdgo.GoUIntptr, _whySafe:stdgo.GoString):Void
```


[\(view code\)](<./Abi.hx#L134>)


## function \_assertIsAPowerOfTwo


```haxe
function _assertIsAPowerOfTwo(_x:stdgo.GoUInt8):Void
```


[\(view code\)](<./Abi.hx#L129>)


## function \_unsafeSliceFor


```haxe
function _unsafeSliceFor(_b:stdgo.Pointer<stdgo.GoByte>, _l:stdgo.GoInt):Void
```


[\(view code\)](<./Abi.hx#L138>)


## function \_unsafeStringFor


```haxe
function _unsafeStringFor(_b:stdgo.Pointer<stdgo.GoByte>, _l:stdgo.GoInt):Void
```


[\(view code\)](<./Abi.hx#L137>)


## function \_writeVarint


```haxe
function _writeVarint(_buf:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):Void
```


[\(view code\)](<./Abi.hx#L135>)


## function commonOffset


```haxe
function commonOffset(_ptrSize:stdgo.GoInt, _twoWordAlignSlices:Bool):Void
```


[\(view code\)](<./Abi.hx#L131>)


## function commonSize


```haxe
function commonSize(_ptrSize:stdgo.GoInt):Void
```


[\(view code\)](<./Abi.hx#L120>)


## function funcPCABI0


```haxe
function funcPCABI0(_f:stdgo.AnyInterface):Void
```


[\(view code\)](<./Abi.hx#L132>)


## function funcPCABIInternal


```haxe
function funcPCABIInternal(_f:stdgo.AnyInterface):Void
```


[\(view code\)](<./Abi.hx#L133>)


## function imethodSize


```haxe
function imethodSize(_ptrSize:stdgo.GoInt):Void
```


[\(view code\)](<./Abi.hx#L123>)


## function initializedOffset


```haxe
function initializedOffset(_off:stdgo.GoInt, _align:stdgo.GoUInt8, _ptrSize:stdgo.GoUInt8, _twoWordAlignSlices:Bool):Void
```


[\(view code\)](<./Abi.hx#L130>)


## function kindOff


```haxe
function kindOff(_ptrSize:stdgo.GoInt):Void
```


[\(view code\)](<./Abi.hx#L124>)


## function newName


```haxe
function newName(_n:stdgo.GoString, _tag:stdgo.GoString, _exported:Bool, _embedded:Bool):Void
```


[\(view code\)](<./Abi.hx#L136>)


## function newOffset


```haxe
function newOffset(_ptrSize:stdgo.GoUInt8, _twoWordAlignSlices:Bool):Void
```


[\(view code\)](<./Abi.hx#L128>)


## function ptrBytesOff


```haxe
function ptrBytesOff(_ptrSize:stdgo.GoInt):Void
```


[\(view code\)](<./Abi.hx#L126>)


## function sizeOff


```haxe
function sizeOff(_ptrSize:stdgo.GoInt):Void
```


[\(view code\)](<./Abi.hx#L125>)


## function structFieldSize


```haxe
function structFieldSize(_ptrSize:stdgo.GoInt):Void
```


[\(view code\)](<./Abi.hx#L121>)


## function tflagOff


```haxe
function tflagOff(_ptrSize:stdgo.GoInt):Void
```


[\(view code\)](<./Abi.hx#L127>)


## function uncommonSize


```haxe
function uncommonSize():Void
```


[\(view code\)](<./Abi.hx#L122>)


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


