package stdgo._internal.internal.abi;
final intArgRegs : stdgo.GoUInt64 = (0i64 : stdgo.GoUInt64);
final floatArgRegs : stdgo.GoUInt64 = (0i64 : stdgo.GoUInt64);
final effectiveFloatRegSize : stdgo.GoUInt64 = (0i64 : stdgo.GoUInt64);
final mapBucketCountBits : stdgo.GoUInt64 = (3i64 : stdgo.GoUInt64);
final mapBucketCount : stdgo.GoUInt64 = (8i64 : stdgo.GoUInt64);
final mapMaxKeyBytes : stdgo.GoUInt64 = (128i64 : stdgo.GoUInt64);
final mapMaxElemBytes : stdgo.GoUInt64 = (128i64 : stdgo.GoUInt64);
final stackNosplitBase : stdgo.GoUInt64 = (800i64 : stdgo.GoUInt64);
final stackSmall : stdgo.GoUInt64 = (128i64 : stdgo.GoUInt64);
final stackBig : stdgo.GoUInt64 = (4096i64 : stdgo.GoUInt64);
final funcFlagTopFrame : stdgo._internal.internal.abi.Abi.FuncFlag = (4 : stdgo._internal.internal.abi.Abi.FuncFlag);
final funcFlagSPWrite = (4 : stdgo._internal.internal.abi.Abi.FuncFlag);
final funcFlagAsm = (4 : stdgo._internal.internal.abi.Abi.FuncFlag);
final funcIDNormal : stdgo._internal.internal.abi.Abi.FuncID = (21 : stdgo._internal.internal.abi.Abi.FuncID);
final funcID_abort = (21 : stdgo._internal.internal.abi.Abi.FuncID);
final funcID_asmcgocall = (21 : stdgo._internal.internal.abi.Abi.FuncID);
final funcID_asyncPreempt = (21 : stdgo._internal.internal.abi.Abi.FuncID);
final funcID_cgocallback = (21 : stdgo._internal.internal.abi.Abi.FuncID);
final funcID_debugCallV2 = (21 : stdgo._internal.internal.abi.Abi.FuncID);
final funcID_gcBgMarkWorker = (21 : stdgo._internal.internal.abi.Abi.FuncID);
final funcID_goexit = (21 : stdgo._internal.internal.abi.Abi.FuncID);
final funcID_gogo = (21 : stdgo._internal.internal.abi.Abi.FuncID);
final funcID_gopanic = (21 : stdgo._internal.internal.abi.Abi.FuncID);
final funcID_handleAsyncEvent = (21 : stdgo._internal.internal.abi.Abi.FuncID);
final funcID_mcall = (21 : stdgo._internal.internal.abi.Abi.FuncID);
final funcID_morestack = (21 : stdgo._internal.internal.abi.Abi.FuncID);
final funcID_mstart = (21 : stdgo._internal.internal.abi.Abi.FuncID);
final funcID_panicwrap = (21 : stdgo._internal.internal.abi.Abi.FuncID);
final funcID_rt0_go = (21 : stdgo._internal.internal.abi.Abi.FuncID);
final funcID_runfinq = (21 : stdgo._internal.internal.abi.Abi.FuncID);
final funcID_runtime_main = (21 : stdgo._internal.internal.abi.Abi.FuncID);
final funcID_sigpanic = (21 : stdgo._internal.internal.abi.Abi.FuncID);
final funcID_systemstack = (21 : stdgo._internal.internal.abi.Abi.FuncID);
final funcID_systemstack_switch = (21 : stdgo._internal.internal.abi.Abi.FuncID);
final funcIDWrapper = (21 : stdgo._internal.internal.abi.Abi.FuncID);
final argsSizeUnknown : stdgo.GoUInt64 = (0i64 : stdgo.GoUInt64);
final pcdata_UnsafePoint : stdgo.GoUInt64 = (0i64 : stdgo.GoUInt64);
final pcdata_StackMapIndex : stdgo.GoUInt64 = (1i64 : stdgo.GoUInt64);
final pcdata_InlTreeIndex : stdgo.GoUInt64 = (2i64 : stdgo.GoUInt64);
final pcdata_ArgLiveIndex : stdgo.GoUInt64 = (3i64 : stdgo.GoUInt64);
final funcdata_ArgsPointerMaps : stdgo.GoUInt64 = (0i64 : stdgo.GoUInt64);
final funcdata_LocalsPointerMaps : stdgo.GoUInt64 = (1i64 : stdgo.GoUInt64);
final funcdata_StackObjects : stdgo.GoUInt64 = (2i64 : stdgo.GoUInt64);
final funcdata_InlTree : stdgo.GoUInt64 = (3i64 : stdgo.GoUInt64);
final funcdata_OpenCodedDeferInfo : stdgo.GoUInt64 = (4i64 : stdgo.GoUInt64);
final funcdata_ArgInfo : stdgo.GoUInt64 = (5i64 : stdgo.GoUInt64);
final funcdata_ArgLiveInfo : stdgo.GoUInt64 = (6i64 : stdgo.GoUInt64);
final funcdata_WrapInfo : stdgo.GoUInt64 = (7i64 : stdgo.GoUInt64);
final unsafePointSafe : stdgo.GoUInt64 = (0i64 : stdgo.GoUInt64);
final unsafePointUnsafe : stdgo.GoUInt64 = (0i64 : stdgo.GoUInt64);
final unsafePointRestart1 : stdgo.GoUInt64 = (0i64 : stdgo.GoUInt64);
final unsafePointRestart2 : stdgo.GoUInt64 = (0i64 : stdgo.GoUInt64);
final unsafePointRestartAtEntry : stdgo.GoUInt64 = (0i64 : stdgo.GoUInt64);
final invalid : stdgo._internal.internal.abi.Abi.Kind = (26u32 : stdgo._internal.internal.abi.Abi.Kind);
final bool_ = (26u32 : stdgo._internal.internal.abi.Abi.Kind);
final int_ = (26u32 : stdgo._internal.internal.abi.Abi.Kind);
final int8 = (26u32 : stdgo._internal.internal.abi.Abi.Kind);
final int16 = (26u32 : stdgo._internal.internal.abi.Abi.Kind);
final int32 = (26u32 : stdgo._internal.internal.abi.Abi.Kind);
final int64 = (26u32 : stdgo._internal.internal.abi.Abi.Kind);
final uint = (26u32 : stdgo._internal.internal.abi.Abi.Kind);
final uint8 = (26u32 : stdgo._internal.internal.abi.Abi.Kind);
final uint16 = (26u32 : stdgo._internal.internal.abi.Abi.Kind);
final uint32 = (26u32 : stdgo._internal.internal.abi.Abi.Kind);
final uint64 = (26u32 : stdgo._internal.internal.abi.Abi.Kind);
final uintptr = (26u32 : stdgo._internal.internal.abi.Abi.Kind);
final float32 = (26u32 : stdgo._internal.internal.abi.Abi.Kind);
final float64 = (26u32 : stdgo._internal.internal.abi.Abi.Kind);
final complex64 = (26u32 : stdgo._internal.internal.abi.Abi.Kind);
final complex128 = (26u32 : stdgo._internal.internal.abi.Abi.Kind);
final array = (26u32 : stdgo._internal.internal.abi.Abi.Kind);
final chan = (26u32 : stdgo._internal.internal.abi.Abi.Kind);
final func = (26u32 : stdgo._internal.internal.abi.Abi.Kind);
final interface_ = (26u32 : stdgo._internal.internal.abi.Abi.Kind);
final map_ = (26u32 : stdgo._internal.internal.abi.Abi.Kind);
final pointer = (26u32 : stdgo._internal.internal.abi.Abi.Kind);
final slice = (26u32 : stdgo._internal.internal.abi.Abi.Kind);
final string = (26u32 : stdgo._internal.internal.abi.Abi.Kind);
final struct_ = (26u32 : stdgo._internal.internal.abi.Abi.Kind);
final unsafePointer = (26u32 : stdgo._internal.internal.abi.Abi.Kind);
final kindDirectIface : stdgo.GoUInt64 = (32i64 : stdgo.GoUInt64);
final kindGCProg : stdgo.GoUInt64 = (64i64 : stdgo.GoUInt64);
final kindMask : stdgo.GoUInt64 = (31i64 : stdgo.GoUInt64);
final tflagUncommon : stdgo._internal.internal.abi.Abi.TFlag = (1 : stdgo._internal.internal.abi.Abi.TFlag);
final tflagExtraStar : stdgo._internal.internal.abi.Abi.TFlag = (2 : stdgo._internal.internal.abi.Abi.TFlag);
final tflagNamed : stdgo._internal.internal.abi.Abi.TFlag = (4 : stdgo._internal.internal.abi.Abi.TFlag);
final tflagRegularMemory : stdgo._internal.internal.abi.Abi.TFlag = (8 : stdgo._internal.internal.abi.Abi.TFlag);
final recvDir : stdgo._internal.internal.abi.Abi.ChanDir = (2 : stdgo._internal.internal.abi.Abi.ChanDir);
final sendDir = (2 : stdgo._internal.internal.abi.Abi.ChanDir);
final bothDir : stdgo._internal.internal.abi.Abi.ChanDir = (3 : stdgo._internal.internal.abi.Abi.ChanDir);
final invalidDir : stdgo._internal.internal.abi.Abi.ChanDir = (0 : stdgo._internal.internal.abi.Abi.ChanDir);
var _kindNames : stdgo.Slice<stdgo.GoString> = {
        var s = new stdgo.Slice<stdgo.GoString>(27, 0).__setString__();
        s[0] = ("invalid" : stdgo.GoString);
        s[1] = ("bool" : stdgo.GoString);
        s[2] = ("int" : stdgo.GoString);
        s[3] = ("int8" : stdgo.GoString);
        s[4] = ("int16" : stdgo.GoString);
        s[5] = ("int32" : stdgo.GoString);
        s[6] = ("int64" : stdgo.GoString);
        s[7] = ("uint" : stdgo.GoString);
        s[8] = ("uint8" : stdgo.GoString);
        s[9] = ("uint16" : stdgo.GoString);
        s[10] = ("uint32" : stdgo.GoString);
        s[11] = ("uint64" : stdgo.GoString);
        s[12] = ("uintptr" : stdgo.GoString);
        s[13] = ("float32" : stdgo.GoString);
        s[14] = ("float64" : stdgo.GoString);
        s[15] = ("complex64" : stdgo.GoString);
        s[16] = ("complex128" : stdgo.GoString);
        s[17] = ("array" : stdgo.GoString);
        s[18] = ("chan" : stdgo.GoString);
        s[19] = ("func" : stdgo.GoString);
        s[20] = ("interface" : stdgo.GoString);
        s[21] = ("map" : stdgo.GoString);
        s[22] = ("ptr" : stdgo.GoString);
        s[23] = ("slice" : stdgo.GoString);
        s[24] = ("string" : stdgo.GoString);
        s[25] = ("struct" : stdgo.GoString);
        s[26] = ("unsafe.Pointer" : stdgo.GoString);
        s;
    };
