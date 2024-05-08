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
abstract RegArgs(stdgo._internal.internal.abi.Abi.RegArgs) from stdgo._internal.internal.abi.Abi.RegArgs to stdgo._internal.internal.abi.Abi.RegArgs {
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
abstract Offset(stdgo._internal.internal.abi.Abi.Offset) from stdgo._internal.internal.abi.Abi.Offset to stdgo._internal.internal.abi.Abi.Offset {
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
abstract Type_(stdgo._internal.internal.abi.Abi.Type_) from stdgo._internal.internal.abi.Abi.Type_ to stdgo._internal.internal.abi.Abi.Type_ {
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
abstract Method(stdgo._internal.internal.abi.Abi.Method) from stdgo._internal.internal.abi.Abi.Method to stdgo._internal.internal.abi.Abi.Method {
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
abstract UncommonType(stdgo._internal.internal.abi.Abi.UncommonType) from stdgo._internal.internal.abi.Abi.UncommonType to stdgo._internal.internal.abi.Abi.UncommonType {
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
abstract Imethod(stdgo._internal.internal.abi.Abi.Imethod) from stdgo._internal.internal.abi.Abi.Imethod to stdgo._internal.internal.abi.Abi.Imethod {
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
abstract ArrayType(stdgo._internal.internal.abi.Abi.ArrayType) from stdgo._internal.internal.abi.Abi.ArrayType to stdgo._internal.internal.abi.Abi.ArrayType {
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
abstract ChanType(stdgo._internal.internal.abi.Abi.ChanType) from stdgo._internal.internal.abi.Abi.ChanType to stdgo._internal.internal.abi.Abi.ChanType {
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
abstract T_structTypeUncommon(stdgo._internal.internal.abi.Abi.T_structTypeUncommon) from stdgo._internal.internal.abi.Abi.T_structTypeUncommon to stdgo._internal.internal.abi.Abi.T_structTypeUncommon {
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
abstract InterfaceType(stdgo._internal.internal.abi.Abi.InterfaceType) from stdgo._internal.internal.abi.Abi.InterfaceType to stdgo._internal.internal.abi.Abi.InterfaceType {
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
abstract MapType(stdgo._internal.internal.abi.Abi.MapType) from stdgo._internal.internal.abi.Abi.MapType to stdgo._internal.internal.abi.Abi.MapType {
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
abstract SliceType(stdgo._internal.internal.abi.Abi.SliceType) from stdgo._internal.internal.abi.Abi.SliceType to stdgo._internal.internal.abi.Abi.SliceType {
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
abstract FuncType(stdgo._internal.internal.abi.Abi.FuncType) from stdgo._internal.internal.abi.Abi.FuncType to stdgo._internal.internal.abi.Abi.FuncType {
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
abstract PtrType(stdgo._internal.internal.abi.Abi.PtrType) from stdgo._internal.internal.abi.Abi.PtrType to stdgo._internal.internal.abi.Abi.PtrType {
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
abstract StructField(stdgo._internal.internal.abi.Abi.StructField) from stdgo._internal.internal.abi.Abi.StructField to stdgo._internal.internal.abi.Abi.StructField {
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
abstract StructType(stdgo._internal.internal.abi.Abi.StructType) from stdgo._internal.internal.abi.Abi.StructType to stdgo._internal.internal.abi.Abi.StructType {
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
abstract Name(stdgo._internal.internal.abi.Abi.Name) from stdgo._internal.internal.abi.Abi.Name to stdgo._internal.internal.abi.Abi.Name {
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
abstract T_uncommon_43___localname___u(stdgo._internal.internal.abi.Abi.T_uncommon_43___localname___u) from stdgo._internal.internal.abi.Abi.T_uncommon_43___localname___u to stdgo._internal.internal.abi.Abi.T_uncommon_43___localname___u {
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
    public function new(?ptrType:stdgo._internal.internal.abi.Abi.PtrType, ?_u:stdgo._internal.internal.abi.Abi.UncommonType) this = new stdgo._internal.internal.abi.Abi.T_uncommon_43___localname___u(ptrType, _u);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_uncommon_44___localname___u(stdgo._internal.internal.abi.Abi.T_uncommon_44___localname___u) from stdgo._internal.internal.abi.Abi.T_uncommon_44___localname___u to stdgo._internal.internal.abi.Abi.T_uncommon_44___localname___u {
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
    public function new(?funcType:stdgo._internal.internal.abi.Abi.FuncType, ?_u:stdgo._internal.internal.abi.Abi.UncommonType) this = new stdgo._internal.internal.abi.Abi.T_uncommon_44___localname___u(funcType, _u);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_uncommon_45___localname___u(stdgo._internal.internal.abi.Abi.T_uncommon_45___localname___u) from stdgo._internal.internal.abi.Abi.T_uncommon_45___localname___u to stdgo._internal.internal.abi.Abi.T_uncommon_45___localname___u {
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
    public function new(?sliceType:stdgo._internal.internal.abi.Abi.SliceType, ?_u:stdgo._internal.internal.abi.Abi.UncommonType) this = new stdgo._internal.internal.abi.Abi.T_uncommon_45___localname___u(sliceType, _u);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_uncommon_46___localname___u(stdgo._internal.internal.abi.Abi.T_uncommon_46___localname___u) from stdgo._internal.internal.abi.Abi.T_uncommon_46___localname___u to stdgo._internal.internal.abi.Abi.T_uncommon_46___localname___u {
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
    public function new(?arrayType:stdgo._internal.internal.abi.Abi.ArrayType, ?_u:stdgo._internal.internal.abi.Abi.UncommonType) this = new stdgo._internal.internal.abi.Abi.T_uncommon_46___localname___u(arrayType, _u);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_uncommon_47___localname___u(stdgo._internal.internal.abi.Abi.T_uncommon_47___localname___u) from stdgo._internal.internal.abi.Abi.T_uncommon_47___localname___u to stdgo._internal.internal.abi.Abi.T_uncommon_47___localname___u {
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
    public function new(?chanType:stdgo._internal.internal.abi.Abi.ChanType, ?_u:stdgo._internal.internal.abi.Abi.UncommonType) this = new stdgo._internal.internal.abi.Abi.T_uncommon_47___localname___u(chanType, _u);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_uncommon_48___localname___u(stdgo._internal.internal.abi.Abi.T_uncommon_48___localname___u) from stdgo._internal.internal.abi.Abi.T_uncommon_48___localname___u to stdgo._internal.internal.abi.Abi.T_uncommon_48___localname___u {
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
    public function new(?mapType:stdgo._internal.internal.abi.Abi.MapType, ?_u:stdgo._internal.internal.abi.Abi.UncommonType) this = new stdgo._internal.internal.abi.Abi.T_uncommon_48___localname___u(mapType, _u);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_uncommon_49___localname___u(stdgo._internal.internal.abi.Abi.T_uncommon_49___localname___u) from stdgo._internal.internal.abi.Abi.T_uncommon_49___localname___u to stdgo._internal.internal.abi.Abi.T_uncommon_49___localname___u {
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
    public function new(?interfaceType:stdgo._internal.internal.abi.Abi.InterfaceType, ?_u:stdgo._internal.internal.abi.Abi.UncommonType) this = new stdgo._internal.internal.abi.Abi.T_uncommon_49___localname___u(interfaceType, _u);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_uncommon_50___localname___u(stdgo._internal.internal.abi.Abi.T_uncommon_50___localname___u) from stdgo._internal.internal.abi.Abi.T_uncommon_50___localname___u to stdgo._internal.internal.abi.Abi.T_uncommon_50___localname___u {
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
    public function new(?type:stdgo._internal.internal.abi.Abi.Type_, ?_u:stdgo._internal.internal.abi.Abi.UncommonType) this = new stdgo._internal.internal.abi.Abi.T_uncommon_50___localname___u(type, _u);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
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
