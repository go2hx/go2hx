package stdgo.internal.abi;
@:invalid var _kindNames : Dynamic;
@:invalid var intArgRegs : Dynamic;
@:invalid var floatArgRegs : Dynamic;
@:invalid var effectiveFloatRegSize : Dynamic;
@:invalid var mapBucketCountBits : Dynamic;
@:invalid var mapBucketCount : Dynamic;
@:invalid var mapMaxKeyBytes : Dynamic;
@:invalid var mapMaxElemBytes : Dynamic;
@:invalid var stackNosplitBase : Dynamic;
@:invalid var stackSmall : Dynamic;
@:invalid var stackBig : Dynamic;
@:invalid var funcFlagTopFrame : Dynamic;
@:invalid var funcFlagSPWrite : Dynamic;
@:invalid var funcFlagAsm : Dynamic;
@:invalid var funcIDNormal : Dynamic;
@:invalid var funcID_abort : Dynamic;
@:invalid var funcID_asmcgocall : Dynamic;
@:invalid var funcID_asyncPreempt : Dynamic;
@:invalid var funcID_cgocallback : Dynamic;
@:invalid var funcID_debugCallV2 : Dynamic;
@:invalid var funcID_gcBgMarkWorker : Dynamic;
@:invalid var funcID_goexit : Dynamic;
@:invalid var funcID_gogo : Dynamic;
@:invalid var funcID_gopanic : Dynamic;
@:invalid var funcID_handleAsyncEvent : Dynamic;
@:invalid var funcID_mcall : Dynamic;
@:invalid var funcID_morestack : Dynamic;
@:invalid var funcID_mstart : Dynamic;
@:invalid var funcID_panicwrap : Dynamic;
@:invalid var funcID_rt0_go : Dynamic;
@:invalid var funcID_runfinq : Dynamic;
@:invalid var funcID_runtime_main : Dynamic;
@:invalid var funcID_sigpanic : Dynamic;
@:invalid var funcID_systemstack : Dynamic;
@:invalid var funcID_systemstack_switch : Dynamic;
@:invalid var funcIDWrapper : Dynamic;
@:invalid var argsSizeUnknown : Dynamic;
@:invalid var pcdata_UnsafePoint : Dynamic;
@:invalid var pcdata_StackMapIndex : Dynamic;
@:invalid var pcdata_InlTreeIndex : Dynamic;
@:invalid var pcdata_ArgLiveIndex : Dynamic;
@:invalid var funcdata_ArgsPointerMaps : Dynamic;
@:invalid var funcdata_LocalsPointerMaps : Dynamic;
@:invalid var funcdata_StackObjects : Dynamic;
@:invalid var funcdata_InlTree : Dynamic;
@:invalid var funcdata_OpenCodedDeferInfo : Dynamic;
@:invalid var funcdata_ArgInfo : Dynamic;
@:invalid var funcdata_ArgLiveInfo : Dynamic;
@:invalid var funcdata_WrapInfo : Dynamic;
@:invalid var unsafePointSafe : Dynamic;
@:invalid var unsafePointUnsafe : Dynamic;
@:invalid var unsafePointRestart1 : Dynamic;
@:invalid var unsafePointRestart2 : Dynamic;
@:invalid var unsafePointRestartAtEntry : Dynamic;
@:invalid var invalid : Dynamic;
@:invalid var bool_ : Dynamic;
@:invalid var int_ : Dynamic;
@:invalid var int8 : Dynamic;
@:invalid var int16 : Dynamic;
@:invalid var int32 : Dynamic;
@:invalid var int64 : Dynamic;
@:invalid var uint : Dynamic;
@:invalid var uint8 : Dynamic;
@:invalid var uint16 : Dynamic;
@:invalid var uint32 : Dynamic;
@:invalid var uint64 : Dynamic;
@:invalid var uintptr : Dynamic;
@:invalid var float32 : Dynamic;
@:invalid var float64 : Dynamic;
@:invalid var complex64 : Dynamic;
@:invalid var complex128 : Dynamic;
@:invalid var array : Dynamic;
@:invalid var chan : Dynamic;
@:invalid var func : Dynamic;
@:invalid var interface_ : Dynamic;
@:invalid var map_ : Dynamic;
@:invalid var pointer : Dynamic;
@:invalid var slice : Dynamic;
@:invalid var string : Dynamic;
@:invalid var struct_ : Dynamic;
@:invalid var unsafePointer : Dynamic;
@:invalid var kindDirectIface : Dynamic;
@:invalid var kindGCProg : Dynamic;
@:invalid var kindMask : Dynamic;
@:invalid var tflagUncommon : Dynamic;
@:invalid var tflagExtraStar : Dynamic;
@:invalid var tflagNamed : Dynamic;
@:invalid var tflagRegularMemory : Dynamic;
@:invalid var recvDir : Dynamic;
@:invalid var sendDir : Dynamic;
@:invalid var bothDir : Dynamic;
@:invalid var invalidDir : Dynamic;
@:invalid typedef RegArgs = Dynamic;
@:invalid typedef Offset = Dynamic;
@:invalid typedef Type_ = Dynamic;
@:invalid typedef Method = Dynamic;
@:invalid typedef UncommonType = Dynamic;
@:invalid typedef Imethod = Dynamic;
@:invalid typedef ArrayType = Dynamic;
@:invalid typedef ChanType = Dynamic;
@:invalid typedef T_structTypeUncommon = Dynamic;
@:invalid typedef InterfaceType = Dynamic;
@:invalid typedef MapType = Dynamic;
@:invalid typedef SliceType = Dynamic;
@:invalid typedef FuncType = Dynamic;
@:invalid typedef PtrType = Dynamic;
@:invalid typedef StructField = Dynamic;
@:invalid typedef StructType = Dynamic;
@:invalid typedef Name = Dynamic;
typedef IntArgRegBitmap = stdgo._internal.internal.abi.Abi.IntArgRegBitmap;
typedef FuncFlag = stdgo._internal.internal.abi.Abi.FuncFlag;
typedef FuncID = stdgo._internal.internal.abi.Abi.FuncID;
typedef Kind = stdgo._internal.internal.abi.Abi.Kind;
typedef TFlag = stdgo._internal.internal.abi.Abi.TFlag;
typedef NameOff = stdgo._internal.internal.abi.Abi.NameOff;
typedef TypeOff = stdgo._internal.internal.abi.Abi.TypeOff;
typedef TextOff = stdgo._internal.internal.abi.Abi.TextOff;
typedef ChanDir = stdgo._internal.internal.abi.Abi.ChanDir;
function commonSize(_ptrSize:stdgo.GoInt):Void {}
function structFieldSize(_ptrSize:stdgo.GoInt):Void {}
function uncommonSize():Void {}
function imethodSize(_ptrSize:stdgo.GoInt):Void {}
function kindOff(_ptrSize:stdgo.GoInt):Void {}
function sizeOff(_ptrSize:stdgo.GoInt):Void {}
function ptrBytesOff(_ptrSize:stdgo.GoInt):Void {}
function tflagOff(_ptrSize:stdgo.GoInt):Void {}
function newOffset(_ptrSize:stdgo.GoUInt8, _twoWordAlignSlices:Bool):Void {}
function _assertIsAPowerOfTwo(_x:stdgo.GoUInt8):Void {}
function initializedOffset(_off:stdgo.GoInt, _align:stdgo.GoUInt8, _ptrSize:stdgo.GoUInt8, _twoWordAlignSlices:Bool):Void {}
function commonOffset(_ptrSize:stdgo.GoInt, _twoWordAlignSlices:Bool):Void {}
function funcPCABI0(_f:stdgo.AnyInterface):Void {}
function funcPCABIInternal(_f:stdgo.AnyInterface):Void {}
function _addChecked(_p:stdgo._internal.unsafe.Unsafe.UnsafePointer, _x:stdgo.GoUIntptr, _whySafe:stdgo.GoString):Void {}
function _writeVarint(_buf:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):Void {}
function newName(_n:stdgo.GoString, _tag:stdgo.GoString, _exported:Bool, _embedded:Bool):Void {}
function _unsafeStringFor(_b:stdgo.Pointer<stdgo.GoByte>, _l:stdgo.GoInt):Void {}
function _unsafeSliceFor(_b:stdgo.Pointer<stdgo.GoByte>, _l:stdgo.GoInt):Void {}
@:invalid typedef RegArgs_asInterface = Dynamic;
@:invalid typedef RegArgs_static_extension = Dynamic;
@:invalid typedef Offset_asInterface = Dynamic;
@:invalid typedef Offset_static_extension = Dynamic;
@:invalid typedef Type__asInterface = Dynamic;
@:invalid typedef Type__static_extension = Dynamic;
@:invalid typedef T_uncommon_43___localname___u = Dynamic;
@:invalid typedef T_uncommon_44___localname___u = Dynamic;
@:invalid typedef T_uncommon_45___localname___u = Dynamic;
@:invalid typedef T_uncommon_46___localname___u = Dynamic;
@:invalid typedef T_uncommon_47___localname___u = Dynamic;
@:invalid typedef T_uncommon_48___localname___u = Dynamic;
@:invalid typedef T_uncommon_49___localname___u = Dynamic;
@:invalid typedef T_uncommon_50___localname___u = Dynamic;
@:invalid typedef UncommonType_asInterface = Dynamic;
@:invalid typedef UncommonType_static_extension = Dynamic;
@:invalid typedef ArrayType_asInterface = Dynamic;
@:invalid typedef ArrayType_static_extension = Dynamic;
@:invalid typedef ChanType_asInterface = Dynamic;
@:invalid typedef ChanType_static_extension = Dynamic;
@:invalid typedef T_structTypeUncommon_asInterface = Dynamic;
@:invalid typedef T_structTypeUncommon_static_extension = Dynamic;
@:invalid typedef InterfaceType_asInterface = Dynamic;
@:invalid typedef InterfaceType_static_extension = Dynamic;
@:invalid typedef MapType_asInterface = Dynamic;
@:invalid typedef MapType_static_extension = Dynamic;
@:invalid typedef SliceType_asInterface = Dynamic;
@:invalid typedef SliceType_static_extension = Dynamic;
@:invalid typedef FuncType_asInterface = Dynamic;
@:invalid typedef FuncType_static_extension = Dynamic;
@:invalid typedef PtrType_asInterface = Dynamic;
@:invalid typedef PtrType_static_extension = Dynamic;
@:invalid typedef StructField_asInterface = Dynamic;
@:invalid typedef StructField_static_extension = Dynamic;
@:invalid typedef StructType_asInterface = Dynamic;
@:invalid typedef StructType_static_extension = Dynamic;
@:invalid typedef Name_asInterface = Dynamic;
@:invalid typedef Name_static_extension = Dynamic;
@:invalid typedef IntArgRegBitmap_asInterface = Dynamic;
@:invalid typedef IntArgRegBitmap_static_extension = Dynamic;
@:invalid typedef Kind_asInterface = Dynamic;
@:invalid typedef Kind_static_extension = Dynamic;