@:structInit @:using(stdgo._internal.internal.abi.Abi.RegArgs_static_extension) class RegArgs {
    public var ints : stdgo.GoArray<stdgo.GoUIntptr> = new stdgo.GoArray<stdgo.GoUIntptr>(0, 0);
    public var floats : stdgo.GoArray<stdgo.GoUInt64> = new stdgo.GoArray<stdgo.GoUInt64>(0, 0);
    public var ptrs : stdgo.GoArray<stdgo._internal.unsafe.Unsafe.UnsafePointer> = new stdgo.GoArray<stdgo._internal.unsafe.Unsafe.UnsafePointer>(0, 0);
    public var returnIsPtr : stdgo._internal.internal.abi.Abi.IntArgRegBitmap = new stdgo._internal.internal.abi.Abi.IntArgRegBitmap(0, 0, ...[for (i in 0 ... 0) (0 : stdgo.GoUInt8)]);
    public function new(?ints:stdgo.GoArray<stdgo.GoUIntptr>, ?floats:stdgo.GoArray<stdgo.GoUInt64>, ?ptrs:stdgo.GoArray<stdgo._internal.unsafe.Unsafe.UnsafePointer>, ?returnIsPtr:stdgo._internal.internal.abi.Abi.IntArgRegBitmap) {
        if (ints != null) this.ints = ints;
        if (floats != null) this.floats = floats;
        if (ptrs != null) this.ptrs = ptrs;
        if (returnIsPtr != null) this.returnIsPtr = returnIsPtr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new RegArgs(ints, floats, ptrs, returnIsPtr);
    }
}
@:structInit @:using(stdgo._internal.internal.abi.Abi.Offset_static_extension) class Offset {
    public var _off : stdgo.GoUInt64 = 0;
    public var _align : stdgo.GoUInt8 = 0;
    public var _ptrSize : stdgo.GoUInt8 = 0;
    public var _sliceAlign : stdgo.GoUInt8 = 0;
    public function new(?_off:stdgo.GoUInt64, ?_align:stdgo.GoUInt8, ?_ptrSize:stdgo.GoUInt8, ?_sliceAlign:stdgo.GoUInt8) {
        if (_off != null) this._off = _off;
        if (_align != null) this._align = _align;
        if (_ptrSize != null) this._ptrSize = _ptrSize;
        if (_sliceAlign != null) this._sliceAlign = _sliceAlign;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Offset(_off, _align, _ptrSize, _sliceAlign);
    }
}
@:structInit @:using(stdgo._internal.internal.abi.Abi.Type__static_extension) class Type_ {
    public var size_ : stdgo.GoUIntptr = 0;
    public var ptrBytes : stdgo.GoUIntptr = 0;
    public var hash : stdgo.GoUInt32 = 0;
    public var tflag : stdgo._internal.internal.abi.Abi.TFlag = ((0 : stdgo.GoUInt8) : stdgo._internal.internal.abi.Abi.TFlag);
    public var align_ : stdgo.GoUInt8 = 0;
    public var fieldAlign_ : stdgo.GoUInt8 = 0;
    public var kind_ : stdgo.GoUInt8 = 0;
    public var equal : (stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo._internal.unsafe.Unsafe.UnsafePointer) -> Bool = null;
    public var gcdata : stdgo.Pointer<stdgo.GoUInt8> = (null : stdgo.Pointer<stdgo.GoUInt8>);
    public var str : stdgo._internal.internal.abi.Abi.NameOff = ((0 : stdgo.GoInt32) : stdgo._internal.internal.abi.Abi.NameOff);
    public var ptrToThis : stdgo._internal.internal.abi.Abi.TypeOff = ((0 : stdgo.GoInt32) : stdgo._internal.internal.abi.Abi.TypeOff);
    public function new(?size_:stdgo.GoUIntptr, ?ptrBytes:stdgo.GoUIntptr, ?hash:stdgo.GoUInt32, ?tflag:stdgo._internal.internal.abi.Abi.TFlag, ?align_:stdgo.GoUInt8, ?fieldAlign_:stdgo.GoUInt8, ?kind_:stdgo.GoUInt8, ?equal:(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo._internal.unsafe.Unsafe.UnsafePointer) -> Bool, ?gcdata:stdgo.Pointer<stdgo.GoUInt8>, ?str:stdgo._internal.internal.abi.Abi.NameOff, ?ptrToThis:stdgo._internal.internal.abi.Abi.TypeOff) {
        if (size_ != null) this.size_ = size_;
        if (ptrBytes != null) this.ptrBytes = ptrBytes;
        if (hash != null) this.hash = hash;
        if (tflag != null) this.tflag = tflag;
        if (align_ != null) this.align_ = align_;
        if (fieldAlign_ != null) this.fieldAlign_ = fieldAlign_;
        if (kind_ != null) this.kind_ = kind_;
        if (equal != null) this.equal = equal;
        if (gcdata != null) this.gcdata = gcdata;
        if (str != null) this.str = str;
        if (ptrToThis != null) this.ptrToThis = ptrToThis;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Type_(
size_,
ptrBytes,
hash,
tflag,
align_,
fieldAlign_,
kind_,
equal,
gcdata,
str,
ptrToThis);
    }
}
@:structInit class Method {
    public var name : stdgo._internal.internal.abi.Abi.NameOff = ((0 : stdgo.GoInt32) : stdgo._internal.internal.abi.Abi.NameOff);
    public var mtyp : stdgo._internal.internal.abi.Abi.TypeOff = ((0 : stdgo.GoInt32) : stdgo._internal.internal.abi.Abi.TypeOff);
    public var ifn : stdgo._internal.internal.abi.Abi.TextOff = ((0 : stdgo.GoInt32) : stdgo._internal.internal.abi.Abi.TextOff);
    public var tfn : stdgo._internal.internal.abi.Abi.TextOff = ((0 : stdgo.GoInt32) : stdgo._internal.internal.abi.Abi.TextOff);
    public function new(?name:stdgo._internal.internal.abi.Abi.NameOff, ?mtyp:stdgo._internal.internal.abi.Abi.TypeOff, ?ifn:stdgo._internal.internal.abi.Abi.TextOff, ?tfn:stdgo._internal.internal.abi.Abi.TextOff) {
        if (name != null) this.name = name;
        if (mtyp != null) this.mtyp = mtyp;
        if (ifn != null) this.ifn = ifn;
        if (tfn != null) this.tfn = tfn;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Method(name, mtyp, ifn, tfn);
    }
}
@:structInit @:using(stdgo._internal.internal.abi.Abi.UncommonType_static_extension) class UncommonType {
    public var pkgPath : stdgo._internal.internal.abi.Abi.NameOff = ((0 : stdgo.GoInt32) : stdgo._internal.internal.abi.Abi.NameOff);
    public var mcount : stdgo.GoUInt16 = 0;
    public var xcount : stdgo.GoUInt16 = 0;
    public var moff : stdgo.GoUInt32 = 0;
    @:optional
    public var __1 : stdgo.GoUInt32 = 0;
    public function new(?pkgPath:stdgo._internal.internal.abi.Abi.NameOff, ?mcount:stdgo.GoUInt16, ?xcount:stdgo.GoUInt16, ?moff:stdgo.GoUInt32, ?__1:stdgo.GoUInt32) {
        if (pkgPath != null) this.pkgPath = pkgPath;
        if (mcount != null) this.mcount = mcount;
        if (xcount != null) this.xcount = xcount;
        if (moff != null) this.moff = moff;
        if (__1 != null) this.__1 = __1;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new UncommonType(pkgPath, mcount, xcount, moff, __1);
    }
}
@:structInit class Imethod {
    public var name : stdgo._internal.internal.abi.Abi.NameOff = ((0 : stdgo.GoInt32) : stdgo._internal.internal.abi.Abi.NameOff);
    public var typ : stdgo._internal.internal.abi.Abi.TypeOff = ((0 : stdgo.GoInt32) : stdgo._internal.internal.abi.Abi.TypeOff);
    public function new(?name:stdgo._internal.internal.abi.Abi.NameOff, ?typ:stdgo._internal.internal.abi.Abi.TypeOff) {
        if (name != null) this.name = name;
        if (typ != null) this.typ = typ;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Imethod(name, typ);
    }
}
@:structInit @:using(stdgo._internal.internal.abi.Abi.ArrayType_static_extension) class ArrayType {
    @:embedded
    public var type : stdgo._internal.internal.abi.Abi.Type_ = ({} : stdgo._internal.internal.abi.Abi.Type_);
    public var elem : stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> = (null : stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_>);
    public var slice : stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> = (null : stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_>);
    public var len : stdgo.GoUIntptr = 0;
    public function new(?type:stdgo._internal.internal.abi.Abi.Type_, ?elem:stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_>, ?slice:stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_>, ?len:stdgo.GoUIntptr) {
        if (type != null) this.type = type;
        if (elem != null) this.elem = elem;
        if (slice != null) this.slice = slice;
        if (len != null) this.len = len;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function align():stdgo.GoInt return type.align();
    @:embedded
    public function arrayType():stdgo.Ref<stdgo._internal.internal.abi.Abi.ArrayType> return type.arrayType();
    @:embedded
    public function chanDir():stdgo._internal.internal.abi.Abi.ChanDir return type.chanDir();
    @:embedded
    public function common():stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return type.common();
    @:embedded
    public function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Abi.Method> return type.exportedMethods();
    @:embedded
    public function fieldAlign():stdgo.GoInt return type.fieldAlign();
    @:embedded
    public function funcType():stdgo.Ref<stdgo._internal.internal.abi.Abi.FuncType> return type.funcType();
    @:embedded
    public function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8> return type.gcSlice(_begin, _end);
    @:embedded
    public function hasName():Bool return type.hasName();
    @:embedded
    public function ifaceIndir():Bool return type.ifaceIndir();
    @:embedded
    public function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.Abi.InterfaceType> return type.interfaceType();
    @:embedded
    public function isDirectIface():Bool return type.isDirectIface();
    @:embedded
    public function key():stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return type.key();
    @:embedded
    public function kind():stdgo._internal.internal.abi.Abi.Kind return type.kind();
    @:embedded
    public function mapType():stdgo.Ref<stdgo._internal.internal.abi.Abi.MapType> return type.mapType();
    @:embedded
    public function numMethod():stdgo.GoInt return type.numMethod();
    @:embedded
    public function pointers():Bool return type.pointers();
    @:embedded
    public function size():stdgo.GoUIntptr return type.size();
    @:embedded
    public function structType():stdgo.Ref<stdgo._internal.internal.abi.Abi.StructType> return type.structType();
    @:embedded
    public function uncommon():stdgo.Ref<stdgo._internal.internal.abi.Abi.UncommonType> return type.uncommon();
    public function __copy__() {
        return new ArrayType(type, elem, slice, len);
    }
}
@:structInit @:using(stdgo._internal.internal.abi.Abi.ChanType_static_extension) class ChanType {
    @:embedded
    public var type : stdgo._internal.internal.abi.Abi.Type_ = ({} : stdgo._internal.internal.abi.Abi.Type_);
    public var elem : stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> = (null : stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_>);
    public var dir : stdgo._internal.internal.abi.Abi.ChanDir = ((0 : stdgo.GoInt) : stdgo._internal.internal.abi.Abi.ChanDir);
    public function new(?type:stdgo._internal.internal.abi.Abi.Type_, ?elem:stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_>, ?dir:stdgo._internal.internal.abi.Abi.ChanDir) {
        if (type != null) this.type = type;
        if (elem != null) this.elem = elem;
        if (dir != null) this.dir = dir;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function align():stdgo.GoInt return type.align();
    @:embedded
    public function arrayType():stdgo.Ref<stdgo._internal.internal.abi.Abi.ArrayType> return type.arrayType();
    @:embedded
    public function chanDir():stdgo._internal.internal.abi.Abi.ChanDir return type.chanDir();
    @:embedded
    public function common():stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return type.common();
    @:embedded
    public function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Abi.Method> return type.exportedMethods();
    @:embedded
    public function fieldAlign():stdgo.GoInt return type.fieldAlign();
    @:embedded
    public function funcType():stdgo.Ref<stdgo._internal.internal.abi.Abi.FuncType> return type.funcType();
    @:embedded
    public function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8> return type.gcSlice(_begin, _end);
    @:embedded
    public function hasName():Bool return type.hasName();
    @:embedded
    public function ifaceIndir():Bool return type.ifaceIndir();
    @:embedded
    public function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.Abi.InterfaceType> return type.interfaceType();
    @:embedded
    public function isDirectIface():Bool return type.isDirectIface();
    @:embedded
    public function key():stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return type.key();
    @:embedded
    public function kind():stdgo._internal.internal.abi.Abi.Kind return type.kind();
    @:embedded
    public function len():stdgo.GoInt return type.len();
    @:embedded
    public function mapType():stdgo.Ref<stdgo._internal.internal.abi.Abi.MapType> return type.mapType();
    @:embedded
    public function numMethod():stdgo.GoInt return type.numMethod();
    @:embedded
    public function pointers():Bool return type.pointers();
    @:embedded
    public function size():stdgo.GoUIntptr return type.size();
    @:embedded
    public function structType():stdgo.Ref<stdgo._internal.internal.abi.Abi.StructType> return type.structType();
    @:embedded
    public function uncommon():stdgo.Ref<stdgo._internal.internal.abi.Abi.UncommonType> return type.uncommon();
    public function __copy__() {
        return new ChanType(type, elem, dir);
    }
}
@:structInit @:private @:using(stdgo._internal.internal.abi.Abi.T_structTypeUncommon_static_extension) class T_structTypeUncommon {
    @:embedded
    public var structType : stdgo._internal.internal.abi.Abi.StructType = ({} : stdgo._internal.internal.abi.Abi.StructType);
    public var _u : stdgo._internal.internal.abi.Abi.UncommonType = ({} : stdgo._internal.internal.abi.Abi.UncommonType);
    public function new(?structType:stdgo._internal.internal.abi.Abi.StructType, ?_u:stdgo._internal.internal.abi.Abi.UncommonType) {
        if (structType != null) this.structType = structType;
        if (_u != null) this._u = _u;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function align():stdgo.GoInt return structType.align();
    @:embedded
    public function arrayType():stdgo.Ref<stdgo._internal.internal.abi.Abi.ArrayType> return structType.arrayType();
    @:embedded
    public function chanDir():stdgo._internal.internal.abi.Abi.ChanDir return structType.chanDir();
    @:embedded
    public function common():stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return structType.common();
    @:embedded
    public function elem():stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return structType.elem();
    @:embedded
    public function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Abi.Method> return structType.exportedMethods();
    @:embedded
    public function fieldAlign():stdgo.GoInt return structType.fieldAlign();
    @:embedded
    public function funcType():stdgo.Ref<stdgo._internal.internal.abi.Abi.FuncType> return structType.funcType();
    @:embedded
    public function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8> return structType.gcSlice(_begin, _end);
    @:embedded
    public function hasName():Bool return structType.hasName();
    @:embedded
    public function ifaceIndir():Bool return structType.ifaceIndir();
    @:embedded
    public function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.Abi.InterfaceType> return structType.interfaceType();
    @:embedded
    public function isDirectIface():Bool return structType.isDirectIface();
    @:embedded
    public function key():stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return structType.key();
    @:embedded
    public function kind():stdgo._internal.internal.abi.Abi.Kind return structType.kind();
    @:embedded
    public function len():stdgo.GoInt return structType.len();
    @:embedded
    public function mapType():stdgo.Ref<stdgo._internal.internal.abi.Abi.MapType> return structType.mapType();
    @:embedded
    public function numMethod():stdgo.GoInt return structType.numMethod();
    @:embedded
    public function pointers():Bool return structType.pointers();
    @:embedded
    public function size():stdgo.GoUIntptr return structType.size();
    @:embedded
    public function uncommon():stdgo.Ref<stdgo._internal.internal.abi.Abi.UncommonType> return structType.uncommon();
    public function __copy__() {
        return new T_structTypeUncommon(structType, _u);
    }
}
@:structInit @:using(stdgo._internal.internal.abi.Abi.InterfaceType_static_extension) class InterfaceType {
    @:embedded
    public var type : stdgo._internal.internal.abi.Abi.Type_ = ({} : stdgo._internal.internal.abi.Abi.Type_);
    public var pkgPath : stdgo._internal.internal.abi.Abi.Name = ({} : stdgo._internal.internal.abi.Abi.Name);
    public var methods : stdgo.Slice<stdgo._internal.internal.abi.Abi.Imethod> = (null : stdgo.Slice<stdgo._internal.internal.abi.Abi.Imethod>);
    public function new(?type:stdgo._internal.internal.abi.Abi.Type_, ?pkgPath:stdgo._internal.internal.abi.Abi.Name, ?methods:stdgo.Slice<stdgo._internal.internal.abi.Abi.Imethod>) {
        if (type != null) this.type = type;
        if (pkgPath != null) this.pkgPath = pkgPath;
        if (methods != null) this.methods = methods;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function align():stdgo.GoInt return type.align();
    @:embedded
    public function arrayType():stdgo.Ref<stdgo._internal.internal.abi.Abi.ArrayType> return type.arrayType();
    @:embedded
    public function chanDir():stdgo._internal.internal.abi.Abi.ChanDir return type.chanDir();
    @:embedded
    public function common():stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return type.common();
    @:embedded
    public function elem():stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return type.elem();
    @:embedded
    public function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Abi.Method> return type.exportedMethods();
    @:embedded
    public function fieldAlign():stdgo.GoInt return type.fieldAlign();
    @:embedded
    public function funcType():stdgo.Ref<stdgo._internal.internal.abi.Abi.FuncType> return type.funcType();
    @:embedded
    public function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8> return type.gcSlice(_begin, _end);
    @:embedded
    public function hasName():Bool return type.hasName();
    @:embedded
    public function ifaceIndir():Bool return type.ifaceIndir();
    @:embedded
    public function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.Abi.InterfaceType> return type.interfaceType();
    @:embedded
    public function isDirectIface():Bool return type.isDirectIface();
    @:embedded
    public function key():stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return type.key();
    @:embedded
    public function kind():stdgo._internal.internal.abi.Abi.Kind return type.kind();
    @:embedded
    public function len():stdgo.GoInt return type.len();
    @:embedded
    public function mapType():stdgo.Ref<stdgo._internal.internal.abi.Abi.MapType> return type.mapType();
    @:embedded
    public function pointers():Bool return type.pointers();
    @:embedded
    public function size():stdgo.GoUIntptr return type.size();
    @:embedded
    public function structType():stdgo.Ref<stdgo._internal.internal.abi.Abi.StructType> return type.structType();
    @:embedded
    public function uncommon():stdgo.Ref<stdgo._internal.internal.abi.Abi.UncommonType> return type.uncommon();
    public function __copy__() {
        return new InterfaceType(type, pkgPath, methods);
    }
}
@:structInit @:using(stdgo._internal.internal.abi.Abi.MapType_static_extension) class MapType {
    @:embedded
    public var type : stdgo._internal.internal.abi.Abi.Type_ = ({} : stdgo._internal.internal.abi.Abi.Type_);
    public var key : stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> = (null : stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_>);
    public var elem : stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> = (null : stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_>);
    public var bucket : stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> = (null : stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_>);
    public var hasher : (stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> stdgo.GoUIntptr = null;
    public var keySize : stdgo.GoUInt8 = 0;
    public var valueSize : stdgo.GoUInt8 = 0;
    public var bucketSize : stdgo.GoUInt16 = 0;
    public var flags : stdgo.GoUInt32 = 0;
    public function new(?type:stdgo._internal.internal.abi.Abi.Type_, ?key:stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_>, ?elem:stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_>, ?bucket:stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_>, ?hasher:(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> stdgo.GoUIntptr, ?keySize:stdgo.GoUInt8, ?valueSize:stdgo.GoUInt8, ?bucketSize:stdgo.GoUInt16, ?flags:stdgo.GoUInt32) {
        if (type != null) this.type = type;
        if (key != null) this.key = key;
        if (elem != null) this.elem = elem;
        if (bucket != null) this.bucket = bucket;
        if (hasher != null) this.hasher = hasher;
        if (keySize != null) this.keySize = keySize;
        if (valueSize != null) this.valueSize = valueSize;
        if (bucketSize != null) this.bucketSize = bucketSize;
        if (flags != null) this.flags = flags;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function align():stdgo.GoInt return type.align();
    @:embedded
    public function arrayType():stdgo.Ref<stdgo._internal.internal.abi.Abi.ArrayType> return type.arrayType();
    @:embedded
    public function chanDir():stdgo._internal.internal.abi.Abi.ChanDir return type.chanDir();
    @:embedded
    public function common():stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return type.common();
    @:embedded
    public function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Abi.Method> return type.exportedMethods();
    @:embedded
    public function fieldAlign():stdgo.GoInt return type.fieldAlign();
    @:embedded
    public function funcType():stdgo.Ref<stdgo._internal.internal.abi.Abi.FuncType> return type.funcType();
    @:embedded
    public function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8> return type.gcSlice(_begin, _end);
    @:embedded
    public function hasName():Bool return type.hasName();
    @:embedded
    public function ifaceIndir():Bool return type.ifaceIndir();
    @:embedded
    public function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.Abi.InterfaceType> return type.interfaceType();
    @:embedded
    public function isDirectIface():Bool return type.isDirectIface();
    @:embedded
    public function kind():stdgo._internal.internal.abi.Abi.Kind return type.kind();
    @:embedded
    public function len():stdgo.GoInt return type.len();
    @:embedded
    public function mapType():stdgo.Ref<stdgo._internal.internal.abi.Abi.MapType> return type.mapType();
    @:embedded
    public function numMethod():stdgo.GoInt return type.numMethod();
    @:embedded
    public function pointers():Bool return type.pointers();
    @:embedded
    public function size():stdgo.GoUIntptr return type.size();
    @:embedded
    public function structType():stdgo.Ref<stdgo._internal.internal.abi.Abi.StructType> return type.structType();
    @:embedded
    public function uncommon():stdgo.Ref<stdgo._internal.internal.abi.Abi.UncommonType> return type.uncommon();
    public function __copy__() {
        return new MapType(type, key, elem, bucket, hasher, keySize, valueSize, bucketSize, flags);
    }
}
@:structInit @:using(stdgo._internal.internal.abi.Abi.SliceType_static_extension) class SliceType {
    @:embedded
    public var type : stdgo._internal.internal.abi.Abi.Type_ = ({} : stdgo._internal.internal.abi.Abi.Type_);
    public var elem : stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> = (null : stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_>);
    public function new(?type:stdgo._internal.internal.abi.Abi.Type_, ?elem:stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_>) {
        if (type != null) this.type = type;
        if (elem != null) this.elem = elem;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function align():stdgo.GoInt return type.align();
    @:embedded
    public function arrayType():stdgo.Ref<stdgo._internal.internal.abi.Abi.ArrayType> return type.arrayType();
    @:embedded
    public function chanDir():stdgo._internal.internal.abi.Abi.ChanDir return type.chanDir();
    @:embedded
    public function common():stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return type.common();
    @:embedded
    public function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Abi.Method> return type.exportedMethods();
    @:embedded
    public function fieldAlign():stdgo.GoInt return type.fieldAlign();
    @:embedded
    public function funcType():stdgo.Ref<stdgo._internal.internal.abi.Abi.FuncType> return type.funcType();
    @:embedded
    public function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8> return type.gcSlice(_begin, _end);
    @:embedded
    public function hasName():Bool return type.hasName();
    @:embedded
    public function ifaceIndir():Bool return type.ifaceIndir();
    @:embedded
    public function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.Abi.InterfaceType> return type.interfaceType();
    @:embedded
    public function isDirectIface():Bool return type.isDirectIface();
    @:embedded
    public function key():stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return type.key();
    @:embedded
    public function kind():stdgo._internal.internal.abi.Abi.Kind return type.kind();
    @:embedded
    public function len():stdgo.GoInt return type.len();
    @:embedded
    public function mapType():stdgo.Ref<stdgo._internal.internal.abi.Abi.MapType> return type.mapType();
    @:embedded
    public function numMethod():stdgo.GoInt return type.numMethod();
    @:embedded
    public function pointers():Bool return type.pointers();
    @:embedded
    public function size():stdgo.GoUIntptr return type.size();
    @:embedded
    public function structType():stdgo.Ref<stdgo._internal.internal.abi.Abi.StructType> return type.structType();
    @:embedded
    public function uncommon():stdgo.Ref<stdgo._internal.internal.abi.Abi.UncommonType> return type.uncommon();
    public function __copy__() {
        return new SliceType(type, elem);
    }
}
@:structInit @:using(stdgo._internal.internal.abi.Abi.FuncType_static_extension) class FuncType {
    @:embedded
    public var type : stdgo._internal.internal.abi.Abi.Type_ = ({} : stdgo._internal.internal.abi.Abi.Type_);
    public var inCount : stdgo.GoUInt16 = 0;
    public var outCount : stdgo.GoUInt16 = 0;
    public function new(?type:stdgo._internal.internal.abi.Abi.Type_, ?inCount:stdgo.GoUInt16, ?outCount:stdgo.GoUInt16) {
        if (type != null) this.type = type;
        if (inCount != null) this.inCount = inCount;
        if (outCount != null) this.outCount = outCount;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function align():stdgo.GoInt return type.align();
    @:embedded
    public function arrayType():stdgo.Ref<stdgo._internal.internal.abi.Abi.ArrayType> return type.arrayType();
    @:embedded
    public function chanDir():stdgo._internal.internal.abi.Abi.ChanDir return type.chanDir();
    @:embedded
    public function common():stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return type.common();
    @:embedded
    public function elem():stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return type.elem();
    @:embedded
    public function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Abi.Method> return type.exportedMethods();
    @:embedded
    public function fieldAlign():stdgo.GoInt return type.fieldAlign();
    @:embedded
    public function funcType():stdgo.Ref<stdgo._internal.internal.abi.Abi.FuncType> return type.funcType();
    @:embedded
    public function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8> return type.gcSlice(_begin, _end);
    @:embedded
    public function hasName():Bool return type.hasName();
    @:embedded
    public function ifaceIndir():Bool return type.ifaceIndir();
    @:embedded
    public function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.Abi.InterfaceType> return type.interfaceType();
    @:embedded
    public function isDirectIface():Bool return type.isDirectIface();
    @:embedded
    public function key():stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return type.key();
    @:embedded
    public function kind():stdgo._internal.internal.abi.Abi.Kind return type.kind();
    @:embedded
    public function len():stdgo.GoInt return type.len();
    @:embedded
    public function mapType():stdgo.Ref<stdgo._internal.internal.abi.Abi.MapType> return type.mapType();
    @:embedded
    public function numMethod():stdgo.GoInt return type.numMethod();
    @:embedded
    public function pointers():Bool return type.pointers();
    @:embedded
    public function size():stdgo.GoUIntptr return type.size();
    @:embedded
    public function structType():stdgo.Ref<stdgo._internal.internal.abi.Abi.StructType> return type.structType();
    @:embedded
    public function uncommon():stdgo.Ref<stdgo._internal.internal.abi.Abi.UncommonType> return type.uncommon();
    public function __copy__() {
        return new FuncType(type, inCount, outCount);
    }
}
@:structInit @:using(stdgo._internal.internal.abi.Abi.PtrType_static_extension) class PtrType {
    @:embedded
    public var type : stdgo._internal.internal.abi.Abi.Type_ = ({} : stdgo._internal.internal.abi.Abi.Type_);
    public var elem : stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> = (null : stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_>);
    public function new(?type:stdgo._internal.internal.abi.Abi.Type_, ?elem:stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_>) {
        if (type != null) this.type = type;
        if (elem != null) this.elem = elem;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function align():stdgo.GoInt return type.align();
    @:embedded
    public function arrayType():stdgo.Ref<stdgo._internal.internal.abi.Abi.ArrayType> return type.arrayType();
    @:embedded
    public function chanDir():stdgo._internal.internal.abi.Abi.ChanDir return type.chanDir();
    @:embedded
    public function common():stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return type.common();
    @:embedded
    public function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Abi.Method> return type.exportedMethods();
    @:embedded
    public function fieldAlign():stdgo.GoInt return type.fieldAlign();
    @:embedded
    public function funcType():stdgo.Ref<stdgo._internal.internal.abi.Abi.FuncType> return type.funcType();
    @:embedded
    public function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8> return type.gcSlice(_begin, _end);
    @:embedded
    public function hasName():Bool return type.hasName();
    @:embedded
    public function ifaceIndir():Bool return type.ifaceIndir();
    @:embedded
    public function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.Abi.InterfaceType> return type.interfaceType();
    @:embedded
    public function isDirectIface():Bool return type.isDirectIface();
    @:embedded
    public function key():stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return type.key();
    @:embedded
    public function kind():stdgo._internal.internal.abi.Abi.Kind return type.kind();
    @:embedded
    public function len():stdgo.GoInt return type.len();
    @:embedded
    public function mapType():stdgo.Ref<stdgo._internal.internal.abi.Abi.MapType> return type.mapType();
    @:embedded
    public function numMethod():stdgo.GoInt return type.numMethod();
    @:embedded
    public function pointers():Bool return type.pointers();
    @:embedded
    public function size():stdgo.GoUIntptr return type.size();
    @:embedded
    public function structType():stdgo.Ref<stdgo._internal.internal.abi.Abi.StructType> return type.structType();
    @:embedded
    public function uncommon():stdgo.Ref<stdgo._internal.internal.abi.Abi.UncommonType> return type.uncommon();
    public function __copy__() {
        return new PtrType(type, elem);
    }
}
@:structInit @:using(stdgo._internal.internal.abi.Abi.StructField_static_extension) class StructField {
    public var name : stdgo._internal.internal.abi.Abi.Name = ({} : stdgo._internal.internal.abi.Abi.Name);
    public var typ : stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> = (null : stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_>);
    public var offset : stdgo.GoUIntptr = 0;
    public function new(?name:stdgo._internal.internal.abi.Abi.Name, ?typ:stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_>, ?offset:stdgo.GoUIntptr) {
        if (name != null) this.name = name;
        if (typ != null) this.typ = typ;
        if (offset != null) this.offset = offset;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new StructField(name, typ, offset);
    }
}
@:structInit @:using(stdgo._internal.internal.abi.Abi.StructType_static_extension) class StructType {
    @:embedded
    public var type : stdgo._internal.internal.abi.Abi.Type_ = ({} : stdgo._internal.internal.abi.Abi.Type_);
    public var pkgPath : stdgo._internal.internal.abi.Abi.Name = ({} : stdgo._internal.internal.abi.Abi.Name);
    public var fields : stdgo.Slice<stdgo._internal.internal.abi.Abi.StructField> = (null : stdgo.Slice<stdgo._internal.internal.abi.Abi.StructField>);
    public function new(?type:stdgo._internal.internal.abi.Abi.Type_, ?pkgPath:stdgo._internal.internal.abi.Abi.Name, ?fields:stdgo.Slice<stdgo._internal.internal.abi.Abi.StructField>) {
        if (type != null) this.type = type;
        if (pkgPath != null) this.pkgPath = pkgPath;
        if (fields != null) this.fields = fields;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function align():stdgo.GoInt return type.align();
    @:embedded
    public function arrayType():stdgo.Ref<stdgo._internal.internal.abi.Abi.ArrayType> return type.arrayType();
    @:embedded
    public function chanDir():stdgo._internal.internal.abi.Abi.ChanDir return type.chanDir();
    @:embedded
    public function common():stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return type.common();
    @:embedded
    public function elem():stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return type.elem();
    @:embedded
    public function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Abi.Method> return type.exportedMethods();
    @:embedded
    public function fieldAlign():stdgo.GoInt return type.fieldAlign();
    @:embedded
    public function funcType():stdgo.Ref<stdgo._internal.internal.abi.Abi.FuncType> return type.funcType();
    @:embedded
    public function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8> return type.gcSlice(_begin, _end);
    @:embedded
    public function hasName():Bool return type.hasName();
    @:embedded
    public function ifaceIndir():Bool return type.ifaceIndir();
    @:embedded
    public function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.Abi.InterfaceType> return type.interfaceType();
    @:embedded
    public function isDirectIface():Bool return type.isDirectIface();
    @:embedded
    public function key():stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return type.key();
    @:embedded
    public function kind():stdgo._internal.internal.abi.Abi.Kind return type.kind();
    @:embedded
    public function len():stdgo.GoInt return type.len();
    @:embedded
    public function mapType():stdgo.Ref<stdgo._internal.internal.abi.Abi.MapType> return type.mapType();
    @:embedded
    public function numMethod():stdgo.GoInt return type.numMethod();
    @:embedded
    public function pointers():Bool return type.pointers();
    @:embedded
    public function size():stdgo.GoUIntptr return type.size();
    @:embedded
    public function structType():stdgo.Ref<stdgo._internal.internal.abi.Abi.StructType> return type.structType();
    @:embedded
    public function uncommon():stdgo.Ref<stdgo._internal.internal.abi.Abi.UncommonType> return type.uncommon();
    public function __copy__() {
        return new StructType(type, pkgPath, fields);
    }
}
@:structInit @:using(stdgo._internal.internal.abi.Abi.Name_static_extension) class Name {
    public var bytes : stdgo.Pointer<stdgo.GoUInt8> = (null : stdgo.Pointer<stdgo.GoUInt8>);
    public function new(?bytes:stdgo.Pointer<stdgo.GoUInt8>) {
        if (bytes != null) this.bytes = bytes;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Name(bytes);
    }
}
@:named @:using(stdgo._internal.internal.abi.Abi.IntArgRegBitmap_static_extension) typedef IntArgRegBitmap = stdgo.GoArray<stdgo.GoUInt8>;
@:named typedef FuncFlag = stdgo.GoUInt8;
@:named typedef FuncID = stdgo.GoUInt8;
@:named @:using(stdgo._internal.internal.abi.Abi.Kind_static_extension) typedef Kind = stdgo.GoUInt;
@:named typedef TFlag = stdgo.GoUInt8;
@:named typedef NameOff = stdgo.GoInt32;
@:named typedef TypeOff = stdgo.GoInt32;
@:named typedef TextOff = stdgo.GoInt32;
@:named typedef ChanDir = stdgo.GoInt;
function commonSize(_ptrSize:stdgo.GoInt):stdgo.GoInt {
        return ((((4 : stdgo.GoInt) * _ptrSize : stdgo.GoInt) + (8 : stdgo.GoInt) : stdgo.GoInt) + (8 : stdgo.GoInt) : stdgo.GoInt);
    }
function structFieldSize(_ptrSize:stdgo.GoInt):stdgo.GoInt {
        return ((3 : stdgo.GoInt) * _ptrSize : stdgo.GoInt);
    }
function uncommonSize():stdgo.GoUInt64 {
        return (16i64 : stdgo.GoUInt64);
    }
function imethodSize(_ptrSize:stdgo.GoInt):stdgo.GoInt {
        return (8 : stdgo.GoInt);
    }
function kindOff(_ptrSize:stdgo.GoInt):stdgo.GoInt {
        return (((2 : stdgo.GoInt) * _ptrSize : stdgo.GoInt) + (7 : stdgo.GoInt) : stdgo.GoInt);
    }
function sizeOff(_ptrSize:stdgo.GoInt):stdgo.GoInt {
        return (0 : stdgo.GoInt);
    }
function ptrBytesOff(_ptrSize:stdgo.GoInt):stdgo.GoInt {
        return _ptrSize;
    }
function tflagOff(_ptrSize:stdgo.GoInt):stdgo.GoInt {
        return (((2 : stdgo.GoInt) * _ptrSize : stdgo.GoInt) + (4 : stdgo.GoInt) : stdgo.GoInt);
    }
function newOffset(_ptrSize:stdgo.GoUInt8, _twoWordAlignSlices:Bool):Offset {
        if (_twoWordAlignSlices) {
            return ({ _off : (0i64 : stdgo.GoUInt64), _align : (1 : stdgo.GoUInt8), _ptrSize : _ptrSize, _sliceAlign : ((2 : stdgo.GoUInt8) * _ptrSize : stdgo.GoUInt8) } : stdgo._internal.internal.abi.Abi.Offset);
        };
        return ({ _off : (0i64 : stdgo.GoUInt64), _align : (1 : stdgo.GoUInt8), _ptrSize : _ptrSize, _sliceAlign : _ptrSize } : stdgo._internal.internal.abi.Abi.Offset);
    }
function _assertIsAPowerOfTwo(_x:stdgo.GoUInt8):Void {
        if (_x == ((0 : stdgo.GoUInt8))) {
            throw stdgo.Go.toInterface(("Zero is not a power of two" : stdgo.GoString));
        };
        if ((_x & -_x : stdgo.GoUInt8) == (_x)) {
            return;
        };
        throw stdgo.Go.toInterface(("Not a power of two" : stdgo.GoString));
    }
function initializedOffset(_off:stdgo.GoInt, _align:stdgo.GoUInt8, _ptrSize:stdgo.GoUInt8, _twoWordAlignSlices:Bool):Offset {
        _assertIsAPowerOfTwo(_align);
        var _o0 = newOffset(_ptrSize, _twoWordAlignSlices)?.__copy__();
        _o0._off = (_off : stdgo.GoUInt64);
        _o0._align = _align;
        return _o0?.__copy__();
    }
function commonOffset(_ptrSize:stdgo.GoInt, _twoWordAlignSlices:Bool):Offset {
        return initializedOffset(commonSize(_ptrSize), (_ptrSize : stdgo.GoUInt8), (_ptrSize : stdgo.GoUInt8), _twoWordAlignSlices)?.__copy__();
    }
function funcPCABI0(_f:stdgo.AnyInterface):stdgo.GoUIntptr {
        trace("funclit");
        throw "not implemented: funcPCABI0";
    }
function funcPCABIInternal(_f:stdgo.AnyInterface):stdgo.GoUIntptr {
        trace("funclit");
        throw "not implemented: funcPCABIInternal";
    }
function _addChecked(_p:stdgo._internal.unsafe.Unsafe.UnsafePointer, _x:stdgo.GoUIntptr, _whySafe:stdgo.GoString):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        return (stdgo.Go.toInterface(((_p.__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr) + _x : stdgo.GoUIntptr)) : stdgo._internal.unsafe.Unsafe.UnsafePointer);
    }
function _writeVarint(_buf:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):stdgo.GoInt {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor(true, _i++, {
                var _b = ((_n & (127 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoByte);
                _n = (_n >> ((7i64 : stdgo.GoUInt64)) : stdgo.GoInt);
                if (_n == ((0 : stdgo.GoInt))) {
                    _buf[(_i : stdgo.GoInt)] = _b;
                    return (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                };
                _buf[(_i : stdgo.GoInt)] = (_b | (128 : stdgo.GoUInt8) : stdgo.GoUInt8);
            });
        };
    }
function newName(_n:stdgo.GoString, _tag:stdgo.GoString, _exported:Bool, _embedded:Bool):Name {
        if (((_n.length) >= (536870912 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(((("abi.NewName: name too long: " : stdgo.GoString) + (_n.__slice__(0, (1024 : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("..." : stdgo.GoString)?.__copy__() : stdgo.GoString));
        };
        if (((_tag.length) >= (536870912 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(((("abi.NewName: tag too long: " : stdgo.GoString) + (_tag.__slice__(0, (1024 : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("..." : stdgo.GoString)?.__copy__() : stdgo.GoString));
        };
        var _nameLen:stdgo.GoArray<stdgo.GoByte> = new stdgo.GoArray<stdgo.GoUInt8>(10, 10, ...[for (i in 0 ... 10) (0 : stdgo.GoUInt8)]);
        var _tagLen:stdgo.GoArray<stdgo.GoByte> = new stdgo.GoArray<stdgo.GoUInt8>(10, 10, ...[for (i in 0 ... 10) (0 : stdgo.GoUInt8)]);
        var _nameLenLen = _writeVarint((_nameLen.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_n.length));
        var _tagLenLen = _writeVarint((_tagLen.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_tag.length));
        var _bits:stdgo.GoByte = (0 : stdgo.GoUInt8);
        var _l = (((1 : stdgo.GoInt) + _nameLenLen : stdgo.GoInt) + (_n.length) : stdgo.GoInt);
        if (_exported) {
            _bits = (_bits | ((1 : stdgo.GoUInt8)) : stdgo.GoUInt8);
        };
        if (((_tag.length) > (0 : stdgo.GoInt) : Bool)) {
            _l = (_l + ((_tagLenLen + (_tag.length) : stdgo.GoInt)) : stdgo.GoInt);
            _bits = (_bits | ((2 : stdgo.GoUInt8)) : stdgo.GoUInt8);
        };
        if (_embedded) {
            _bits = (_bits | ((8 : stdgo.GoUInt8)) : stdgo.GoUInt8);
        };
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((_l : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _b[(0 : stdgo.GoInt)] = _bits;
        stdgo.Go.copySlice((_b.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_nameLen.__slice__(0, _nameLenLen) : stdgo.Slice<stdgo.GoUInt8>));
        stdgo.Go.copySlice((_b.__slice__(((1 : stdgo.GoInt) + _nameLenLen : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _n);
        if (((_tag.length) > (0 : stdgo.GoInt) : Bool)) {
            var _tb = (_b.__slice__((((1 : stdgo.GoInt) + _nameLenLen : stdgo.GoInt) + (_n.length) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            stdgo.Go.copySlice(_tb, (_tagLen.__slice__(0, _tagLenLen) : stdgo.Slice<stdgo.GoUInt8>));
            stdgo.Go.copySlice((_tb.__slice__(_tagLenLen) : stdgo.Slice<stdgo.GoUInt8>), _tag);
        };
        return ({ bytes : stdgo.Go.pointer(_b[(0 : stdgo.GoInt)]) } : stdgo._internal.internal.abi.Abi.Name);
    }
function _unsafeStringFor(_b:stdgo.Pointer<stdgo.GoByte>, _l:stdgo.GoInt):stdgo.GoString {
        return (stdgo._internal.unsafe.Unsafe.string(_b, _l) : stdgo.GoString)?.__copy__();
    }
function _unsafeSliceFor(_b:stdgo.Pointer<stdgo.GoByte>, _l:stdgo.GoInt):stdgo.Slice<stdgo.GoByte> {
        return stdgo._internal.unsafe.Unsafe.slice(_b, _l);
    }
class RegArgs_asInterface {
    @:keep
    public dynamic function intRegArgAddr(_reg:stdgo.GoInt, _argSize:stdgo.GoUIntptr):stdgo._internal.unsafe.Unsafe.UnsafePointer return __self__.value.intRegArgAddr(_reg, _argSize);
    @:keep
    public dynamic function dump():Void __self__.value.dump();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<RegArgs>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.internal.abi.Abi.RegArgs_asInterface) class RegArgs_static_extension {
    @:keep
    static public function intRegArgAddr( _r:stdgo.Ref<RegArgs>, _reg:stdgo.GoInt, _argSize:stdgo.GoUIntptr):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        @:recv var _r:stdgo.Ref<RegArgs> = _r;
        if ((((_argSize > (4 : stdgo.GoUIntptr) : Bool) || _argSize == ((0 : stdgo.GoUIntptr)) : Bool) || ((_argSize & ((_argSize - (1 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr) != (0 : stdgo.GoUIntptr)) : Bool)) {
            throw stdgo.Go.toInterface(("invalid argSize" : stdgo.GoString));
        };
        var _offset = (0 : stdgo.GoUIntptr);
        if (false) {
            _offset = ((4 : stdgo.GoUIntptr) - _argSize : stdgo.GoUIntptr);
        };
        return (stdgo.Go.toInterface((((stdgo.Go.toInterface(stdgo.Go.pointer(_r.ints[(_reg : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr) + _offset : stdgo.GoUIntptr)) : stdgo._internal.unsafe.Unsafe.UnsafePointer);
    }
    @:keep
    static public function dump( _r:stdgo.Ref<RegArgs>):Void {
        @:recv var _r:stdgo.Ref<RegArgs> = _r;
        stdgo.Go.print(("Ints:" : stdgo.GoString));
        for (__199 => _x in _r.ints) {
            stdgo.Go.print((" " : stdgo.GoString), _x);
        };
        stdgo.Go.println("");
        stdgo.Go.print(("Floats:" : stdgo.GoString));
        for (__200 => _x in _r.floats) {
            stdgo.Go.print((" " : stdgo.GoString), @:privateAccess ((_x).toBasic() : haxe.UInt64).toString());
        };
        stdgo.Go.println("");
        stdgo.Go.print(("Ptrs:" : stdgo.GoString));
        for (__201 => _x in _r.ptrs) {
            stdgo.Go.print((" " : stdgo.GoString), _x);
        };
        stdgo.Go.println("");
    }
}
class Offset_asInterface {
    @:keep
    public dynamic function plusUncommon():Offset return __self__.value.plusUncommon();
    @:keep
    public dynamic function offset():stdgo.GoUInt64 return __self__.value.offset();
    @:keep
    public dynamic function interface_():Offset return __self__.value.interface_();
    @:keep
    public dynamic function string():Offset return __self__.value.string();
    @:keep
    public dynamic function slice():Offset return __self__.value.slice();
    @:keep
    public dynamic function p():Offset return __self__.value.p();
    @:keep
    public dynamic function d64():Offset return __self__.value.d64();
    @:keep
    public dynamic function d32():Offset return __self__.value.d32();
    @:keep
    public dynamic function d16():Offset return __self__.value.d16();
    @:keep
    public dynamic function d8():Offset return __self__.value.d8();
    @:keep
    public dynamic function _plus(_x:stdgo.GoUInt64):Offset return __self__.value._plus(_x);
    @:keep
    public dynamic function align(_a:stdgo.GoUInt8):Offset return __self__.value.align(_a);
    @:keep
    public dynamic function _align_(_a:stdgo.GoUInt8):Offset return __self__.value._align_(_a);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Offset>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.internal.abi.Abi.Offset_asInterface) class Offset_static_extension {
    @:keep
    static public function plusUncommon( _o:Offset):Offset {
        @:recv var _o:Offset = _o?.__copy__();
        _o._off = (_o._off + (uncommonSize()) : stdgo.GoUInt64);
        return _o?.__copy__();
    }
    @:keep
    static public function offset( _o:Offset):stdgo.GoUInt64 {
        @:recv var _o:Offset = _o?.__copy__();
        return _o.align(_o._align)._off;
    }
    @:keep
    static public function interface_( _o:Offset):Offset {
        @:recv var _o:Offset = _o?.__copy__();
        _o = _o._align_(_o._sliceAlign)?.__copy__();
        _o._off = (_o._off + (((2i64 : stdgo.GoUInt64) * (_o._ptrSize : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        return _o?.__copy__();
    }
    @:keep
    static public function string( _o:Offset):Offset {
        @:recv var _o:Offset = _o?.__copy__();
        _o = _o._align_(_o._sliceAlign)?.__copy__();
        _o._off = (_o._off + (((2i64 : stdgo.GoUInt64) * (_o._ptrSize : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        return _o?.__copy__();
    }
    @:keep
    static public function slice( _o:Offset):Offset {
        @:recv var _o:Offset = _o?.__copy__();
        _o = _o._align_(_o._sliceAlign)?.__copy__();
        _o._off = (_o._off + (((3i64 : stdgo.GoUInt64) * (_o._ptrSize : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        return _o.align(_o._sliceAlign)?.__copy__();
    }
    @:keep
    static public function p( _o:Offset):Offset {
        @:recv var _o:Offset = _o?.__copy__();
        if (_o._ptrSize == ((0 : stdgo.GoUInt8))) {
            throw stdgo.Go.toInterface(("This offset has no defined pointer size" : stdgo.GoString));
        };
        return _o._plus((_o._ptrSize : stdgo.GoUInt64))?.__copy__();
    }
    @:keep
    static public function d64( _o:Offset):Offset {
        @:recv var _o:Offset = _o?.__copy__();
        return _o._plus((8i64 : stdgo.GoUInt64))?.__copy__();
    }
    @:keep
    static public function d32( _o:Offset):Offset {
        @:recv var _o:Offset = _o?.__copy__();
        return _o._plus((4i64 : stdgo.GoUInt64))?.__copy__();
    }
    @:keep
    static public function d16( _o:Offset):Offset {
        @:recv var _o:Offset = _o?.__copy__();
        return _o._plus((2i64 : stdgo.GoUInt64))?.__copy__();
    }
    @:keep
    static public function d8( _o:Offset):Offset {
        @:recv var _o:Offset = _o?.__copy__();
        return _o._plus((1i64 : stdgo.GoUInt64))?.__copy__();
    }
    @:keep
    static public function _plus( _o:Offset, _x:stdgo.GoUInt64):Offset {
        @:recv var _o:Offset = _o?.__copy__();
        _o = _o._align_((_x : stdgo.GoUInt8))?.__copy__();
        _o._off = (_o._off + (_x) : stdgo.GoUInt64);
        return _o?.__copy__();
    }
    @:keep
    static public function align( _o:Offset, _a:stdgo.GoUInt8):Offset {
        @:recv var _o:Offset = _o?.__copy__();
        _assertIsAPowerOfTwo(_a);
        return _o._align_(_a)?.__copy__();
    }
    @:keep
    static public function _align_( _o:Offset, _a:stdgo.GoUInt8):Offset {
        @:recv var _o:Offset = _o?.__copy__();
        _o._off = ((((_o._off + (_a : stdgo.GoUInt64) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) & (-1 ^ ((_a : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        if ((_o._align < _a : Bool)) {
            _o._align = _a;
        };
        return _o?.__copy__();
    }
}
class Type__asInterface {
    @:keep
    public dynamic function key():stdgo.Ref<Type_> return __self__.value.key();
    @:keep
    public dynamic function numMethod():stdgo.GoInt return __self__.value.numMethod();
    @:keep
    public dynamic function exportedMethods():stdgo.Slice<Method> return __self__.value.exportedMethods();
    @:keep
    public dynamic function fieldAlign():stdgo.GoInt return __self__.value.fieldAlign();
    @:keep
    public dynamic function align():stdgo.GoInt return __self__.value.align();
    @:keep
    public dynamic function size():stdgo.GoUIntptr return __self__.value.size();
    @:keep
    public dynamic function interfaceType():stdgo.Ref<InterfaceType> return __self__.value.interfaceType();
    @:keep
    public dynamic function funcType():stdgo.Ref<FuncType> return __self__.value.funcType();
    @:keep
    public dynamic function arrayType():stdgo.Ref<ArrayType> return __self__.value.arrayType();
    @:keep
    public dynamic function mapType():stdgo.Ref<MapType> return __self__.value.mapType();
    @:keep
    public dynamic function structType():stdgo.Ref<StructType> return __self__.value.structType();
    @:keep
    public dynamic function elem():stdgo.Ref<Type_> return __self__.value.elem();
    @:keep
    public dynamic function uncommon():stdgo.Ref<UncommonType> return __self__.value.uncommon();
    @:keep
    public dynamic function chanDir():ChanDir return __self__.value.chanDir();
    @:keep
    public dynamic function common():stdgo.Ref<Type_> return __self__.value.common();
    @:keep
    public dynamic function len():stdgo.GoInt return __self__.value.len();
    @:keep
    public dynamic function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoByte> return __self__.value.gcSlice(_begin, _end);
    @:keep
    public dynamic function isDirectIface():Bool return __self__.value.isDirectIface();
    @:keep
    public dynamic function ifaceIndir():Bool return __self__.value.ifaceIndir();
    @:keep
    public dynamic function pointers():Bool return __self__.value.pointers();
    @:keep
    public dynamic function hasName():Bool return __self__.value.hasName();
    @:keep
    public dynamic function kind():Kind return __self__.value.kind();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Type_>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.internal.abi.Abi.Type__asInterface) class Type__static_extension {
    @:keep
    static public function key( _t:stdgo.Ref<Type_>):stdgo.Ref<Type_> {
        @:recv var _t:stdgo.Ref<Type_> = _t;
        if (_t.kind() == ((21u32 : stdgo._internal.internal.abi.Abi.Kind))) {
            return ((stdgo.Go.toInterface(_t) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.MapType", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "type", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TFlag", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TypeOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "key", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TFlag", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TypeOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "elem", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TFlag", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TypeOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "bucket", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TFlag", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TypeOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "hasher", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)] }, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)] }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.invalidType }) }, optional : false }, { name : "keySize", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false }, { name : "valueSize", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false }, { name : "bucketSize", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "flags", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<MapType>).key;
        };
        return null;
    }
    @:keep
    static public function numMethod( _t:stdgo.Ref<Type_>):stdgo.GoInt {
        @:recv var _t:stdgo.Ref<Type_> = _t;
        if (_t.kind() == ((20u32 : stdgo._internal.internal.abi.Abi.Kind))) {
            var _tt = ((stdgo.Go.toInterface(_t) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.InterfaceType", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "type", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TFlag", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TypeOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "pkgPath", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Name", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "bytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "methods", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Imethod", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }, { name : "typ", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TypeOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<InterfaceType>);
            return _tt.numMethod();
        };
        return (_t.exportedMethods().length);
    }
    @:keep
    static public function exportedMethods( _t:stdgo.Ref<Type_>):stdgo.Slice<Method> {
        @:recv var _t:stdgo.Ref<Type_> = _t;
        var _ut = _t.uncommon();
        if (_ut == null || (_ut : Dynamic).__nil__) {
            return (null : stdgo.Slice<stdgo._internal.internal.abi.Abi.Method>);
        };
        return _ut.exportedMethods();
    }
    @:keep
    static public function fieldAlign( _t:stdgo.Ref<Type_>):stdgo.GoInt {
        @:recv var _t:stdgo.Ref<Type_> = _t;
        return (_t.fieldAlign_ : stdgo.GoInt);
    }
    @:keep
    static public function align( _t:stdgo.Ref<Type_>):stdgo.GoInt {
        @:recv var _t:stdgo.Ref<Type_> = _t;
        return (_t.align_ : stdgo.GoInt);
    }
    @:keep
    static public function size( _t:stdgo.Ref<Type_>):stdgo.GoUIntptr {
        @:recv var _t:stdgo.Ref<Type_> = _t;
        return _t.size_;
    }
    @:keep
    static public function interfaceType( _t:stdgo.Ref<Type_>):stdgo.Ref<InterfaceType> {
        @:recv var _t:stdgo.Ref<Type_> = _t;
        if (_t.kind() != ((20u32 : stdgo._internal.internal.abi.Abi.Kind))) {
            return null;
        };
        return ((stdgo.Go.toInterface(_t) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.InterfaceType", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "type", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TFlag", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TypeOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "pkgPath", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Name", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "bytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "methods", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Imethod", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }, { name : "typ", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TypeOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<InterfaceType>);
    }
    @:keep
    static public function funcType( _t:stdgo.Ref<Type_>):stdgo.Ref<FuncType> {
        @:recv var _t:stdgo.Ref<Type_> = _t;
        if (_t.kind() != ((19u32 : stdgo._internal.internal.abi.Abi.Kind))) {
            return null;
        };
        return ((stdgo.Go.toInterface(_t) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.FuncType", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "type", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TFlag", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TypeOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "inCount", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "outCount", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<FuncType>);
    }
    @:keep
    static public function arrayType( _t:stdgo.Ref<Type_>):stdgo.Ref<ArrayType> {
        @:recv var _t:stdgo.Ref<Type_> = _t;
        if (_t.kind() != ((17u32 : stdgo._internal.internal.abi.Abi.Kind))) {
            return null;
        };
        return ((stdgo.Go.toInterface(_t) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.ArrayType", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "type", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TFlag", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TypeOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "elem", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TFlag", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TypeOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "slice", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TFlag", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TypeOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "len", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<ArrayType>);
    }
    @:keep
    static public function mapType( _t:stdgo.Ref<Type_>):stdgo.Ref<MapType> {
        @:recv var _t:stdgo.Ref<Type_> = _t;
        if (_t.kind() != ((21u32 : stdgo._internal.internal.abi.Abi.Kind))) {
            return null;
        };
        return ((stdgo.Go.toInterface(_t) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.MapType", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "type", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TFlag", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TypeOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "key", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TFlag", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TypeOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "elem", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TFlag", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TypeOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "bucket", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TFlag", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TypeOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "hasher", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)] }, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)] }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.invalidType }) }, optional : false }, { name : "keySize", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false }, { name : "valueSize", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false }, { name : "bucketSize", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "flags", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<MapType>);
    }
    @:keep
    static public function structType( _t:stdgo.Ref<Type_>):stdgo.Ref<StructType> {
        @:recv var _t:stdgo.Ref<Type_> = _t;
        if (_t.kind() != ((25u32 : stdgo._internal.internal.abi.Abi.Kind))) {
            return null;
        };
        return ((stdgo.Go.toInterface(_t) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.StructType", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "type", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TFlag", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TypeOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "pkgPath", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Name", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "bytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "fields", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.StructField", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Name", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "bytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "typ", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TFlag", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TypeOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "offset", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<StructType>);
    }
    @:keep
    static public function elem( _t:stdgo.Ref<Type_>):stdgo.Ref<Type_> {
        @:recv var _t:stdgo.Ref<Type_> = _t;
        {
            final __value__ = _t.kind();
            if (__value__ == ((17u32 : stdgo._internal.internal.abi.Abi.Kind))) {
                var _tt = ((stdgo.Go.toInterface(_t) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.ArrayType", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "type", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TFlag", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TypeOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "elem", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TFlag", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TypeOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "slice", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TFlag", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TypeOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "len", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<ArrayType>);
                return _tt.elem;
            } else if (__value__ == ((18u32 : stdgo._internal.internal.abi.Abi.Kind))) {
                var _tt = ((stdgo.Go.toInterface(_t) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.ChanType", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "type", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TFlag", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TypeOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "elem", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TFlag", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TypeOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "dir", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.ChanDir", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<ChanType>);
                return _tt.elem;
            } else if (__value__ == ((21u32 : stdgo._internal.internal.abi.Abi.Kind))) {
                var _tt = ((stdgo.Go.toInterface(_t) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.MapType", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "type", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TFlag", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TypeOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "key", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TFlag", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TypeOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "elem", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TFlag", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TypeOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "bucket", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TFlag", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TypeOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "hasher", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)] }, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)] }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.invalidType }) }, optional : false }, { name : "keySize", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false }, { name : "valueSize", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false }, { name : "bucketSize", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "flags", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<MapType>);
                return _tt.elem;
            } else if (__value__ == ((22u32 : stdgo._internal.internal.abi.Abi.Kind))) {
                var _tt = ((stdgo.Go.toInterface(_t) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.PtrType", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "type", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TFlag", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TypeOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "elem", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TFlag", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TypeOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<PtrType>);
                return _tt.elem;
            } else if (__value__ == ((23u32 : stdgo._internal.internal.abi.Abi.Kind))) {
                var _tt = ((stdgo.Go.toInterface(_t) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.SliceType", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "type", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TFlag", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TypeOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "elem", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TFlag", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TypeOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<SliceType>);
                return _tt.elem;
            };
        };
        return null;
    }
    @:keep
    static public function uncommon( _t:stdgo.Ref<Type_>):stdgo.Ref<UncommonType> {
        @:recv var _t:stdgo.Ref<Type_> = _t;
        if ((_t.tflag & (1 : stdgo._internal.internal.abi.Abi.TFlag) : stdgo._internal.internal.abi.Abi.TFlag) == ((0 : stdgo._internal.internal.abi.Abi.TFlag))) {
            return null;
        };
        {
            final __value__ = _t.kind();
            if (__value__ == ((25u32 : stdgo._internal.internal.abi.Abi.Kind))) {
                return (stdgo.Go.setRef(((stdgo.Go.toInterface(_t) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.T_structTypeUncommon", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "structType", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.StructType", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "type", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TFlag", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TypeOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "pkgPath", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Name", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "bytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "fields", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.StructField", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Name", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "bytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "typ", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TFlag", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TypeOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "offset", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "_u", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.UncommonType", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "pkgPath", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }, { name : "mcount", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "xcount", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "moff", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "__205", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }]), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<T_structTypeUncommon>)._u) : stdgo.Ref<stdgo._internal.internal.abi.Abi.UncommonType>);
            } else if (__value__ == ((22u32 : stdgo._internal.internal.abi.Abi.Kind))) {
                {};
                return (stdgo.Go.setRef(((stdgo.Go.toInterface(_t) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.T_uncommon___localname___u_8324", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "ptrType", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.PtrType", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "type", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TFlag", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TypeOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "elem", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TFlag", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TypeOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "_u", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.UncommonType", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "pkgPath", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }, { name : "mcount", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "xcount", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "moff", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "__214", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }]), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<T_uncommon___localname___u_8324>)._u) : stdgo.Ref<stdgo._internal.internal.abi.Abi.UncommonType>);
            } else if (__value__ == ((19u32 : stdgo._internal.internal.abi.Abi.Kind))) {
                {};
                return (stdgo.Go.setRef(((stdgo.Go.toInterface(_t) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.T_uncommon___localname___u_8423", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "funcType", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.FuncType", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "type", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TFlag", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TypeOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "inCount", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "outCount", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "_u", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.UncommonType", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "pkgPath", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }, { name : "mcount", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "xcount", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "moff", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "__223", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }]), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<T_uncommon___localname___u_8423>)._u) : stdgo.Ref<stdgo._internal.internal.abi.Abi.UncommonType>);
            } else if (__value__ == ((23u32 : stdgo._internal.internal.abi.Abi.Kind))) {
                {};
                return (stdgo.Go.setRef(((stdgo.Go.toInterface(_t) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.T_uncommon___localname___u_8524", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "sliceType", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.SliceType", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "type", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TFlag", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TypeOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "elem", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TFlag", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TypeOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "_u", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.UncommonType", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "pkgPath", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }, { name : "mcount", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "xcount", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "moff", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "__232", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }]), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<T_uncommon___localname___u_8524>)._u) : stdgo.Ref<stdgo._internal.internal.abi.Abi.UncommonType>);
            } else if (__value__ == ((17u32 : stdgo._internal.internal.abi.Abi.Kind))) {
                {};
                return (stdgo.Go.setRef(((stdgo.Go.toInterface(_t) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.T_uncommon___localname___u_8626", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "arrayType", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.ArrayType", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "type", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TFlag", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TypeOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "elem", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TFlag", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TypeOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "slice", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TFlag", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TypeOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "len", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "_u", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.UncommonType", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "pkgPath", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }, { name : "mcount", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "xcount", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "moff", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "__241", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }]), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<T_uncommon___localname___u_8626>)._u) : stdgo.Ref<stdgo._internal.internal.abi.Abi.UncommonType>);
            } else if (__value__ == ((18u32 : stdgo._internal.internal.abi.Abi.Kind))) {
                {};
                return (stdgo.Go.setRef(((stdgo.Go.toInterface(_t) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.T_uncommon___localname___u_8727", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "chanType", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.ChanType", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "type", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TFlag", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TypeOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "elem", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TFlag", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TypeOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "dir", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.ChanDir", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "_u", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.UncommonType", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "pkgPath", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }, { name : "mcount", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "xcount", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "moff", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "__250", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }]), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<T_uncommon___localname___u_8727>)._u) : stdgo.Ref<stdgo._internal.internal.abi.Abi.UncommonType>);
            } else if (__value__ == ((21u32 : stdgo._internal.internal.abi.Abi.Kind))) {
                {};
                return (stdgo.Go.setRef(((stdgo.Go.toInterface(_t) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.T_uncommon___localname___u_8826", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "mapType", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.MapType", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "type", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TFlag", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TypeOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "key", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TFlag", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TypeOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "elem", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TFlag", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TypeOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "bucket", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TFlag", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TypeOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "hasher", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)] }, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)] }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.invalidType }) }, optional : false }, { name : "keySize", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false }, { name : "valueSize", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false }, { name : "bucketSize", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "flags", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "_u", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.UncommonType", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "pkgPath", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }, { name : "mcount", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "xcount", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "moff", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "__259", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }]), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<T_uncommon___localname___u_8826>)._u) : stdgo.Ref<stdgo._internal.internal.abi.Abi.UncommonType>);
            } else if (__value__ == ((20u32 : stdgo._internal.internal.abi.Abi.Kind))) {
                {};
                return (stdgo.Go.setRef(((stdgo.Go.toInterface(_t) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.T_uncommon___localname___u_8930", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "interfaceType", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.InterfaceType", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "type", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TFlag", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TypeOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "pkgPath", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Name", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "bytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "methods", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Imethod", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }, { name : "typ", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TypeOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "_u", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.UncommonType", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "pkgPath", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }, { name : "mcount", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "xcount", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "moff", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "__268", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }]), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<T_uncommon___localname___u_8930>)._u) : stdgo.Ref<stdgo._internal.internal.abi.Abi.UncommonType>);
            } else {
                {};
                return (stdgo.Go.setRef(((stdgo.Go.toInterface(_t) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.T_uncommon___localname___u_9033", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "type", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TFlag", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TypeOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "_u", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.UncommonType", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "pkgPath", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }, { name : "mcount", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "xcount", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "moff", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "__277", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }]), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<T_uncommon___localname___u_9033>)._u) : stdgo.Ref<stdgo._internal.internal.abi.Abi.UncommonType>);
            };
        };
    }
    @:keep
    static public function chanDir( _t:stdgo.Ref<Type_>):ChanDir {
        @:recv var _t:stdgo.Ref<Type_> = _t;
        if (_t.kind() == ((18u32 : stdgo._internal.internal.abi.Abi.Kind))) {
            var _ch = ((stdgo.Go.toInterface(_t) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.ChanType", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "type", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TFlag", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TypeOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "elem", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TFlag", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TypeOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "dir", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.ChanDir", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<ChanType>);
            return _ch.dir;
        };
        return (0 : stdgo._internal.internal.abi.Abi.ChanDir);
    }
    @:keep
    static public function common( _t:stdgo.Ref<Type_>):stdgo.Ref<Type_> {
        @:recv var _t:stdgo.Ref<Type_> = _t;
        return _t;
    }
    @:keep
    static public function len( _t:stdgo.Ref<Type_>):stdgo.GoInt {
        @:recv var _t:stdgo.Ref<Type_> = _t;
        if (_t.kind() == ((17u32 : stdgo._internal.internal.abi.Abi.Kind))) {
            return (((stdgo.Go.toInterface(_t) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.ArrayType", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "type", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TFlag", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TypeOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "elem", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TFlag", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TypeOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "slice", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TFlag", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TypeOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "len", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<ArrayType>).len : stdgo.GoInt);
        };
        return (0 : stdgo.GoInt);
    }
    @:keep
    static public function gcSlice( _t:stdgo.Ref<Type_>, _begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoByte> {
        @:recv var _t:stdgo.Ref<Type_> = _t;
        return (_unsafeSliceFor(_t.gcdata, (_end : stdgo.GoInt)).__slice__(_begin) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    static public function isDirectIface( _t:stdgo.Ref<Type_>):Bool {
        @:recv var _t:stdgo.Ref<Type_> = _t;
        return (_t.kind_ & (32 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8));
    }
    @:keep
    static public function ifaceIndir( _t:stdgo.Ref<Type_>):Bool {
        @:recv var _t:stdgo.Ref<Type_> = _t;
        return (_t.kind_ & (32 : stdgo.GoUInt8) : stdgo.GoUInt8) == ((0 : stdgo.GoUInt8));
    }
    @:keep
    static public function pointers( _t:stdgo.Ref<Type_>):Bool {
        @:recv var _t:stdgo.Ref<Type_> = _t;
        return _t.ptrBytes != ((0 : stdgo.GoUIntptr));
    }
    @:keep
    static public function hasName( _t:stdgo.Ref<Type_>):Bool {
        @:recv var _t:stdgo.Ref<Type_> = _t;
        return (_t.tflag & (4 : stdgo._internal.internal.abi.Abi.TFlag) : stdgo._internal.internal.abi.Abi.TFlag) != ((0 : stdgo._internal.internal.abi.Abi.TFlag));
    }
    @:keep
    static public function kind( _t:stdgo.Ref<Type_>):Kind {
        @:recv var _t:stdgo.Ref<Type_> = _t;
        return ((_t.kind_ & (31 : stdgo.GoUInt8) : stdgo.GoUInt8) : Kind);
    }
}
@:structInit class T_uncommon___localname___u_8324 {
    @:embedded
    public var ptrType : stdgo._internal.internal.abi.Abi.PtrType = ({} : stdgo._internal.internal.abi.Abi.PtrType);
    public var _u : stdgo._internal.internal.abi.Abi.UncommonType = ({} : stdgo._internal.internal.abi.Abi.UncommonType);
    public function new(?ptrType:stdgo._internal.internal.abi.Abi.PtrType, ?_u:stdgo._internal.internal.abi.Abi.UncommonType) {
        if (ptrType != null) this.ptrType = ptrType;
        if (_u != null) this._u = _u;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function align():stdgo.GoInt return ptrType.align();
    @:embedded
    public function arrayType():stdgo.Ref<stdgo._internal.internal.abi.Abi.ArrayType> return ptrType.arrayType();
    @:embedded
    public function chanDir():stdgo._internal.internal.abi.Abi.ChanDir return ptrType.chanDir();
    @:embedded
    public function common():stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return ptrType.common();
    @:embedded
    public function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Abi.Method> return ptrType.exportedMethods();
    @:embedded
    public function fieldAlign():stdgo.GoInt return ptrType.fieldAlign();
    @:embedded
    public function funcType():stdgo.Ref<stdgo._internal.internal.abi.Abi.FuncType> return ptrType.funcType();
    @:embedded
    public function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8> return ptrType.gcSlice(_begin, _end);
    @:embedded
    public function hasName():Bool return ptrType.hasName();
    @:embedded
    public function ifaceIndir():Bool return ptrType.ifaceIndir();
    @:embedded
    public function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.Abi.InterfaceType> return ptrType.interfaceType();
    @:embedded
    public function isDirectIface():Bool return ptrType.isDirectIface();
    @:embedded
    public function key():stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return ptrType.key();
    @:embedded
    public function kind():stdgo._internal.internal.abi.Abi.Kind return ptrType.kind();
    @:embedded
    public function len():stdgo.GoInt return ptrType.len();
    @:embedded
    public function mapType():stdgo.Ref<stdgo._internal.internal.abi.Abi.MapType> return ptrType.mapType();
    @:embedded
    public function numMethod():stdgo.GoInt return ptrType.numMethod();
    @:embedded
    public function pointers():Bool return ptrType.pointers();
    @:embedded
    public function size():stdgo.GoUIntptr return ptrType.size();
    @:embedded
    public function structType():stdgo.Ref<stdgo._internal.internal.abi.Abi.StructType> return ptrType.structType();
    @:embedded
    public function uncommon():stdgo.Ref<stdgo._internal.internal.abi.Abi.UncommonType> return ptrType.uncommon();
    public function __copy__() {
        return new T_uncommon___localname___u_8324(ptrType, _u);
    }
}
@:structInit class T_uncommon___localname___u_8423 {
    @:embedded
    public var funcType : stdgo._internal.internal.abi.Abi.FuncType = ({} : stdgo._internal.internal.abi.Abi.FuncType);
    public var _u : stdgo._internal.internal.abi.Abi.UncommonType = ({} : stdgo._internal.internal.abi.Abi.UncommonType);
    public function new(?funcType:stdgo._internal.internal.abi.Abi.FuncType, ?_u:stdgo._internal.internal.abi.Abi.UncommonType) {
        if (funcType != null) this.funcType = funcType;
        if (_u != null) this._u = _u;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function align():stdgo.GoInt return funcType.align();
    @:embedded
    public function arrayType():stdgo.Ref<stdgo._internal.internal.abi.Abi.ArrayType> return funcType.arrayType();
    @:embedded
    public function chanDir():stdgo._internal.internal.abi.Abi.ChanDir return funcType.chanDir();
    @:embedded
    public function common():stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return funcType.common();
    @:embedded
    public function elem():stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return funcType.elem();
    @:embedded
    public function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Abi.Method> return funcType.exportedMethods();
    @:embedded
    public function fieldAlign():stdgo.GoInt return funcType.fieldAlign();
    @:embedded
    public function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8> return funcType.gcSlice(_begin, _end);
    @:embedded
    public function hasName():Bool return funcType.hasName();
    @:embedded
    public function ifaceIndir():Bool return funcType.ifaceIndir();
    @:embedded
    public function in_(_i:stdgo.GoInt):stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return funcType.in_(_i);
    @:embedded
    public function inSlice():stdgo.Slice<stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_>> return funcType.inSlice();
    @:embedded
    public function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.Abi.InterfaceType> return funcType.interfaceType();
    @:embedded
    public function isDirectIface():Bool return funcType.isDirectIface();
    @:embedded
    public function isVariadic():Bool return funcType.isVariadic();
    @:embedded
    public function key():stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return funcType.key();
    @:embedded
    public function kind():stdgo._internal.internal.abi.Abi.Kind return funcType.kind();
    @:embedded
    public function len():stdgo.GoInt return funcType.len();
    @:embedded
    public function mapType():stdgo.Ref<stdgo._internal.internal.abi.Abi.MapType> return funcType.mapType();
    @:embedded
    public function numIn():stdgo.GoInt return funcType.numIn();
    @:embedded
    public function numMethod():stdgo.GoInt return funcType.numMethod();
    @:embedded
    public function numOut():stdgo.GoInt return funcType.numOut();
    @:embedded
    public function out(_i:stdgo.GoInt):stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return funcType.out(_i);
    @:embedded
    public function outSlice():stdgo.Slice<stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_>> return funcType.outSlice();
    @:embedded
    public function pointers():Bool return funcType.pointers();
    @:embedded
    public function size():stdgo.GoUIntptr return funcType.size();
    @:embedded
    public function structType():stdgo.Ref<stdgo._internal.internal.abi.Abi.StructType> return funcType.structType();
    @:embedded
    public function uncommon():stdgo.Ref<stdgo._internal.internal.abi.Abi.UncommonType> return funcType.uncommon();
    public function __copy__() {
        return new T_uncommon___localname___u_8423(funcType, _u);
    }
}
@:structInit class T_uncommon___localname___u_8524 {
    @:embedded
    public var sliceType : stdgo._internal.internal.abi.Abi.SliceType = ({} : stdgo._internal.internal.abi.Abi.SliceType);
    public var _u : stdgo._internal.internal.abi.Abi.UncommonType = ({} : stdgo._internal.internal.abi.Abi.UncommonType);
    public function new(?sliceType:stdgo._internal.internal.abi.Abi.SliceType, ?_u:stdgo._internal.internal.abi.Abi.UncommonType) {
        if (sliceType != null) this.sliceType = sliceType;
        if (_u != null) this._u = _u;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function align():stdgo.GoInt return sliceType.align();
    @:embedded
    public function arrayType():stdgo.Ref<stdgo._internal.internal.abi.Abi.ArrayType> return sliceType.arrayType();
    @:embedded
    public function chanDir():stdgo._internal.internal.abi.Abi.ChanDir return sliceType.chanDir();
    @:embedded
    public function common():stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return sliceType.common();
    @:embedded
    public function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Abi.Method> return sliceType.exportedMethods();
    @:embedded
    public function fieldAlign():stdgo.GoInt return sliceType.fieldAlign();
    @:embedded
    public function funcType():stdgo.Ref<stdgo._internal.internal.abi.Abi.FuncType> return sliceType.funcType();
    @:embedded
    public function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8> return sliceType.gcSlice(_begin, _end);
    @:embedded
    public function hasName():Bool return sliceType.hasName();
    @:embedded
    public function ifaceIndir():Bool return sliceType.ifaceIndir();
    @:embedded
    public function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.Abi.InterfaceType> return sliceType.interfaceType();
    @:embedded
    public function isDirectIface():Bool return sliceType.isDirectIface();
    @:embedded
    public function key():stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return sliceType.key();
    @:embedded
    public function kind():stdgo._internal.internal.abi.Abi.Kind return sliceType.kind();
    @:embedded
    public function len():stdgo.GoInt return sliceType.len();
    @:embedded
    public function mapType():stdgo.Ref<stdgo._internal.internal.abi.Abi.MapType> return sliceType.mapType();
    @:embedded
    public function numMethod():stdgo.GoInt return sliceType.numMethod();
    @:embedded
    public function pointers():Bool return sliceType.pointers();
    @:embedded
    public function size():stdgo.GoUIntptr return sliceType.size();
    @:embedded
    public function structType():stdgo.Ref<stdgo._internal.internal.abi.Abi.StructType> return sliceType.structType();
    @:embedded
    public function uncommon():stdgo.Ref<stdgo._internal.internal.abi.Abi.UncommonType> return sliceType.uncommon();
    public function __copy__() {
        return new T_uncommon___localname___u_8524(sliceType, _u);
    }
}
@:structInit class T_uncommon___localname___u_8626 {
    @:embedded
    public var arrayType : stdgo._internal.internal.abi.Abi.ArrayType = ({} : stdgo._internal.internal.abi.Abi.ArrayType);
    public var _u : stdgo._internal.internal.abi.Abi.UncommonType = ({} : stdgo._internal.internal.abi.Abi.UncommonType);
    public function new(?arrayType:stdgo._internal.internal.abi.Abi.ArrayType, ?_u:stdgo._internal.internal.abi.Abi.UncommonType) {
        if (arrayType != null) this.arrayType = arrayType;
        if (_u != null) this._u = _u;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function align():stdgo.GoInt return arrayType.align();
    @:embedded
    public function chanDir():stdgo._internal.internal.abi.Abi.ChanDir return arrayType.chanDir();
    @:embedded
    public function common():stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return arrayType.common();
    @:embedded
    public function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Abi.Method> return arrayType.exportedMethods();
    @:embedded
    public function fieldAlign():stdgo.GoInt return arrayType.fieldAlign();
    @:embedded
    public function funcType():stdgo.Ref<stdgo._internal.internal.abi.Abi.FuncType> return arrayType.funcType();
    @:embedded
    public function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8> return arrayType.gcSlice(_begin, _end);
    @:embedded
    public function hasName():Bool return arrayType.hasName();
    @:embedded
    public function ifaceIndir():Bool return arrayType.ifaceIndir();
    @:embedded
    public function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.Abi.InterfaceType> return arrayType.interfaceType();
    @:embedded
    public function isDirectIface():Bool return arrayType.isDirectIface();
    @:embedded
    public function key():stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return arrayType.key();
    @:embedded
    public function kind():stdgo._internal.internal.abi.Abi.Kind return arrayType.kind();
    @:embedded
    public function mapType():stdgo.Ref<stdgo._internal.internal.abi.Abi.MapType> return arrayType.mapType();
    @:embedded
    public function numMethod():stdgo.GoInt return arrayType.numMethod();
    @:embedded
    public function pointers():Bool return arrayType.pointers();
    @:embedded
    public function size():stdgo.GoUIntptr return arrayType.size();
    @:embedded
    public function structType():stdgo.Ref<stdgo._internal.internal.abi.Abi.StructType> return arrayType.structType();
    @:embedded
    public function uncommon():stdgo.Ref<stdgo._internal.internal.abi.Abi.UncommonType> return arrayType.uncommon();
    public function __copy__() {
        return new T_uncommon___localname___u_8626(arrayType, _u);
    }
}
@:structInit class T_uncommon___localname___u_8727 {
    @:embedded
    public var chanType : stdgo._internal.internal.abi.Abi.ChanType = ({} : stdgo._internal.internal.abi.Abi.ChanType);
    public var _u : stdgo._internal.internal.abi.Abi.UncommonType = ({} : stdgo._internal.internal.abi.Abi.UncommonType);
    public function new(?chanType:stdgo._internal.internal.abi.Abi.ChanType, ?_u:stdgo._internal.internal.abi.Abi.UncommonType) {
        if (chanType != null) this.chanType = chanType;
        if (_u != null) this._u = _u;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function align():stdgo.GoInt return chanType.align();
    @:embedded
    public function arrayType():stdgo.Ref<stdgo._internal.internal.abi.Abi.ArrayType> return chanType.arrayType();
    @:embedded
    public function chanDir():stdgo._internal.internal.abi.Abi.ChanDir return chanType.chanDir();
    @:embedded
    public function common():stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return chanType.common();
    @:embedded
    public function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Abi.Method> return chanType.exportedMethods();
    @:embedded
    public function fieldAlign():stdgo.GoInt return chanType.fieldAlign();
    @:embedded
    public function funcType():stdgo.Ref<stdgo._internal.internal.abi.Abi.FuncType> return chanType.funcType();
    @:embedded
    public function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8> return chanType.gcSlice(_begin, _end);
    @:embedded
    public function hasName():Bool return chanType.hasName();
    @:embedded
    public function ifaceIndir():Bool return chanType.ifaceIndir();
    @:embedded
    public function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.Abi.InterfaceType> return chanType.interfaceType();
    @:embedded
    public function isDirectIface():Bool return chanType.isDirectIface();
    @:embedded
    public function key():stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return chanType.key();
    @:embedded
    public function kind():stdgo._internal.internal.abi.Abi.Kind return chanType.kind();
    @:embedded
    public function len():stdgo.GoInt return chanType.len();
    @:embedded
    public function mapType():stdgo.Ref<stdgo._internal.internal.abi.Abi.MapType> return chanType.mapType();
    @:embedded
    public function numMethod():stdgo.GoInt return chanType.numMethod();
    @:embedded
    public function pointers():Bool return chanType.pointers();
    @:embedded
    public function size():stdgo.GoUIntptr return chanType.size();
    @:embedded
    public function structType():stdgo.Ref<stdgo._internal.internal.abi.Abi.StructType> return chanType.structType();
    @:embedded
    public function uncommon():stdgo.Ref<stdgo._internal.internal.abi.Abi.UncommonType> return chanType.uncommon();
    public function __copy__() {
        return new T_uncommon___localname___u_8727(chanType, _u);
    }
}
@:structInit class T_uncommon___localname___u_8826 {
    @:embedded
    public var mapType : stdgo._internal.internal.abi.Abi.MapType = ({} : stdgo._internal.internal.abi.Abi.MapType);
    public var _u : stdgo._internal.internal.abi.Abi.UncommonType = ({} : stdgo._internal.internal.abi.Abi.UncommonType);
    public function new(?mapType:stdgo._internal.internal.abi.Abi.MapType, ?_u:stdgo._internal.internal.abi.Abi.UncommonType) {
        if (mapType != null) this.mapType = mapType;
        if (_u != null) this._u = _u;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function align():stdgo.GoInt return mapType.align();
    @:embedded
    public function arrayType():stdgo.Ref<stdgo._internal.internal.abi.Abi.ArrayType> return mapType.arrayType();
    @:embedded
    public function chanDir():stdgo._internal.internal.abi.Abi.ChanDir return mapType.chanDir();
    @:embedded
    public function common():stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return mapType.common();
    @:embedded
    public function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Abi.Method> return mapType.exportedMethods();
    @:embedded
    public function fieldAlign():stdgo.GoInt return mapType.fieldAlign();
    @:embedded
    public function funcType():stdgo.Ref<stdgo._internal.internal.abi.Abi.FuncType> return mapType.funcType();
    @:embedded
    public function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8> return mapType.gcSlice(_begin, _end);
    @:embedded
    public function hasName():Bool return mapType.hasName();
    @:embedded
    public function hashMightPanic():Bool return mapType.hashMightPanic();
    @:embedded
    public function ifaceIndir():Bool return mapType.ifaceIndir();
    @:embedded
    public function indirectElem():Bool return mapType.indirectElem();
    @:embedded
    public function indirectKey():Bool return mapType.indirectKey();
    @:embedded
    public function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.Abi.InterfaceType> return mapType.interfaceType();
    @:embedded
    public function isDirectIface():Bool return mapType.isDirectIface();
    @:embedded
    public function kind():stdgo._internal.internal.abi.Abi.Kind return mapType.kind();
    @:embedded
    public function len():stdgo.GoInt return mapType.len();
    @:embedded
    public function needKeyUpdate():Bool return mapType.needKeyUpdate();
    @:embedded
    public function numMethod():stdgo.GoInt return mapType.numMethod();
    @:embedded
    public function pointers():Bool return mapType.pointers();
    @:embedded
    public function reflexiveKey():Bool return mapType.reflexiveKey();
    @:embedded
    public function size():stdgo.GoUIntptr return mapType.size();
    @:embedded
    public function structType():stdgo.Ref<stdgo._internal.internal.abi.Abi.StructType> return mapType.structType();
    @:embedded
    public function uncommon():stdgo.Ref<stdgo._internal.internal.abi.Abi.UncommonType> return mapType.uncommon();
    public function __copy__() {
        return new T_uncommon___localname___u_8826(mapType, _u);
    }
}
@:structInit class T_uncommon___localname___u_8930 {
    @:embedded
    public var interfaceType : stdgo._internal.internal.abi.Abi.InterfaceType = ({} : stdgo._internal.internal.abi.Abi.InterfaceType);
    public var _u : stdgo._internal.internal.abi.Abi.UncommonType = ({} : stdgo._internal.internal.abi.Abi.UncommonType);
    public function new(?interfaceType:stdgo._internal.internal.abi.Abi.InterfaceType, ?_u:stdgo._internal.internal.abi.Abi.UncommonType) {
        if (interfaceType != null) this.interfaceType = interfaceType;
        if (_u != null) this._u = _u;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function align():stdgo.GoInt return interfaceType.align();
    @:embedded
    public function arrayType():stdgo.Ref<stdgo._internal.internal.abi.Abi.ArrayType> return interfaceType.arrayType();
    @:embedded
    public function chanDir():stdgo._internal.internal.abi.Abi.ChanDir return interfaceType.chanDir();
    @:embedded
    public function common():stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return interfaceType.common();
    @:embedded
    public function elem():stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return interfaceType.elem();
    @:embedded
    public function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Abi.Method> return interfaceType.exportedMethods();
    @:embedded
    public function fieldAlign():stdgo.GoInt return interfaceType.fieldAlign();
    @:embedded
    public function funcType():stdgo.Ref<stdgo._internal.internal.abi.Abi.FuncType> return interfaceType.funcType();
    @:embedded
    public function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8> return interfaceType.gcSlice(_begin, _end);
    @:embedded
    public function hasName():Bool return interfaceType.hasName();
    @:embedded
    public function ifaceIndir():Bool return interfaceType.ifaceIndir();
    @:embedded
    public function isDirectIface():Bool return interfaceType.isDirectIface();
    @:embedded
    public function key():stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return interfaceType.key();
    @:embedded
    public function kind():stdgo._internal.internal.abi.Abi.Kind return interfaceType.kind();
    @:embedded
    public function len():stdgo.GoInt return interfaceType.len();
    @:embedded
    public function mapType():stdgo.Ref<stdgo._internal.internal.abi.Abi.MapType> return interfaceType.mapType();
    @:embedded
    public function numMethod():stdgo.GoInt return interfaceType.numMethod();
    @:embedded
    public function pointers():Bool return interfaceType.pointers();
    @:embedded
    public function size():stdgo.GoUIntptr return interfaceType.size();
    @:embedded
    public function structType():stdgo.Ref<stdgo._internal.internal.abi.Abi.StructType> return interfaceType.structType();
    @:embedded
    public function uncommon():stdgo.Ref<stdgo._internal.internal.abi.Abi.UncommonType> return interfaceType.uncommon();
    public function __copy__() {
        return new T_uncommon___localname___u_8930(interfaceType, _u);
    }
}
@:structInit class T_uncommon___localname___u_9033 {
    @:embedded
    public var type : stdgo._internal.internal.abi.Abi.Type_ = ({} : stdgo._internal.internal.abi.Abi.Type_);
    public var _u : stdgo._internal.internal.abi.Abi.UncommonType = ({} : stdgo._internal.internal.abi.Abi.UncommonType);
    public function new(?type:stdgo._internal.internal.abi.Abi.Type_, ?_u:stdgo._internal.internal.abi.Abi.UncommonType) {
        if (type != null) this.type = type;
        if (_u != null) this._u = _u;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function align():stdgo.GoInt return type.align();
    @:embedded
    public function arrayType():stdgo.Ref<stdgo._internal.internal.abi.Abi.ArrayType> return type.arrayType();
    @:embedded
    public function chanDir():stdgo._internal.internal.abi.Abi.ChanDir return type.chanDir();
    @:embedded
    public function common():stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return type.common();
    @:embedded
    public function elem():stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return type.elem();
    @:embedded
    public function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Abi.Method> return type.exportedMethods();
    @:embedded
    public function fieldAlign():stdgo.GoInt return type.fieldAlign();
    @:embedded
    public function funcType():stdgo.Ref<stdgo._internal.internal.abi.Abi.FuncType> return type.funcType();
    @:embedded
    public function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8> return type.gcSlice(_begin, _end);
    @:embedded
    public function hasName():Bool return type.hasName();
    @:embedded
    public function ifaceIndir():Bool return type.ifaceIndir();
    @:embedded
    public function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.Abi.InterfaceType> return type.interfaceType();
    @:embedded
    public function isDirectIface():Bool return type.isDirectIface();
    @:embedded
    public function key():stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return type.key();
    @:embedded
    public function kind():stdgo._internal.internal.abi.Abi.Kind return type.kind();
    @:embedded
    public function len():stdgo.GoInt return type.len();
    @:embedded
    public function mapType():stdgo.Ref<stdgo._internal.internal.abi.Abi.MapType> return type.mapType();
    @:embedded
    public function numMethod():stdgo.GoInt return type.numMethod();
    @:embedded
    public function pointers():Bool return type.pointers();
    @:embedded
    public function size():stdgo.GoUIntptr return type.size();
    @:embedded
    public function structType():stdgo.Ref<stdgo._internal.internal.abi.Abi.StructType> return type.structType();
    @:embedded
    public function uncommon():stdgo.Ref<stdgo._internal.internal.abi.Abi.UncommonType> return type.uncommon();
    public function __copy__() {
        return new T_uncommon___localname___u_9033(type, _u);
    }
}
class UncommonType_asInterface {
    @:keep
    public dynamic function exportedMethods():stdgo.Slice<Method> return __self__.value.exportedMethods();
    @:keep
    public dynamic function methods():stdgo.Slice<Method> return __self__.value.methods();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<UncommonType>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.internal.abi.Abi.UncommonType_asInterface) class UncommonType_static_extension {
    @:keep
    static public function exportedMethods( _t:stdgo.Ref<UncommonType>):stdgo.Slice<Method> {
        @:recv var _t:stdgo.Ref<UncommonType> = _t;
        if (_t.xcount == ((0 : stdgo.GoUInt16))) {
            return (null : stdgo.Slice<stdgo._internal.internal.abi.Abi.Method>);
        };
        return ((_addChecked((stdgo.Go.toInterface(_t) : stdgo._internal.unsafe.Unsafe.UnsafePointer), (_t.moff : stdgo.GoUIntptr), ("t.xcount > 0" : stdgo.GoString)).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Method", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }, { name : "mtyp", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TypeOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }, { name : "ifn", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TextOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }, { name : "tfn", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TextOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }, 65536) })) : stdgo.Ref<stdgo.GoArray<Method>>).__slice__(0, _t.xcount, _t.xcount) : stdgo.Slice<stdgo._internal.internal.abi.Abi.Method>);
    }
    @:keep
    static public function methods( _t:stdgo.Ref<UncommonType>):stdgo.Slice<Method> {
        @:recv var _t:stdgo.Ref<UncommonType> = _t;
        if (_t.mcount == ((0 : stdgo.GoUInt16))) {
            return (null : stdgo.Slice<stdgo._internal.internal.abi.Abi.Method>);
        };
        return ((_addChecked((stdgo.Go.toInterface(_t) : stdgo._internal.unsafe.Unsafe.UnsafePointer), (_t.moff : stdgo.GoUIntptr), ("t.mcount > 0" : stdgo.GoString)).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Method", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }, { name : "mtyp", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TypeOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }, { name : "ifn", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TextOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }, { name : "tfn", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TextOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }, 65536) })) : stdgo.Ref<stdgo.GoArray<Method>>).__slice__(0, _t.mcount, _t.mcount) : stdgo.Slice<stdgo._internal.internal.abi.Abi.Method>);
    }
}
class ArrayType_asInterface {
    @:embedded
    public dynamic function uncommon():stdgo.Ref<stdgo._internal.internal.abi.Abi.UncommonType> return __self__.value.uncommon();
    @:embedded
    public dynamic function structType():stdgo.Ref<stdgo._internal.internal.abi.Abi.StructType> return __self__.value.structType();
    @:embedded
    public dynamic function size():stdgo.GoUIntptr return __self__.value.size();
    @:embedded
    public dynamic function pointers():Bool return __self__.value.pointers();
    @:embedded
    public dynamic function numMethod():stdgo.GoInt return __self__.value.numMethod();
    @:embedded
    public dynamic function mapType():stdgo.Ref<stdgo._internal.internal.abi.Abi.MapType> return __self__.value.mapType();
    @:embedded
    public dynamic function kind():stdgo._internal.internal.abi.Abi.Kind return __self__.value.kind();
    @:embedded
    public dynamic function key():stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return __self__.value.key();
    @:embedded
    public dynamic function isDirectIface():Bool return __self__.value.isDirectIface();
    @:embedded
    public dynamic function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.Abi.InterfaceType> return __self__.value.interfaceType();
    @:embedded
    public dynamic function ifaceIndir():Bool return __self__.value.ifaceIndir();
    @:embedded
    public dynamic function hasName():Bool return __self__.value.hasName();
    @:embedded
    public dynamic function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8> return __self__.value.gcSlice(_begin, _end);
    @:embedded
    public dynamic function funcType():stdgo.Ref<stdgo._internal.internal.abi.Abi.FuncType> return __self__.value.funcType();
    @:embedded
    public dynamic function fieldAlign():stdgo.GoInt return __self__.value.fieldAlign();
    @:embedded
    public dynamic function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Abi.Method> return __self__.value.exportedMethods();
    @:embedded
    public dynamic function common():stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return __self__.value.common();
    @:embedded
    public dynamic function chanDir():stdgo._internal.internal.abi.Abi.ChanDir return __self__.value.chanDir();
    @:embedded
    public dynamic function arrayType():stdgo.Ref<stdgo._internal.internal.abi.Abi.ArrayType> return __self__.value.arrayType();
    @:embedded
    public dynamic function align():stdgo.GoInt return __self__.value.align();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<ArrayType>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.internal.abi.Abi.ArrayType_asInterface) class ArrayType_static_extension {
    @:embedded
    public static function uncommon( __self__:ArrayType):stdgo.Ref<stdgo._internal.internal.abi.Abi.UncommonType> return __self__.uncommon();
    @:embedded
    public static function structType( __self__:ArrayType):stdgo.Ref<stdgo._internal.internal.abi.Abi.StructType> return __self__.structType();
    @:embedded
    public static function size( __self__:ArrayType):stdgo.GoUIntptr return __self__.size();
    @:embedded
    public static function pointers( __self__:ArrayType):Bool return __self__.pointers();
    @:embedded
    public static function numMethod( __self__:ArrayType):stdgo.GoInt return __self__.numMethod();
    @:embedded
    public static function mapType( __self__:ArrayType):stdgo.Ref<stdgo._internal.internal.abi.Abi.MapType> return __self__.mapType();
    @:embedded
    public static function kind( __self__:ArrayType):stdgo._internal.internal.abi.Abi.Kind return __self__.kind();
    @:embedded
    public static function key( __self__:ArrayType):stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return __self__.key();
    @:embedded
    public static function isDirectIface( __self__:ArrayType):Bool return __self__.isDirectIface();
    @:embedded
    public static function interfaceType( __self__:ArrayType):stdgo.Ref<stdgo._internal.internal.abi.Abi.InterfaceType> return __self__.interfaceType();
    @:embedded
    public static function ifaceIndir( __self__:ArrayType):Bool return __self__.ifaceIndir();
    @:embedded
    public static function hasName( __self__:ArrayType):Bool return __self__.hasName();
    @:embedded
    public static function gcSlice( __self__:ArrayType, _begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8> return __self__.gcSlice(_begin, _end);
    @:embedded
    public static function funcType( __self__:ArrayType):stdgo.Ref<stdgo._internal.internal.abi.Abi.FuncType> return __self__.funcType();
    @:embedded
    public static function fieldAlign( __self__:ArrayType):stdgo.GoInt return __self__.fieldAlign();
    @:embedded
    public static function exportedMethods( __self__:ArrayType):stdgo.Slice<stdgo._internal.internal.abi.Abi.Method> return __self__.exportedMethods();
    @:embedded
    public static function common( __self__:ArrayType):stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return __self__.common();
    @:embedded
    public static function chanDir( __self__:ArrayType):stdgo._internal.internal.abi.Abi.ChanDir return __self__.chanDir();
    @:embedded
    public static function arrayType( __self__:ArrayType):stdgo.Ref<stdgo._internal.internal.abi.Abi.ArrayType> return __self__.arrayType();
    @:embedded
    public static function align( __self__:ArrayType):stdgo.GoInt return __self__.align();
}
class ChanType_asInterface {
    @:embedded
    public dynamic function uncommon():stdgo.Ref<stdgo._internal.internal.abi.Abi.UncommonType> return __self__.value.uncommon();
    @:embedded
    public dynamic function structType():stdgo.Ref<stdgo._internal.internal.abi.Abi.StructType> return __self__.value.structType();
    @:embedded
    public dynamic function size():stdgo.GoUIntptr return __self__.value.size();
    @:embedded
    public dynamic function pointers():Bool return __self__.value.pointers();
    @:embedded
    public dynamic function numMethod():stdgo.GoInt return __self__.value.numMethod();
    @:embedded
    public dynamic function mapType():stdgo.Ref<stdgo._internal.internal.abi.Abi.MapType> return __self__.value.mapType();
    @:embedded
    public dynamic function len():stdgo.GoInt return __self__.value.len();
    @:embedded
    public dynamic function kind():stdgo._internal.internal.abi.Abi.Kind return __self__.value.kind();
    @:embedded
    public dynamic function key():stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return __self__.value.key();
    @:embedded
    public dynamic function isDirectIface():Bool return __self__.value.isDirectIface();
    @:embedded
    public dynamic function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.Abi.InterfaceType> return __self__.value.interfaceType();
    @:embedded
    public dynamic function ifaceIndir():Bool return __self__.value.ifaceIndir();
    @:embedded
    public dynamic function hasName():Bool return __self__.value.hasName();
    @:embedded
    public dynamic function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8> return __self__.value.gcSlice(_begin, _end);
    @:embedded
    public dynamic function funcType():stdgo.Ref<stdgo._internal.internal.abi.Abi.FuncType> return __self__.value.funcType();
    @:embedded
    public dynamic function fieldAlign():stdgo.GoInt return __self__.value.fieldAlign();
    @:embedded
    public dynamic function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Abi.Method> return __self__.value.exportedMethods();
    @:embedded
    public dynamic function common():stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return __self__.value.common();
    @:embedded
    public dynamic function chanDir():stdgo._internal.internal.abi.Abi.ChanDir return __self__.value.chanDir();
    @:embedded
    public dynamic function arrayType():stdgo.Ref<stdgo._internal.internal.abi.Abi.ArrayType> return __self__.value.arrayType();
    @:embedded
    public dynamic function align():stdgo.GoInt return __self__.value.align();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<ChanType>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.internal.abi.Abi.ChanType_asInterface) class ChanType_static_extension {
    @:embedded
    public static function uncommon( __self__:ChanType):stdgo.Ref<stdgo._internal.internal.abi.Abi.UncommonType> return __self__.uncommon();
    @:embedded
    public static function structType( __self__:ChanType):stdgo.Ref<stdgo._internal.internal.abi.Abi.StructType> return __self__.structType();
    @:embedded
    public static function size( __self__:ChanType):stdgo.GoUIntptr return __self__.size();
    @:embedded
    public static function pointers( __self__:ChanType):Bool return __self__.pointers();
    @:embedded
    public static function numMethod( __self__:ChanType):stdgo.GoInt return __self__.numMethod();
    @:embedded
    public static function mapType( __self__:ChanType):stdgo.Ref<stdgo._internal.internal.abi.Abi.MapType> return __self__.mapType();
    @:embedded
    public static function len( __self__:ChanType):stdgo.GoInt return __self__.len();
    @:embedded
    public static function kind( __self__:ChanType):stdgo._internal.internal.abi.Abi.Kind return __self__.kind();
    @:embedded
    public static function key( __self__:ChanType):stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return __self__.key();
    @:embedded
    public static function isDirectIface( __self__:ChanType):Bool return __self__.isDirectIface();
    @:embedded
    public static function interfaceType( __self__:ChanType):stdgo.Ref<stdgo._internal.internal.abi.Abi.InterfaceType> return __self__.interfaceType();
    @:embedded
    public static function ifaceIndir( __self__:ChanType):Bool return __self__.ifaceIndir();
    @:embedded
    public static function hasName( __self__:ChanType):Bool return __self__.hasName();
    @:embedded
    public static function gcSlice( __self__:ChanType, _begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8> return __self__.gcSlice(_begin, _end);
    @:embedded
    public static function funcType( __self__:ChanType):stdgo.Ref<stdgo._internal.internal.abi.Abi.FuncType> return __self__.funcType();
    @:embedded
    public static function fieldAlign( __self__:ChanType):stdgo.GoInt return __self__.fieldAlign();
    @:embedded
    public static function exportedMethods( __self__:ChanType):stdgo.Slice<stdgo._internal.internal.abi.Abi.Method> return __self__.exportedMethods();
    @:embedded
    public static function common( __self__:ChanType):stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return __self__.common();
    @:embedded
    public static function chanDir( __self__:ChanType):stdgo._internal.internal.abi.Abi.ChanDir return __self__.chanDir();
    @:embedded
    public static function arrayType( __self__:ChanType):stdgo.Ref<stdgo._internal.internal.abi.Abi.ArrayType> return __self__.arrayType();
    @:embedded
    public static function align( __self__:ChanType):stdgo.GoInt return __self__.align();
}
class T_structTypeUncommon_asInterface {
    @:embedded
    public dynamic function uncommon():stdgo.Ref<stdgo._internal.internal.abi.Abi.UncommonType> return __self__.value.uncommon();
    @:embedded
    public dynamic function size():stdgo.GoUIntptr return __self__.value.size();
    @:embedded
    public dynamic function pointers():Bool return __self__.value.pointers();
    @:embedded
    public dynamic function numMethod():stdgo.GoInt return __self__.value.numMethod();
    @:embedded
    public dynamic function mapType():stdgo.Ref<stdgo._internal.internal.abi.Abi.MapType> return __self__.value.mapType();
    @:embedded
    public dynamic function len():stdgo.GoInt return __self__.value.len();
    @:embedded
    public dynamic function kind():stdgo._internal.internal.abi.Abi.Kind return __self__.value.kind();
    @:embedded
    public dynamic function key():stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return __self__.value.key();
    @:embedded
    public dynamic function isDirectIface():Bool return __self__.value.isDirectIface();
    @:embedded
    public dynamic function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.Abi.InterfaceType> return __self__.value.interfaceType();
    @:embedded
    public dynamic function ifaceIndir():Bool return __self__.value.ifaceIndir();
    @:embedded
    public dynamic function hasName():Bool return __self__.value.hasName();
    @:embedded
    public dynamic function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8> return __self__.value.gcSlice(_begin, _end);
    @:embedded
    public dynamic function funcType():stdgo.Ref<stdgo._internal.internal.abi.Abi.FuncType> return __self__.value.funcType();
    @:embedded
    public dynamic function fieldAlign():stdgo.GoInt return __self__.value.fieldAlign();
    @:embedded
    public dynamic function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Abi.Method> return __self__.value.exportedMethods();
    @:embedded
    public dynamic function elem():stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return __self__.value.elem();
    @:embedded
    public dynamic function common():stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return __self__.value.common();
    @:embedded
    public dynamic function chanDir():stdgo._internal.internal.abi.Abi.ChanDir return __self__.value.chanDir();
    @:embedded
    public dynamic function arrayType():stdgo.Ref<stdgo._internal.internal.abi.Abi.ArrayType> return __self__.value.arrayType();
    @:embedded
    public dynamic function align():stdgo.GoInt return __self__.value.align();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_structTypeUncommon>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.internal.abi.Abi.T_structTypeUncommon_asInterface) class T_structTypeUncommon_static_extension {
    @:embedded
    public static function uncommon( __self__:T_structTypeUncommon):stdgo.Ref<stdgo._internal.internal.abi.Abi.UncommonType> return __self__.uncommon();
    @:embedded
    public static function size( __self__:T_structTypeUncommon):stdgo.GoUIntptr return __self__.size();
    @:embedded
    public static function pointers( __self__:T_structTypeUncommon):Bool return __self__.pointers();
    @:embedded
    public static function numMethod( __self__:T_structTypeUncommon):stdgo.GoInt return __self__.numMethod();
    @:embedded
    public static function mapType( __self__:T_structTypeUncommon):stdgo.Ref<stdgo._internal.internal.abi.Abi.MapType> return __self__.mapType();
    @:embedded
    public static function len( __self__:T_structTypeUncommon):stdgo.GoInt return __self__.len();
    @:embedded
    public static function kind( __self__:T_structTypeUncommon):stdgo._internal.internal.abi.Abi.Kind return __self__.kind();
    @:embedded
    public static function key( __self__:T_structTypeUncommon):stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return __self__.key();
    @:embedded
    public static function isDirectIface( __self__:T_structTypeUncommon):Bool return __self__.isDirectIface();
    @:embedded
    public static function interfaceType( __self__:T_structTypeUncommon):stdgo.Ref<stdgo._internal.internal.abi.Abi.InterfaceType> return __self__.interfaceType();
    @:embedded
    public static function ifaceIndir( __self__:T_structTypeUncommon):Bool return __self__.ifaceIndir();
    @:embedded
    public static function hasName( __self__:T_structTypeUncommon):Bool return __self__.hasName();
    @:embedded
    public static function gcSlice( __self__:T_structTypeUncommon, _begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8> return __self__.gcSlice(_begin, _end);
    @:embedded
    public static function funcType( __self__:T_structTypeUncommon):stdgo.Ref<stdgo._internal.internal.abi.Abi.FuncType> return __self__.funcType();
    @:embedded
    public static function fieldAlign( __self__:T_structTypeUncommon):stdgo.GoInt return __self__.fieldAlign();
    @:embedded
    public static function exportedMethods( __self__:T_structTypeUncommon):stdgo.Slice<stdgo._internal.internal.abi.Abi.Method> return __self__.exportedMethods();
    @:embedded
    public static function elem( __self__:T_structTypeUncommon):stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return __self__.elem();
    @:embedded
    public static function common( __self__:T_structTypeUncommon):stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return __self__.common();
    @:embedded
    public static function chanDir( __self__:T_structTypeUncommon):stdgo._internal.internal.abi.Abi.ChanDir return __self__.chanDir();
    @:embedded
    public static function arrayType( __self__:T_structTypeUncommon):stdgo.Ref<stdgo._internal.internal.abi.Abi.ArrayType> return __self__.arrayType();
    @:embedded
    public static function align( __self__:T_structTypeUncommon):stdgo.GoInt return __self__.align();
}
class InterfaceType_asInterface {
    @:keep
    public dynamic function numMethod():stdgo.GoInt return __self__.value.numMethod();
    @:embedded
    public dynamic function uncommon():stdgo.Ref<stdgo._internal.internal.abi.Abi.UncommonType> return __self__.value.uncommon();
    @:embedded
    public dynamic function structType():stdgo.Ref<stdgo._internal.internal.abi.Abi.StructType> return __self__.value.structType();
    @:embedded
    public dynamic function size():stdgo.GoUIntptr return __self__.value.size();
    @:embedded
    public dynamic function pointers():Bool return __self__.value.pointers();
    @:embedded
    public dynamic function mapType():stdgo.Ref<stdgo._internal.internal.abi.Abi.MapType> return __self__.value.mapType();
    @:embedded
    public dynamic function len():stdgo.GoInt return __self__.value.len();
    @:embedded
    public dynamic function kind():stdgo._internal.internal.abi.Abi.Kind return __self__.value.kind();
    @:embedded
    public dynamic function key():stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return __self__.value.key();
    @:embedded
    public dynamic function isDirectIface():Bool return __self__.value.isDirectIface();
    @:embedded
    public dynamic function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.Abi.InterfaceType> return __self__.value.interfaceType();
    @:embedded
    public dynamic function ifaceIndir():Bool return __self__.value.ifaceIndir();
    @:embedded
    public dynamic function hasName():Bool return __self__.value.hasName();
    @:embedded
    public dynamic function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8> return __self__.value.gcSlice(_begin, _end);
    @:embedded
    public dynamic function funcType():stdgo.Ref<stdgo._internal.internal.abi.Abi.FuncType> return __self__.value.funcType();
    @:embedded
    public dynamic function fieldAlign():stdgo.GoInt return __self__.value.fieldAlign();
    @:embedded
    public dynamic function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Abi.Method> return __self__.value.exportedMethods();
    @:embedded
    public dynamic function elem():stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return __self__.value.elem();
    @:embedded
    public dynamic function common():stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return __self__.value.common();
    @:embedded
    public dynamic function chanDir():stdgo._internal.internal.abi.Abi.ChanDir return __self__.value.chanDir();
    @:embedded
    public dynamic function arrayType():stdgo.Ref<stdgo._internal.internal.abi.Abi.ArrayType> return __self__.value.arrayType();
    @:embedded
    public dynamic function align():stdgo.GoInt return __self__.value.align();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<InterfaceType>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.internal.abi.Abi.InterfaceType_asInterface) class InterfaceType_static_extension {
    @:keep
    static public function numMethod( _t:stdgo.Ref<InterfaceType>):stdgo.GoInt {
        @:recv var _t:stdgo.Ref<InterfaceType> = _t;
        return (_t.methods.length);
    }
    @:embedded
    public static function uncommon( __self__:InterfaceType):stdgo.Ref<stdgo._internal.internal.abi.Abi.UncommonType> return __self__.uncommon();
    @:embedded
    public static function structType( __self__:InterfaceType):stdgo.Ref<stdgo._internal.internal.abi.Abi.StructType> return __self__.structType();
    @:embedded
    public static function size( __self__:InterfaceType):stdgo.GoUIntptr return __self__.size();
    @:embedded
    public static function pointers( __self__:InterfaceType):Bool return __self__.pointers();
    @:embedded
    public static function mapType( __self__:InterfaceType):stdgo.Ref<stdgo._internal.internal.abi.Abi.MapType> return __self__.mapType();
    @:embedded
    public static function len( __self__:InterfaceType):stdgo.GoInt return __self__.len();
    @:embedded
    public static function kind( __self__:InterfaceType):stdgo._internal.internal.abi.Abi.Kind return __self__.kind();
    @:embedded
    public static function key( __self__:InterfaceType):stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return __self__.key();
    @:embedded
    public static function isDirectIface( __self__:InterfaceType):Bool return __self__.isDirectIface();
    @:embedded
    public static function interfaceType( __self__:InterfaceType):stdgo.Ref<stdgo._internal.internal.abi.Abi.InterfaceType> return __self__.interfaceType();
    @:embedded
    public static function ifaceIndir( __self__:InterfaceType):Bool return __self__.ifaceIndir();
    @:embedded
    public static function hasName( __self__:InterfaceType):Bool return __self__.hasName();
    @:embedded
    public static function gcSlice( __self__:InterfaceType, _begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8> return __self__.gcSlice(_begin, _end);
    @:embedded
    public static function funcType( __self__:InterfaceType):stdgo.Ref<stdgo._internal.internal.abi.Abi.FuncType> return __self__.funcType();
    @:embedded
    public static function fieldAlign( __self__:InterfaceType):stdgo.GoInt return __self__.fieldAlign();
    @:embedded
    public static function exportedMethods( __self__:InterfaceType):stdgo.Slice<stdgo._internal.internal.abi.Abi.Method> return __self__.exportedMethods();
    @:embedded
    public static function elem( __self__:InterfaceType):stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return __self__.elem();
    @:embedded
    public static function common( __self__:InterfaceType):stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return __self__.common();
    @:embedded
    public static function chanDir( __self__:InterfaceType):stdgo._internal.internal.abi.Abi.ChanDir return __self__.chanDir();
    @:embedded
    public static function arrayType( __self__:InterfaceType):stdgo.Ref<stdgo._internal.internal.abi.Abi.ArrayType> return __self__.arrayType();
    @:embedded
    public static function align( __self__:InterfaceType):stdgo.GoInt return __self__.align();
}
class MapType_asInterface {
    @:keep
    public dynamic function hashMightPanic():Bool return __self__.value.hashMightPanic();
    @:keep
    public dynamic function needKeyUpdate():Bool return __self__.value.needKeyUpdate();
    @:keep
    public dynamic function reflexiveKey():Bool return __self__.value.reflexiveKey();
    @:keep
    public dynamic function indirectElem():Bool return __self__.value.indirectElem();
    @:keep
    public dynamic function indirectKey():Bool return __self__.value.indirectKey();
    @:embedded
    public dynamic function uncommon():stdgo.Ref<stdgo._internal.internal.abi.Abi.UncommonType> return __self__.value.uncommon();
    @:embedded
    public dynamic function structType():stdgo.Ref<stdgo._internal.internal.abi.Abi.StructType> return __self__.value.structType();
    @:embedded
    public dynamic function size():stdgo.GoUIntptr return __self__.value.size();
    @:embedded
    public dynamic function pointers():Bool return __self__.value.pointers();
    @:embedded
    public dynamic function numMethod():stdgo.GoInt return __self__.value.numMethod();
    @:embedded
    public dynamic function mapType():stdgo.Ref<stdgo._internal.internal.abi.Abi.MapType> return __self__.value.mapType();
    @:embedded
    public dynamic function len():stdgo.GoInt return __self__.value.len();
    @:embedded
    public dynamic function kind():stdgo._internal.internal.abi.Abi.Kind return __self__.value.kind();
    @:embedded
    public dynamic function isDirectIface():Bool return __self__.value.isDirectIface();
    @:embedded
    public dynamic function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.Abi.InterfaceType> return __self__.value.interfaceType();
    @:embedded
    public dynamic function ifaceIndir():Bool return __self__.value.ifaceIndir();
    @:embedded
    public dynamic function hasName():Bool return __self__.value.hasName();
    @:embedded
    public dynamic function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8> return __self__.value.gcSlice(_begin, _end);
    @:embedded
    public dynamic function funcType():stdgo.Ref<stdgo._internal.internal.abi.Abi.FuncType> return __self__.value.funcType();
    @:embedded
    public dynamic function fieldAlign():stdgo.GoInt return __self__.value.fieldAlign();
    @:embedded
    public dynamic function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Abi.Method> return __self__.value.exportedMethods();
    @:embedded
    public dynamic function common():stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return __self__.value.common();
    @:embedded
    public dynamic function chanDir():stdgo._internal.internal.abi.Abi.ChanDir return __self__.value.chanDir();
    @:embedded
    public dynamic function arrayType():stdgo.Ref<stdgo._internal.internal.abi.Abi.ArrayType> return __self__.value.arrayType();
    @:embedded
    public dynamic function align():stdgo.GoInt return __self__.value.align();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<MapType>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.internal.abi.Abi.MapType_asInterface) class MapType_static_extension {
    @:keep
    static public function hashMightPanic( _mt:stdgo.Ref<MapType>):Bool {
        @:recv var _mt:stdgo.Ref<MapType> = _mt;
        return (_mt.flags & (16u32 : stdgo.GoUInt32) : stdgo.GoUInt32) != ((0u32 : stdgo.GoUInt32));
    }
    @:keep
    static public function needKeyUpdate( _mt:stdgo.Ref<MapType>):Bool {
        @:recv var _mt:stdgo.Ref<MapType> = _mt;
        return (_mt.flags & (8u32 : stdgo.GoUInt32) : stdgo.GoUInt32) != ((0u32 : stdgo.GoUInt32));
    }
    @:keep
    static public function reflexiveKey( _mt:stdgo.Ref<MapType>):Bool {
        @:recv var _mt:stdgo.Ref<MapType> = _mt;
        return (_mt.flags & (4u32 : stdgo.GoUInt32) : stdgo.GoUInt32) != ((0u32 : stdgo.GoUInt32));
    }
    @:keep
    static public function indirectElem( _mt:stdgo.Ref<MapType>):Bool {
        @:recv var _mt:stdgo.Ref<MapType> = _mt;
        return (_mt.flags & (2u32 : stdgo.GoUInt32) : stdgo.GoUInt32) != ((0u32 : stdgo.GoUInt32));
    }
    @:keep
    static public function indirectKey( _mt:stdgo.Ref<MapType>):Bool {
        @:recv var _mt:stdgo.Ref<MapType> = _mt;
        return (_mt.flags & (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) != ((0u32 : stdgo.GoUInt32));
    }
    @:embedded
    public static function uncommon( __self__:MapType):stdgo.Ref<stdgo._internal.internal.abi.Abi.UncommonType> return __self__.uncommon();
    @:embedded
    public static function structType( __self__:MapType):stdgo.Ref<stdgo._internal.internal.abi.Abi.StructType> return __self__.structType();
    @:embedded
    public static function size( __self__:MapType):stdgo.GoUIntptr return __self__.size();
    @:embedded
    public static function pointers( __self__:MapType):Bool return __self__.pointers();
    @:embedded
    public static function numMethod( __self__:MapType):stdgo.GoInt return __self__.numMethod();
    @:embedded
    public static function mapType( __self__:MapType):stdgo.Ref<stdgo._internal.internal.abi.Abi.MapType> return __self__.mapType();
    @:embedded
    public static function len( __self__:MapType):stdgo.GoInt return __self__.len();
    @:embedded
    public static function kind( __self__:MapType):stdgo._internal.internal.abi.Abi.Kind return __self__.kind();
    @:embedded
    public static function isDirectIface( __self__:MapType):Bool return __self__.isDirectIface();
    @:embedded
    public static function interfaceType( __self__:MapType):stdgo.Ref<stdgo._internal.internal.abi.Abi.InterfaceType> return __self__.interfaceType();
    @:embedded
    public static function ifaceIndir( __self__:MapType):Bool return __self__.ifaceIndir();
    @:embedded
    public static function hasName( __self__:MapType):Bool return __self__.hasName();
    @:embedded
    public static function gcSlice( __self__:MapType, _begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8> return __self__.gcSlice(_begin, _end);
    @:embedded
    public static function funcType( __self__:MapType):stdgo.Ref<stdgo._internal.internal.abi.Abi.FuncType> return __self__.funcType();
    @:embedded
    public static function fieldAlign( __self__:MapType):stdgo.GoInt return __self__.fieldAlign();
    @:embedded
    public static function exportedMethods( __self__:MapType):stdgo.Slice<stdgo._internal.internal.abi.Abi.Method> return __self__.exportedMethods();
    @:embedded
    public static function common( __self__:MapType):stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return __self__.common();
    @:embedded
    public static function chanDir( __self__:MapType):stdgo._internal.internal.abi.Abi.ChanDir return __self__.chanDir();
    @:embedded
    public static function arrayType( __self__:MapType):stdgo.Ref<stdgo._internal.internal.abi.Abi.ArrayType> return __self__.arrayType();
    @:embedded
    public static function align( __self__:MapType):stdgo.GoInt return __self__.align();
}
class SliceType_asInterface {
    @:embedded
    public dynamic function uncommon():stdgo.Ref<stdgo._internal.internal.abi.Abi.UncommonType> return __self__.value.uncommon();
    @:embedded
    public dynamic function structType():stdgo.Ref<stdgo._internal.internal.abi.Abi.StructType> return __self__.value.structType();
    @:embedded
    public dynamic function size():stdgo.GoUIntptr return __self__.value.size();
    @:embedded
    public dynamic function pointers():Bool return __self__.value.pointers();
    @:embedded
    public dynamic function numMethod():stdgo.GoInt return __self__.value.numMethod();
    @:embedded
    public dynamic function mapType():stdgo.Ref<stdgo._internal.internal.abi.Abi.MapType> return __self__.value.mapType();
    @:embedded
    public dynamic function len():stdgo.GoInt return __self__.value.len();
    @:embedded
    public dynamic function kind():stdgo._internal.internal.abi.Abi.Kind return __self__.value.kind();
    @:embedded
    public dynamic function key():stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return __self__.value.key();
    @:embedded
    public dynamic function isDirectIface():Bool return __self__.value.isDirectIface();
    @:embedded
    public dynamic function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.Abi.InterfaceType> return __self__.value.interfaceType();
    @:embedded
    public dynamic function ifaceIndir():Bool return __self__.value.ifaceIndir();
    @:embedded
    public dynamic function hasName():Bool return __self__.value.hasName();
    @:embedded
    public dynamic function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8> return __self__.value.gcSlice(_begin, _end);
    @:embedded
    public dynamic function funcType():stdgo.Ref<stdgo._internal.internal.abi.Abi.FuncType> return __self__.value.funcType();
    @:embedded
    public dynamic function fieldAlign():stdgo.GoInt return __self__.value.fieldAlign();
    @:embedded
    public dynamic function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Abi.Method> return __self__.value.exportedMethods();
    @:embedded
    public dynamic function common():stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return __self__.value.common();
    @:embedded
    public dynamic function chanDir():stdgo._internal.internal.abi.Abi.ChanDir return __self__.value.chanDir();
    @:embedded
    public dynamic function arrayType():stdgo.Ref<stdgo._internal.internal.abi.Abi.ArrayType> return __self__.value.arrayType();
    @:embedded
    public dynamic function align():stdgo.GoInt return __self__.value.align();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<SliceType>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.internal.abi.Abi.SliceType_asInterface) class SliceType_static_extension {
    @:embedded
    public static function uncommon( __self__:SliceType):stdgo.Ref<stdgo._internal.internal.abi.Abi.UncommonType> return __self__.uncommon();
    @:embedded
    public static function structType( __self__:SliceType):stdgo.Ref<stdgo._internal.internal.abi.Abi.StructType> return __self__.structType();
    @:embedded
    public static function size( __self__:SliceType):stdgo.GoUIntptr return __self__.size();
    @:embedded
    public static function pointers( __self__:SliceType):Bool return __self__.pointers();
    @:embedded
    public static function numMethod( __self__:SliceType):stdgo.GoInt return __self__.numMethod();
    @:embedded
    public static function mapType( __self__:SliceType):stdgo.Ref<stdgo._internal.internal.abi.Abi.MapType> return __self__.mapType();
    @:embedded
    public static function len( __self__:SliceType):stdgo.GoInt return __self__.len();
    @:embedded
    public static function kind( __self__:SliceType):stdgo._internal.internal.abi.Abi.Kind return __self__.kind();
    @:embedded
    public static function key( __self__:SliceType):stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return __self__.key();
    @:embedded
    public static function isDirectIface( __self__:SliceType):Bool return __self__.isDirectIface();
    @:embedded
    public static function interfaceType( __self__:SliceType):stdgo.Ref<stdgo._internal.internal.abi.Abi.InterfaceType> return __self__.interfaceType();
    @:embedded
    public static function ifaceIndir( __self__:SliceType):Bool return __self__.ifaceIndir();
    @:embedded
    public static function hasName( __self__:SliceType):Bool return __self__.hasName();
    @:embedded
    public static function gcSlice( __self__:SliceType, _begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8> return __self__.gcSlice(_begin, _end);
    @:embedded
    public static function funcType( __self__:SliceType):stdgo.Ref<stdgo._internal.internal.abi.Abi.FuncType> return __self__.funcType();
    @:embedded
    public static function fieldAlign( __self__:SliceType):stdgo.GoInt return __self__.fieldAlign();
    @:embedded
    public static function exportedMethods( __self__:SliceType):stdgo.Slice<stdgo._internal.internal.abi.Abi.Method> return __self__.exportedMethods();
    @:embedded
    public static function common( __self__:SliceType):stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return __self__.common();
    @:embedded
    public static function chanDir( __self__:SliceType):stdgo._internal.internal.abi.Abi.ChanDir return __self__.chanDir();
    @:embedded
    public static function arrayType( __self__:SliceType):stdgo.Ref<stdgo._internal.internal.abi.Abi.ArrayType> return __self__.arrayType();
    @:embedded
    public static function align( __self__:SliceType):stdgo.GoInt return __self__.align();
}
class FuncType_asInterface {
    @:keep
    public dynamic function isVariadic():Bool return __self__.value.isVariadic();
    @:keep
    public dynamic function outSlice():stdgo.Slice<stdgo.Ref<Type_>> return __self__.value.outSlice();
    @:keep
    public dynamic function inSlice():stdgo.Slice<stdgo.Ref<Type_>> return __self__.value.inSlice();
    @:keep
    public dynamic function out(_i:stdgo.GoInt):stdgo.Ref<Type_> return __self__.value.out(_i);
    @:keep
    public dynamic function numOut():stdgo.GoInt return __self__.value.numOut();
    @:keep
    public dynamic function numIn():stdgo.GoInt return __self__.value.numIn();
    @:keep
    public dynamic function in_(_i:stdgo.GoInt):stdgo.Ref<Type_> return __self__.value.in_(_i);
    @:embedded
    public dynamic function uncommon():stdgo.Ref<stdgo._internal.internal.abi.Abi.UncommonType> return __self__.value.uncommon();
    @:embedded
    public dynamic function structType():stdgo.Ref<stdgo._internal.internal.abi.Abi.StructType> return __self__.value.structType();
    @:embedded
    public dynamic function size():stdgo.GoUIntptr return __self__.value.size();
    @:embedded
    public dynamic function pointers():Bool return __self__.value.pointers();
    @:embedded
    public dynamic function numMethod():stdgo.GoInt return __self__.value.numMethod();
    @:embedded
    public dynamic function mapType():stdgo.Ref<stdgo._internal.internal.abi.Abi.MapType> return __self__.value.mapType();
    @:embedded
    public dynamic function len():stdgo.GoInt return __self__.value.len();
    @:embedded
    public dynamic function kind():stdgo._internal.internal.abi.Abi.Kind return __self__.value.kind();
    @:embedded
    public dynamic function key():stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return __self__.value.key();
    @:embedded
    public dynamic function isDirectIface():Bool return __self__.value.isDirectIface();
    @:embedded
    public dynamic function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.Abi.InterfaceType> return __self__.value.interfaceType();
    @:embedded
    public dynamic function ifaceIndir():Bool return __self__.value.ifaceIndir();
    @:embedded
    public dynamic function hasName():Bool return __self__.value.hasName();
    @:embedded
    public dynamic function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8> return __self__.value.gcSlice(_begin, _end);
    @:embedded
    public dynamic function funcType():stdgo.Ref<stdgo._internal.internal.abi.Abi.FuncType> return __self__.value.funcType();
    @:embedded
    public dynamic function fieldAlign():stdgo.GoInt return __self__.value.fieldAlign();
    @:embedded
    public dynamic function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Abi.Method> return __self__.value.exportedMethods();
    @:embedded
    public dynamic function elem():stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return __self__.value.elem();
    @:embedded
    public dynamic function common():stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return __self__.value.common();
    @:embedded
    public dynamic function chanDir():stdgo._internal.internal.abi.Abi.ChanDir return __self__.value.chanDir();
    @:embedded
    public dynamic function arrayType():stdgo.Ref<stdgo._internal.internal.abi.Abi.ArrayType> return __self__.value.arrayType();
    @:embedded
    public dynamic function align():stdgo.GoInt return __self__.value.align();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<FuncType>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.internal.abi.Abi.FuncType_asInterface) class FuncType_static_extension {
    @:keep
    static public function isVariadic( _t:stdgo.Ref<FuncType>):Bool {
        @:recv var _t:stdgo.Ref<FuncType> = _t;
        return (_t.outCount & (32768 : stdgo.GoUInt16) : stdgo.GoUInt16) != ((0 : stdgo.GoUInt16));
    }
    @:keep
    static public function outSlice( _t:stdgo.Ref<FuncType>):stdgo.Slice<stdgo.Ref<Type_>> {
        @:recv var _t:stdgo.Ref<FuncType> = _t;
        var _outCount = (_t.numOut() : stdgo.GoUInt16);
        if (_outCount == ((0 : stdgo.GoUInt16))) {
            return (null : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_>>);
        };
        var _uadd = stdgo._internal.unsafe.Unsafe.sizeof(stdgo.Go.toInterface((_t : stdgo._internal.internal.abi.Abi.FuncType)));
        if ((_t.type.tflag & (1 : stdgo._internal.internal.abi.Abi.TFlag) : stdgo._internal.internal.abi.Abi.TFlag) != ((0 : stdgo._internal.internal.abi.Abi.TFlag))) {
            _uadd = (_uadd + (stdgo._internal.unsafe.Unsafe.sizeof(stdgo.Go.toInterface((new stdgo._internal.internal.abi.Abi.UncommonType() : stdgo._internal.internal.abi.Abi.UncommonType)))) : stdgo.GoUIntptr);
        };
        return ((_addChecked((stdgo.Go.toInterface(_t) : stdgo._internal.unsafe.Unsafe.UnsafePointer), _uadd, ("outCount > 0" : stdgo.GoString)).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TFlag", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TypeOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, 131072) })) : stdgo.Ref<stdgo.GoArray<stdgo.Ref<Type_>>>).__slice__(_t.inCount, (_t.inCount + _outCount : stdgo.GoUInt16), (_t.inCount + _outCount : stdgo.GoUInt16)) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_>>);
    }
    @:keep
    static public function inSlice( _t:stdgo.Ref<FuncType>):stdgo.Slice<stdgo.Ref<Type_>> {
        @:recv var _t:stdgo.Ref<FuncType> = _t;
        var _uadd = stdgo._internal.unsafe.Unsafe.sizeof(stdgo.Go.toInterface((_t : stdgo._internal.internal.abi.Abi.FuncType)));
        if ((_t.type.tflag & (1 : stdgo._internal.internal.abi.Abi.TFlag) : stdgo._internal.internal.abi.Abi.TFlag) != ((0 : stdgo._internal.internal.abi.Abi.TFlag))) {
            _uadd = (_uadd + (stdgo._internal.unsafe.Unsafe.sizeof(stdgo.Go.toInterface((new stdgo._internal.internal.abi.Abi.UncommonType() : stdgo._internal.internal.abi.Abi.UncommonType)))) : stdgo.GoUIntptr);
        };
        if (_t.inCount == ((0 : stdgo.GoUInt16))) {
            return (null : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_>>);
        };
        return ((_addChecked((stdgo.Go.toInterface(_t) : stdgo._internal.unsafe.Unsafe.UnsafePointer), _uadd, ("t.inCount > 0" : stdgo.GoString)).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TFlag", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi.TypeOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, 65536) })) : stdgo.Ref<stdgo.GoArray<stdgo.Ref<Type_>>>).__slice__(0, _t.inCount, _t.inCount) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_>>);
    }
    @:keep
    static public function out( _t:stdgo.Ref<FuncType>, _i:stdgo.GoInt):stdgo.Ref<Type_> {
        @:recv var _t:stdgo.Ref<FuncType> = _t;
        return (_t.outSlice()[(_i : stdgo.GoInt)]);
    }
    @:keep
    static public function numOut( _t:stdgo.Ref<FuncType>):stdgo.GoInt {
        @:recv var _t:stdgo.Ref<FuncType> = _t;
        return ((_t.outCount & (32767 : stdgo.GoUInt16) : stdgo.GoUInt16) : stdgo.GoInt);
    }
    @:keep
    static public function numIn( _t:stdgo.Ref<FuncType>):stdgo.GoInt {
        @:recv var _t:stdgo.Ref<FuncType> = _t;
        return (_t.inCount : stdgo.GoInt);
    }
    @:keep
    static public function in_( _t:stdgo.Ref<FuncType>, _i:stdgo.GoInt):stdgo.Ref<Type_> {
        @:recv var _t:stdgo.Ref<FuncType> = _t;
        return _t.inSlice()[(_i : stdgo.GoInt)];
    }
    @:embedded
    public static function uncommon( __self__:FuncType):stdgo.Ref<stdgo._internal.internal.abi.Abi.UncommonType> return __self__.uncommon();
    @:embedded
    public static function structType( __self__:FuncType):stdgo.Ref<stdgo._internal.internal.abi.Abi.StructType> return __self__.structType();
    @:embedded
    public static function size( __self__:FuncType):stdgo.GoUIntptr return __self__.size();
    @:embedded
    public static function pointers( __self__:FuncType):Bool return __self__.pointers();
    @:embedded
    public static function numMethod( __self__:FuncType):stdgo.GoInt return __self__.numMethod();
    @:embedded
    public static function mapType( __self__:FuncType):stdgo.Ref<stdgo._internal.internal.abi.Abi.MapType> return __self__.mapType();
    @:embedded
    public static function len( __self__:FuncType):stdgo.GoInt return __self__.len();
    @:embedded
    public static function kind( __self__:FuncType):stdgo._internal.internal.abi.Abi.Kind return __self__.kind();
    @:embedded
    public static function key( __self__:FuncType):stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return __self__.key();
    @:embedded
    public static function isDirectIface( __self__:FuncType):Bool return __self__.isDirectIface();
    @:embedded
    public static function interfaceType( __self__:FuncType):stdgo.Ref<stdgo._internal.internal.abi.Abi.InterfaceType> return __self__.interfaceType();
    @:embedded
    public static function ifaceIndir( __self__:FuncType):Bool return __self__.ifaceIndir();
    @:embedded
    public static function hasName( __self__:FuncType):Bool return __self__.hasName();
    @:embedded
    public static function gcSlice( __self__:FuncType, _begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8> return __self__.gcSlice(_begin, _end);
    @:embedded
    public static function funcType( __self__:FuncType):stdgo.Ref<stdgo._internal.internal.abi.Abi.FuncType> return __self__.funcType();
    @:embedded
    public static function fieldAlign( __self__:FuncType):stdgo.GoInt return __self__.fieldAlign();
    @:embedded
    public static function exportedMethods( __self__:FuncType):stdgo.Slice<stdgo._internal.internal.abi.Abi.Method> return __self__.exportedMethods();
    @:embedded
    public static function elem( __self__:FuncType):stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return __self__.elem();
    @:embedded
    public static function common( __self__:FuncType):stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return __self__.common();
    @:embedded
    public static function chanDir( __self__:FuncType):stdgo._internal.internal.abi.Abi.ChanDir return __self__.chanDir();
    @:embedded
    public static function arrayType( __self__:FuncType):stdgo.Ref<stdgo._internal.internal.abi.Abi.ArrayType> return __self__.arrayType();
    @:embedded
    public static function align( __self__:FuncType):stdgo.GoInt return __self__.align();
}
class PtrType_asInterface {
    @:embedded
    public dynamic function uncommon():stdgo.Ref<stdgo._internal.internal.abi.Abi.UncommonType> return __self__.value.uncommon();
    @:embedded
    public dynamic function structType():stdgo.Ref<stdgo._internal.internal.abi.Abi.StructType> return __self__.value.structType();
    @:embedded
    public dynamic function size():stdgo.GoUIntptr return __self__.value.size();
    @:embedded
    public dynamic function pointers():Bool return __self__.value.pointers();
    @:embedded
    public dynamic function numMethod():stdgo.GoInt return __self__.value.numMethod();
    @:embedded
    public dynamic function mapType():stdgo.Ref<stdgo._internal.internal.abi.Abi.MapType> return __self__.value.mapType();
    @:embedded
    public dynamic function len():stdgo.GoInt return __self__.value.len();
    @:embedded
    public dynamic function kind():stdgo._internal.internal.abi.Abi.Kind return __self__.value.kind();
    @:embedded
    public dynamic function key():stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return __self__.value.key();
    @:embedded
    public dynamic function isDirectIface():Bool return __self__.value.isDirectIface();
    @:embedded
    public dynamic function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.Abi.InterfaceType> return __self__.value.interfaceType();
    @:embedded
    public dynamic function ifaceIndir():Bool return __self__.value.ifaceIndir();
    @:embedded
    public dynamic function hasName():Bool return __self__.value.hasName();
    @:embedded
    public dynamic function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8> return __self__.value.gcSlice(_begin, _end);
    @:embedded
    public dynamic function funcType():stdgo.Ref<stdgo._internal.internal.abi.Abi.FuncType> return __self__.value.funcType();
    @:embedded
    public dynamic function fieldAlign():stdgo.GoInt return __self__.value.fieldAlign();
    @:embedded
    public dynamic function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Abi.Method> return __self__.value.exportedMethods();
    @:embedded
    public dynamic function common():stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return __self__.value.common();
    @:embedded
    public dynamic function chanDir():stdgo._internal.internal.abi.Abi.ChanDir return __self__.value.chanDir();
    @:embedded
    public dynamic function arrayType():stdgo.Ref<stdgo._internal.internal.abi.Abi.ArrayType> return __self__.value.arrayType();
    @:embedded
    public dynamic function align():stdgo.GoInt return __self__.value.align();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<PtrType>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.internal.abi.Abi.PtrType_asInterface) class PtrType_static_extension {
    @:embedded
    public static function uncommon( __self__:PtrType):stdgo.Ref<stdgo._internal.internal.abi.Abi.UncommonType> return __self__.uncommon();
    @:embedded
    public static function structType( __self__:PtrType):stdgo.Ref<stdgo._internal.internal.abi.Abi.StructType> return __self__.structType();
    @:embedded
    public static function size( __self__:PtrType):stdgo.GoUIntptr return __self__.size();
    @:embedded
    public static function pointers( __self__:PtrType):Bool return __self__.pointers();
    @:embedded
    public static function numMethod( __self__:PtrType):stdgo.GoInt return __self__.numMethod();
    @:embedded
    public static function mapType( __self__:PtrType):stdgo.Ref<stdgo._internal.internal.abi.Abi.MapType> return __self__.mapType();
    @:embedded
    public static function len( __self__:PtrType):stdgo.GoInt return __self__.len();
    @:embedded
    public static function kind( __self__:PtrType):stdgo._internal.internal.abi.Abi.Kind return __self__.kind();
    @:embedded
    public static function key( __self__:PtrType):stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return __self__.key();
    @:embedded
    public static function isDirectIface( __self__:PtrType):Bool return __self__.isDirectIface();
    @:embedded
    public static function interfaceType( __self__:PtrType):stdgo.Ref<stdgo._internal.internal.abi.Abi.InterfaceType> return __self__.interfaceType();
    @:embedded
    public static function ifaceIndir( __self__:PtrType):Bool return __self__.ifaceIndir();
    @:embedded
    public static function hasName( __self__:PtrType):Bool return __self__.hasName();
    @:embedded
    public static function gcSlice( __self__:PtrType, _begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8> return __self__.gcSlice(_begin, _end);
    @:embedded
    public static function funcType( __self__:PtrType):stdgo.Ref<stdgo._internal.internal.abi.Abi.FuncType> return __self__.funcType();
    @:embedded
    public static function fieldAlign( __self__:PtrType):stdgo.GoInt return __self__.fieldAlign();
    @:embedded
    public static function exportedMethods( __self__:PtrType):stdgo.Slice<stdgo._internal.internal.abi.Abi.Method> return __self__.exportedMethods();
    @:embedded
    public static function common( __self__:PtrType):stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return __self__.common();
    @:embedded
    public static function chanDir( __self__:PtrType):stdgo._internal.internal.abi.Abi.ChanDir return __self__.chanDir();
    @:embedded
    public static function arrayType( __self__:PtrType):stdgo.Ref<stdgo._internal.internal.abi.Abi.ArrayType> return __self__.arrayType();
    @:embedded
    public static function align( __self__:PtrType):stdgo.GoInt return __self__.align();
}
class StructField_asInterface {
    @:keep
    public dynamic function embedded():Bool return __self__.value.embedded();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<StructField>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.internal.abi.Abi.StructField_asInterface) class StructField_static_extension {
    @:keep
    static public function embedded( _f:stdgo.Ref<StructField>):Bool {
        @:recv var _f:stdgo.Ref<StructField> = _f;
        return _f.name.isEmbedded();
    }
}
class StructType_asInterface {
    @:embedded
    public dynamic function uncommon():stdgo.Ref<stdgo._internal.internal.abi.Abi.UncommonType> return __self__.value.uncommon();
    @:embedded
    public dynamic function structType():stdgo.Ref<stdgo._internal.internal.abi.Abi.StructType> return __self__.value.structType();
    @:embedded
    public dynamic function size():stdgo.GoUIntptr return __self__.value.size();
    @:embedded
    public dynamic function pointers():Bool return __self__.value.pointers();
    @:embedded
    public dynamic function numMethod():stdgo.GoInt return __self__.value.numMethod();
    @:embedded
    public dynamic function mapType():stdgo.Ref<stdgo._internal.internal.abi.Abi.MapType> return __self__.value.mapType();
    @:embedded
    public dynamic function len():stdgo.GoInt return __self__.value.len();
    @:embedded
    public dynamic function kind():stdgo._internal.internal.abi.Abi.Kind return __self__.value.kind();
    @:embedded
    public dynamic function key():stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return __self__.value.key();
    @:embedded
    public dynamic function isDirectIface():Bool return __self__.value.isDirectIface();
    @:embedded
    public dynamic function interfaceType():stdgo.Ref<stdgo._internal.internal.abi.Abi.InterfaceType> return __self__.value.interfaceType();
    @:embedded
    public dynamic function ifaceIndir():Bool return __self__.value.ifaceIndir();
    @:embedded
    public dynamic function hasName():Bool return __self__.value.hasName();
    @:embedded
    public dynamic function gcSlice(_begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8> return __self__.value.gcSlice(_begin, _end);
    @:embedded
    public dynamic function funcType():stdgo.Ref<stdgo._internal.internal.abi.Abi.FuncType> return __self__.value.funcType();
    @:embedded
    public dynamic function fieldAlign():stdgo.GoInt return __self__.value.fieldAlign();
    @:embedded
    public dynamic function exportedMethods():stdgo.Slice<stdgo._internal.internal.abi.Abi.Method> return __self__.value.exportedMethods();
    @:embedded
    public dynamic function elem():stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return __self__.value.elem();
    @:embedded
    public dynamic function common():stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return __self__.value.common();
    @:embedded
    public dynamic function chanDir():stdgo._internal.internal.abi.Abi.ChanDir return __self__.value.chanDir();
    @:embedded
    public dynamic function arrayType():stdgo.Ref<stdgo._internal.internal.abi.Abi.ArrayType> return __self__.value.arrayType();
    @:embedded
    public dynamic function align():stdgo.GoInt return __self__.value.align();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<StructType>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.internal.abi.Abi.StructType_asInterface) class StructType_static_extension {
    @:embedded
    public static function uncommon( __self__:StructType):stdgo.Ref<stdgo._internal.internal.abi.Abi.UncommonType> return __self__.uncommon();
    @:embedded
    public static function structType( __self__:StructType):stdgo.Ref<stdgo._internal.internal.abi.Abi.StructType> return __self__.structType();
    @:embedded
    public static function size( __self__:StructType):stdgo.GoUIntptr return __self__.size();
    @:embedded
    public static function pointers( __self__:StructType):Bool return __self__.pointers();
    @:embedded
    public static function numMethod( __self__:StructType):stdgo.GoInt return __self__.numMethod();
    @:embedded
    public static function mapType( __self__:StructType):stdgo.Ref<stdgo._internal.internal.abi.Abi.MapType> return __self__.mapType();
    @:embedded
    public static function len( __self__:StructType):stdgo.GoInt return __self__.len();
    @:embedded
    public static function kind( __self__:StructType):stdgo._internal.internal.abi.Abi.Kind return __self__.kind();
    @:embedded
    public static function key( __self__:StructType):stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return __self__.key();
    @:embedded
    public static function isDirectIface( __self__:StructType):Bool return __self__.isDirectIface();
    @:embedded
    public static function interfaceType( __self__:StructType):stdgo.Ref<stdgo._internal.internal.abi.Abi.InterfaceType> return __self__.interfaceType();
    @:embedded
    public static function ifaceIndir( __self__:StructType):Bool return __self__.ifaceIndir();
    @:embedded
    public static function hasName( __self__:StructType):Bool return __self__.hasName();
    @:embedded
    public static function gcSlice( __self__:StructType, _begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):stdgo.Slice<stdgo.GoUInt8> return __self__.gcSlice(_begin, _end);
    @:embedded
    public static function funcType( __self__:StructType):stdgo.Ref<stdgo._internal.internal.abi.Abi.FuncType> return __self__.funcType();
    @:embedded
    public static function fieldAlign( __self__:StructType):stdgo.GoInt return __self__.fieldAlign();
    @:embedded
    public static function exportedMethods( __self__:StructType):stdgo.Slice<stdgo._internal.internal.abi.Abi.Method> return __self__.exportedMethods();
    @:embedded
    public static function elem( __self__:StructType):stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return __self__.elem();
    @:embedded
    public static function common( __self__:StructType):stdgo.Ref<stdgo._internal.internal.abi.Abi.Type_> return __self__.common();
    @:embedded
    public static function chanDir( __self__:StructType):stdgo._internal.internal.abi.Abi.ChanDir return __self__.chanDir();
    @:embedded
    public static function arrayType( __self__:StructType):stdgo.Ref<stdgo._internal.internal.abi.Abi.ArrayType> return __self__.arrayType();
    @:embedded
    public static function align( __self__:StructType):stdgo.GoInt return __self__.align();
}
class Name_asInterface {
    @:keep
    public dynamic function tag():stdgo.GoString return __self__.value.tag();
    @:keep
    public dynamic function name():stdgo.GoString return __self__.value.name();
    @:keep
    public dynamic function isBlank():Bool return __self__.value.isBlank();
    @:keep
    public dynamic function readVarint(_off:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } return __self__.value.readVarint(_off);
    @:keep
    public dynamic function isEmbedded():Bool return __self__.value.isEmbedded();
    @:keep
    public dynamic function hasTag():Bool return __self__.value.hasTag();
    @:keep
    public dynamic function isExported():Bool return __self__.value.isExported();
    @:keep
    public dynamic function data(_off:stdgo.GoInt):stdgo.Pointer<stdgo.GoByte> return __self__.value.data(_off);
    @:keep
    public dynamic function dataChecked(_off:stdgo.GoInt, _whySafe:stdgo.GoString):stdgo.Pointer<stdgo.GoByte> return __self__.value.dataChecked(_off, _whySafe);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Name>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.internal.abi.Abi.Name_asInterface) class Name_static_extension {
    @:keep
    static public function tag( _n:Name):stdgo.GoString {
        @:recv var _n:Name = _n?.__copy__();
        if (!_n.hasTag()) {
            return stdgo.Go.str()?.__copy__();
        };
        var __tmp__ = _n.readVarint((1 : stdgo.GoInt)), _i:stdgo.GoInt = __tmp__._0, _l:stdgo.GoInt = __tmp__._1;
        var __tmp__ = _n.readVarint((((1 : stdgo.GoInt) + _i : stdgo.GoInt) + _l : stdgo.GoInt)), _i2:stdgo.GoInt = __tmp__._0, _l2:stdgo.GoInt = __tmp__._1;
        return _unsafeStringFor(_n.dataChecked(((((1 : stdgo.GoInt) + _i : stdgo.GoInt) + _l : stdgo.GoInt) + _i2 : stdgo.GoInt), ("non-empty string" : stdgo.GoString)), _l2)?.__copy__();
    }
    @:keep
    static public function name( _n:Name):stdgo.GoString {
        @:recv var _n:Name = _n?.__copy__();
        if (_n.bytes == null) {
            return stdgo.Go.str()?.__copy__();
        };
        var __tmp__ = _n.readVarint((1 : stdgo.GoInt)), _i:stdgo.GoInt = __tmp__._0, _l:stdgo.GoInt = __tmp__._1;
        return _unsafeStringFor(_n.dataChecked(((1 : stdgo.GoInt) + _i : stdgo.GoInt), ("non-empty string" : stdgo.GoString)), _l)?.__copy__();
    }
    @:keep
    static public function isBlank( _n:Name):Bool {
        @:recv var _n:Name = _n?.__copy__();
        if (_n.bytes == null) {
            return false;
        };
        var __tmp__ = _n.readVarint((1 : stdgo.GoInt)), __231:stdgo.GoInt = __tmp__._0, _l:stdgo.GoInt = __tmp__._1;
        return ((_l == (1 : stdgo.GoInt)) && (_n.data((2 : stdgo.GoInt)).value == (95 : stdgo.GoUInt8)) : Bool);
    }
    @:keep
    static public function readVarint( _n:Name, _off:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } {
        @:recv var _n:Name = _n?.__copy__();
        var _v = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor(true, _i++, {
                var _x = _n.dataChecked((_off + _i : stdgo.GoInt), ("read varint" : stdgo.GoString)).value;
                _v = (_v + ((((_x & (127 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt) << (((7 : stdgo.GoInt) * _i : stdgo.GoInt)) : stdgo.GoInt)) : stdgo.GoInt);
                if ((_x & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) == ((0 : stdgo.GoUInt8))) {
                    return { _0 : (_i + (1 : stdgo.GoInt) : stdgo.GoInt), _1 : _v };
                };
            });
        };
    }
    @:keep
    static public function isEmbedded( _n:Name):Bool {
        @:recv var _n:Name = _n?.__copy__();
        return ((_n.bytes.value) & (8 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8));
    }
    @:keep
    static public function hasTag( _n:Name):Bool {
        @:recv var _n:Name = _n?.__copy__();
        return ((_n.bytes.value) & (2 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8));
    }
    @:keep
    static public function isExported( _n:Name):Bool {
        @:recv var _n:Name = _n?.__copy__();
        return ((_n.bytes.value) & (1 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8));
    }
    @:keep
    static public function data( _n:Name, _off:stdgo.GoInt):stdgo.Pointer<stdgo.GoByte> {
        @:recv var _n:Name = _n?.__copy__();
        return (_addChecked((stdgo.Go.toInterface(_n.bytes) : stdgo._internal.unsafe.Unsafe.UnsafePointer), (_off : stdgo.GoUIntptr), ("the runtime doesn\'t need to give you a reason" : stdgo.GoString)).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) })) : stdgo.Pointer<stdgo.GoByte>);
    }
    @:keep
    static public function dataChecked( _n:Name, _off:stdgo.GoInt, _whySafe:stdgo.GoString):stdgo.Pointer<stdgo.GoByte> {
        @:recv var _n:Name = _n?.__copy__();
        return (_addChecked((stdgo.Go.toInterface(_n.bytes) : stdgo._internal.unsafe.Unsafe.UnsafePointer), (_off : stdgo.GoUIntptr), _whySafe?.__copy__()).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) })) : stdgo.Pointer<stdgo.GoByte>);
    }
}
class IntArgRegBitmap_asInterface {
    @:keep
    public dynamic function get(_i:stdgo.GoInt):Bool return __self__.value.get(_i);
    @:keep
    public dynamic function set(_i:stdgo.GoInt):Void __self__.value.set(_i);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<IntArgRegBitmap>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.internal.abi.Abi.IntArgRegBitmap_asInterface) class IntArgRegBitmap_static_extension {
    @:keep
    static public function get( _b:stdgo.Ref<IntArgRegBitmap>, _i:stdgo.GoInt):Bool {
        @:recv var _b:stdgo.Ref<IntArgRegBitmap> = _b;
        return (_b[(_i / (8 : stdgo.GoInt) : stdgo.GoInt)] & (((1 : stdgo.GoUInt8) << ((_i % (8 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoUInt8)) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8));
    }
    @:keep
    static public function set( _b:stdgo.Ref<IntArgRegBitmap>, _i:stdgo.GoInt):Void {
        @:recv var _b:stdgo.Ref<IntArgRegBitmap> = _b;
        _b[(_i / (8 : stdgo.GoInt) : stdgo.GoInt)] = (_b[(_i / (8 : stdgo.GoInt) : stdgo.GoInt)] | (((1 : stdgo.GoUInt8) << ((_i % (8 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoUInt8)) : stdgo.GoUInt8);
    }
}
class Kind_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Kind>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.internal.abi.Abi.Kind_asInterface) class Kind_static_extension {
    @:keep
    static public function string( _k:Kind):stdgo.GoString {
        @:recv var _k:Kind = _k;
        if (((_k : stdgo.GoInt) < (_kindNames.length) : Bool)) {
            return _kindNames[(_k : stdgo.GoInt)]?.__copy__();
        };
        return _kindNames[(0 : stdgo.GoInt)]?.__copy__();
    }
}
