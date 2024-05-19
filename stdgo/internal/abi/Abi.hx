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
@:structInit @:using(stdgo.internal.abi.Abi.RegArgs_static_extension) abstract RegArgs(stdgo._internal.internal.abi.Abi.RegArgs) from stdgo._internal.internal.abi.Abi.RegArgs to stdgo._internal.internal.abi.Abi.RegArgs {
    public var ints(get, set) : haxe.ds.Vector<stdgo.GoUIntptr>;
    function get_ints():haxe.ds.Vector<stdgo.GoUIntptr> return haxe.ds.Vector.fromArrayCopy([for (i in this.ints) i]);
    function set_ints(v:haxe.ds.Vector<stdgo.GoUIntptr>):haxe.ds.Vector<stdgo.GoUIntptr> {
        this.ints = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUIntptr>);
        return v;
    }
    public var floats(get, set) : haxe.ds.Vector<haxe.UInt64>;
    function get_floats():haxe.ds.Vector<haxe.UInt64> return haxe.ds.Vector.fromArrayCopy([for (i in this.floats) i]);
    function set_floats(v:haxe.ds.Vector<haxe.UInt64>):haxe.ds.Vector<haxe.UInt64> {
        this.floats = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt64>);
        return v;
    }
    public var ptrs(get, set) : haxe.ds.Vector<stdgo._internal.unsafe.Unsafe.UnsafePointer>;
    function get_ptrs():haxe.ds.Vector<stdgo._internal.unsafe.Unsafe.UnsafePointer> return haxe.ds.Vector.fromArrayCopy([for (i in this.ptrs) i]);
    function set_ptrs(v:haxe.ds.Vector<stdgo._internal.unsafe.Unsafe.UnsafePointer>):haxe.ds.Vector<stdgo._internal.unsafe.Unsafe.UnsafePointer> {
        this.ptrs = ([for (i in v) i] : stdgo.GoArray<stdgo._internal.unsafe.Unsafe.UnsafePointer>);
        return v;
    }
    public var returnIsPtr(get, set) : stdgo._internal.internal.abi.Abi.IntArgRegBitmap;
    function get_returnIsPtr():stdgo._internal.internal.abi.Abi.IntArgRegBitmap return this.returnIsPtr;
    function set_returnIsPtr(v:stdgo._internal.internal.abi.Abi.IntArgRegBitmap):stdgo._internal.internal.abi.Abi.IntArgRegBitmap {
        this.returnIsPtr = v;
        return v;
    }
    public function new(?ints:haxe.ds.Vector<stdgo.GoUIntptr>, ?floats:haxe.ds.Vector<haxe.UInt64>, ?ptrs:haxe.ds.Vector<stdgo._internal.unsafe.Unsafe.UnsafePointer>, ?returnIsPtr:stdgo._internal.internal.abi.Abi.IntArgRegBitmap) this = new stdgo._internal.internal.abi.Abi.RegArgs(([for (i in ints) i] : stdgo.GoArray<stdgo.GoUIntptr>), ([for (i in floats) i] : stdgo.GoArray<stdgo.GoUInt64>), ([for (i in ptrs) i] : stdgo.GoArray<stdgo._internal.unsafe.Unsafe.UnsafePointer>), returnIsPtr);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.abi.Abi.Offset_static_extension) abstract Offset(stdgo._internal.internal.abi.Abi.Offset) from stdgo._internal.internal.abi.Abi.Offset to stdgo._internal.internal.abi.Abi.Offset {
    public var _off(get, set) : haxe.UInt64;
    function get__off():haxe.UInt64 return this._off;
    function set__off(v:haxe.UInt64):haxe.UInt64 {
        this._off = v;
        return v;
    }
    public var _align(get, set) : std.UInt;
    function get__align():std.UInt return this._align;
    function set__align(v:std.UInt):std.UInt {
        this._align = v;
        return v;
    }
    public var _ptrSize(get, set) : std.UInt;
    function get__ptrSize():std.UInt return this._ptrSize;
    function set__ptrSize(v:std.UInt):std.UInt {
        this._ptrSize = v;
        return v;
    }
    public var _sliceAlign(get, set) : std.UInt;
    function get__sliceAlign():std.UInt return this._sliceAlign;
    function set__sliceAlign(v:std.UInt):std.UInt {
        this._sliceAlign = v;
        return v;
    }
    public function new(?_off:haxe.UInt64, ?_align:std.UInt, ?_ptrSize:std.UInt, ?_sliceAlign:std.UInt) this = new stdgo._internal.internal.abi.Abi.Offset(_off, _align, _ptrSize, _sliceAlign);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.abi.Abi.Type__static_extension) abstract Type_(stdgo._internal.internal.abi.Abi.Type_) from stdgo._internal.internal.abi.Abi.Type_ to stdgo._internal.internal.abi.Abi.Type_ {
    public var size_(get, set) : stdgo.GoUIntptr;
    function get_size_():stdgo.GoUIntptr return this.size_;
    function set_size_(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this.size_ = v;
        return v;
    }
    public var ptrBytes(get, set) : stdgo.GoUIntptr;
    function get_ptrBytes():stdgo.GoUIntptr return this.ptrBytes;
    function set_ptrBytes(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this.ptrBytes = v;
        return v;
    }
    public var hash(get, set) : std.UInt;
    function get_hash():std.UInt return this.hash;
    function set_hash(v:std.UInt):std.UInt {
        this.hash = v;
        return v;
    }
    public var tflag(get, set) : stdgo._internal.internal.abi.Abi.TFlag;
    function get_tflag():stdgo._internal.internal.abi.Abi.TFlag return this.tflag;
    function set_tflag(v:stdgo._internal.internal.abi.Abi.TFlag):stdgo._internal.internal.abi.Abi.TFlag {
        this.tflag = v;
        return v;
    }
    public var align_(get, set) : std.UInt;
    function get_align_():std.UInt return this.align_;
    function set_align_(v:std.UInt):std.UInt {
        this.align_ = v;
        return v;
    }
    public var fieldAlign_(get, set) : std.UInt;
    function get_fieldAlign_():std.UInt return this.fieldAlign_;
    function set_fieldAlign_(v:std.UInt):std.UInt {
        this.fieldAlign_ = v;
        return v;
    }
    public var kind_(get, set) : std.UInt;
    function get_kind_():std.UInt return this.kind_;
    function set_kind_(v:std.UInt):std.UInt {
        this.kind_ = v;
        return v;
    }
    public var equal(get, set) : (stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo._internal.unsafe.Unsafe.UnsafePointer) -> Bool;
    function get_equal():(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo._internal.unsafe.Unsafe.UnsafePointer) -> Bool return (_0, _1) -> this.equal(_0, _1);
    function set_equal(v:(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo._internal.unsafe.Unsafe.UnsafePointer) -> Bool):(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo._internal.unsafe.Unsafe.UnsafePointer) -> Bool {
        this.equal = v;
        return v;
    }
    public var gcdata(get, set) : stdgo.Pointer<std.UInt>;
    function get_gcdata():stdgo.Pointer<std.UInt> return this.gcdata;
    function set_gcdata(v:stdgo.Pointer<std.UInt>):stdgo.Pointer<std.UInt> {
        this.gcdata = v;
        return v;
    }
    public var str(get, set) : stdgo._internal.internal.abi.Abi.NameOff;
    function get_str():stdgo._internal.internal.abi.Abi.NameOff return this.str;
    function set_str(v:stdgo._internal.internal.abi.Abi.NameOff):stdgo._internal.internal.abi.Abi.NameOff {
        this.str = v;
        return v;
    }
    public var ptrToThis(get, set) : stdgo._internal.internal.abi.Abi.TypeOff;
    function get_ptrToThis():stdgo._internal.internal.abi.Abi.TypeOff return this.ptrToThis;
    function set_ptrToThis(v:stdgo._internal.internal.abi.Abi.TypeOff):stdgo._internal.internal.abi.Abi.TypeOff {
        this.ptrToThis = v;
        return v;
    }
    public function new(?size_:stdgo.GoUIntptr, ?ptrBytes:stdgo.GoUIntptr, ?hash:std.UInt, ?tflag:stdgo._internal.internal.abi.Abi.TFlag, ?align_:std.UInt, ?fieldAlign_:std.UInt, ?kind_:std.UInt, ?equal:(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo._internal.unsafe.Unsafe.UnsafePointer) -> Bool, ?gcdata:stdgo.Pointer<std.UInt>, ?str:stdgo._internal.internal.abi.Abi.NameOff, ?ptrToThis:stdgo._internal.internal.abi.Abi.TypeOff) this = new stdgo._internal.internal.abi.Abi.Type_(
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
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract Method(stdgo._internal.internal.abi.Abi.Method) from stdgo._internal.internal.abi.Abi.Method to stdgo._internal.internal.abi.Abi.Method {
    public var name(get, set) : stdgo._internal.internal.abi.Abi.NameOff;
    function get_name():stdgo._internal.internal.abi.Abi.NameOff return this.name;
    function set_name(v:stdgo._internal.internal.abi.Abi.NameOff):stdgo._internal.internal.abi.Abi.NameOff {
        this.name = v;
        return v;
    }
    public var mtyp(get, set) : stdgo._internal.internal.abi.Abi.TypeOff;
    function get_mtyp():stdgo._internal.internal.abi.Abi.TypeOff return this.mtyp;
    function set_mtyp(v:stdgo._internal.internal.abi.Abi.TypeOff):stdgo._internal.internal.abi.Abi.TypeOff {
        this.mtyp = v;
        return v;
    }
    public var ifn(get, set) : stdgo._internal.internal.abi.Abi.TextOff;
    function get_ifn():stdgo._internal.internal.abi.Abi.TextOff return this.ifn;
    function set_ifn(v:stdgo._internal.internal.abi.Abi.TextOff):stdgo._internal.internal.abi.Abi.TextOff {
        this.ifn = v;
        return v;
    }
    public var tfn(get, set) : stdgo._internal.internal.abi.Abi.TextOff;
    function get_tfn():stdgo._internal.internal.abi.Abi.TextOff return this.tfn;
    function set_tfn(v:stdgo._internal.internal.abi.Abi.TextOff):stdgo._internal.internal.abi.Abi.TextOff {
        this.tfn = v;
        return v;
    }
    public function new(?name:stdgo._internal.internal.abi.Abi.NameOff, ?mtyp:stdgo._internal.internal.abi.Abi.TypeOff, ?ifn:stdgo._internal.internal.abi.Abi.TextOff, ?tfn:stdgo._internal.internal.abi.Abi.TextOff) this = new stdgo._internal.internal.abi.Abi.Method(name, mtyp, ifn, tfn);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.abi.Abi.UncommonType_static_extension) abstract UncommonType(stdgo._internal.internal.abi.Abi.UncommonType) from stdgo._internal.internal.abi.Abi.UncommonType to stdgo._internal.internal.abi.Abi.UncommonType {
    public var pkgPath(get, set) : stdgo._internal.internal.abi.Abi.NameOff;
    function get_pkgPath():stdgo._internal.internal.abi.Abi.NameOff return this.pkgPath;
    function set_pkgPath(v:stdgo._internal.internal.abi.Abi.NameOff):stdgo._internal.internal.abi.Abi.NameOff {
        this.pkgPath = v;
        return v;
    }
    public var mcount(get, set) : std.UInt;
    function get_mcount():std.UInt return this.mcount;
    function set_mcount(v:std.UInt):std.UInt {
        this.mcount = v;
        return v;
    }
    public var xcount(get, set) : std.UInt;
    function get_xcount():std.UInt return this.xcount;
    function set_xcount(v:std.UInt):std.UInt {
        this.xcount = v;
        return v;
    }
    public var moff(get, set) : std.UInt;
    function get_moff():std.UInt return this.moff;
    function set_moff(v:std.UInt):std.UInt {
        this.moff = v;
        return v;
    }
    public var __1(get, set) : std.UInt;
    function get___1():std.UInt return this.__1;
    function set___1(v:std.UInt):std.UInt {
        this.__1 = v;
        return v;
    }
    public function new(?pkgPath:stdgo._internal.internal.abi.Abi.NameOff, ?mcount:std.UInt, ?xcount:std.UInt, ?moff:std.UInt, ?__1:std.UInt) this = new stdgo._internal.internal.abi.Abi.UncommonType(pkgPath, mcount, xcount, moff, __1);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract Imethod(stdgo._internal.internal.abi.Abi.Imethod) from stdgo._internal.internal.abi.Abi.Imethod to stdgo._internal.internal.abi.Abi.Imethod {
    public var name(get, set) : stdgo._internal.internal.abi.Abi.NameOff;
    function get_name():stdgo._internal.internal.abi.Abi.NameOff return this.name;
    function set_name(v:stdgo._internal.internal.abi.Abi.NameOff):stdgo._internal.internal.abi.Abi.NameOff {
        this.name = v;
        return v;
    }
    public var typ(get, set) : stdgo._internal.internal.abi.Abi.TypeOff;
    function get_typ():stdgo._internal.internal.abi.Abi.TypeOff return this.typ;
    function set_typ(v:stdgo._internal.internal.abi.Abi.TypeOff):stdgo._internal.internal.abi.Abi.TypeOff {
        this.typ = v;
        return v;
    }
    public function new(?name:stdgo._internal.internal.abi.Abi.NameOff, ?typ:stdgo._internal.internal.abi.Abi.TypeOff) this = new stdgo._internal.internal.abi.Abi.Imethod(name, typ);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.abi.Abi.ArrayType_static_extension) abstract ArrayType(stdgo._internal.internal.abi.Abi.ArrayType) from stdgo._internal.internal.abi.Abi.ArrayType to stdgo._internal.internal.abi.Abi.ArrayType {
    public var type(get, set) : stdgo._internal.internal.abi.Abi.Type_;
    function get_type():stdgo._internal.internal.abi.Abi.Type_ return this.type;
    function set_type(v:stdgo._internal.internal.abi.Abi.Type_):stdgo._internal.internal.abi.Abi.Type_ {
        this.type = v;
        return v;
    }
    public var elem(get, set) : stdgo._internal.internal.abi.Abi.Type_;
    function get_elem():stdgo._internal.internal.abi.Abi.Type_ return this.elem;
    function set_elem(v:stdgo._internal.internal.abi.Abi.Type_):stdgo._internal.internal.abi.Abi.Type_ {
        this.elem = v;
        return v;
    }
    public var slice(get, set) : stdgo._internal.internal.abi.Abi.Type_;
    function get_slice():stdgo._internal.internal.abi.Abi.Type_ return this.slice;
    function set_slice(v:stdgo._internal.internal.abi.Abi.Type_):stdgo._internal.internal.abi.Abi.Type_ {
        this.slice = v;
        return v;
    }
    public var len(get, set) : stdgo.GoUIntptr;
    function get_len():stdgo.GoUIntptr return this.len;
    function set_len(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this.len = v;
        return v;
    }
    public function new(?type:stdgo._internal.internal.abi.Abi.Type_, ?elem:stdgo._internal.internal.abi.Abi.Type_, ?slice:stdgo._internal.internal.abi.Abi.Type_, ?len:stdgo.GoUIntptr) this = new stdgo._internal.internal.abi.Abi.ArrayType(type, elem, slice, len);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.abi.Abi.ChanType_static_extension) abstract ChanType(stdgo._internal.internal.abi.Abi.ChanType) from stdgo._internal.internal.abi.Abi.ChanType to stdgo._internal.internal.abi.Abi.ChanType {
    public var type(get, set) : stdgo._internal.internal.abi.Abi.Type_;
    function get_type():stdgo._internal.internal.abi.Abi.Type_ return this.type;
    function set_type(v:stdgo._internal.internal.abi.Abi.Type_):stdgo._internal.internal.abi.Abi.Type_ {
        this.type = v;
        return v;
    }
    public var elem(get, set) : stdgo._internal.internal.abi.Abi.Type_;
    function get_elem():stdgo._internal.internal.abi.Abi.Type_ return this.elem;
    function set_elem(v:stdgo._internal.internal.abi.Abi.Type_):stdgo._internal.internal.abi.Abi.Type_ {
        this.elem = v;
        return v;
    }
    public var dir(get, set) : stdgo._internal.internal.abi.Abi.ChanDir;
    function get_dir():stdgo._internal.internal.abi.Abi.ChanDir return this.dir;
    function set_dir(v:stdgo._internal.internal.abi.Abi.ChanDir):stdgo._internal.internal.abi.Abi.ChanDir {
        this.dir = v;
        return v;
    }
    public function new(?type:stdgo._internal.internal.abi.Abi.Type_, ?elem:stdgo._internal.internal.abi.Abi.Type_, ?dir:stdgo._internal.internal.abi.Abi.ChanDir) this = new stdgo._internal.internal.abi.Abi.ChanType(type, elem, dir);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.internal.abi.Abi.T_structTypeUncommon_static_extension) abstract T_structTypeUncommon(stdgo._internal.internal.abi.Abi.T_structTypeUncommon) from stdgo._internal.internal.abi.Abi.T_structTypeUncommon to stdgo._internal.internal.abi.Abi.T_structTypeUncommon {
    public var structType(get, set) : stdgo._internal.internal.abi.Abi.StructType;
    function get_structType():stdgo._internal.internal.abi.Abi.StructType return this.structType;
    function set_structType(v:stdgo._internal.internal.abi.Abi.StructType):stdgo._internal.internal.abi.Abi.StructType {
        this.structType = v;
        return v;
    }
    public var _u(get, set) : stdgo._internal.internal.abi.Abi.UncommonType;
    function get__u():stdgo._internal.internal.abi.Abi.UncommonType return this._u;
    function set__u(v:stdgo._internal.internal.abi.Abi.UncommonType):stdgo._internal.internal.abi.Abi.UncommonType {
        this._u = v;
        return v;
    }
    public function new(?structType:stdgo._internal.internal.abi.Abi.StructType, ?_u:stdgo._internal.internal.abi.Abi.UncommonType) this = new stdgo._internal.internal.abi.Abi.T_structTypeUncommon(structType, _u);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.abi.Abi.InterfaceType_static_extension) abstract InterfaceType(stdgo._internal.internal.abi.Abi.InterfaceType) from stdgo._internal.internal.abi.Abi.InterfaceType to stdgo._internal.internal.abi.Abi.InterfaceType {
    public var type(get, set) : stdgo._internal.internal.abi.Abi.Type_;
    function get_type():stdgo._internal.internal.abi.Abi.Type_ return this.type;
    function set_type(v:stdgo._internal.internal.abi.Abi.Type_):stdgo._internal.internal.abi.Abi.Type_ {
        this.type = v;
        return v;
    }
    public var pkgPath(get, set) : stdgo._internal.internal.abi.Abi.Name;
    function get_pkgPath():stdgo._internal.internal.abi.Abi.Name return this.pkgPath;
    function set_pkgPath(v:stdgo._internal.internal.abi.Abi.Name):stdgo._internal.internal.abi.Abi.Name {
        this.pkgPath = v;
        return v;
    }
    public var methods(get, set) : Array<stdgo._internal.internal.abi.Abi.Imethod>;
    function get_methods():Array<stdgo._internal.internal.abi.Abi.Imethod> return [for (i in this.methods) i];
    function set_methods(v:Array<stdgo._internal.internal.abi.Abi.Imethod>):Array<stdgo._internal.internal.abi.Abi.Imethod> {
        this.methods = ([for (i in v) i] : stdgo.Slice<stdgo._internal.internal.abi.Abi.Imethod>);
        return v;
    }
    public function new(?type:stdgo._internal.internal.abi.Abi.Type_, ?pkgPath:stdgo._internal.internal.abi.Abi.Name, ?methods:Array<stdgo._internal.internal.abi.Abi.Imethod>) this = new stdgo._internal.internal.abi.Abi.InterfaceType(type, pkgPath, ([for (i in methods) i] : stdgo.Slice<stdgo._internal.internal.abi.Abi.Imethod>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.abi.Abi.MapType_static_extension) abstract MapType(stdgo._internal.internal.abi.Abi.MapType) from stdgo._internal.internal.abi.Abi.MapType to stdgo._internal.internal.abi.Abi.MapType {
    public var type(get, set) : stdgo._internal.internal.abi.Abi.Type_;
    function get_type():stdgo._internal.internal.abi.Abi.Type_ return this.type;
    function set_type(v:stdgo._internal.internal.abi.Abi.Type_):stdgo._internal.internal.abi.Abi.Type_ {
        this.type = v;
        return v;
    }
    public var key(get, set) : stdgo._internal.internal.abi.Abi.Type_;
    function get_key():stdgo._internal.internal.abi.Abi.Type_ return this.key;
    function set_key(v:stdgo._internal.internal.abi.Abi.Type_):stdgo._internal.internal.abi.Abi.Type_ {
        this.key = v;
        return v;
    }
    public var elem(get, set) : stdgo._internal.internal.abi.Abi.Type_;
    function get_elem():stdgo._internal.internal.abi.Abi.Type_ return this.elem;
    function set_elem(v:stdgo._internal.internal.abi.Abi.Type_):stdgo._internal.internal.abi.Abi.Type_ {
        this.elem = v;
        return v;
    }
    public var bucket(get, set) : stdgo._internal.internal.abi.Abi.Type_;
    function get_bucket():stdgo._internal.internal.abi.Abi.Type_ return this.bucket;
    function set_bucket(v:stdgo._internal.internal.abi.Abi.Type_):stdgo._internal.internal.abi.Abi.Type_ {
        this.bucket = v;
        return v;
    }
    public var hasher(get, set) : (stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> stdgo.GoUIntptr;
    function get_hasher():(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> stdgo.GoUIntptr return (_0, _1) -> this.hasher(_0, _1);
    function set_hasher(v:(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> stdgo.GoUIntptr):(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> stdgo.GoUIntptr {
        this.hasher = v;
        return v;
    }
    public var keySize(get, set) : std.UInt;
    function get_keySize():std.UInt return this.keySize;
    function set_keySize(v:std.UInt):std.UInt {
        this.keySize = v;
        return v;
    }
    public var valueSize(get, set) : std.UInt;
    function get_valueSize():std.UInt return this.valueSize;
    function set_valueSize(v:std.UInt):std.UInt {
        this.valueSize = v;
        return v;
    }
    public var bucketSize(get, set) : std.UInt;
    function get_bucketSize():std.UInt return this.bucketSize;
    function set_bucketSize(v:std.UInt):std.UInt {
        this.bucketSize = v;
        return v;
    }
    public var flags(get, set) : std.UInt;
    function get_flags():std.UInt return this.flags;
    function set_flags(v:std.UInt):std.UInt {
        this.flags = v;
        return v;
    }
    public function new(?type:stdgo._internal.internal.abi.Abi.Type_, ?key:stdgo._internal.internal.abi.Abi.Type_, ?elem:stdgo._internal.internal.abi.Abi.Type_, ?bucket:stdgo._internal.internal.abi.Abi.Type_, ?hasher:(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> stdgo.GoUIntptr, ?keySize:std.UInt, ?valueSize:std.UInt, ?bucketSize:std.UInt, ?flags:std.UInt) this = new stdgo._internal.internal.abi.Abi.MapType(type, key, elem, bucket, hasher, keySize, valueSize, bucketSize, flags);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.abi.Abi.SliceType_static_extension) abstract SliceType(stdgo._internal.internal.abi.Abi.SliceType) from stdgo._internal.internal.abi.Abi.SliceType to stdgo._internal.internal.abi.Abi.SliceType {
    public var type(get, set) : stdgo._internal.internal.abi.Abi.Type_;
    function get_type():stdgo._internal.internal.abi.Abi.Type_ return this.type;
    function set_type(v:stdgo._internal.internal.abi.Abi.Type_):stdgo._internal.internal.abi.Abi.Type_ {
        this.type = v;
        return v;
    }
    public var elem(get, set) : stdgo._internal.internal.abi.Abi.Type_;
    function get_elem():stdgo._internal.internal.abi.Abi.Type_ return this.elem;
    function set_elem(v:stdgo._internal.internal.abi.Abi.Type_):stdgo._internal.internal.abi.Abi.Type_ {
        this.elem = v;
        return v;
    }
    public function new(?type:stdgo._internal.internal.abi.Abi.Type_, ?elem:stdgo._internal.internal.abi.Abi.Type_) this = new stdgo._internal.internal.abi.Abi.SliceType(type, elem);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.abi.Abi.FuncType_static_extension) abstract FuncType(stdgo._internal.internal.abi.Abi.FuncType) from stdgo._internal.internal.abi.Abi.FuncType to stdgo._internal.internal.abi.Abi.FuncType {
    public var type(get, set) : stdgo._internal.internal.abi.Abi.Type_;
    function get_type():stdgo._internal.internal.abi.Abi.Type_ return this.type;
    function set_type(v:stdgo._internal.internal.abi.Abi.Type_):stdgo._internal.internal.abi.Abi.Type_ {
        this.type = v;
        return v;
    }
    public var inCount(get, set) : std.UInt;
    function get_inCount():std.UInt return this.inCount;
    function set_inCount(v:std.UInt):std.UInt {
        this.inCount = v;
        return v;
    }
    public var outCount(get, set) : std.UInt;
    function get_outCount():std.UInt return this.outCount;
    function set_outCount(v:std.UInt):std.UInt {
        this.outCount = v;
        return v;
    }
    public function new(?type:stdgo._internal.internal.abi.Abi.Type_, ?inCount:std.UInt, ?outCount:std.UInt) this = new stdgo._internal.internal.abi.Abi.FuncType(type, inCount, outCount);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.abi.Abi.PtrType_static_extension) abstract PtrType(stdgo._internal.internal.abi.Abi.PtrType) from stdgo._internal.internal.abi.Abi.PtrType to stdgo._internal.internal.abi.Abi.PtrType {
    public var type(get, set) : stdgo._internal.internal.abi.Abi.Type_;
    function get_type():stdgo._internal.internal.abi.Abi.Type_ return this.type;
    function set_type(v:stdgo._internal.internal.abi.Abi.Type_):stdgo._internal.internal.abi.Abi.Type_ {
        this.type = v;
        return v;
    }
    public var elem(get, set) : stdgo._internal.internal.abi.Abi.Type_;
    function get_elem():stdgo._internal.internal.abi.Abi.Type_ return this.elem;
    function set_elem(v:stdgo._internal.internal.abi.Abi.Type_):stdgo._internal.internal.abi.Abi.Type_ {
        this.elem = v;
        return v;
    }
    public function new(?type:stdgo._internal.internal.abi.Abi.Type_, ?elem:stdgo._internal.internal.abi.Abi.Type_) this = new stdgo._internal.internal.abi.Abi.PtrType(type, elem);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.abi.Abi.StructField_static_extension) abstract StructField(stdgo._internal.internal.abi.Abi.StructField) from stdgo._internal.internal.abi.Abi.StructField to stdgo._internal.internal.abi.Abi.StructField {
    public var name(get, set) : stdgo._internal.internal.abi.Abi.Name;
    function get_name():stdgo._internal.internal.abi.Abi.Name return this.name;
    function set_name(v:stdgo._internal.internal.abi.Abi.Name):stdgo._internal.internal.abi.Abi.Name {
        this.name = v;
        return v;
    }
    public var typ(get, set) : stdgo._internal.internal.abi.Abi.Type_;
    function get_typ():stdgo._internal.internal.abi.Abi.Type_ return this.typ;
    function set_typ(v:stdgo._internal.internal.abi.Abi.Type_):stdgo._internal.internal.abi.Abi.Type_ {
        this.typ = v;
        return v;
    }
    public var offset(get, set) : stdgo.GoUIntptr;
    function get_offset():stdgo.GoUIntptr return this.offset;
    function set_offset(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this.offset = v;
        return v;
    }
    public function new(?name:stdgo._internal.internal.abi.Abi.Name, ?typ:stdgo._internal.internal.abi.Abi.Type_, ?offset:stdgo.GoUIntptr) this = new stdgo._internal.internal.abi.Abi.StructField(name, typ, offset);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.abi.Abi.StructType_static_extension) abstract StructType(stdgo._internal.internal.abi.Abi.StructType) from stdgo._internal.internal.abi.Abi.StructType to stdgo._internal.internal.abi.Abi.StructType {
    public var type(get, set) : stdgo._internal.internal.abi.Abi.Type_;
    function get_type():stdgo._internal.internal.abi.Abi.Type_ return this.type;
    function set_type(v:stdgo._internal.internal.abi.Abi.Type_):stdgo._internal.internal.abi.Abi.Type_ {
        this.type = v;
        return v;
    }
    public var pkgPath(get, set) : stdgo._internal.internal.abi.Abi.Name;
    function get_pkgPath():stdgo._internal.internal.abi.Abi.Name return this.pkgPath;
    function set_pkgPath(v:stdgo._internal.internal.abi.Abi.Name):stdgo._internal.internal.abi.Abi.Name {
        this.pkgPath = v;
        return v;
    }
    public var fields(get, set) : Array<stdgo._internal.internal.abi.Abi.StructField>;
    function get_fields():Array<stdgo._internal.internal.abi.Abi.StructField> return [for (i in this.fields) i];
    function set_fields(v:Array<stdgo._internal.internal.abi.Abi.StructField>):Array<stdgo._internal.internal.abi.Abi.StructField> {
        this.fields = ([for (i in v) i] : stdgo.Slice<stdgo._internal.internal.abi.Abi.StructField>);
        return v;
    }
    public function new(?type:stdgo._internal.internal.abi.Abi.Type_, ?pkgPath:stdgo._internal.internal.abi.Abi.Name, ?fields:Array<stdgo._internal.internal.abi.Abi.StructField>) this = new stdgo._internal.internal.abi.Abi.StructType(type, pkgPath, ([for (i in fields) i] : stdgo.Slice<stdgo._internal.internal.abi.Abi.StructField>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.abi.Abi.Name_static_extension) abstract Name(stdgo._internal.internal.abi.Abi.Name) from stdgo._internal.internal.abi.Abi.Name to stdgo._internal.internal.abi.Abi.Name {
    public var bytes(get, set) : stdgo.Pointer<std.UInt>;
    function get_bytes():stdgo.Pointer<std.UInt> return this.bytes;
    function set_bytes(v:stdgo.Pointer<std.UInt>):stdgo.Pointer<std.UInt> {
        this.bytes = v;
        return v;
    }
    public function new(?bytes:stdgo.Pointer<std.UInt>) this = new stdgo._internal.internal.abi.Abi.Name(bytes);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
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
class RegArgs_static_extension {
    static public function intRegArgAddr(r:RegArgs, reg:StdTypes.Int, argSize:stdgo.GoUIntptr):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        return stdgo._internal.internal.abi.Abi.RegArgs_static_extension.intRegArgAddr(r, reg, argSize);
    }
    static public function dump(r:RegArgs):Void {
        stdgo._internal.internal.abi.Abi.RegArgs_static_extension.dump(r);
    }
}
class Offset_static_extension {
    static public function plusUncommon(o:Offset):Offset {
        return stdgo._internal.internal.abi.Abi.Offset_static_extension.plusUncommon(o);
    }
    static public function offset(o:Offset):haxe.UInt64 {
        return stdgo._internal.internal.abi.Abi.Offset_static_extension.offset(o);
    }
    static public function interface_(o:Offset):Offset {
        return stdgo._internal.internal.abi.Abi.Offset_static_extension.interface_(o);
    }
    static public function string(o:Offset):Offset {
        return stdgo._internal.internal.abi.Abi.Offset_static_extension.string(o);
    }
    static public function slice(o:Offset):Offset {
        return stdgo._internal.internal.abi.Abi.Offset_static_extension.slice(o);
    }
    static public function p(o:Offset):Offset {
        return stdgo._internal.internal.abi.Abi.Offset_static_extension.p(o);
    }
    static public function d64(o:Offset):Offset {
        return stdgo._internal.internal.abi.Abi.Offset_static_extension.d64(o);
    }
    static public function d32(o:Offset):Offset {
        return stdgo._internal.internal.abi.Abi.Offset_static_extension.d32(o);
    }
    static public function d16(o:Offset):Offset {
        return stdgo._internal.internal.abi.Abi.Offset_static_extension.d16(o);
    }
    static public function d8(o:Offset):Offset {
        return stdgo._internal.internal.abi.Abi.Offset_static_extension.d8(o);
    }
    static public function _plus(o:Offset, x:haxe.UInt64):Offset {
        return stdgo._internal.internal.abi.Abi.Offset_static_extension._plus(o, x);
    }
    static public function align(o:Offset, a:std.UInt):Offset {
        return stdgo._internal.internal.abi.Abi.Offset_static_extension.align(o, a);
    }
    static public function _align_(o:Offset, a:std.UInt):Offset {
        return stdgo._internal.internal.abi.Abi.Offset_static_extension._align_(o, a);
    }
}
class Type__static_extension {
    static public function key(t:Type_):Type_ {
        return stdgo._internal.internal.abi.Abi.Type__static_extension.key(t);
    }
    static public function numMethod(t:Type_):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi.Type__static_extension.numMethod(t);
    }
    static public function exportedMethods(t:Type_):Array<Method> {
        return [for (i in stdgo._internal.internal.abi.Abi.Type__static_extension.exportedMethods(t)) i];
    }
    static public function fieldAlign(t:Type_):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi.Type__static_extension.fieldAlign(t);
    }
    static public function align(t:Type_):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi.Type__static_extension.align(t);
    }
    static public function size(t:Type_):stdgo.GoUIntptr {
        return stdgo._internal.internal.abi.Abi.Type__static_extension.size(t);
    }
    static public function interfaceType(t:Type_):InterfaceType {
        return stdgo._internal.internal.abi.Abi.Type__static_extension.interfaceType(t);
    }
    static public function funcType(t:Type_):FuncType {
        return stdgo._internal.internal.abi.Abi.Type__static_extension.funcType(t);
    }
    static public function arrayType(t:Type_):ArrayType {
        return stdgo._internal.internal.abi.Abi.Type__static_extension.arrayType(t);
    }
    static public function mapType(t:Type_):MapType {
        return stdgo._internal.internal.abi.Abi.Type__static_extension.mapType(t);
    }
    static public function structType(t:Type_):StructType {
        return stdgo._internal.internal.abi.Abi.Type__static_extension.structType(t);
    }
    static public function elem(t:Type_):Type_ {
        return stdgo._internal.internal.abi.Abi.Type__static_extension.elem(t);
    }
    static public function uncommon(t:Type_):UncommonType {
        return stdgo._internal.internal.abi.Abi.Type__static_extension.uncommon(t);
    }
    static public function chanDir(t:Type_):ChanDir {
        return stdgo._internal.internal.abi.Abi.Type__static_extension.chanDir(t);
    }
    static public function common(t:Type_):Type_ {
        return stdgo._internal.internal.abi.Abi.Type__static_extension.common(t);
    }
    static public function len(t:Type_):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi.Type__static_extension.len(t);
    }
    static public function gcSlice(t:Type_, begin:stdgo.GoUIntptr, end:stdgo.GoUIntptr):Array<StdTypes.Int> {
        return [for (i in stdgo._internal.internal.abi.Abi.Type__static_extension.gcSlice(t, begin, end)) i];
    }
    static public function isDirectIface(t:Type_):Bool {
        return stdgo._internal.internal.abi.Abi.Type__static_extension.isDirectIface(t);
    }
    static public function ifaceIndir(t:Type_):Bool {
        return stdgo._internal.internal.abi.Abi.Type__static_extension.ifaceIndir(t);
    }
    static public function pointers(t:Type_):Bool {
        return stdgo._internal.internal.abi.Abi.Type__static_extension.pointers(t);
    }
    static public function hasName(t:Type_):Bool {
        return stdgo._internal.internal.abi.Abi.Type__static_extension.hasName(t);
    }
    static public function kind(t:Type_):Kind {
        return stdgo._internal.internal.abi.Abi.Type__static_extension.kind(t);
    }
}
@:structInit abstract T_uncommon___localname___u_8324(stdgo._internal.internal.abi.Abi.T_uncommon___localname___u_8324) from stdgo._internal.internal.abi.Abi.T_uncommon___localname___u_8324 to stdgo._internal.internal.abi.Abi.T_uncommon___localname___u_8324 {
    public var ptrType(get, set) : stdgo._internal.internal.abi.Abi.PtrType;
    function get_ptrType():stdgo._internal.internal.abi.Abi.PtrType return this.ptrType;
    function set_ptrType(v:stdgo._internal.internal.abi.Abi.PtrType):stdgo._internal.internal.abi.Abi.PtrType {
        this.ptrType = v;
        return v;
    }
    public var _u(get, set) : stdgo._internal.internal.abi.Abi.UncommonType;
    function get__u():stdgo._internal.internal.abi.Abi.UncommonType return this._u;
    function set__u(v:stdgo._internal.internal.abi.Abi.UncommonType):stdgo._internal.internal.abi.Abi.UncommonType {
        this._u = v;
        return v;
    }
    public function new(?ptrType:stdgo._internal.internal.abi.Abi.PtrType, ?_u:stdgo._internal.internal.abi.Abi.UncommonType) this = new stdgo._internal.internal.abi.Abi.T_uncommon___localname___u_8324(ptrType, _u);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_uncommon___localname___u_8423(stdgo._internal.internal.abi.Abi.T_uncommon___localname___u_8423) from stdgo._internal.internal.abi.Abi.T_uncommon___localname___u_8423 to stdgo._internal.internal.abi.Abi.T_uncommon___localname___u_8423 {
    public var funcType(get, set) : stdgo._internal.internal.abi.Abi.FuncType;
    function get_funcType():stdgo._internal.internal.abi.Abi.FuncType return this.funcType;
    function set_funcType(v:stdgo._internal.internal.abi.Abi.FuncType):stdgo._internal.internal.abi.Abi.FuncType {
        this.funcType = v;
        return v;
    }
    public var _u(get, set) : stdgo._internal.internal.abi.Abi.UncommonType;
    function get__u():stdgo._internal.internal.abi.Abi.UncommonType return this._u;
    function set__u(v:stdgo._internal.internal.abi.Abi.UncommonType):stdgo._internal.internal.abi.Abi.UncommonType {
        this._u = v;
        return v;
    }
    public function new(?funcType:stdgo._internal.internal.abi.Abi.FuncType, ?_u:stdgo._internal.internal.abi.Abi.UncommonType) this = new stdgo._internal.internal.abi.Abi.T_uncommon___localname___u_8423(funcType, _u);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_uncommon___localname___u_8524(stdgo._internal.internal.abi.Abi.T_uncommon___localname___u_8524) from stdgo._internal.internal.abi.Abi.T_uncommon___localname___u_8524 to stdgo._internal.internal.abi.Abi.T_uncommon___localname___u_8524 {
    public var sliceType(get, set) : stdgo._internal.internal.abi.Abi.SliceType;
    function get_sliceType():stdgo._internal.internal.abi.Abi.SliceType return this.sliceType;
    function set_sliceType(v:stdgo._internal.internal.abi.Abi.SliceType):stdgo._internal.internal.abi.Abi.SliceType {
        this.sliceType = v;
        return v;
    }
    public var _u(get, set) : stdgo._internal.internal.abi.Abi.UncommonType;
    function get__u():stdgo._internal.internal.abi.Abi.UncommonType return this._u;
    function set__u(v:stdgo._internal.internal.abi.Abi.UncommonType):stdgo._internal.internal.abi.Abi.UncommonType {
        this._u = v;
        return v;
    }
    public function new(?sliceType:stdgo._internal.internal.abi.Abi.SliceType, ?_u:stdgo._internal.internal.abi.Abi.UncommonType) this = new stdgo._internal.internal.abi.Abi.T_uncommon___localname___u_8524(sliceType, _u);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_uncommon___localname___u_8626(stdgo._internal.internal.abi.Abi.T_uncommon___localname___u_8626) from stdgo._internal.internal.abi.Abi.T_uncommon___localname___u_8626 to stdgo._internal.internal.abi.Abi.T_uncommon___localname___u_8626 {
    public var arrayType(get, set) : stdgo._internal.internal.abi.Abi.ArrayType;
    function get_arrayType():stdgo._internal.internal.abi.Abi.ArrayType return this.arrayType;
    function set_arrayType(v:stdgo._internal.internal.abi.Abi.ArrayType):stdgo._internal.internal.abi.Abi.ArrayType {
        this.arrayType = v;
        return v;
    }
    public var _u(get, set) : stdgo._internal.internal.abi.Abi.UncommonType;
    function get__u():stdgo._internal.internal.abi.Abi.UncommonType return this._u;
    function set__u(v:stdgo._internal.internal.abi.Abi.UncommonType):stdgo._internal.internal.abi.Abi.UncommonType {
        this._u = v;
        return v;
    }
    public function new(?arrayType:stdgo._internal.internal.abi.Abi.ArrayType, ?_u:stdgo._internal.internal.abi.Abi.UncommonType) this = new stdgo._internal.internal.abi.Abi.T_uncommon___localname___u_8626(arrayType, _u);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_uncommon___localname___u_8727(stdgo._internal.internal.abi.Abi.T_uncommon___localname___u_8727) from stdgo._internal.internal.abi.Abi.T_uncommon___localname___u_8727 to stdgo._internal.internal.abi.Abi.T_uncommon___localname___u_8727 {
    public var chanType(get, set) : stdgo._internal.internal.abi.Abi.ChanType;
    function get_chanType():stdgo._internal.internal.abi.Abi.ChanType return this.chanType;
    function set_chanType(v:stdgo._internal.internal.abi.Abi.ChanType):stdgo._internal.internal.abi.Abi.ChanType {
        this.chanType = v;
        return v;
    }
    public var _u(get, set) : stdgo._internal.internal.abi.Abi.UncommonType;
    function get__u():stdgo._internal.internal.abi.Abi.UncommonType return this._u;
    function set__u(v:stdgo._internal.internal.abi.Abi.UncommonType):stdgo._internal.internal.abi.Abi.UncommonType {
        this._u = v;
        return v;
    }
    public function new(?chanType:stdgo._internal.internal.abi.Abi.ChanType, ?_u:stdgo._internal.internal.abi.Abi.UncommonType) this = new stdgo._internal.internal.abi.Abi.T_uncommon___localname___u_8727(chanType, _u);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_uncommon___localname___u_8826(stdgo._internal.internal.abi.Abi.T_uncommon___localname___u_8826) from stdgo._internal.internal.abi.Abi.T_uncommon___localname___u_8826 to stdgo._internal.internal.abi.Abi.T_uncommon___localname___u_8826 {
    public var mapType(get, set) : stdgo._internal.internal.abi.Abi.MapType;
    function get_mapType():stdgo._internal.internal.abi.Abi.MapType return this.mapType;
    function set_mapType(v:stdgo._internal.internal.abi.Abi.MapType):stdgo._internal.internal.abi.Abi.MapType {
        this.mapType = v;
        return v;
    }
    public var _u(get, set) : stdgo._internal.internal.abi.Abi.UncommonType;
    function get__u():stdgo._internal.internal.abi.Abi.UncommonType return this._u;
    function set__u(v:stdgo._internal.internal.abi.Abi.UncommonType):stdgo._internal.internal.abi.Abi.UncommonType {
        this._u = v;
        return v;
    }
    public function new(?mapType:stdgo._internal.internal.abi.Abi.MapType, ?_u:stdgo._internal.internal.abi.Abi.UncommonType) this = new stdgo._internal.internal.abi.Abi.T_uncommon___localname___u_8826(mapType, _u);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_uncommon___localname___u_8930(stdgo._internal.internal.abi.Abi.T_uncommon___localname___u_8930) from stdgo._internal.internal.abi.Abi.T_uncommon___localname___u_8930 to stdgo._internal.internal.abi.Abi.T_uncommon___localname___u_8930 {
    public var interfaceType(get, set) : stdgo._internal.internal.abi.Abi.InterfaceType;
    function get_interfaceType():stdgo._internal.internal.abi.Abi.InterfaceType return this.interfaceType;
    function set_interfaceType(v:stdgo._internal.internal.abi.Abi.InterfaceType):stdgo._internal.internal.abi.Abi.InterfaceType {
        this.interfaceType = v;
        return v;
    }
    public var _u(get, set) : stdgo._internal.internal.abi.Abi.UncommonType;
    function get__u():stdgo._internal.internal.abi.Abi.UncommonType return this._u;
    function set__u(v:stdgo._internal.internal.abi.Abi.UncommonType):stdgo._internal.internal.abi.Abi.UncommonType {
        this._u = v;
        return v;
    }
    public function new(?interfaceType:stdgo._internal.internal.abi.Abi.InterfaceType, ?_u:stdgo._internal.internal.abi.Abi.UncommonType) this = new stdgo._internal.internal.abi.Abi.T_uncommon___localname___u_8930(interfaceType, _u);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_uncommon___localname___u_9033(stdgo._internal.internal.abi.Abi.T_uncommon___localname___u_9033) from stdgo._internal.internal.abi.Abi.T_uncommon___localname___u_9033 to stdgo._internal.internal.abi.Abi.T_uncommon___localname___u_9033 {
    public var type(get, set) : stdgo._internal.internal.abi.Abi.Type_;
    function get_type():stdgo._internal.internal.abi.Abi.Type_ return this.type;
    function set_type(v:stdgo._internal.internal.abi.Abi.Type_):stdgo._internal.internal.abi.Abi.Type_ {
        this.type = v;
        return v;
    }
    public var _u(get, set) : stdgo._internal.internal.abi.Abi.UncommonType;
    function get__u():stdgo._internal.internal.abi.Abi.UncommonType return this._u;
    function set__u(v:stdgo._internal.internal.abi.Abi.UncommonType):stdgo._internal.internal.abi.Abi.UncommonType {
        this._u = v;
        return v;
    }
    public function new(?type:stdgo._internal.internal.abi.Abi.Type_, ?_u:stdgo._internal.internal.abi.Abi.UncommonType) this = new stdgo._internal.internal.abi.Abi.T_uncommon___localname___u_9033(type, _u);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class UncommonType_static_extension {
    static public function exportedMethods(t:UncommonType):Array<Method> {
        return [for (i in stdgo._internal.internal.abi.Abi.UncommonType_static_extension.exportedMethods(t)) i];
    }
    static public function methods(t:UncommonType):Array<Method> {
        return [for (i in stdgo._internal.internal.abi.Abi.UncommonType_static_extension.methods(t)) i];
    }
}
class ArrayType_static_extension {
    public static function uncommon(_self__:ArrayType):stdgo._internal.internal.abi.Abi.UncommonType {
        return stdgo._internal.internal.abi.Abi.ArrayType_static_extension.uncommon(_self__);
    }
    public static function structType(_self__:ArrayType):stdgo._internal.internal.abi.Abi.StructType {
        return stdgo._internal.internal.abi.Abi.ArrayType_static_extension.structType(_self__);
    }
    public static function size(_self__:ArrayType):stdgo.GoUIntptr {
        return stdgo._internal.internal.abi.Abi.ArrayType_static_extension.size(_self__);
    }
    public static function pointers(_self__:ArrayType):Bool {
        return stdgo._internal.internal.abi.Abi.ArrayType_static_extension.pointers(_self__);
    }
    public static function numMethod(_self__:ArrayType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi.ArrayType_static_extension.numMethod(_self__);
    }
    public static function mapType(_self__:ArrayType):stdgo._internal.internal.abi.Abi.MapType {
        return stdgo._internal.internal.abi.Abi.ArrayType_static_extension.mapType(_self__);
    }
    public static function kind(_self__:ArrayType):stdgo._internal.internal.abi.Abi.Kind {
        return stdgo._internal.internal.abi.Abi.ArrayType_static_extension.kind(_self__);
    }
    public static function key(_self__:ArrayType):stdgo._internal.internal.abi.Abi.Type_ {
        return stdgo._internal.internal.abi.Abi.ArrayType_static_extension.key(_self__);
    }
    public static function isDirectIface(_self__:ArrayType):Bool {
        return stdgo._internal.internal.abi.Abi.ArrayType_static_extension.isDirectIface(_self__);
    }
    public static function interfaceType(_self__:ArrayType):stdgo._internal.internal.abi.Abi.InterfaceType {
        return stdgo._internal.internal.abi.Abi.ArrayType_static_extension.interfaceType(_self__);
    }
    public static function ifaceIndir(_self__:ArrayType):Bool {
        return stdgo._internal.internal.abi.Abi.ArrayType_static_extension.ifaceIndir(_self__);
    }
    public static function hasName(_self__:ArrayType):Bool {
        return stdgo._internal.internal.abi.Abi.ArrayType_static_extension.hasName(_self__);
    }
    public static function gcSlice(_self__:ArrayType, begin:stdgo.GoUIntptr, end:stdgo.GoUIntptr):Array<std.UInt> {
        return [for (i in stdgo._internal.internal.abi.Abi.ArrayType_static_extension.gcSlice(_self__, begin, end)) i];
    }
    public static function funcType(_self__:ArrayType):stdgo._internal.internal.abi.Abi.FuncType {
        return stdgo._internal.internal.abi.Abi.ArrayType_static_extension.funcType(_self__);
    }
    public static function fieldAlign(_self__:ArrayType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi.ArrayType_static_extension.fieldAlign(_self__);
    }
    public static function exportedMethods(_self__:ArrayType):Array<stdgo._internal.internal.abi.Abi.Method> {
        return [for (i in stdgo._internal.internal.abi.Abi.ArrayType_static_extension.exportedMethods(_self__)) i];
    }
    public static function common(_self__:ArrayType):stdgo._internal.internal.abi.Abi.Type_ {
        return stdgo._internal.internal.abi.Abi.ArrayType_static_extension.common(_self__);
    }
    public static function chanDir(_self__:ArrayType):stdgo._internal.internal.abi.Abi.ChanDir {
        return stdgo._internal.internal.abi.Abi.ArrayType_static_extension.chanDir(_self__);
    }
    public static function arrayType(_self__:ArrayType):stdgo._internal.internal.abi.Abi.ArrayType {
        return stdgo._internal.internal.abi.Abi.ArrayType_static_extension.arrayType(_self__);
    }
    public static function align(_self__:ArrayType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi.ArrayType_static_extension.align(_self__);
    }
}
class ChanType_static_extension {
    public static function uncommon(_self__:ChanType):stdgo._internal.internal.abi.Abi.UncommonType {
        return stdgo._internal.internal.abi.Abi.ChanType_static_extension.uncommon(_self__);
    }
    public static function structType(_self__:ChanType):stdgo._internal.internal.abi.Abi.StructType {
        return stdgo._internal.internal.abi.Abi.ChanType_static_extension.structType(_self__);
    }
    public static function size(_self__:ChanType):stdgo.GoUIntptr {
        return stdgo._internal.internal.abi.Abi.ChanType_static_extension.size(_self__);
    }
    public static function pointers(_self__:ChanType):Bool {
        return stdgo._internal.internal.abi.Abi.ChanType_static_extension.pointers(_self__);
    }
    public static function numMethod(_self__:ChanType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi.ChanType_static_extension.numMethod(_self__);
    }
    public static function mapType(_self__:ChanType):stdgo._internal.internal.abi.Abi.MapType {
        return stdgo._internal.internal.abi.Abi.ChanType_static_extension.mapType(_self__);
    }
    public static function len(_self__:ChanType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi.ChanType_static_extension.len(_self__);
    }
    public static function kind(_self__:ChanType):stdgo._internal.internal.abi.Abi.Kind {
        return stdgo._internal.internal.abi.Abi.ChanType_static_extension.kind(_self__);
    }
    public static function key(_self__:ChanType):stdgo._internal.internal.abi.Abi.Type_ {
        return stdgo._internal.internal.abi.Abi.ChanType_static_extension.key(_self__);
    }
    public static function isDirectIface(_self__:ChanType):Bool {
        return stdgo._internal.internal.abi.Abi.ChanType_static_extension.isDirectIface(_self__);
    }
    public static function interfaceType(_self__:ChanType):stdgo._internal.internal.abi.Abi.InterfaceType {
        return stdgo._internal.internal.abi.Abi.ChanType_static_extension.interfaceType(_self__);
    }
    public static function ifaceIndir(_self__:ChanType):Bool {
        return stdgo._internal.internal.abi.Abi.ChanType_static_extension.ifaceIndir(_self__);
    }
    public static function hasName(_self__:ChanType):Bool {
        return stdgo._internal.internal.abi.Abi.ChanType_static_extension.hasName(_self__);
    }
    public static function gcSlice(_self__:ChanType, begin:stdgo.GoUIntptr, end:stdgo.GoUIntptr):Array<std.UInt> {
        return [for (i in stdgo._internal.internal.abi.Abi.ChanType_static_extension.gcSlice(_self__, begin, end)) i];
    }
    public static function funcType(_self__:ChanType):stdgo._internal.internal.abi.Abi.FuncType {
        return stdgo._internal.internal.abi.Abi.ChanType_static_extension.funcType(_self__);
    }
    public static function fieldAlign(_self__:ChanType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi.ChanType_static_extension.fieldAlign(_self__);
    }
    public static function exportedMethods(_self__:ChanType):Array<stdgo._internal.internal.abi.Abi.Method> {
        return [for (i in stdgo._internal.internal.abi.Abi.ChanType_static_extension.exportedMethods(_self__)) i];
    }
    public static function common(_self__:ChanType):stdgo._internal.internal.abi.Abi.Type_ {
        return stdgo._internal.internal.abi.Abi.ChanType_static_extension.common(_self__);
    }
    public static function chanDir(_self__:ChanType):stdgo._internal.internal.abi.Abi.ChanDir {
        return stdgo._internal.internal.abi.Abi.ChanType_static_extension.chanDir(_self__);
    }
    public static function arrayType(_self__:ChanType):stdgo._internal.internal.abi.Abi.ArrayType {
        return stdgo._internal.internal.abi.Abi.ChanType_static_extension.arrayType(_self__);
    }
    public static function align(_self__:ChanType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi.ChanType_static_extension.align(_self__);
    }
}
class T_structTypeUncommon_static_extension {
    public static function uncommon(_self__:T_structTypeUncommon):stdgo._internal.internal.abi.Abi.UncommonType {
        return stdgo._internal.internal.abi.Abi.T_structTypeUncommon_static_extension.uncommon(_self__);
    }
    public static function size(_self__:T_structTypeUncommon):stdgo.GoUIntptr {
        return stdgo._internal.internal.abi.Abi.T_structTypeUncommon_static_extension.size(_self__);
    }
    public static function pointers(_self__:T_structTypeUncommon):Bool {
        return stdgo._internal.internal.abi.Abi.T_structTypeUncommon_static_extension.pointers(_self__);
    }
    public static function numMethod(_self__:T_structTypeUncommon):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi.T_structTypeUncommon_static_extension.numMethod(_self__);
    }
    public static function mapType(_self__:T_structTypeUncommon):stdgo._internal.internal.abi.Abi.MapType {
        return stdgo._internal.internal.abi.Abi.T_structTypeUncommon_static_extension.mapType(_self__);
    }
    public static function len(_self__:T_structTypeUncommon):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi.T_structTypeUncommon_static_extension.len(_self__);
    }
    public static function kind(_self__:T_structTypeUncommon):stdgo._internal.internal.abi.Abi.Kind {
        return stdgo._internal.internal.abi.Abi.T_structTypeUncommon_static_extension.kind(_self__);
    }
    public static function key(_self__:T_structTypeUncommon):stdgo._internal.internal.abi.Abi.Type_ {
        return stdgo._internal.internal.abi.Abi.T_structTypeUncommon_static_extension.key(_self__);
    }
    public static function isDirectIface(_self__:T_structTypeUncommon):Bool {
        return stdgo._internal.internal.abi.Abi.T_structTypeUncommon_static_extension.isDirectIface(_self__);
    }
    public static function interfaceType(_self__:T_structTypeUncommon):stdgo._internal.internal.abi.Abi.InterfaceType {
        return stdgo._internal.internal.abi.Abi.T_structTypeUncommon_static_extension.interfaceType(_self__);
    }
    public static function ifaceIndir(_self__:T_structTypeUncommon):Bool {
        return stdgo._internal.internal.abi.Abi.T_structTypeUncommon_static_extension.ifaceIndir(_self__);
    }
    public static function hasName(_self__:T_structTypeUncommon):Bool {
        return stdgo._internal.internal.abi.Abi.T_structTypeUncommon_static_extension.hasName(_self__);
    }
    public static function gcSlice(_self__:T_structTypeUncommon, begin:stdgo.GoUIntptr, end:stdgo.GoUIntptr):Array<std.UInt> {
        return [for (i in stdgo._internal.internal.abi.Abi.T_structTypeUncommon_static_extension.gcSlice(_self__, begin, end)) i];
    }
    public static function funcType(_self__:T_structTypeUncommon):stdgo._internal.internal.abi.Abi.FuncType {
        return stdgo._internal.internal.abi.Abi.T_structTypeUncommon_static_extension.funcType(_self__);
    }
    public static function fieldAlign(_self__:T_structTypeUncommon):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi.T_structTypeUncommon_static_extension.fieldAlign(_self__);
    }
    public static function exportedMethods(_self__:T_structTypeUncommon):Array<stdgo._internal.internal.abi.Abi.Method> {
        return [for (i in stdgo._internal.internal.abi.Abi.T_structTypeUncommon_static_extension.exportedMethods(_self__)) i];
    }
    public static function elem(_self__:T_structTypeUncommon):stdgo._internal.internal.abi.Abi.Type_ {
        return stdgo._internal.internal.abi.Abi.T_structTypeUncommon_static_extension.elem(_self__);
    }
    public static function common(_self__:T_structTypeUncommon):stdgo._internal.internal.abi.Abi.Type_ {
        return stdgo._internal.internal.abi.Abi.T_structTypeUncommon_static_extension.common(_self__);
    }
    public static function chanDir(_self__:T_structTypeUncommon):stdgo._internal.internal.abi.Abi.ChanDir {
        return stdgo._internal.internal.abi.Abi.T_structTypeUncommon_static_extension.chanDir(_self__);
    }
    public static function arrayType(_self__:T_structTypeUncommon):stdgo._internal.internal.abi.Abi.ArrayType {
        return stdgo._internal.internal.abi.Abi.T_structTypeUncommon_static_extension.arrayType(_self__);
    }
    public static function align(_self__:T_structTypeUncommon):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi.T_structTypeUncommon_static_extension.align(_self__);
    }
}
class InterfaceType_static_extension {
    static public function numMethod(t:InterfaceType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi.InterfaceType_static_extension.numMethod(t);
    }
    public static function uncommon(_self__:InterfaceType):stdgo._internal.internal.abi.Abi.UncommonType {
        return stdgo._internal.internal.abi.Abi.InterfaceType_static_extension.uncommon(_self__);
    }
    public static function structType(_self__:InterfaceType):stdgo._internal.internal.abi.Abi.StructType {
        return stdgo._internal.internal.abi.Abi.InterfaceType_static_extension.structType(_self__);
    }
    public static function size(_self__:InterfaceType):stdgo.GoUIntptr {
        return stdgo._internal.internal.abi.Abi.InterfaceType_static_extension.size(_self__);
    }
    public static function pointers(_self__:InterfaceType):Bool {
        return stdgo._internal.internal.abi.Abi.InterfaceType_static_extension.pointers(_self__);
    }
    public static function mapType(_self__:InterfaceType):stdgo._internal.internal.abi.Abi.MapType {
        return stdgo._internal.internal.abi.Abi.InterfaceType_static_extension.mapType(_self__);
    }
    public static function len(_self__:InterfaceType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi.InterfaceType_static_extension.len(_self__);
    }
    public static function kind(_self__:InterfaceType):stdgo._internal.internal.abi.Abi.Kind {
        return stdgo._internal.internal.abi.Abi.InterfaceType_static_extension.kind(_self__);
    }
    public static function key(_self__:InterfaceType):stdgo._internal.internal.abi.Abi.Type_ {
        return stdgo._internal.internal.abi.Abi.InterfaceType_static_extension.key(_self__);
    }
    public static function isDirectIface(_self__:InterfaceType):Bool {
        return stdgo._internal.internal.abi.Abi.InterfaceType_static_extension.isDirectIface(_self__);
    }
    public static function interfaceType(_self__:InterfaceType):stdgo._internal.internal.abi.Abi.InterfaceType {
        return stdgo._internal.internal.abi.Abi.InterfaceType_static_extension.interfaceType(_self__);
    }
    public static function ifaceIndir(_self__:InterfaceType):Bool {
        return stdgo._internal.internal.abi.Abi.InterfaceType_static_extension.ifaceIndir(_self__);
    }
    public static function hasName(_self__:InterfaceType):Bool {
        return stdgo._internal.internal.abi.Abi.InterfaceType_static_extension.hasName(_self__);
    }
    public static function gcSlice(_self__:InterfaceType, begin:stdgo.GoUIntptr, end:stdgo.GoUIntptr):Array<std.UInt> {
        return [for (i in stdgo._internal.internal.abi.Abi.InterfaceType_static_extension.gcSlice(_self__, begin, end)) i];
    }
    public static function funcType(_self__:InterfaceType):stdgo._internal.internal.abi.Abi.FuncType {
        return stdgo._internal.internal.abi.Abi.InterfaceType_static_extension.funcType(_self__);
    }
    public static function fieldAlign(_self__:InterfaceType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi.InterfaceType_static_extension.fieldAlign(_self__);
    }
    public static function exportedMethods(_self__:InterfaceType):Array<stdgo._internal.internal.abi.Abi.Method> {
        return [for (i in stdgo._internal.internal.abi.Abi.InterfaceType_static_extension.exportedMethods(_self__)) i];
    }
    public static function elem(_self__:InterfaceType):stdgo._internal.internal.abi.Abi.Type_ {
        return stdgo._internal.internal.abi.Abi.InterfaceType_static_extension.elem(_self__);
    }
    public static function common(_self__:InterfaceType):stdgo._internal.internal.abi.Abi.Type_ {
        return stdgo._internal.internal.abi.Abi.InterfaceType_static_extension.common(_self__);
    }
    public static function chanDir(_self__:InterfaceType):stdgo._internal.internal.abi.Abi.ChanDir {
        return stdgo._internal.internal.abi.Abi.InterfaceType_static_extension.chanDir(_self__);
    }
    public static function arrayType(_self__:InterfaceType):stdgo._internal.internal.abi.Abi.ArrayType {
        return stdgo._internal.internal.abi.Abi.InterfaceType_static_extension.arrayType(_self__);
    }
    public static function align(_self__:InterfaceType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi.InterfaceType_static_extension.align(_self__);
    }
}
class MapType_static_extension {
    static public function hashMightPanic(mt:MapType):Bool {
        return stdgo._internal.internal.abi.Abi.MapType_static_extension.hashMightPanic(mt);
    }
    static public function needKeyUpdate(mt:MapType):Bool {
        return stdgo._internal.internal.abi.Abi.MapType_static_extension.needKeyUpdate(mt);
    }
    static public function reflexiveKey(mt:MapType):Bool {
        return stdgo._internal.internal.abi.Abi.MapType_static_extension.reflexiveKey(mt);
    }
    static public function indirectElem(mt:MapType):Bool {
        return stdgo._internal.internal.abi.Abi.MapType_static_extension.indirectElem(mt);
    }
    static public function indirectKey(mt:MapType):Bool {
        return stdgo._internal.internal.abi.Abi.MapType_static_extension.indirectKey(mt);
    }
    public static function uncommon(_self__:MapType):stdgo._internal.internal.abi.Abi.UncommonType {
        return stdgo._internal.internal.abi.Abi.MapType_static_extension.uncommon(_self__);
    }
    public static function structType(_self__:MapType):stdgo._internal.internal.abi.Abi.StructType {
        return stdgo._internal.internal.abi.Abi.MapType_static_extension.structType(_self__);
    }
    public static function size(_self__:MapType):stdgo.GoUIntptr {
        return stdgo._internal.internal.abi.Abi.MapType_static_extension.size(_self__);
    }
    public static function pointers(_self__:MapType):Bool {
        return stdgo._internal.internal.abi.Abi.MapType_static_extension.pointers(_self__);
    }
    public static function numMethod(_self__:MapType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi.MapType_static_extension.numMethod(_self__);
    }
    public static function mapType(_self__:MapType):stdgo._internal.internal.abi.Abi.MapType {
        return stdgo._internal.internal.abi.Abi.MapType_static_extension.mapType(_self__);
    }
    public static function len(_self__:MapType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi.MapType_static_extension.len(_self__);
    }
    public static function kind(_self__:MapType):stdgo._internal.internal.abi.Abi.Kind {
        return stdgo._internal.internal.abi.Abi.MapType_static_extension.kind(_self__);
    }
    public static function isDirectIface(_self__:MapType):Bool {
        return stdgo._internal.internal.abi.Abi.MapType_static_extension.isDirectIface(_self__);
    }
    public static function interfaceType(_self__:MapType):stdgo._internal.internal.abi.Abi.InterfaceType {
        return stdgo._internal.internal.abi.Abi.MapType_static_extension.interfaceType(_self__);
    }
    public static function ifaceIndir(_self__:MapType):Bool {
        return stdgo._internal.internal.abi.Abi.MapType_static_extension.ifaceIndir(_self__);
    }
    public static function hasName(_self__:MapType):Bool {
        return stdgo._internal.internal.abi.Abi.MapType_static_extension.hasName(_self__);
    }
    public static function gcSlice(_self__:MapType, begin:stdgo.GoUIntptr, end:stdgo.GoUIntptr):Array<std.UInt> {
        return [for (i in stdgo._internal.internal.abi.Abi.MapType_static_extension.gcSlice(_self__, begin, end)) i];
    }
    public static function funcType(_self__:MapType):stdgo._internal.internal.abi.Abi.FuncType {
        return stdgo._internal.internal.abi.Abi.MapType_static_extension.funcType(_self__);
    }
    public static function fieldAlign(_self__:MapType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi.MapType_static_extension.fieldAlign(_self__);
    }
    public static function exportedMethods(_self__:MapType):Array<stdgo._internal.internal.abi.Abi.Method> {
        return [for (i in stdgo._internal.internal.abi.Abi.MapType_static_extension.exportedMethods(_self__)) i];
    }
    public static function common(_self__:MapType):stdgo._internal.internal.abi.Abi.Type_ {
        return stdgo._internal.internal.abi.Abi.MapType_static_extension.common(_self__);
    }
    public static function chanDir(_self__:MapType):stdgo._internal.internal.abi.Abi.ChanDir {
        return stdgo._internal.internal.abi.Abi.MapType_static_extension.chanDir(_self__);
    }
    public static function arrayType(_self__:MapType):stdgo._internal.internal.abi.Abi.ArrayType {
        return stdgo._internal.internal.abi.Abi.MapType_static_extension.arrayType(_self__);
    }
    public static function align(_self__:MapType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi.MapType_static_extension.align(_self__);
    }
}
class SliceType_static_extension {
    public static function uncommon(_self__:SliceType):stdgo._internal.internal.abi.Abi.UncommonType {
        return stdgo._internal.internal.abi.Abi.SliceType_static_extension.uncommon(_self__);
    }
    public static function structType(_self__:SliceType):stdgo._internal.internal.abi.Abi.StructType {
        return stdgo._internal.internal.abi.Abi.SliceType_static_extension.structType(_self__);
    }
    public static function size(_self__:SliceType):stdgo.GoUIntptr {
        return stdgo._internal.internal.abi.Abi.SliceType_static_extension.size(_self__);
    }
    public static function pointers(_self__:SliceType):Bool {
        return stdgo._internal.internal.abi.Abi.SliceType_static_extension.pointers(_self__);
    }
    public static function numMethod(_self__:SliceType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi.SliceType_static_extension.numMethod(_self__);
    }
    public static function mapType(_self__:SliceType):stdgo._internal.internal.abi.Abi.MapType {
        return stdgo._internal.internal.abi.Abi.SliceType_static_extension.mapType(_self__);
    }
    public static function len(_self__:SliceType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi.SliceType_static_extension.len(_self__);
    }
    public static function kind(_self__:SliceType):stdgo._internal.internal.abi.Abi.Kind {
        return stdgo._internal.internal.abi.Abi.SliceType_static_extension.kind(_self__);
    }
    public static function key(_self__:SliceType):stdgo._internal.internal.abi.Abi.Type_ {
        return stdgo._internal.internal.abi.Abi.SliceType_static_extension.key(_self__);
    }
    public static function isDirectIface(_self__:SliceType):Bool {
        return stdgo._internal.internal.abi.Abi.SliceType_static_extension.isDirectIface(_self__);
    }
    public static function interfaceType(_self__:SliceType):stdgo._internal.internal.abi.Abi.InterfaceType {
        return stdgo._internal.internal.abi.Abi.SliceType_static_extension.interfaceType(_self__);
    }
    public static function ifaceIndir(_self__:SliceType):Bool {
        return stdgo._internal.internal.abi.Abi.SliceType_static_extension.ifaceIndir(_self__);
    }
    public static function hasName(_self__:SliceType):Bool {
        return stdgo._internal.internal.abi.Abi.SliceType_static_extension.hasName(_self__);
    }
    public static function gcSlice(_self__:SliceType, begin:stdgo.GoUIntptr, end:stdgo.GoUIntptr):Array<std.UInt> {
        return [for (i in stdgo._internal.internal.abi.Abi.SliceType_static_extension.gcSlice(_self__, begin, end)) i];
    }
    public static function funcType(_self__:SliceType):stdgo._internal.internal.abi.Abi.FuncType {
        return stdgo._internal.internal.abi.Abi.SliceType_static_extension.funcType(_self__);
    }
    public static function fieldAlign(_self__:SliceType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi.SliceType_static_extension.fieldAlign(_self__);
    }
    public static function exportedMethods(_self__:SliceType):Array<stdgo._internal.internal.abi.Abi.Method> {
        return [for (i in stdgo._internal.internal.abi.Abi.SliceType_static_extension.exportedMethods(_self__)) i];
    }
    public static function common(_self__:SliceType):stdgo._internal.internal.abi.Abi.Type_ {
        return stdgo._internal.internal.abi.Abi.SliceType_static_extension.common(_self__);
    }
    public static function chanDir(_self__:SliceType):stdgo._internal.internal.abi.Abi.ChanDir {
        return stdgo._internal.internal.abi.Abi.SliceType_static_extension.chanDir(_self__);
    }
    public static function arrayType(_self__:SliceType):stdgo._internal.internal.abi.Abi.ArrayType {
        return stdgo._internal.internal.abi.Abi.SliceType_static_extension.arrayType(_self__);
    }
    public static function align(_self__:SliceType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi.SliceType_static_extension.align(_self__);
    }
}
class FuncType_static_extension {
    static public function isVariadic(t:FuncType):Bool {
        return stdgo._internal.internal.abi.Abi.FuncType_static_extension.isVariadic(t);
    }
    static public function outSlice(t:FuncType):Array<Type_> {
        return [for (i in stdgo._internal.internal.abi.Abi.FuncType_static_extension.outSlice(t)) i];
    }
    static public function inSlice(t:FuncType):Array<Type_> {
        return [for (i in stdgo._internal.internal.abi.Abi.FuncType_static_extension.inSlice(t)) i];
    }
    static public function out(t:FuncType, i:StdTypes.Int):Type_ {
        return stdgo._internal.internal.abi.Abi.FuncType_static_extension.out(t, i);
    }
    static public function numOut(t:FuncType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi.FuncType_static_extension.numOut(t);
    }
    static public function numIn(t:FuncType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi.FuncType_static_extension.numIn(t);
    }
    static public function in_(t:FuncType, i:StdTypes.Int):Type_ {
        return stdgo._internal.internal.abi.Abi.FuncType_static_extension.in_(t, i);
    }
    public static function uncommon(_self__:FuncType):stdgo._internal.internal.abi.Abi.UncommonType {
        return stdgo._internal.internal.abi.Abi.FuncType_static_extension.uncommon(_self__);
    }
    public static function structType(_self__:FuncType):stdgo._internal.internal.abi.Abi.StructType {
        return stdgo._internal.internal.abi.Abi.FuncType_static_extension.structType(_self__);
    }
    public static function size(_self__:FuncType):stdgo.GoUIntptr {
        return stdgo._internal.internal.abi.Abi.FuncType_static_extension.size(_self__);
    }
    public static function pointers(_self__:FuncType):Bool {
        return stdgo._internal.internal.abi.Abi.FuncType_static_extension.pointers(_self__);
    }
    public static function numMethod(_self__:FuncType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi.FuncType_static_extension.numMethod(_self__);
    }
    public static function mapType(_self__:FuncType):stdgo._internal.internal.abi.Abi.MapType {
        return stdgo._internal.internal.abi.Abi.FuncType_static_extension.mapType(_self__);
    }
    public static function len(_self__:FuncType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi.FuncType_static_extension.len(_self__);
    }
    public static function kind(_self__:FuncType):stdgo._internal.internal.abi.Abi.Kind {
        return stdgo._internal.internal.abi.Abi.FuncType_static_extension.kind(_self__);
    }
    public static function key(_self__:FuncType):stdgo._internal.internal.abi.Abi.Type_ {
        return stdgo._internal.internal.abi.Abi.FuncType_static_extension.key(_self__);
    }
    public static function isDirectIface(_self__:FuncType):Bool {
        return stdgo._internal.internal.abi.Abi.FuncType_static_extension.isDirectIface(_self__);
    }
    public static function interfaceType(_self__:FuncType):stdgo._internal.internal.abi.Abi.InterfaceType {
        return stdgo._internal.internal.abi.Abi.FuncType_static_extension.interfaceType(_self__);
    }
    public static function ifaceIndir(_self__:FuncType):Bool {
        return stdgo._internal.internal.abi.Abi.FuncType_static_extension.ifaceIndir(_self__);
    }
    public static function hasName(_self__:FuncType):Bool {
        return stdgo._internal.internal.abi.Abi.FuncType_static_extension.hasName(_self__);
    }
    public static function gcSlice(_self__:FuncType, begin:stdgo.GoUIntptr, end:stdgo.GoUIntptr):Array<std.UInt> {
        return [for (i in stdgo._internal.internal.abi.Abi.FuncType_static_extension.gcSlice(_self__, begin, end)) i];
    }
    public static function funcType(_self__:FuncType):stdgo._internal.internal.abi.Abi.FuncType {
        return stdgo._internal.internal.abi.Abi.FuncType_static_extension.funcType(_self__);
    }
    public static function fieldAlign(_self__:FuncType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi.FuncType_static_extension.fieldAlign(_self__);
    }
    public static function exportedMethods(_self__:FuncType):Array<stdgo._internal.internal.abi.Abi.Method> {
        return [for (i in stdgo._internal.internal.abi.Abi.FuncType_static_extension.exportedMethods(_self__)) i];
    }
    public static function elem(_self__:FuncType):stdgo._internal.internal.abi.Abi.Type_ {
        return stdgo._internal.internal.abi.Abi.FuncType_static_extension.elem(_self__);
    }
    public static function common(_self__:FuncType):stdgo._internal.internal.abi.Abi.Type_ {
        return stdgo._internal.internal.abi.Abi.FuncType_static_extension.common(_self__);
    }
    public static function chanDir(_self__:FuncType):stdgo._internal.internal.abi.Abi.ChanDir {
        return stdgo._internal.internal.abi.Abi.FuncType_static_extension.chanDir(_self__);
    }
    public static function arrayType(_self__:FuncType):stdgo._internal.internal.abi.Abi.ArrayType {
        return stdgo._internal.internal.abi.Abi.FuncType_static_extension.arrayType(_self__);
    }
    public static function align(_self__:FuncType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi.FuncType_static_extension.align(_self__);
    }
}
class PtrType_static_extension {
    public static function uncommon(_self__:PtrType):stdgo._internal.internal.abi.Abi.UncommonType {
        return stdgo._internal.internal.abi.Abi.PtrType_static_extension.uncommon(_self__);
    }
    public static function structType(_self__:PtrType):stdgo._internal.internal.abi.Abi.StructType {
        return stdgo._internal.internal.abi.Abi.PtrType_static_extension.structType(_self__);
    }
    public static function size(_self__:PtrType):stdgo.GoUIntptr {
        return stdgo._internal.internal.abi.Abi.PtrType_static_extension.size(_self__);
    }
    public static function pointers(_self__:PtrType):Bool {
        return stdgo._internal.internal.abi.Abi.PtrType_static_extension.pointers(_self__);
    }
    public static function numMethod(_self__:PtrType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi.PtrType_static_extension.numMethod(_self__);
    }
    public static function mapType(_self__:PtrType):stdgo._internal.internal.abi.Abi.MapType {
        return stdgo._internal.internal.abi.Abi.PtrType_static_extension.mapType(_self__);
    }
    public static function len(_self__:PtrType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi.PtrType_static_extension.len(_self__);
    }
    public static function kind(_self__:PtrType):stdgo._internal.internal.abi.Abi.Kind {
        return stdgo._internal.internal.abi.Abi.PtrType_static_extension.kind(_self__);
    }
    public static function key(_self__:PtrType):stdgo._internal.internal.abi.Abi.Type_ {
        return stdgo._internal.internal.abi.Abi.PtrType_static_extension.key(_self__);
    }
    public static function isDirectIface(_self__:PtrType):Bool {
        return stdgo._internal.internal.abi.Abi.PtrType_static_extension.isDirectIface(_self__);
    }
    public static function interfaceType(_self__:PtrType):stdgo._internal.internal.abi.Abi.InterfaceType {
        return stdgo._internal.internal.abi.Abi.PtrType_static_extension.interfaceType(_self__);
    }
    public static function ifaceIndir(_self__:PtrType):Bool {
        return stdgo._internal.internal.abi.Abi.PtrType_static_extension.ifaceIndir(_self__);
    }
    public static function hasName(_self__:PtrType):Bool {
        return stdgo._internal.internal.abi.Abi.PtrType_static_extension.hasName(_self__);
    }
    public static function gcSlice(_self__:PtrType, begin:stdgo.GoUIntptr, end:stdgo.GoUIntptr):Array<std.UInt> {
        return [for (i in stdgo._internal.internal.abi.Abi.PtrType_static_extension.gcSlice(_self__, begin, end)) i];
    }
    public static function funcType(_self__:PtrType):stdgo._internal.internal.abi.Abi.FuncType {
        return stdgo._internal.internal.abi.Abi.PtrType_static_extension.funcType(_self__);
    }
    public static function fieldAlign(_self__:PtrType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi.PtrType_static_extension.fieldAlign(_self__);
    }
    public static function exportedMethods(_self__:PtrType):Array<stdgo._internal.internal.abi.Abi.Method> {
        return [for (i in stdgo._internal.internal.abi.Abi.PtrType_static_extension.exportedMethods(_self__)) i];
    }
    public static function common(_self__:PtrType):stdgo._internal.internal.abi.Abi.Type_ {
        return stdgo._internal.internal.abi.Abi.PtrType_static_extension.common(_self__);
    }
    public static function chanDir(_self__:PtrType):stdgo._internal.internal.abi.Abi.ChanDir {
        return stdgo._internal.internal.abi.Abi.PtrType_static_extension.chanDir(_self__);
    }
    public static function arrayType(_self__:PtrType):stdgo._internal.internal.abi.Abi.ArrayType {
        return stdgo._internal.internal.abi.Abi.PtrType_static_extension.arrayType(_self__);
    }
    public static function align(_self__:PtrType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi.PtrType_static_extension.align(_self__);
    }
}
class StructField_static_extension {
    static public function embedded(f:StructField):Bool {
        return stdgo._internal.internal.abi.Abi.StructField_static_extension.embedded(f);
    }
}
class StructType_static_extension {
    public static function uncommon(_self__:StructType):stdgo._internal.internal.abi.Abi.UncommonType {
        return stdgo._internal.internal.abi.Abi.StructType_static_extension.uncommon(_self__);
    }
    public static function structType(_self__:StructType):stdgo._internal.internal.abi.Abi.StructType {
        return stdgo._internal.internal.abi.Abi.StructType_static_extension.structType(_self__);
    }
    public static function size(_self__:StructType):stdgo.GoUIntptr {
        return stdgo._internal.internal.abi.Abi.StructType_static_extension.size(_self__);
    }
    public static function pointers(_self__:StructType):Bool {
        return stdgo._internal.internal.abi.Abi.StructType_static_extension.pointers(_self__);
    }
    public static function numMethod(_self__:StructType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi.StructType_static_extension.numMethod(_self__);
    }
    public static function mapType(_self__:StructType):stdgo._internal.internal.abi.Abi.MapType {
        return stdgo._internal.internal.abi.Abi.StructType_static_extension.mapType(_self__);
    }
    public static function len(_self__:StructType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi.StructType_static_extension.len(_self__);
    }
    public static function kind(_self__:StructType):stdgo._internal.internal.abi.Abi.Kind {
        return stdgo._internal.internal.abi.Abi.StructType_static_extension.kind(_self__);
    }
    public static function key(_self__:StructType):stdgo._internal.internal.abi.Abi.Type_ {
        return stdgo._internal.internal.abi.Abi.StructType_static_extension.key(_self__);
    }
    public static function isDirectIface(_self__:StructType):Bool {
        return stdgo._internal.internal.abi.Abi.StructType_static_extension.isDirectIface(_self__);
    }
    public static function interfaceType(_self__:StructType):stdgo._internal.internal.abi.Abi.InterfaceType {
        return stdgo._internal.internal.abi.Abi.StructType_static_extension.interfaceType(_self__);
    }
    public static function ifaceIndir(_self__:StructType):Bool {
        return stdgo._internal.internal.abi.Abi.StructType_static_extension.ifaceIndir(_self__);
    }
    public static function hasName(_self__:StructType):Bool {
        return stdgo._internal.internal.abi.Abi.StructType_static_extension.hasName(_self__);
    }
    public static function gcSlice(_self__:StructType, begin:stdgo.GoUIntptr, end:stdgo.GoUIntptr):Array<std.UInt> {
        return [for (i in stdgo._internal.internal.abi.Abi.StructType_static_extension.gcSlice(_self__, begin, end)) i];
    }
    public static function funcType(_self__:StructType):stdgo._internal.internal.abi.Abi.FuncType {
        return stdgo._internal.internal.abi.Abi.StructType_static_extension.funcType(_self__);
    }
    public static function fieldAlign(_self__:StructType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi.StructType_static_extension.fieldAlign(_self__);
    }
    public static function exportedMethods(_self__:StructType):Array<stdgo._internal.internal.abi.Abi.Method> {
        return [for (i in stdgo._internal.internal.abi.Abi.StructType_static_extension.exportedMethods(_self__)) i];
    }
    public static function elem(_self__:StructType):stdgo._internal.internal.abi.Abi.Type_ {
        return stdgo._internal.internal.abi.Abi.StructType_static_extension.elem(_self__);
    }
    public static function common(_self__:StructType):stdgo._internal.internal.abi.Abi.Type_ {
        return stdgo._internal.internal.abi.Abi.StructType_static_extension.common(_self__);
    }
    public static function chanDir(_self__:StructType):stdgo._internal.internal.abi.Abi.ChanDir {
        return stdgo._internal.internal.abi.Abi.StructType_static_extension.chanDir(_self__);
    }
    public static function arrayType(_self__:StructType):stdgo._internal.internal.abi.Abi.ArrayType {
        return stdgo._internal.internal.abi.Abi.StructType_static_extension.arrayType(_self__);
    }
    public static function align(_self__:StructType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi.StructType_static_extension.align(_self__);
    }
}
class Name_static_extension {
    static public function tag(n:Name):String {
        return stdgo._internal.internal.abi.Abi.Name_static_extension.tag(n);
    }
    static public function name(n:Name):String {
        return stdgo._internal.internal.abi.Abi.Name_static_extension.name(n);
    }
    static public function isBlank(n:Name):Bool {
        return stdgo._internal.internal.abi.Abi.Name_static_extension.isBlank(n);
    }
    static public function readVarint(n:Name, off:StdTypes.Int):stdgo.Tuple<StdTypes.Int, StdTypes.Int> {
        return {
            final obj = stdgo._internal.internal.abi.Abi.Name_static_extension.readVarint(n, off);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function isEmbedded(n:Name):Bool {
        return stdgo._internal.internal.abi.Abi.Name_static_extension.isEmbedded(n);
    }
    static public function hasTag(n:Name):Bool {
        return stdgo._internal.internal.abi.Abi.Name_static_extension.hasTag(n);
    }
    static public function isExported(n:Name):Bool {
        return stdgo._internal.internal.abi.Abi.Name_static_extension.isExported(n);
    }
    static public function data(n:Name, off:StdTypes.Int):stdgo.Pointer<StdTypes.Int> {
        return stdgo._internal.internal.abi.Abi.Name_static_extension.data(n, off);
    }
    static public function dataChecked(n:Name, off:StdTypes.Int, whySafe:String):stdgo.Pointer<StdTypes.Int> {
        return stdgo._internal.internal.abi.Abi.Name_static_extension.dataChecked(n, off, whySafe);
    }
}
class IntArgRegBitmap_static_extension {
    static public function get(b:IntArgRegBitmap, i:StdTypes.Int):Bool {
        return stdgo._internal.internal.abi.Abi.IntArgRegBitmap_static_extension.get(b, i);
    }
    static public function set(b:IntArgRegBitmap, i:StdTypes.Int):Void {
        stdgo._internal.internal.abi.Abi.IntArgRegBitmap_static_extension.set(b, i);
    }
}
class Kind_static_extension {
    static public function string(k:Kind):String {
        return stdgo._internal.internal.abi.Abi.Kind_static_extension.string(k);
    }
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
