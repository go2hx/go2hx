package stdgo.internal;
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
@:forward @:forward.new abstract RegArgs(stdgo._internal.internal.abi.Abi.RegArgs) from stdgo._internal.internal.abi.Abi.RegArgs to stdgo._internal.internal.abi.Abi.RegArgs {

}
@:forward @:forward.new abstract Offset(stdgo._internal.internal.abi.Abi.Offset) from stdgo._internal.internal.abi.Abi.Offset to stdgo._internal.internal.abi.Abi.Offset {

}
@:forward @:forward.new abstract Type_(stdgo._internal.internal.abi.Abi.Type_) from stdgo._internal.internal.abi.Abi.Type_ to stdgo._internal.internal.abi.Abi.Type_ {

}
@:forward @:forward.new abstract Method(stdgo._internal.internal.abi.Abi.Method) from stdgo._internal.internal.abi.Abi.Method to stdgo._internal.internal.abi.Abi.Method {

}
@:forward @:forward.new abstract UncommonType(stdgo._internal.internal.abi.Abi.UncommonType) from stdgo._internal.internal.abi.Abi.UncommonType to stdgo._internal.internal.abi.Abi.UncommonType {

}
@:forward @:forward.new abstract Imethod(stdgo._internal.internal.abi.Abi.Imethod) from stdgo._internal.internal.abi.Abi.Imethod to stdgo._internal.internal.abi.Abi.Imethod {

}
@:forward @:forward.new abstract ArrayType(stdgo._internal.internal.abi.Abi.ArrayType) from stdgo._internal.internal.abi.Abi.ArrayType to stdgo._internal.internal.abi.Abi.ArrayType {

}
@:forward @:forward.new abstract ChanType(stdgo._internal.internal.abi.Abi.ChanType) from stdgo._internal.internal.abi.Abi.ChanType to stdgo._internal.internal.abi.Abi.ChanType {

}
@:forward @:forward.new abstract T_structTypeUncommon(stdgo._internal.internal.abi.Abi.T_structTypeUncommon) from stdgo._internal.internal.abi.Abi.T_structTypeUncommon to stdgo._internal.internal.abi.Abi.T_structTypeUncommon {

}
@:forward @:forward.new abstract InterfaceType(stdgo._internal.internal.abi.Abi.InterfaceType) from stdgo._internal.internal.abi.Abi.InterfaceType to stdgo._internal.internal.abi.Abi.InterfaceType {

}
@:forward @:forward.new abstract MapType(stdgo._internal.internal.abi.Abi.MapType) from stdgo._internal.internal.abi.Abi.MapType to stdgo._internal.internal.abi.Abi.MapType {

}
@:forward @:forward.new abstract SliceType(stdgo._internal.internal.abi.Abi.SliceType) from stdgo._internal.internal.abi.Abi.SliceType to stdgo._internal.internal.abi.Abi.SliceType {

}
@:forward @:forward.new abstract FuncType(stdgo._internal.internal.abi.Abi.FuncType) from stdgo._internal.internal.abi.Abi.FuncType to stdgo._internal.internal.abi.Abi.FuncType {

}
@:forward @:forward.new abstract PtrType(stdgo._internal.internal.abi.Abi.PtrType) from stdgo._internal.internal.abi.Abi.PtrType to stdgo._internal.internal.abi.Abi.PtrType {

}
@:forward @:forward.new abstract StructField(stdgo._internal.internal.abi.Abi.StructField) from stdgo._internal.internal.abi.Abi.StructField to stdgo._internal.internal.abi.Abi.StructField {

}
@:forward @:forward.new abstract StructType(stdgo._internal.internal.abi.Abi.StructType) from stdgo._internal.internal.abi.Abi.StructType to stdgo._internal.internal.abi.Abi.StructType {

}
@:forward @:forward.new abstract Name(stdgo._internal.internal.abi.Abi.Name) from stdgo._internal.internal.abi.Abi.Name to stdgo._internal.internal.abi.Abi.Name {

}
typedef IntArgRegBitmap = stdgo._internal.internal.abi.Abi.IntArgRegBitmap;
typedef FuncFlag = stdgo._internal.internal.abi.Abi.FuncFlag;
typedef FuncID = stdgo._internal.internal.abi.Abi.FuncID;
typedef Kind = stdgo._internal.internal.abi.Abi.Kind;
typedef TFlag = stdgo._internal.internal.abi.Abi.TFlag;
typedef NameOff = stdgo._internal.internal.abi.Abi.NameOff;
typedef TypeOff = stdgo._internal.internal.abi.Abi.TypeOff;
typedef TextOff = stdgo._internal.internal.abi.Abi.TextOff;
typedef ChanDir = stdgo._internal.internal.abi.Abi.ChanDir;
@:forward @:forward.new abstract RegArgs_asInterface(stdgo._internal.internal.abi.Abi.RegArgs_asInterface) from stdgo._internal.internal.abi.Abi.RegArgs_asInterface to stdgo._internal.internal.abi.Abi.RegArgs_asInterface {

}
@:forward @:forward.new abstract RegArgs_static_extension(stdgo._internal.internal.abi.Abi.RegArgs_static_extension) from stdgo._internal.internal.abi.Abi.RegArgs_static_extension to stdgo._internal.internal.abi.Abi.RegArgs_static_extension {

}
@:forward @:forward.new abstract Offset_asInterface(stdgo._internal.internal.abi.Abi.Offset_asInterface) from stdgo._internal.internal.abi.Abi.Offset_asInterface to stdgo._internal.internal.abi.Abi.Offset_asInterface {

}
@:forward @:forward.new abstract Offset_static_extension(stdgo._internal.internal.abi.Abi.Offset_static_extension) from stdgo._internal.internal.abi.Abi.Offset_static_extension to stdgo._internal.internal.abi.Abi.Offset_static_extension {

}
@:forward @:forward.new abstract Type__asInterface(stdgo._internal.internal.abi.Abi.Type__asInterface) from stdgo._internal.internal.abi.Abi.Type__asInterface to stdgo._internal.internal.abi.Abi.Type__asInterface {

}
@:forward @:forward.new abstract Type__static_extension(stdgo._internal.internal.abi.Abi.Type__static_extension) from stdgo._internal.internal.abi.Abi.Type__static_extension to stdgo._internal.internal.abi.Abi.Type__static_extension {

}
@:forward @:forward.new abstract T_uncommon_43___localname___u(stdgo._internal.internal.abi.Abi.T_uncommon_43___localname___u) from stdgo._internal.internal.abi.Abi.T_uncommon_43___localname___u to stdgo._internal.internal.abi.Abi.T_uncommon_43___localname___u {

}
@:forward @:forward.new abstract T_uncommon_44___localname___u(stdgo._internal.internal.abi.Abi.T_uncommon_44___localname___u) from stdgo._internal.internal.abi.Abi.T_uncommon_44___localname___u to stdgo._internal.internal.abi.Abi.T_uncommon_44___localname___u {

}
@:forward @:forward.new abstract T_uncommon_45___localname___u(stdgo._internal.internal.abi.Abi.T_uncommon_45___localname___u) from stdgo._internal.internal.abi.Abi.T_uncommon_45___localname___u to stdgo._internal.internal.abi.Abi.T_uncommon_45___localname___u {

}
@:forward @:forward.new abstract T_uncommon_46___localname___u(stdgo._internal.internal.abi.Abi.T_uncommon_46___localname___u) from stdgo._internal.internal.abi.Abi.T_uncommon_46___localname___u to stdgo._internal.internal.abi.Abi.T_uncommon_46___localname___u {

}
@:forward @:forward.new abstract T_uncommon_47___localname___u(stdgo._internal.internal.abi.Abi.T_uncommon_47___localname___u) from stdgo._internal.internal.abi.Abi.T_uncommon_47___localname___u to stdgo._internal.internal.abi.Abi.T_uncommon_47___localname___u {

}
@:forward @:forward.new abstract T_uncommon_48___localname___u(stdgo._internal.internal.abi.Abi.T_uncommon_48___localname___u) from stdgo._internal.internal.abi.Abi.T_uncommon_48___localname___u to stdgo._internal.internal.abi.Abi.T_uncommon_48___localname___u {

}
@:forward @:forward.new abstract T_uncommon_49___localname___u(stdgo._internal.internal.abi.Abi.T_uncommon_49___localname___u) from stdgo._internal.internal.abi.Abi.T_uncommon_49___localname___u to stdgo._internal.internal.abi.Abi.T_uncommon_49___localname___u {

}
@:forward @:forward.new abstract T_uncommon_50___localname___u(stdgo._internal.internal.abi.Abi.T_uncommon_50___localname___u) from stdgo._internal.internal.abi.Abi.T_uncommon_50___localname___u to stdgo._internal.internal.abi.Abi.T_uncommon_50___localname___u {

}
@:forward @:forward.new abstract UncommonType_asInterface(stdgo._internal.internal.abi.Abi.UncommonType_asInterface) from stdgo._internal.internal.abi.Abi.UncommonType_asInterface to stdgo._internal.internal.abi.Abi.UncommonType_asInterface {

}
@:forward @:forward.new abstract UncommonType_static_extension(stdgo._internal.internal.abi.Abi.UncommonType_static_extension) from stdgo._internal.internal.abi.Abi.UncommonType_static_extension to stdgo._internal.internal.abi.Abi.UncommonType_static_extension {

}
@:forward @:forward.new abstract ArrayType_asInterface(stdgo._internal.internal.abi.Abi.ArrayType_asInterface) from stdgo._internal.internal.abi.Abi.ArrayType_asInterface to stdgo._internal.internal.abi.Abi.ArrayType_asInterface {

}
@:forward @:forward.new abstract ArrayType_static_extension(stdgo._internal.internal.abi.Abi.ArrayType_static_extension) from stdgo._internal.internal.abi.Abi.ArrayType_static_extension to stdgo._internal.internal.abi.Abi.ArrayType_static_extension {

}
@:forward @:forward.new abstract ChanType_asInterface(stdgo._internal.internal.abi.Abi.ChanType_asInterface) from stdgo._internal.internal.abi.Abi.ChanType_asInterface to stdgo._internal.internal.abi.Abi.ChanType_asInterface {

}
@:forward @:forward.new abstract ChanType_static_extension(stdgo._internal.internal.abi.Abi.ChanType_static_extension) from stdgo._internal.internal.abi.Abi.ChanType_static_extension to stdgo._internal.internal.abi.Abi.ChanType_static_extension {

}
@:forward @:forward.new abstract T_structTypeUncommon_asInterface(stdgo._internal.internal.abi.Abi.T_structTypeUncommon_asInterface) from stdgo._internal.internal.abi.Abi.T_structTypeUncommon_asInterface to stdgo._internal.internal.abi.Abi.T_structTypeUncommon_asInterface {

}
@:forward @:forward.new abstract T_structTypeUncommon_static_extension(stdgo._internal.internal.abi.Abi.T_structTypeUncommon_static_extension) from stdgo._internal.internal.abi.Abi.T_structTypeUncommon_static_extension to stdgo._internal.internal.abi.Abi.T_structTypeUncommon_static_extension {

}
@:forward @:forward.new abstract InterfaceType_asInterface(stdgo._internal.internal.abi.Abi.InterfaceType_asInterface) from stdgo._internal.internal.abi.Abi.InterfaceType_asInterface to stdgo._internal.internal.abi.Abi.InterfaceType_asInterface {

}
@:forward @:forward.new abstract InterfaceType_static_extension(stdgo._internal.internal.abi.Abi.InterfaceType_static_extension) from stdgo._internal.internal.abi.Abi.InterfaceType_static_extension to stdgo._internal.internal.abi.Abi.InterfaceType_static_extension {

}
@:forward @:forward.new abstract MapType_asInterface(stdgo._internal.internal.abi.Abi.MapType_asInterface) from stdgo._internal.internal.abi.Abi.MapType_asInterface to stdgo._internal.internal.abi.Abi.MapType_asInterface {

}
@:forward @:forward.new abstract MapType_static_extension(stdgo._internal.internal.abi.Abi.MapType_static_extension) from stdgo._internal.internal.abi.Abi.MapType_static_extension to stdgo._internal.internal.abi.Abi.MapType_static_extension {

}
@:forward @:forward.new abstract SliceType_asInterface(stdgo._internal.internal.abi.Abi.SliceType_asInterface) from stdgo._internal.internal.abi.Abi.SliceType_asInterface to stdgo._internal.internal.abi.Abi.SliceType_asInterface {

}
@:forward @:forward.new abstract SliceType_static_extension(stdgo._internal.internal.abi.Abi.SliceType_static_extension) from stdgo._internal.internal.abi.Abi.SliceType_static_extension to stdgo._internal.internal.abi.Abi.SliceType_static_extension {

}
@:forward @:forward.new abstract FuncType_asInterface(stdgo._internal.internal.abi.Abi.FuncType_asInterface) from stdgo._internal.internal.abi.Abi.FuncType_asInterface to stdgo._internal.internal.abi.Abi.FuncType_asInterface {

}
@:forward @:forward.new abstract FuncType_static_extension(stdgo._internal.internal.abi.Abi.FuncType_static_extension) from stdgo._internal.internal.abi.Abi.FuncType_static_extension to stdgo._internal.internal.abi.Abi.FuncType_static_extension {

}
@:forward @:forward.new abstract PtrType_asInterface(stdgo._internal.internal.abi.Abi.PtrType_asInterface) from stdgo._internal.internal.abi.Abi.PtrType_asInterface to stdgo._internal.internal.abi.Abi.PtrType_asInterface {

}
@:forward @:forward.new abstract PtrType_static_extension(stdgo._internal.internal.abi.Abi.PtrType_static_extension) from stdgo._internal.internal.abi.Abi.PtrType_static_extension to stdgo._internal.internal.abi.Abi.PtrType_static_extension {

}
@:forward @:forward.new abstract StructField_asInterface(stdgo._internal.internal.abi.Abi.StructField_asInterface) from stdgo._internal.internal.abi.Abi.StructField_asInterface to stdgo._internal.internal.abi.Abi.StructField_asInterface {

}
@:forward @:forward.new abstract StructField_static_extension(stdgo._internal.internal.abi.Abi.StructField_static_extension) from stdgo._internal.internal.abi.Abi.StructField_static_extension to stdgo._internal.internal.abi.Abi.StructField_static_extension {

}
@:forward @:forward.new abstract StructType_asInterface(stdgo._internal.internal.abi.Abi.StructType_asInterface) from stdgo._internal.internal.abi.Abi.StructType_asInterface to stdgo._internal.internal.abi.Abi.StructType_asInterface {

}
@:forward @:forward.new abstract StructType_static_extension(stdgo._internal.internal.abi.Abi.StructType_static_extension) from stdgo._internal.internal.abi.Abi.StructType_static_extension to stdgo._internal.internal.abi.Abi.StructType_static_extension {

}
@:forward @:forward.new abstract Name_asInterface(stdgo._internal.internal.abi.Abi.Name_asInterface) from stdgo._internal.internal.abi.Abi.Name_asInterface to stdgo._internal.internal.abi.Abi.Name_asInterface {

}
@:forward @:forward.new abstract Name_static_extension(stdgo._internal.internal.abi.Abi.Name_static_extension) from stdgo._internal.internal.abi.Abi.Name_static_extension to stdgo._internal.internal.abi.Abi.Name_static_extension {

}
@:forward @:forward.new abstract IntArgRegBitmap_asInterface(stdgo._internal.internal.abi.Abi.IntArgRegBitmap_asInterface) from stdgo._internal.internal.abi.Abi.IntArgRegBitmap_asInterface to stdgo._internal.internal.abi.Abi.IntArgRegBitmap_asInterface {

}
@:forward @:forward.new abstract IntArgRegBitmap_static_extension(stdgo._internal.internal.abi.Abi.IntArgRegBitmap_static_extension) from stdgo._internal.internal.abi.Abi.IntArgRegBitmap_static_extension to stdgo._internal.internal.abi.Abi.IntArgRegBitmap_static_extension {

}
@:forward @:forward.new abstract Kind_asInterface(stdgo._internal.internal.abi.Abi.Kind_asInterface) from stdgo._internal.internal.abi.Abi.Kind_asInterface to stdgo._internal.internal.abi.Abi.Kind_asInterface {

}
@:forward @:forward.new abstract Kind_static_extension(stdgo._internal.internal.abi.Abi.Kind_static_extension) from stdgo._internal.internal.abi.Abi.Kind_static_extension to stdgo._internal.internal.abi.Abi.Kind_static_extension {

}
class Abi {
    /**
        CommonSize returns sizeof(Type) for a compilation target with a given ptrSize
    **/
    static public function commonSize(ptrSize:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi.commonSize(ptrSize);
    }
    /**
        StructFieldSize returns sizeof(StructField) for a compilation target with a given ptrSize
    **/
    static public function structFieldSize(ptrSize:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi.structFieldSize(ptrSize);
    }
    /**
        UncommonSize returns sizeof(UncommonType).  This currently does not depend on ptrSize.
        This exported function is in an internal package, so it may change to depend on ptrSize in the future.
    **/
    static public function uncommonSize():haxe.UInt64 {
        return stdgo._internal.internal.abi.Abi.uncommonSize();
    }
    /**
        IMethodSize returns sizeof(IMethod) for a compilation target with a given ptrSize
    **/
    static public function imethodSize(ptrSize:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi.imethodSize(ptrSize);
    }
    /**
        KindOff returns the offset of Type.Kind_ for a compilation target with a given ptrSize
    **/
    static public function kindOff(ptrSize:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi.kindOff(ptrSize);
    }
    /**
        SizeOff returns the offset of Type.Size_ for a compilation target with a given ptrSize
    **/
    static public function sizeOff(ptrSize:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi.sizeOff(ptrSize);
    }
    /**
        PtrBytes returns the offset of Type.PtrBytes for a compilation target with a given ptrSize
    **/
    static public function ptrBytesOff(ptrSize:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi.ptrBytesOff(ptrSize);
    }
    /**
        TFlagOff returns the offset of Type.TFlag for a compilation target with a given ptrSize
    **/
    static public function tflagOff(ptrSize:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi.tflagOff(ptrSize);
    }
    /**
        NewOffset returns a new Offset with offset 0 and alignment 1.
    **/
    static public function newOffset(ptrSize:std.UInt, twoWordAlignSlices:Bool):Offset {
        return stdgo._internal.internal.abi.Abi.newOffset(ptrSize, twoWordAlignSlices);
    }
    /**
        InitializedOffset returns a new Offset with specified offset, alignment, pointer size, and slice alignment.
    **/
    static public function initializedOffset(off:StdTypes.Int, align:std.UInt, ptrSize:std.UInt, twoWordAlignSlices:Bool):Offset {
        return stdgo._internal.internal.abi.Abi.initializedOffset(off, align, ptrSize, twoWordAlignSlices);
    }
    /**
        CommonOffset returns the Offset to the data after the common portion of type data structures.
    **/
    static public function commonOffset(ptrSize:StdTypes.Int, twoWordAlignSlices:Bool):Offset {
        return stdgo._internal.internal.abi.Abi.commonOffset(ptrSize, twoWordAlignSlices);
    }
    /**
        FuncPCABI0 returns the entry PC of the function f, which must be a
        direct reference of a function defined as ABI0. Otherwise it is a
        compile-time error.
        
        Implemented as a compile intrinsic.
    **/
    static public function funcPCABI0(f:stdgo.AnyInterface):stdgo.GoUIntptr {
        return stdgo._internal.internal.abi.Abi.funcPCABI0(f);
    }
    /**
        FuncPCABIInternal returns the entry PC of the function f. If f is a
        direct reference of a function, it must be defined as ABIInternal.
        Otherwise it is a compile-time error. If f is not a direct reference
        of a defined function, it assumes that f is a func value. Otherwise
        the behavior is undefined.
        
        Implemented as a compile intrinsic.
    **/
    static public function funcPCABIInternal(f:stdgo.AnyInterface):stdgo.GoUIntptr {
        return stdgo._internal.internal.abi.Abi.funcPCABIInternal(f);
    }
    static public function newName(n:String, tag:String, exported:Bool, embedded:Bool):Name {
        return stdgo._internal.internal.abi.Abi.newName(n, tag, exported, embedded);
    }
}
