package stdgo.internal.abi;
final intArgRegs : haxe.UInt64 = stdgo._internal.internal.abi.Abi.intArgRegs;
final floatArgRegs : haxe.UInt64 = stdgo._internal.internal.abi.Abi.floatArgRegs;
final effectiveFloatRegSize : haxe.UInt64 = stdgo._internal.internal.abi.Abi.effectiveFloatRegSize;
final mapBucketCountBits : haxe.UInt64 = stdgo._internal.internal.abi.Abi.mapBucketCountBits;
final mapBucketCount : haxe.UInt64 = stdgo._internal.internal.abi.Abi.mapBucketCount;
final mapMaxKeyBytes : haxe.UInt64 = stdgo._internal.internal.abi.Abi.mapMaxKeyBytes;
final mapMaxElemBytes : haxe.UInt64 = stdgo._internal.internal.abi.Abi.mapMaxElemBytes;
final stackNosplitBase : haxe.UInt64 = stdgo._internal.internal.abi.Abi.stackNosplitBase;
final stackSmall : haxe.UInt64 = stdgo._internal.internal.abi.Abi.stackSmall;
final stackBig : haxe.UInt64 = stdgo._internal.internal.abi.Abi.stackBig;
final funcFlagTopFrame : stdgo._internal.internal.abi.Abi.FuncFlag = stdgo._internal.internal.abi.Abi.funcFlagTopFrame;
final funcFlagSPWrite = stdgo._internal.internal.abi.Abi.funcFlagSPWrite;
final funcFlagAsm = stdgo._internal.internal.abi.Abi.funcFlagAsm;
final funcIDNormal : stdgo._internal.internal.abi.Abi.FuncID = stdgo._internal.internal.abi.Abi.funcIDNormal;
final funcID_abort = stdgo._internal.internal.abi.Abi.funcID_abort;
final funcID_asmcgocall = stdgo._internal.internal.abi.Abi.funcID_asmcgocall;
final funcID_asyncPreempt = stdgo._internal.internal.abi.Abi.funcID_asyncPreempt;
final funcID_cgocallback = stdgo._internal.internal.abi.Abi.funcID_cgocallback;
final funcID_debugCallV2 = stdgo._internal.internal.abi.Abi.funcID_debugCallV2;
final funcID_gcBgMarkWorker = stdgo._internal.internal.abi.Abi.funcID_gcBgMarkWorker;
final funcID_goexit = stdgo._internal.internal.abi.Abi.funcID_goexit;
final funcID_gogo = stdgo._internal.internal.abi.Abi.funcID_gogo;
final funcID_gopanic = stdgo._internal.internal.abi.Abi.funcID_gopanic;
final funcID_handleAsyncEvent = stdgo._internal.internal.abi.Abi.funcID_handleAsyncEvent;
final funcID_mcall = stdgo._internal.internal.abi.Abi.funcID_mcall;
final funcID_morestack = stdgo._internal.internal.abi.Abi.funcID_morestack;
final funcID_mstart = stdgo._internal.internal.abi.Abi.funcID_mstart;
final funcID_panicwrap = stdgo._internal.internal.abi.Abi.funcID_panicwrap;
final funcID_rt0_go = stdgo._internal.internal.abi.Abi.funcID_rt0_go;
final funcID_runfinq = stdgo._internal.internal.abi.Abi.funcID_runfinq;
final funcID_runtime_main = stdgo._internal.internal.abi.Abi.funcID_runtime_main;
final funcID_sigpanic = stdgo._internal.internal.abi.Abi.funcID_sigpanic;
final funcID_systemstack = stdgo._internal.internal.abi.Abi.funcID_systemstack;
final funcID_systemstack_switch = stdgo._internal.internal.abi.Abi.funcID_systemstack_switch;
final funcIDWrapper = stdgo._internal.internal.abi.Abi.funcIDWrapper;
final argsSizeUnknown : haxe.UInt64 = stdgo._internal.internal.abi.Abi.argsSizeUnknown;
final pcdata_UnsafePoint : haxe.UInt64 = stdgo._internal.internal.abi.Abi.pcdata_UnsafePoint;
final pcdata_StackMapIndex : haxe.UInt64 = stdgo._internal.internal.abi.Abi.pcdata_StackMapIndex;
final pcdata_InlTreeIndex : haxe.UInt64 = stdgo._internal.internal.abi.Abi.pcdata_InlTreeIndex;
final pcdata_ArgLiveIndex : haxe.UInt64 = stdgo._internal.internal.abi.Abi.pcdata_ArgLiveIndex;
final funcdata_ArgsPointerMaps : haxe.UInt64 = stdgo._internal.internal.abi.Abi.funcdata_ArgsPointerMaps;
final funcdata_LocalsPointerMaps : haxe.UInt64 = stdgo._internal.internal.abi.Abi.funcdata_LocalsPointerMaps;
final funcdata_StackObjects : haxe.UInt64 = stdgo._internal.internal.abi.Abi.funcdata_StackObjects;
final funcdata_InlTree : haxe.UInt64 = stdgo._internal.internal.abi.Abi.funcdata_InlTree;
final funcdata_OpenCodedDeferInfo : haxe.UInt64 = stdgo._internal.internal.abi.Abi.funcdata_OpenCodedDeferInfo;
final funcdata_ArgInfo : haxe.UInt64 = stdgo._internal.internal.abi.Abi.funcdata_ArgInfo;
final funcdata_ArgLiveInfo : haxe.UInt64 = stdgo._internal.internal.abi.Abi.funcdata_ArgLiveInfo;
final funcdata_WrapInfo : haxe.UInt64 = stdgo._internal.internal.abi.Abi.funcdata_WrapInfo;
final unsafePointSafe : haxe.UInt64 = stdgo._internal.internal.abi.Abi.unsafePointSafe;
final unsafePointUnsafe : haxe.UInt64 = stdgo._internal.internal.abi.Abi.unsafePointUnsafe;
final unsafePointRestart1 : haxe.UInt64 = stdgo._internal.internal.abi.Abi.unsafePointRestart1;
final unsafePointRestart2 : haxe.UInt64 = stdgo._internal.internal.abi.Abi.unsafePointRestart2;
final unsafePointRestartAtEntry : haxe.UInt64 = stdgo._internal.internal.abi.Abi.unsafePointRestartAtEntry;
final invalid : stdgo._internal.internal.abi.Abi.Kind = stdgo._internal.internal.abi.Abi.invalid;
final bool_ = stdgo._internal.internal.abi.Abi.bool_;
final int_ = stdgo._internal.internal.abi.Abi.int_;
final int8 = stdgo._internal.internal.abi.Abi.int8;
final int16 = stdgo._internal.internal.abi.Abi.int16;
final int32 = stdgo._internal.internal.abi.Abi.int32;
final int64 = stdgo._internal.internal.abi.Abi.int64;
final uint = stdgo._internal.internal.abi.Abi.uint;
final uint8 = stdgo._internal.internal.abi.Abi.uint8;
final uint16 = stdgo._internal.internal.abi.Abi.uint16;
final uint32 = stdgo._internal.internal.abi.Abi.uint32;
final uint64 = stdgo._internal.internal.abi.Abi.uint64;
final uintptr = stdgo._internal.internal.abi.Abi.uintptr;
final float32 = stdgo._internal.internal.abi.Abi.float32;
final float64 = stdgo._internal.internal.abi.Abi.float64;
final complex64 = stdgo._internal.internal.abi.Abi.complex64;
final complex128 = stdgo._internal.internal.abi.Abi.complex128;
final array = stdgo._internal.internal.abi.Abi.array;
final chan = stdgo._internal.internal.abi.Abi.chan;
final func = stdgo._internal.internal.abi.Abi.func;
final interface_ = stdgo._internal.internal.abi.Abi.interface_;
final map_ = stdgo._internal.internal.abi.Abi.map_;
final pointer = stdgo._internal.internal.abi.Abi.pointer;
final slice = stdgo._internal.internal.abi.Abi.slice;
final string = stdgo._internal.internal.abi.Abi.string;
final struct_ = stdgo._internal.internal.abi.Abi.struct_;
final unsafePointer = stdgo._internal.internal.abi.Abi.unsafePointer;
final kindDirectIface : haxe.UInt64 = stdgo._internal.internal.abi.Abi.kindDirectIface;
final kindGCProg : haxe.UInt64 = stdgo._internal.internal.abi.Abi.kindGCProg;
final kindMask : haxe.UInt64 = stdgo._internal.internal.abi.Abi.kindMask;
final tflagUncommon : stdgo._internal.internal.abi.Abi.TFlag = stdgo._internal.internal.abi.Abi.tflagUncommon;
final tflagExtraStar : stdgo._internal.internal.abi.Abi.TFlag = stdgo._internal.internal.abi.Abi.tflagExtraStar;
final tflagNamed : stdgo._internal.internal.abi.Abi.TFlag = stdgo._internal.internal.abi.Abi.tflagNamed;
final tflagRegularMemory : stdgo._internal.internal.abi.Abi.TFlag = stdgo._internal.internal.abi.Abi.tflagRegularMemory;
final recvDir : stdgo._internal.internal.abi.Abi.ChanDir = stdgo._internal.internal.abi.Abi.recvDir;
final sendDir = stdgo._internal.internal.abi.Abi.sendDir;
final bothDir : stdgo._internal.internal.abi.Abi.ChanDir = stdgo._internal.internal.abi.Abi.bothDir;
final invalidDir : stdgo._internal.internal.abi.Abi.ChanDir = stdgo._internal.internal.abi.Abi.invalidDir;
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
/**
    // CommonSize returns sizeof(Type) for a compilation target with a given ptrSize
**/
inline function commonSize(ptrSize:Int):Int throw "not implemented";
/**
    // StructFieldSize returns sizeof(StructField) for a compilation target with a given ptrSize
**/
inline function structFieldSize(ptrSize:Int):Int throw "not implemented";
/**
    // UncommonSize returns sizeof(UncommonType).  This currently does not depend on ptrSize.
    // This exported function is in an internal package, so it may change to depend on ptrSize in the future.
**/
inline function uncommonSize():haxe.UInt64 throw "not implemented";
/**
    // IMethodSize returns sizeof(IMethod) for a compilation target with a given ptrSize
**/
inline function imethodSize(ptrSize:Int):Int throw "not implemented";
/**
    // KindOff returns the offset of Type.Kind_ for a compilation target with a given ptrSize
**/
inline function kindOff(ptrSize:Int):Int throw "not implemented";
/**
    // SizeOff returns the offset of Type.Size_ for a compilation target with a given ptrSize
**/
inline function sizeOff(ptrSize:Int):Int throw "not implemented";
/**
    // PtrBytes returns the offset of Type.PtrBytes for a compilation target with a given ptrSize
**/
inline function ptrBytesOff(ptrSize:Int):Int throw "not implemented";
/**
    // TFlagOff returns the offset of Type.TFlag for a compilation target with a given ptrSize
**/
inline function tflagOff(ptrSize:Int):Int throw "not implemented";
/**
    // NewOffset returns a new Offset with offset 0 and alignment 1.
**/
inline function newOffset(ptrSize:UInt, twoWordAlignSlices:Bool):Offset throw "not implemented";
/**
    // InitializedOffset returns a new Offset with specified offset, alignment, pointer size, and slice alignment.
**/
inline function initializedOffset(off:Int, align:UInt, ptrSize:UInt, twoWordAlignSlices:Bool):Offset throw "not implemented";
/**
    // CommonOffset returns the Offset to the data after the common portion of type data structures.
**/
inline function commonOffset(ptrSize:Int, twoWordAlignSlices:Bool):Offset throw "not implemented";
/**
    // FuncPCABI0 returns the entry PC of the function f, which must be a
    // direct reference of a function defined as ABI0. Otherwise it is a
    // compile-time error.
    //
    // Implemented as a compile intrinsic.
**/
inline function funcPCABI0(f:stdgo.AnyInterface):stdgo.GoUIntptr throw "not implemented";
/**
    // FuncPCABIInternal returns the entry PC of the function f. If f is a
    // direct reference of a function, it must be defined as ABIInternal.
    // Otherwise it is a compile-time error. If f is not a direct reference
    // of a defined function, it assumes that f is a func value. Otherwise
    // the behavior is undefined.
    //
    // Implemented as a compile intrinsic.
**/
inline function funcPCABIInternal(f:stdgo.AnyInterface):stdgo.GoUIntptr throw "not implemented";
inline function newName(n:String, tag:String, exported:Bool, embedded:Bool):Name throw "not implemented";
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
