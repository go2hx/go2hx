package stdgo;
final intArgRegs : haxe.UInt64 = stdgo._internal.internal.abi.Abi_intargregs.intArgRegs;
final floatArgRegs : haxe.UInt64 = stdgo._internal.internal.abi.Abi_floatargregs.floatArgRegs;
final effectiveFloatRegSize : haxe.UInt64 = stdgo._internal.internal.abi.Abi_effectivefloatregsize.effectiveFloatRegSize;
var funcPCTestFnAddr(get, set) : stdgo.GoUIntptr;
private function get_funcPCTestFnAddr():stdgo.GoUIntptr return stdgo._internal.internal.abi.Abi_funcpctestfnaddr.funcPCTestFnAddr;
private function set_funcPCTestFnAddr(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        stdgo._internal.internal.abi.Abi_funcpctestfnaddr.funcPCTestFnAddr = (v : stdgo.GoUIntptr);
        return v;
    }
final mapBucketCountBits : haxe.UInt64 = stdgo._internal.internal.abi.Abi_mapbucketcountbits.mapBucketCountBits;
final mapBucketCount : haxe.UInt64 = stdgo._internal.internal.abi.Abi_mapbucketcount.mapBucketCount;
final mapMaxKeyBytes : haxe.UInt64 = stdgo._internal.internal.abi.Abi_mapmaxkeybytes.mapMaxKeyBytes;
final mapMaxElemBytes : haxe.UInt64 = stdgo._internal.internal.abi.Abi_mapmaxelembytes.mapMaxElemBytes;
final stackNosplitBase : haxe.UInt64 = stdgo._internal.internal.abi.Abi_stacknosplitbase.stackNosplitBase;
final stackSmall : haxe.UInt64 = stdgo._internal.internal.abi.Abi_stacksmall.stackSmall;
final stackBig : haxe.UInt64 = stdgo._internal.internal.abi.Abi_stackbig.stackBig;
final funcFlagTopFrame : FuncFlag = stdgo._internal.internal.abi.Abi_funcflagtopframe.funcFlagTopFrame;
final funcFlagSPWrite = stdgo._internal.internal.abi.Abi_funcflagspwrite.funcFlagSPWrite;
final funcFlagAsm = stdgo._internal.internal.abi.Abi_funcflagasm.funcFlagAsm;
final funcIDNormal : FuncID = stdgo._internal.internal.abi.Abi_funcidnormal.funcIDNormal;
final funcID_abort = stdgo._internal.internal.abi.Abi_funcid_abort.funcID_abort;
final funcID_asmcgocall = stdgo._internal.internal.abi.Abi_funcid_asmcgocall.funcID_asmcgocall;
final funcID_asyncPreempt = stdgo._internal.internal.abi.Abi_funcid_asyncpreempt.funcID_asyncPreempt;
final funcID_cgocallback = stdgo._internal.internal.abi.Abi_funcid_cgocallback.funcID_cgocallback;
final funcID_debugCallV2 = stdgo._internal.internal.abi.Abi_funcid_debugcallv2.funcID_debugCallV2;
final funcID_gcBgMarkWorker = stdgo._internal.internal.abi.Abi_funcid_gcbgmarkworker.funcID_gcBgMarkWorker;
final funcID_goexit = stdgo._internal.internal.abi.Abi_funcid_goexit.funcID_goexit;
final funcID_gogo = stdgo._internal.internal.abi.Abi_funcid_gogo.funcID_gogo;
final funcID_gopanic = stdgo._internal.internal.abi.Abi_funcid_gopanic.funcID_gopanic;
final funcID_handleAsyncEvent = stdgo._internal.internal.abi.Abi_funcid_handleasyncevent.funcID_handleAsyncEvent;
final funcID_mcall = stdgo._internal.internal.abi.Abi_funcid_mcall.funcID_mcall;
final funcID_morestack = stdgo._internal.internal.abi.Abi_funcid_morestack.funcID_morestack;
final funcID_mstart = stdgo._internal.internal.abi.Abi_funcid_mstart.funcID_mstart;
final funcID_panicwrap = stdgo._internal.internal.abi.Abi_funcid_panicwrap.funcID_panicwrap;
final funcID_rt0_go = stdgo._internal.internal.abi.Abi_funcid_rt0_go.funcID_rt0_go;
final funcID_runfinq = stdgo._internal.internal.abi.Abi_funcid_runfinq.funcID_runfinq;
final funcID_runtime_main = stdgo._internal.internal.abi.Abi_funcid_runtime_main.funcID_runtime_main;
final funcID_sigpanic = stdgo._internal.internal.abi.Abi_funcid_sigpanic.funcID_sigpanic;
final funcID_systemstack = stdgo._internal.internal.abi.Abi_funcid_systemstack.funcID_systemstack;
final funcID_systemstack_switch = stdgo._internal.internal.abi.Abi_funcid_systemstack_switch.funcID_systemstack_switch;
final funcIDWrapper = stdgo._internal.internal.abi.Abi_funcidwrapper.funcIDWrapper;
final argsSizeUnknown : haxe.UInt64 = stdgo._internal.internal.abi.Abi_argssizeunknown.argsSizeUnknown;
final pCDATA_UnsafePoint : haxe.UInt64 = stdgo._internal.internal.abi.Abi_pcdata_unsafepoint.pCDATA_UnsafePoint;
final pCDATA_StackMapIndex : haxe.UInt64 = stdgo._internal.internal.abi.Abi_pcdata_stackmapindex.pCDATA_StackMapIndex;
final pCDATA_InlTreeIndex : haxe.UInt64 = stdgo._internal.internal.abi.Abi_pcdata_inltreeindex.pCDATA_InlTreeIndex;
final pCDATA_ArgLiveIndex : haxe.UInt64 = stdgo._internal.internal.abi.Abi_pcdata_argliveindex.pCDATA_ArgLiveIndex;
final fUNCDATA_ArgsPointerMaps : haxe.UInt64 = stdgo._internal.internal.abi.Abi_funcdata_argspointermaps.fUNCDATA_ArgsPointerMaps;
final fUNCDATA_LocalsPointerMaps : haxe.UInt64 = stdgo._internal.internal.abi.Abi_funcdata_localspointermaps.fUNCDATA_LocalsPointerMaps;
final fUNCDATA_StackObjects : haxe.UInt64 = stdgo._internal.internal.abi.Abi_funcdata_stackobjects.fUNCDATA_StackObjects;
final fUNCDATA_InlTree : haxe.UInt64 = stdgo._internal.internal.abi.Abi_funcdata_inltree.fUNCDATA_InlTree;
final fUNCDATA_OpenCodedDeferInfo : haxe.UInt64 = stdgo._internal.internal.abi.Abi_funcdata_opencodeddeferinfo.fUNCDATA_OpenCodedDeferInfo;
final fUNCDATA_ArgInfo : haxe.UInt64 = stdgo._internal.internal.abi.Abi_funcdata_arginfo.fUNCDATA_ArgInfo;
final fUNCDATA_ArgLiveInfo : haxe.UInt64 = stdgo._internal.internal.abi.Abi_funcdata_argliveinfo.fUNCDATA_ArgLiveInfo;
final fUNCDATA_WrapInfo : haxe.UInt64 = stdgo._internal.internal.abi.Abi_funcdata_wrapinfo.fUNCDATA_WrapInfo;
final unsafePointSafe : haxe.UInt64 = stdgo._internal.internal.abi.Abi_unsafepointsafe.unsafePointSafe;
final unsafePointUnsafe : haxe.UInt64 = stdgo._internal.internal.abi.Abi_unsafepointunsafe.unsafePointUnsafe;
final unsafePointRestart1 : haxe.UInt64 = stdgo._internal.internal.abi.Abi_unsafepointrestart1.unsafePointRestart1;
final unsafePointRestart2 : haxe.UInt64 = stdgo._internal.internal.abi.Abi_unsafepointrestart2.unsafePointRestart2;
final unsafePointRestartAtEntry : haxe.UInt64 = stdgo._internal.internal.abi.Abi_unsafepointrestartatentry.unsafePointRestartAtEntry;
final invalid : Kind = stdgo._internal.internal.abi.Abi_invalid.invalid;
final bool_ = stdgo._internal.internal.abi.Abi_bool_.bool_;
final int_ = stdgo._internal.internal.abi.Abi_int_.int_;
final int8 = stdgo._internal.internal.abi.Abi_int8.int8;
final int16 = stdgo._internal.internal.abi.Abi_int16.int16;
final int32 = stdgo._internal.internal.abi.Abi_int32.int32;
final int64 = stdgo._internal.internal.abi.Abi_int64.int64;
final uint = stdgo._internal.internal.abi.Abi_uint.uint;
final uint8 = stdgo._internal.internal.abi.Abi_uint8.uint8;
final uint16 = stdgo._internal.internal.abi.Abi_uint16.uint16;
final uint32 = stdgo._internal.internal.abi.Abi_uint32.uint32;
final uint64 = stdgo._internal.internal.abi.Abi_uint64.uint64;
final uintptr = stdgo._internal.internal.abi.Abi_uintptr.uintptr;
final float32 = stdgo._internal.internal.abi.Abi_float32.float32;
final float64 = stdgo._internal.internal.abi.Abi_float64.float64;
final complex64 = stdgo._internal.internal.abi.Abi_complex64.complex64;
final complex128 = stdgo._internal.internal.abi.Abi_complex128.complex128;
final array = stdgo._internal.internal.abi.Abi_array.array;
final chan = stdgo._internal.internal.abi.Abi_chan.chan;
final func = stdgo._internal.internal.abi.Abi_func.func;
final interface_ = stdgo._internal.internal.abi.Abi_interface_.interface_;
final map_ = stdgo._internal.internal.abi.Abi_map_.map_;
final pointer = stdgo._internal.internal.abi.Abi_pointer.pointer;
final slice = stdgo._internal.internal.abi.Abi_slice.slice;
final string = stdgo._internal.internal.abi.Abi_string.string;
final struct_ = stdgo._internal.internal.abi.Abi_struct_.struct_;
final unsafePointer = stdgo._internal.internal.abi.Abi_unsafepointer.unsafePointer;
final kindDirectIface : haxe.UInt64 = stdgo._internal.internal.abi.Abi_kinddirectiface.kindDirectIface;
final kindGCProg : haxe.UInt64 = stdgo._internal.internal.abi.Abi_kindgcprog.kindGCProg;
final kindMask : haxe.UInt64 = stdgo._internal.internal.abi.Abi_kindmask.kindMask;
final tFlagUncommon : TFlag = stdgo._internal.internal.abi.Abi_tflaguncommon.tFlagUncommon;
final tFlagExtraStar : TFlag = stdgo._internal.internal.abi.Abi_tflagextrastar.tFlagExtraStar;
final tFlagNamed : TFlag = stdgo._internal.internal.abi.Abi_tflagnamed.tFlagNamed;
final tFlagRegularMemory : TFlag = stdgo._internal.internal.abi.Abi_tflagregularmemory.tFlagRegularMemory;
final recvDir : ChanDir = stdgo._internal.internal.abi.Abi_recvdir.recvDir;
final sendDir = stdgo._internal.internal.abi.Abi_senddir.sendDir;
final bothDir : ChanDir = stdgo._internal.internal.abi.Abi_bothdir.bothDir;
final invalidDir : ChanDir = stdgo._internal.internal.abi.Abi_invaliddir.invalidDir;
@:structInit @:using(stdgo.internal.abi.Abi.RegArgs_static_extension) abstract RegArgs(stdgo._internal.internal.abi.Abi_regargs.RegArgs) from stdgo._internal.internal.abi.Abi_regargs.RegArgs to stdgo._internal.internal.abi.Abi_regargs.RegArgs {
    public var ints(get, set) : haxe.ds.Vector<stdgo.GoUIntptr>;
    function get_ints():haxe.ds.Vector<stdgo.GoUIntptr> return haxe.ds.Vector.fromArrayCopy([for (i in this.ints) i]);
    function set_ints(v:haxe.ds.Vector<stdgo.GoUIntptr>):haxe.ds.Vector<stdgo.GoUIntptr> {
        this.ints = ([for (i in v) (i : stdgo.GoUIntptr)] : stdgo.GoArray<stdgo.GoUIntptr>);
        return v;
    }
    public var floats(get, set) : haxe.ds.Vector<haxe.UInt64>;
    function get_floats():haxe.ds.Vector<haxe.UInt64> return haxe.ds.Vector.fromArrayCopy([for (i in this.floats) i]);
    function set_floats(v:haxe.ds.Vector<haxe.UInt64>):haxe.ds.Vector<haxe.UInt64> {
        this.floats = ([for (i in v) (i : stdgo.GoUInt64)] : stdgo.GoArray<stdgo.GoUInt64>);
        return v;
    }
    public var ptrs(get, set) : haxe.ds.Vector<stdgo._internal.unsafe.Unsafe.UnsafePointer>;
    function get_ptrs():haxe.ds.Vector<stdgo._internal.unsafe.Unsafe.UnsafePointer> return haxe.ds.Vector.fromArrayCopy([for (i in this.ptrs) i]);
    function set_ptrs(v:haxe.ds.Vector<stdgo._internal.unsafe.Unsafe.UnsafePointer>):haxe.ds.Vector<stdgo._internal.unsafe.Unsafe.UnsafePointer> {
        this.ptrs = ([for (i in v) i] : stdgo.GoArray<stdgo._internal.unsafe.Unsafe.UnsafePointer>);
        return v;
    }
    public var returnIsPtr(get, set) : IntArgRegBitmap;
    function get_returnIsPtr():IntArgRegBitmap return this.returnIsPtr;
    function set_returnIsPtr(v:IntArgRegBitmap):IntArgRegBitmap {
        this.returnIsPtr = v;
        return v;
    }
    public function new(?ints:haxe.ds.Vector<stdgo.GoUIntptr>, ?floats:haxe.ds.Vector<haxe.UInt64>, ?ptrs:haxe.ds.Vector<stdgo._internal.unsafe.Unsafe.UnsafePointer>, ?returnIsPtr:IntArgRegBitmap) this = new stdgo._internal.internal.abi.Abi_regargs.RegArgs(([for (i in ints) (i : stdgo.GoUIntptr)] : stdgo.GoArray<stdgo.GoUIntptr>), ([for (i in floats) (i : stdgo.GoUInt64)] : stdgo.GoArray<stdgo.GoUInt64>), ([for (i in ptrs) i] : stdgo.GoArray<stdgo._internal.unsafe.Unsafe.UnsafePointer>), returnIsPtr);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.abi.Abi.Offset_static_extension) abstract Offset(stdgo._internal.internal.abi.Abi_offset.Offset) from stdgo._internal.internal.abi.Abi_offset.Offset to stdgo._internal.internal.abi.Abi_offset.Offset {
    public var _off(get, set) : haxe.UInt64;
    function get__off():haxe.UInt64 return this._off;
    function set__off(v:haxe.UInt64):haxe.UInt64 {
        this._off = (v : stdgo.GoUInt64);
        return v;
    }
    public var _align(get, set) : std.UInt;
    function get__align():std.UInt return this._align;
    function set__align(v:std.UInt):std.UInt {
        this._align = (v : stdgo.GoUInt8);
        return v;
    }
    public var _ptrSize(get, set) : std.UInt;
    function get__ptrSize():std.UInt return this._ptrSize;
    function set__ptrSize(v:std.UInt):std.UInt {
        this._ptrSize = (v : stdgo.GoUInt8);
        return v;
    }
    public var _sliceAlign(get, set) : std.UInt;
    function get__sliceAlign():std.UInt return this._sliceAlign;
    function set__sliceAlign(v:std.UInt):std.UInt {
        this._sliceAlign = (v : stdgo.GoUInt8);
        return v;
    }
    public function new(?_off:haxe.UInt64, ?_align:std.UInt, ?_ptrSize:std.UInt, ?_sliceAlign:std.UInt) this = new stdgo._internal.internal.abi.Abi_offset.Offset((_off : stdgo.GoUInt64), (_align : stdgo.GoUInt8), (_ptrSize : stdgo.GoUInt8), (_sliceAlign : stdgo.GoUInt8));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.abi.Abi.Type__static_extension) abstract Type_(stdgo._internal.internal.abi.Abi_type_.Type_) from stdgo._internal.internal.abi.Abi_type_.Type_ to stdgo._internal.internal.abi.Abi_type_.Type_ {
    public var size_(get, set) : stdgo.GoUIntptr;
    function get_size_():stdgo.GoUIntptr return this.size_;
    function set_size_(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this.size_ = (v : stdgo.GoUIntptr);
        return v;
    }
    public var ptrBytes(get, set) : stdgo.GoUIntptr;
    function get_ptrBytes():stdgo.GoUIntptr return this.ptrBytes;
    function set_ptrBytes(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this.ptrBytes = (v : stdgo.GoUIntptr);
        return v;
    }
    public var hash(get, set) : std.UInt;
    function get_hash():std.UInt return this.hash;
    function set_hash(v:std.UInt):std.UInt {
        this.hash = (v : stdgo.GoUInt32);
        return v;
    }
    public var tFlag(get, set) : TFlag;
    function get_tFlag():TFlag return this.tFlag;
    function set_tFlag(v:TFlag):TFlag {
        this.tFlag = v;
        return v;
    }
    public var align_(get, set) : std.UInt;
    function get_align_():std.UInt return this.align_;
    function set_align_(v:std.UInt):std.UInt {
        this.align_ = (v : stdgo.GoUInt8);
        return v;
    }
    public var fieldAlign_(get, set) : std.UInt;
    function get_fieldAlign_():std.UInt return this.fieldAlign_;
    function set_fieldAlign_(v:std.UInt):std.UInt {
        this.fieldAlign_ = (v : stdgo.GoUInt8);
        return v;
    }
    public var kind_(get, set) : std.UInt;
    function get_kind_():std.UInt return this.kind_;
    function set_kind_(v:std.UInt):std.UInt {
        this.kind_ = (v : stdgo.GoUInt8);
        return v;
    }
    public var equal(get, set) : (stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo._internal.unsafe.Unsafe.UnsafePointer) -> Bool;
    function get_equal():(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo._internal.unsafe.Unsafe.UnsafePointer) -> Bool return (_0, _1) -> this.equal(_0, _1);
    function set_equal(v:(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo._internal.unsafe.Unsafe.UnsafePointer) -> Bool):(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo._internal.unsafe.Unsafe.UnsafePointer) -> Bool {
        this.equal = v;
        return v;
    }
    public var gCData(get, set) : stdgo.Pointer<std.UInt>;
    function get_gCData():stdgo.Pointer<std.UInt> return this.gCData;
    function set_gCData(v:stdgo.Pointer<std.UInt>):stdgo.Pointer<std.UInt> {
        this.gCData = v;
        return v;
    }
    public var str(get, set) : NameOff;
    function get_str():NameOff return this.str;
    function set_str(v:NameOff):NameOff {
        this.str = v;
        return v;
    }
    public var ptrToThis(get, set) : TypeOff;
    function get_ptrToThis():TypeOff return this.ptrToThis;
    function set_ptrToThis(v:TypeOff):TypeOff {
        this.ptrToThis = v;
        return v;
    }
    public function new(?size_:stdgo.GoUIntptr, ?ptrBytes:stdgo.GoUIntptr, ?hash:std.UInt, ?tFlag:TFlag, ?align_:std.UInt, ?fieldAlign_:std.UInt, ?kind_:std.UInt, ?equal:(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo._internal.unsafe.Unsafe.UnsafePointer) -> Bool, ?gCData:stdgo.Pointer<std.UInt>, ?str:NameOff, ?ptrToThis:TypeOff) this = new stdgo._internal.internal.abi.Abi_type_.Type_(
(size_ : stdgo.GoUIntptr),
(ptrBytes : stdgo.GoUIntptr),
(hash : stdgo.GoUInt32),
tFlag,
(align_ : stdgo.GoUInt8),
(fieldAlign_ : stdgo.GoUInt8),
(kind_ : stdgo.GoUInt8),
equal,
gCData,
str,
ptrToThis);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.abi.Abi.Method_static_extension) abstract Method(stdgo._internal.internal.abi.Abi_method.Method) from stdgo._internal.internal.abi.Abi_method.Method to stdgo._internal.internal.abi.Abi_method.Method {
    public var name(get, set) : NameOff;
    function get_name():NameOff return this.name;
    function set_name(v:NameOff):NameOff {
        this.name = v;
        return v;
    }
    public var mtyp(get, set) : TypeOff;
    function get_mtyp():TypeOff return this.mtyp;
    function set_mtyp(v:TypeOff):TypeOff {
        this.mtyp = v;
        return v;
    }
    public var ifn(get, set) : TextOff;
    function get_ifn():TextOff return this.ifn;
    function set_ifn(v:TextOff):TextOff {
        this.ifn = v;
        return v;
    }
    public var tfn(get, set) : TextOff;
    function get_tfn():TextOff return this.tfn;
    function set_tfn(v:TextOff):TextOff {
        this.tfn = v;
        return v;
    }
    public function new(?name:NameOff, ?mtyp:TypeOff, ?ifn:TextOff, ?tfn:TextOff) this = new stdgo._internal.internal.abi.Abi_method.Method(name, mtyp, ifn, tfn);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.abi.Abi.UncommonType_static_extension) abstract UncommonType(stdgo._internal.internal.abi.Abi_uncommontype.UncommonType) from stdgo._internal.internal.abi.Abi_uncommontype.UncommonType to stdgo._internal.internal.abi.Abi_uncommontype.UncommonType {
    public var pkgPath(get, set) : NameOff;
    function get_pkgPath():NameOff return this.pkgPath;
    function set_pkgPath(v:NameOff):NameOff {
        this.pkgPath = v;
        return v;
    }
    public var mcount(get, set) : std.UInt;
    function get_mcount():std.UInt return this.mcount;
    function set_mcount(v:std.UInt):std.UInt {
        this.mcount = (v : stdgo.GoUInt16);
        return v;
    }
    public var xcount(get, set) : std.UInt;
    function get_xcount():std.UInt return this.xcount;
    function set_xcount(v:std.UInt):std.UInt {
        this.xcount = (v : stdgo.GoUInt16);
        return v;
    }
    public var moff(get, set) : std.UInt;
    function get_moff():std.UInt return this.moff;
    function set_moff(v:std.UInt):std.UInt {
        this.moff = (v : stdgo.GoUInt32);
        return v;
    }
    public var __1(get, set) : std.UInt;
    function get___1():std.UInt return this.__1;
    function set___1(v:std.UInt):std.UInt {
        this.__1 = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?pkgPath:NameOff, ?mcount:std.UInt, ?xcount:std.UInt, ?moff:std.UInt, ?__1:std.UInt) this = new stdgo._internal.internal.abi.Abi_uncommontype.UncommonType(pkgPath, (mcount : stdgo.GoUInt16), (xcount : stdgo.GoUInt16), (moff : stdgo.GoUInt32), (__1 : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.abi.Abi.Imethod_static_extension) abstract Imethod(stdgo._internal.internal.abi.Abi_imethod.Imethod) from stdgo._internal.internal.abi.Abi_imethod.Imethod to stdgo._internal.internal.abi.Abi_imethod.Imethod {
    public var name(get, set) : NameOff;
    function get_name():NameOff return this.name;
    function set_name(v:NameOff):NameOff {
        this.name = v;
        return v;
    }
    public var typ(get, set) : TypeOff;
    function get_typ():TypeOff return this.typ;
    function set_typ(v:TypeOff):TypeOff {
        this.typ = v;
        return v;
    }
    public function new(?name:NameOff, ?typ:TypeOff) this = new stdgo._internal.internal.abi.Abi_imethod.Imethod(name, typ);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.abi.Abi.ArrayType_static_extension) abstract ArrayType(stdgo._internal.internal.abi.Abi_arraytype.ArrayType) from stdgo._internal.internal.abi.Abi_arraytype.ArrayType to stdgo._internal.internal.abi.Abi_arraytype.ArrayType {
    public var type(get, set) : Type_;
    function get_type():Type_ return this.type;
    function set_type(v:Type_):Type_ {
        this.type = v;
        return v;
    }
    public var elem(get, set) : Type_;
    function get_elem():Type_ return this.elem;
    function set_elem(v:Type_):Type_ {
        this.elem = (v : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>);
        return v;
    }
    public var slice(get, set) : Type_;
    function get_slice():Type_ return this.slice;
    function set_slice(v:Type_):Type_ {
        this.slice = (v : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>);
        return v;
    }
    public var len(get, set) : stdgo.GoUIntptr;
    function get_len():stdgo.GoUIntptr return this.len;
    function set_len(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this.len = (v : stdgo.GoUIntptr);
        return v;
    }
    public function new(?type:Type_, ?elem:Type_, ?slice:Type_, ?len:stdgo.GoUIntptr) this = new stdgo._internal.internal.abi.Abi_arraytype.ArrayType(type, (elem : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>), (slice : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>), (len : stdgo.GoUIntptr));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.abi.Abi.ChanType_static_extension) abstract ChanType(stdgo._internal.internal.abi.Abi_chantype.ChanType) from stdgo._internal.internal.abi.Abi_chantype.ChanType to stdgo._internal.internal.abi.Abi_chantype.ChanType {
    public var type(get, set) : Type_;
    function get_type():Type_ return this.type;
    function set_type(v:Type_):Type_ {
        this.type = v;
        return v;
    }
    public var elem(get, set) : Type_;
    function get_elem():Type_ return this.elem;
    function set_elem(v:Type_):Type_ {
        this.elem = (v : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>);
        return v;
    }
    public var dir(get, set) : ChanDir;
    function get_dir():ChanDir return this.dir;
    function set_dir(v:ChanDir):ChanDir {
        this.dir = v;
        return v;
    }
    public function new(?type:Type_, ?elem:Type_, ?dir:ChanDir) this = new stdgo._internal.internal.abi.Abi_chantype.ChanType(type, (elem : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>), dir);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.abi.Abi.T_structTypeUncommon_static_extension) @:dox(hide) abstract T_structTypeUncommon(stdgo._internal.internal.abi.Abi_t_structtypeuncommon.T_structTypeUncommon) from stdgo._internal.internal.abi.Abi_t_structtypeuncommon.T_structTypeUncommon to stdgo._internal.internal.abi.Abi_t_structtypeuncommon.T_structTypeUncommon {
    public var structType(get, set) : StructType;
    function get_structType():StructType return this.structType;
    function set_structType(v:StructType):StructType {
        this.structType = v;
        return v;
    }
    public var _u(get, set) : UncommonType;
    function get__u():UncommonType return this._u;
    function set__u(v:UncommonType):UncommonType {
        this._u = v;
        return v;
    }
    public function new(?structType:StructType, ?_u:UncommonType) this = new stdgo._internal.internal.abi.Abi_t_structtypeuncommon.T_structTypeUncommon(structType, _u);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.abi.Abi.InterfaceType_static_extension) abstract InterfaceType(stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType) from stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType to stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType {
    public var type(get, set) : Type_;
    function get_type():Type_ return this.type;
    function set_type(v:Type_):Type_ {
        this.type = v;
        return v;
    }
    public var pkgPath(get, set) : Name;
    function get_pkgPath():Name return this.pkgPath;
    function set_pkgPath(v:Name):Name {
        this.pkgPath = v;
        return v;
    }
    public var methods(get, set) : Array<Imethod>;
    function get_methods():Array<Imethod> return [for (i in this.methods) i];
    function set_methods(v:Array<Imethod>):Array<Imethod> {
        this.methods = ([for (i in v) i] : stdgo.Slice<stdgo._internal.internal.abi.Abi_imethod.Imethod>);
        return v;
    }
    public function new(?type:Type_, ?pkgPath:Name, ?methods:Array<Imethod>) this = new stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType(type, pkgPath, ([for (i in methods) i] : stdgo.Slice<stdgo._internal.internal.abi.Abi_imethod.Imethod>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.abi.Abi.MapType_static_extension) abstract MapType(stdgo._internal.internal.abi.Abi_maptype.MapType) from stdgo._internal.internal.abi.Abi_maptype.MapType to stdgo._internal.internal.abi.Abi_maptype.MapType {
    public var type(get, set) : Type_;
    function get_type():Type_ return this.type;
    function set_type(v:Type_):Type_ {
        this.type = v;
        return v;
    }
    public var key(get, set) : Type_;
    function get_key():Type_ return this.key;
    function set_key(v:Type_):Type_ {
        this.key = (v : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>);
        return v;
    }
    public var elem(get, set) : Type_;
    function get_elem():Type_ return this.elem;
    function set_elem(v:Type_):Type_ {
        this.elem = (v : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>);
        return v;
    }
    public var bucket(get, set) : Type_;
    function get_bucket():Type_ return this.bucket;
    function set_bucket(v:Type_):Type_ {
        this.bucket = (v : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>);
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
        this.keySize = (v : stdgo.GoUInt8);
        return v;
    }
    public var valueSize(get, set) : std.UInt;
    function get_valueSize():std.UInt return this.valueSize;
    function set_valueSize(v:std.UInt):std.UInt {
        this.valueSize = (v : stdgo.GoUInt8);
        return v;
    }
    public var bucketSize(get, set) : std.UInt;
    function get_bucketSize():std.UInt return this.bucketSize;
    function set_bucketSize(v:std.UInt):std.UInt {
        this.bucketSize = (v : stdgo.GoUInt16);
        return v;
    }
    public var flags(get, set) : std.UInt;
    function get_flags():std.UInt return this.flags;
    function set_flags(v:std.UInt):std.UInt {
        this.flags = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?type:Type_, ?key:Type_, ?elem:Type_, ?bucket:Type_, ?hasher:(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> stdgo.GoUIntptr, ?keySize:std.UInt, ?valueSize:std.UInt, ?bucketSize:std.UInt, ?flags:std.UInt) this = new stdgo._internal.internal.abi.Abi_maptype.MapType(type, (key : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>), (elem : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>), (bucket : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>), hasher, (keySize : stdgo.GoUInt8), (valueSize : stdgo.GoUInt8), (bucketSize : stdgo.GoUInt16), (flags : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.abi.Abi.SliceType_static_extension) abstract SliceType(stdgo._internal.internal.abi.Abi_slicetype.SliceType) from stdgo._internal.internal.abi.Abi_slicetype.SliceType to stdgo._internal.internal.abi.Abi_slicetype.SliceType {
    public var type(get, set) : Type_;
    function get_type():Type_ return this.type;
    function set_type(v:Type_):Type_ {
        this.type = v;
        return v;
    }
    public var elem(get, set) : Type_;
    function get_elem():Type_ return this.elem;
    function set_elem(v:Type_):Type_ {
        this.elem = (v : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>);
        return v;
    }
    public function new(?type:Type_, ?elem:Type_) this = new stdgo._internal.internal.abi.Abi_slicetype.SliceType(type, (elem : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.abi.Abi.FuncType_static_extension) abstract FuncType(stdgo._internal.internal.abi.Abi_functype.FuncType) from stdgo._internal.internal.abi.Abi_functype.FuncType to stdgo._internal.internal.abi.Abi_functype.FuncType {
    public var type(get, set) : Type_;
    function get_type():Type_ return this.type;
    function set_type(v:Type_):Type_ {
        this.type = v;
        return v;
    }
    public var inCount(get, set) : std.UInt;
    function get_inCount():std.UInt return this.inCount;
    function set_inCount(v:std.UInt):std.UInt {
        this.inCount = (v : stdgo.GoUInt16);
        return v;
    }
    public var outCount(get, set) : std.UInt;
    function get_outCount():std.UInt return this.outCount;
    function set_outCount(v:std.UInt):std.UInt {
        this.outCount = (v : stdgo.GoUInt16);
        return v;
    }
    public function new(?type:Type_, ?inCount:std.UInt, ?outCount:std.UInt) this = new stdgo._internal.internal.abi.Abi_functype.FuncType(type, (inCount : stdgo.GoUInt16), (outCount : stdgo.GoUInt16));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.abi.Abi.PtrType_static_extension) abstract PtrType(stdgo._internal.internal.abi.Abi_ptrtype.PtrType) from stdgo._internal.internal.abi.Abi_ptrtype.PtrType to stdgo._internal.internal.abi.Abi_ptrtype.PtrType {
    public var type(get, set) : Type_;
    function get_type():Type_ return this.type;
    function set_type(v:Type_):Type_ {
        this.type = v;
        return v;
    }
    public var elem(get, set) : Type_;
    function get_elem():Type_ return this.elem;
    function set_elem(v:Type_):Type_ {
        this.elem = (v : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>);
        return v;
    }
    public function new(?type:Type_, ?elem:Type_) this = new stdgo._internal.internal.abi.Abi_ptrtype.PtrType(type, (elem : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.abi.Abi.StructField_static_extension) abstract StructField(stdgo._internal.internal.abi.Abi_structfield.StructField) from stdgo._internal.internal.abi.Abi_structfield.StructField to stdgo._internal.internal.abi.Abi_structfield.StructField {
    public var name(get, set) : Name;
    function get_name():Name return this.name;
    function set_name(v:Name):Name {
        this.name = v;
        return v;
    }
    public var typ(get, set) : Type_;
    function get_typ():Type_ return this.typ;
    function set_typ(v:Type_):Type_ {
        this.typ = (v : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>);
        return v;
    }
    public var offset(get, set) : stdgo.GoUIntptr;
    function get_offset():stdgo.GoUIntptr return this.offset;
    function set_offset(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this.offset = (v : stdgo.GoUIntptr);
        return v;
    }
    public function new(?name:Name, ?typ:Type_, ?offset:stdgo.GoUIntptr) this = new stdgo._internal.internal.abi.Abi_structfield.StructField(name, (typ : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>), (offset : stdgo.GoUIntptr));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.abi.Abi.StructType_static_extension) abstract StructType(stdgo._internal.internal.abi.Abi_structtype.StructType) from stdgo._internal.internal.abi.Abi_structtype.StructType to stdgo._internal.internal.abi.Abi_structtype.StructType {
    public var type(get, set) : Type_;
    function get_type():Type_ return this.type;
    function set_type(v:Type_):Type_ {
        this.type = v;
        return v;
    }
    public var pkgPath(get, set) : Name;
    function get_pkgPath():Name return this.pkgPath;
    function set_pkgPath(v:Name):Name {
        this.pkgPath = v;
        return v;
    }
    public var fields(get, set) : Array<StructField>;
    function get_fields():Array<StructField> return [for (i in this.fields) i];
    function set_fields(v:Array<StructField>):Array<StructField> {
        this.fields = ([for (i in v) i] : stdgo.Slice<stdgo._internal.internal.abi.Abi_structfield.StructField>);
        return v;
    }
    public function new(?type:Type_, ?pkgPath:Name, ?fields:Array<StructField>) this = new stdgo._internal.internal.abi.Abi_structtype.StructType(type, pkgPath, ([for (i in fields) i] : stdgo.Slice<stdgo._internal.internal.abi.Abi_structfield.StructField>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.abi.Abi.Name_static_extension) abstract Name(stdgo._internal.internal.abi.Abi_name.Name) from stdgo._internal.internal.abi.Abi_name.Name to stdgo._internal.internal.abi.Abi_name.Name {
    public var bytes(get, set) : stdgo.Pointer<std.UInt>;
    function get_bytes():stdgo.Pointer<std.UInt> return this.bytes;
    function set_bytes(v:stdgo.Pointer<std.UInt>):stdgo.Pointer<std.UInt> {
        this.bytes = v;
        return v;
    }
    public function new(?bytes:stdgo.Pointer<std.UInt>) this = new stdgo._internal.internal.abi.Abi_name.Name(bytes);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef IntArgRegBitmap = stdgo._internal.internal.abi.Abi_intargregbitmap.IntArgRegBitmap;
typedef FuncFlag = stdgo._internal.internal.abi.Abi_funcflag.FuncFlag;
typedef FuncID = stdgo._internal.internal.abi.Abi_funcid.FuncID;
typedef Kind = stdgo._internal.internal.abi.Abi_kind.Kind;
typedef TFlag = stdgo._internal.internal.abi.Abi_tflag.TFlag;
typedef NameOff = stdgo._internal.internal.abi.Abi_nameoff.NameOff;
typedef TypeOff = stdgo._internal.internal.abi.Abi_typeoff.TypeOff;
typedef TextOff = stdgo._internal.internal.abi.Abi_textoff.TextOff;
typedef ChanDir = stdgo._internal.internal.abi.Abi_chandir.ChanDir;
typedef RegArgsPointer = stdgo._internal.internal.abi.Abi_regargspointer.RegArgsPointer;
class RegArgs_static_extension {
    static public function intRegArgAddr(_r:RegArgs, _reg:StdTypes.Int, _argSize:stdgo.GoUIntptr):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.abi.Abi_regargs.RegArgs>);
        final _reg = (_reg : stdgo.GoInt);
        final _argSize = (_argSize : stdgo.GoUIntptr);
        return stdgo._internal.internal.abi.Abi_regargs_static_extension.RegArgs_static_extension.intRegArgAddr(_r, _reg, _argSize);
    }
    static public function dump(_r:RegArgs):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.abi.Abi_regargs.RegArgs>);
        stdgo._internal.internal.abi.Abi_regargs_static_extension.RegArgs_static_extension.dump(_r);
    }
}
typedef OffsetPointer = stdgo._internal.internal.abi.Abi_offsetpointer.OffsetPointer;
class Offset_static_extension {
    static public function plusUncommon(_o:Offset):Offset {
        return stdgo._internal.internal.abi.Abi_offset_static_extension.Offset_static_extension.plusUncommon(_o);
    }
    static public function offset(_o:Offset):haxe.UInt64 {
        return stdgo._internal.internal.abi.Abi_offset_static_extension.Offset_static_extension.offset(_o);
    }
    static public function interface_(_o:Offset):Offset {
        return stdgo._internal.internal.abi.Abi_offset_static_extension.Offset_static_extension.interface_(_o);
    }
    static public function string(_o:Offset):Offset {
        return stdgo._internal.internal.abi.Abi_offset_static_extension.Offset_static_extension.string(_o);
    }
    static public function slice(_o:Offset):Offset {
        return stdgo._internal.internal.abi.Abi_offset_static_extension.Offset_static_extension.slice(_o);
    }
    static public function p(_o:Offset):Offset {
        return stdgo._internal.internal.abi.Abi_offset_static_extension.Offset_static_extension.p(_o);
    }
    static public function d64(_o:Offset):Offset {
        return stdgo._internal.internal.abi.Abi_offset_static_extension.Offset_static_extension.d64(_o);
    }
    static public function d32(_o:Offset):Offset {
        return stdgo._internal.internal.abi.Abi_offset_static_extension.Offset_static_extension.d32(_o);
    }
    static public function d16(_o:Offset):Offset {
        return stdgo._internal.internal.abi.Abi_offset_static_extension.Offset_static_extension.d16(_o);
    }
    static public function d8(_o:Offset):Offset {
        return stdgo._internal.internal.abi.Abi_offset_static_extension.Offset_static_extension.d8(_o);
    }
    static public function _plus(_o:Offset, _x:haxe.UInt64):Offset {
        final _x = (_x : stdgo.GoUInt64);
        return stdgo._internal.internal.abi.Abi_offset_static_extension.Offset_static_extension._plus(_o, _x);
    }
    static public function align(_o:Offset, _a:std.UInt):Offset {
        final _a = (_a : stdgo.GoUInt8);
        return stdgo._internal.internal.abi.Abi_offset_static_extension.Offset_static_extension.align(_o, _a);
    }
    static public function _align_(_o:Offset, _a:std.UInt):Offset {
        final _a = (_a : stdgo.GoUInt8);
        return stdgo._internal.internal.abi.Abi_offset_static_extension.Offset_static_extension._align_(_o, _a);
    }
}
typedef Type_Pointer = stdgo._internal.internal.abi.Abi_type_pointer.Type_Pointer;
class Type__static_extension {
    static public function key(_t:Type_):Type_ {
        final _t = (_t : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>);
        return stdgo._internal.internal.abi.Abi_type__static_extension.Type__static_extension.key(_t);
    }
    static public function numMethod(_t:Type_):StdTypes.Int {
        final _t = (_t : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>);
        return stdgo._internal.internal.abi.Abi_type__static_extension.Type__static_extension.numMethod(_t);
    }
    static public function exportedMethods(_t:Type_):Array<Method> {
        final _t = (_t : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>);
        return [for (i in stdgo._internal.internal.abi.Abi_type__static_extension.Type__static_extension.exportedMethods(_t)) i];
    }
    static public function fieldAlign(_t:Type_):StdTypes.Int {
        final _t = (_t : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>);
        return stdgo._internal.internal.abi.Abi_type__static_extension.Type__static_extension.fieldAlign(_t);
    }
    static public function align(_t:Type_):StdTypes.Int {
        final _t = (_t : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>);
        return stdgo._internal.internal.abi.Abi_type__static_extension.Type__static_extension.align(_t);
    }
    static public function size(_t:Type_):stdgo.GoUIntptr {
        final _t = (_t : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>);
        return stdgo._internal.internal.abi.Abi_type__static_extension.Type__static_extension.size(_t);
    }
    static public function interfaceType(_t:Type_):InterfaceType {
        final _t = (_t : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>);
        return stdgo._internal.internal.abi.Abi_type__static_extension.Type__static_extension.interfaceType(_t);
    }
    static public function funcType(_t:Type_):FuncType {
        final _t = (_t : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>);
        return stdgo._internal.internal.abi.Abi_type__static_extension.Type__static_extension.funcType(_t);
    }
    static public function arrayType(_t:Type_):ArrayType {
        final _t = (_t : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>);
        return stdgo._internal.internal.abi.Abi_type__static_extension.Type__static_extension.arrayType(_t);
    }
    static public function mapType(_t:Type_):MapType {
        final _t = (_t : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>);
        return stdgo._internal.internal.abi.Abi_type__static_extension.Type__static_extension.mapType(_t);
    }
    static public function structType(_t:Type_):StructType {
        final _t = (_t : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>);
        return stdgo._internal.internal.abi.Abi_type__static_extension.Type__static_extension.structType(_t);
    }
    static public function elem(_t:Type_):Type_ {
        final _t = (_t : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>);
        return stdgo._internal.internal.abi.Abi_type__static_extension.Type__static_extension.elem(_t);
    }
    static public function uncommon(_t:Type_):UncommonType {
        final _t = (_t : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>);
        return stdgo._internal.internal.abi.Abi_type__static_extension.Type__static_extension.uncommon(_t);
    }
    static public function chanDir(_t:Type_):ChanDir {
        final _t = (_t : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>);
        return stdgo._internal.internal.abi.Abi_type__static_extension.Type__static_extension.chanDir(_t);
    }
    static public function common(_t:Type_):Type_ {
        final _t = (_t : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>);
        return stdgo._internal.internal.abi.Abi_type__static_extension.Type__static_extension.common(_t);
    }
    static public function len(_t:Type_):StdTypes.Int {
        final _t = (_t : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>);
        return stdgo._internal.internal.abi.Abi_type__static_extension.Type__static_extension.len(_t);
    }
    static public function gcSlice(_t:Type_, _begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):Array<std.UInt> {
        final _t = (_t : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>);
        final _begin = (_begin : stdgo.GoUIntptr);
        final _end = (_end : stdgo.GoUIntptr);
        return [for (i in stdgo._internal.internal.abi.Abi_type__static_extension.Type__static_extension.gcSlice(_t, _begin, _end)) i];
    }
    static public function isDirectIface(_t:Type_):Bool {
        final _t = (_t : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>);
        return stdgo._internal.internal.abi.Abi_type__static_extension.Type__static_extension.isDirectIface(_t);
    }
    static public function ifaceIndir(_t:Type_):Bool {
        final _t = (_t : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>);
        return stdgo._internal.internal.abi.Abi_type__static_extension.Type__static_extension.ifaceIndir(_t);
    }
    static public function pointers(_t:Type_):Bool {
        final _t = (_t : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>);
        return stdgo._internal.internal.abi.Abi_type__static_extension.Type__static_extension.pointers(_t);
    }
    static public function hasName(_t:Type_):Bool {
        final _t = (_t : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>);
        return stdgo._internal.internal.abi.Abi_type__static_extension.Type__static_extension.hasName(_t);
    }
    static public function kind(_t:Type_):Kind {
        final _t = (_t : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>);
        return stdgo._internal.internal.abi.Abi_type__static_extension.Type__static_extension.kind(_t);
    }
}
@:structInit @:dox(hide) abstract T_uncommon___localname___u_8324(stdgo._internal.internal.abi.Abi_t_uncommon___localname___u_8324.T_uncommon___localname___u_8324) from stdgo._internal.internal.abi.Abi_t_uncommon___localname___u_8324.T_uncommon___localname___u_8324 to stdgo._internal.internal.abi.Abi_t_uncommon___localname___u_8324.T_uncommon___localname___u_8324 {
    public var ptrType(get, set) : PtrType;
    function get_ptrType():PtrType return this.ptrType;
    function set_ptrType(v:PtrType):PtrType {
        this.ptrType = v;
        return v;
    }
    public var _u(get, set) : UncommonType;
    function get__u():UncommonType return this._u;
    function set__u(v:UncommonType):UncommonType {
        this._u = v;
        return v;
    }
    public function new(?ptrType:PtrType, ?_u:UncommonType) this = new stdgo._internal.internal.abi.Abi_t_uncommon___localname___u_8324.T_uncommon___localname___u_8324(ptrType, _u);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:dox(hide) abstract T_uncommon___localname___u_8423(stdgo._internal.internal.abi.Abi_t_uncommon___localname___u_8423.T_uncommon___localname___u_8423) from stdgo._internal.internal.abi.Abi_t_uncommon___localname___u_8423.T_uncommon___localname___u_8423 to stdgo._internal.internal.abi.Abi_t_uncommon___localname___u_8423.T_uncommon___localname___u_8423 {
    public var funcType(get, set) : FuncType;
    function get_funcType():FuncType return this.funcType;
    function set_funcType(v:FuncType):FuncType {
        this.funcType = v;
        return v;
    }
    public var _u(get, set) : UncommonType;
    function get__u():UncommonType return this._u;
    function set__u(v:UncommonType):UncommonType {
        this._u = v;
        return v;
    }
    public function new(?funcType:FuncType, ?_u:UncommonType) this = new stdgo._internal.internal.abi.Abi_t_uncommon___localname___u_8423.T_uncommon___localname___u_8423(funcType, _u);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:dox(hide) abstract T_uncommon___localname___u_8524(stdgo._internal.internal.abi.Abi_t_uncommon___localname___u_8524.T_uncommon___localname___u_8524) from stdgo._internal.internal.abi.Abi_t_uncommon___localname___u_8524.T_uncommon___localname___u_8524 to stdgo._internal.internal.abi.Abi_t_uncommon___localname___u_8524.T_uncommon___localname___u_8524 {
    public var sliceType(get, set) : SliceType;
    function get_sliceType():SliceType return this.sliceType;
    function set_sliceType(v:SliceType):SliceType {
        this.sliceType = v;
        return v;
    }
    public var _u(get, set) : UncommonType;
    function get__u():UncommonType return this._u;
    function set__u(v:UncommonType):UncommonType {
        this._u = v;
        return v;
    }
    public function new(?sliceType:SliceType, ?_u:UncommonType) this = new stdgo._internal.internal.abi.Abi_t_uncommon___localname___u_8524.T_uncommon___localname___u_8524(sliceType, _u);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:dox(hide) abstract T_uncommon___localname___u_8626(stdgo._internal.internal.abi.Abi_t_uncommon___localname___u_8626.T_uncommon___localname___u_8626) from stdgo._internal.internal.abi.Abi_t_uncommon___localname___u_8626.T_uncommon___localname___u_8626 to stdgo._internal.internal.abi.Abi_t_uncommon___localname___u_8626.T_uncommon___localname___u_8626 {
    public var arrayType(get, set) : ArrayType;
    function get_arrayType():ArrayType return this.arrayType;
    function set_arrayType(v:ArrayType):ArrayType {
        this.arrayType = v;
        return v;
    }
    public var _u(get, set) : UncommonType;
    function get__u():UncommonType return this._u;
    function set__u(v:UncommonType):UncommonType {
        this._u = v;
        return v;
    }
    public function new(?arrayType:ArrayType, ?_u:UncommonType) this = new stdgo._internal.internal.abi.Abi_t_uncommon___localname___u_8626.T_uncommon___localname___u_8626(arrayType, _u);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:dox(hide) abstract T_uncommon___localname___u_8727(stdgo._internal.internal.abi.Abi_t_uncommon___localname___u_8727.T_uncommon___localname___u_8727) from stdgo._internal.internal.abi.Abi_t_uncommon___localname___u_8727.T_uncommon___localname___u_8727 to stdgo._internal.internal.abi.Abi_t_uncommon___localname___u_8727.T_uncommon___localname___u_8727 {
    public var chanType(get, set) : ChanType;
    function get_chanType():ChanType return this.chanType;
    function set_chanType(v:ChanType):ChanType {
        this.chanType = v;
        return v;
    }
    public var _u(get, set) : UncommonType;
    function get__u():UncommonType return this._u;
    function set__u(v:UncommonType):UncommonType {
        this._u = v;
        return v;
    }
    public function new(?chanType:ChanType, ?_u:UncommonType) this = new stdgo._internal.internal.abi.Abi_t_uncommon___localname___u_8727.T_uncommon___localname___u_8727(chanType, _u);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:dox(hide) abstract T_uncommon___localname___u_8826(stdgo._internal.internal.abi.Abi_t_uncommon___localname___u_8826.T_uncommon___localname___u_8826) from stdgo._internal.internal.abi.Abi_t_uncommon___localname___u_8826.T_uncommon___localname___u_8826 to stdgo._internal.internal.abi.Abi_t_uncommon___localname___u_8826.T_uncommon___localname___u_8826 {
    public var mapType(get, set) : MapType;
    function get_mapType():MapType return this.mapType;
    function set_mapType(v:MapType):MapType {
        this.mapType = v;
        return v;
    }
    public var _u(get, set) : UncommonType;
    function get__u():UncommonType return this._u;
    function set__u(v:UncommonType):UncommonType {
        this._u = v;
        return v;
    }
    public function new(?mapType:MapType, ?_u:UncommonType) this = new stdgo._internal.internal.abi.Abi_t_uncommon___localname___u_8826.T_uncommon___localname___u_8826(mapType, _u);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:dox(hide) abstract T_uncommon___localname___u_8930(stdgo._internal.internal.abi.Abi_t_uncommon___localname___u_8930.T_uncommon___localname___u_8930) from stdgo._internal.internal.abi.Abi_t_uncommon___localname___u_8930.T_uncommon___localname___u_8930 to stdgo._internal.internal.abi.Abi_t_uncommon___localname___u_8930.T_uncommon___localname___u_8930 {
    public var interfaceType(get, set) : InterfaceType;
    function get_interfaceType():InterfaceType return this.interfaceType;
    function set_interfaceType(v:InterfaceType):InterfaceType {
        this.interfaceType = v;
        return v;
    }
    public var _u(get, set) : UncommonType;
    function get__u():UncommonType return this._u;
    function set__u(v:UncommonType):UncommonType {
        this._u = v;
        return v;
    }
    public function new(?interfaceType:InterfaceType, ?_u:UncommonType) this = new stdgo._internal.internal.abi.Abi_t_uncommon___localname___u_8930.T_uncommon___localname___u_8930(interfaceType, _u);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:dox(hide) abstract T_uncommon___localname___u_9033(stdgo._internal.internal.abi.Abi_t_uncommon___localname___u_9033.T_uncommon___localname___u_9033) from stdgo._internal.internal.abi.Abi_t_uncommon___localname___u_9033.T_uncommon___localname___u_9033 to stdgo._internal.internal.abi.Abi_t_uncommon___localname___u_9033.T_uncommon___localname___u_9033 {
    public var type(get, set) : Type_;
    function get_type():Type_ return this.type;
    function set_type(v:Type_):Type_ {
        this.type = v;
        return v;
    }
    public var _u(get, set) : UncommonType;
    function get__u():UncommonType return this._u;
    function set__u(v:UncommonType):UncommonType {
        this._u = v;
        return v;
    }
    public function new(?type:Type_, ?_u:UncommonType) this = new stdgo._internal.internal.abi.Abi_t_uncommon___localname___u_9033.T_uncommon___localname___u_9033(type, _u);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef MethodPointer = stdgo._internal.internal.abi.Abi_methodpointer.MethodPointer;
class Method_static_extension {

}
typedef UncommonTypePointer = stdgo._internal.internal.abi.Abi_uncommontypepointer.UncommonTypePointer;
class UncommonType_static_extension {
    static public function exportedMethods(_t:UncommonType):Array<Method> {
        final _t = (_t : stdgo.Ref<stdgo._internal.internal.abi.Abi_uncommontype.UncommonType>);
        return [for (i in stdgo._internal.internal.abi.Abi_uncommontype_static_extension.UncommonType_static_extension.exportedMethods(_t)) i];
    }
    static public function methods(_t:UncommonType):Array<Method> {
        final _t = (_t : stdgo.Ref<stdgo._internal.internal.abi.Abi_uncommontype.UncommonType>);
        return [for (i in stdgo._internal.internal.abi.Abi_uncommontype_static_extension.UncommonType_static_extension.methods(_t)) i];
    }
}
typedef ImethodPointer = stdgo._internal.internal.abi.Abi_imethodpointer.ImethodPointer;
class Imethod_static_extension {

}
typedef ArrayTypePointer = stdgo._internal.internal.abi.Abi_arraytypepointer.ArrayTypePointer;
class ArrayType_static_extension {
    public static function uncommon(__self__:stdgo._internal.internal.abi.Abi_arraytype.ArrayType):UncommonType {
        return stdgo._internal.internal.abi.Abi_arraytype_static_extension.ArrayType_static_extension.uncommon(__self__);
    }
    public static function structType(__self__:stdgo._internal.internal.abi.Abi_arraytype.ArrayType):StructType {
        return stdgo._internal.internal.abi.Abi_arraytype_static_extension.ArrayType_static_extension.structType(__self__);
    }
    public static function size(__self__:stdgo._internal.internal.abi.Abi_arraytype.ArrayType):stdgo.GoUIntptr {
        return stdgo._internal.internal.abi.Abi_arraytype_static_extension.ArrayType_static_extension.size(__self__);
    }
    public static function pointers(__self__:stdgo._internal.internal.abi.Abi_arraytype.ArrayType):Bool {
        return stdgo._internal.internal.abi.Abi_arraytype_static_extension.ArrayType_static_extension.pointers(__self__);
    }
    public static function numMethod(__self__:stdgo._internal.internal.abi.Abi_arraytype.ArrayType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi_arraytype_static_extension.ArrayType_static_extension.numMethod(__self__);
    }
    public static function mapType(__self__:stdgo._internal.internal.abi.Abi_arraytype.ArrayType):MapType {
        return stdgo._internal.internal.abi.Abi_arraytype_static_extension.ArrayType_static_extension.mapType(__self__);
    }
    public static function kind(__self__:stdgo._internal.internal.abi.Abi_arraytype.ArrayType):Kind {
        return stdgo._internal.internal.abi.Abi_arraytype_static_extension.ArrayType_static_extension.kind(__self__);
    }
    public static function key(__self__:stdgo._internal.internal.abi.Abi_arraytype.ArrayType):Type_ {
        return stdgo._internal.internal.abi.Abi_arraytype_static_extension.ArrayType_static_extension.key(__self__);
    }
    public static function isDirectIface(__self__:stdgo._internal.internal.abi.Abi_arraytype.ArrayType):Bool {
        return stdgo._internal.internal.abi.Abi_arraytype_static_extension.ArrayType_static_extension.isDirectIface(__self__);
    }
    public static function interfaceType(__self__:stdgo._internal.internal.abi.Abi_arraytype.ArrayType):InterfaceType {
        return stdgo._internal.internal.abi.Abi_arraytype_static_extension.ArrayType_static_extension.interfaceType(__self__);
    }
    public static function ifaceIndir(__self__:stdgo._internal.internal.abi.Abi_arraytype.ArrayType):Bool {
        return stdgo._internal.internal.abi.Abi_arraytype_static_extension.ArrayType_static_extension.ifaceIndir(__self__);
    }
    public static function hasName(__self__:stdgo._internal.internal.abi.Abi_arraytype.ArrayType):Bool {
        return stdgo._internal.internal.abi.Abi_arraytype_static_extension.ArrayType_static_extension.hasName(__self__);
    }
    public static function gcSlice(__self__:stdgo._internal.internal.abi.Abi_arraytype.ArrayType, _0:stdgo.GoUIntptr, _1:stdgo.GoUIntptr):Array<std.UInt> {
        final _0 = (_0 : stdgo.GoUIntptr);
        final _1 = (_1 : stdgo.GoUIntptr);
        return [for (i in stdgo._internal.internal.abi.Abi_arraytype_static_extension.ArrayType_static_extension.gcSlice(__self__, _0, _1)) i];
    }
    public static function funcType(__self__:stdgo._internal.internal.abi.Abi_arraytype.ArrayType):FuncType {
        return stdgo._internal.internal.abi.Abi_arraytype_static_extension.ArrayType_static_extension.funcType(__self__);
    }
    public static function fieldAlign(__self__:stdgo._internal.internal.abi.Abi_arraytype.ArrayType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi_arraytype_static_extension.ArrayType_static_extension.fieldAlign(__self__);
    }
    public static function exportedMethods(__self__:stdgo._internal.internal.abi.Abi_arraytype.ArrayType):Array<Method> {
        return [for (i in stdgo._internal.internal.abi.Abi_arraytype_static_extension.ArrayType_static_extension.exportedMethods(__self__)) i];
    }
    public static function common(__self__:stdgo._internal.internal.abi.Abi_arraytype.ArrayType):Type_ {
        return stdgo._internal.internal.abi.Abi_arraytype_static_extension.ArrayType_static_extension.common(__self__);
    }
    public static function chanDir(__self__:stdgo._internal.internal.abi.Abi_arraytype.ArrayType):ChanDir {
        return stdgo._internal.internal.abi.Abi_arraytype_static_extension.ArrayType_static_extension.chanDir(__self__);
    }
    public static function arrayType(__self__:stdgo._internal.internal.abi.Abi_arraytype.ArrayType):ArrayType {
        return stdgo._internal.internal.abi.Abi_arraytype_static_extension.ArrayType_static_extension.arrayType(__self__);
    }
    public static function align(__self__:stdgo._internal.internal.abi.Abi_arraytype.ArrayType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi_arraytype_static_extension.ArrayType_static_extension.align(__self__);
    }
}
typedef ChanTypePointer = stdgo._internal.internal.abi.Abi_chantypepointer.ChanTypePointer;
class ChanType_static_extension {
    public static function uncommon(__self__:stdgo._internal.internal.abi.Abi_chantype.ChanType):UncommonType {
        return stdgo._internal.internal.abi.Abi_chantype_static_extension.ChanType_static_extension.uncommon(__self__);
    }
    public static function structType(__self__:stdgo._internal.internal.abi.Abi_chantype.ChanType):StructType {
        return stdgo._internal.internal.abi.Abi_chantype_static_extension.ChanType_static_extension.structType(__self__);
    }
    public static function size(__self__:stdgo._internal.internal.abi.Abi_chantype.ChanType):stdgo.GoUIntptr {
        return stdgo._internal.internal.abi.Abi_chantype_static_extension.ChanType_static_extension.size(__self__);
    }
    public static function pointers(__self__:stdgo._internal.internal.abi.Abi_chantype.ChanType):Bool {
        return stdgo._internal.internal.abi.Abi_chantype_static_extension.ChanType_static_extension.pointers(__self__);
    }
    public static function numMethod(__self__:stdgo._internal.internal.abi.Abi_chantype.ChanType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi_chantype_static_extension.ChanType_static_extension.numMethod(__self__);
    }
    public static function mapType(__self__:stdgo._internal.internal.abi.Abi_chantype.ChanType):MapType {
        return stdgo._internal.internal.abi.Abi_chantype_static_extension.ChanType_static_extension.mapType(__self__);
    }
    public static function len(__self__:stdgo._internal.internal.abi.Abi_chantype.ChanType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi_chantype_static_extension.ChanType_static_extension.len(__self__);
    }
    public static function kind(__self__:stdgo._internal.internal.abi.Abi_chantype.ChanType):Kind {
        return stdgo._internal.internal.abi.Abi_chantype_static_extension.ChanType_static_extension.kind(__self__);
    }
    public static function key(__self__:stdgo._internal.internal.abi.Abi_chantype.ChanType):Type_ {
        return stdgo._internal.internal.abi.Abi_chantype_static_extension.ChanType_static_extension.key(__self__);
    }
    public static function isDirectIface(__self__:stdgo._internal.internal.abi.Abi_chantype.ChanType):Bool {
        return stdgo._internal.internal.abi.Abi_chantype_static_extension.ChanType_static_extension.isDirectIface(__self__);
    }
    public static function interfaceType(__self__:stdgo._internal.internal.abi.Abi_chantype.ChanType):InterfaceType {
        return stdgo._internal.internal.abi.Abi_chantype_static_extension.ChanType_static_extension.interfaceType(__self__);
    }
    public static function ifaceIndir(__self__:stdgo._internal.internal.abi.Abi_chantype.ChanType):Bool {
        return stdgo._internal.internal.abi.Abi_chantype_static_extension.ChanType_static_extension.ifaceIndir(__self__);
    }
    public static function hasName(__self__:stdgo._internal.internal.abi.Abi_chantype.ChanType):Bool {
        return stdgo._internal.internal.abi.Abi_chantype_static_extension.ChanType_static_extension.hasName(__self__);
    }
    public static function gcSlice(__self__:stdgo._internal.internal.abi.Abi_chantype.ChanType, _0:stdgo.GoUIntptr, _1:stdgo.GoUIntptr):Array<std.UInt> {
        final _0 = (_0 : stdgo.GoUIntptr);
        final _1 = (_1 : stdgo.GoUIntptr);
        return [for (i in stdgo._internal.internal.abi.Abi_chantype_static_extension.ChanType_static_extension.gcSlice(__self__, _0, _1)) i];
    }
    public static function funcType(__self__:stdgo._internal.internal.abi.Abi_chantype.ChanType):FuncType {
        return stdgo._internal.internal.abi.Abi_chantype_static_extension.ChanType_static_extension.funcType(__self__);
    }
    public static function fieldAlign(__self__:stdgo._internal.internal.abi.Abi_chantype.ChanType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi_chantype_static_extension.ChanType_static_extension.fieldAlign(__self__);
    }
    public static function exportedMethods(__self__:stdgo._internal.internal.abi.Abi_chantype.ChanType):Array<Method> {
        return [for (i in stdgo._internal.internal.abi.Abi_chantype_static_extension.ChanType_static_extension.exportedMethods(__self__)) i];
    }
    public static function common(__self__:stdgo._internal.internal.abi.Abi_chantype.ChanType):Type_ {
        return stdgo._internal.internal.abi.Abi_chantype_static_extension.ChanType_static_extension.common(__self__);
    }
    public static function chanDir(__self__:stdgo._internal.internal.abi.Abi_chantype.ChanType):ChanDir {
        return stdgo._internal.internal.abi.Abi_chantype_static_extension.ChanType_static_extension.chanDir(__self__);
    }
    public static function arrayType(__self__:stdgo._internal.internal.abi.Abi_chantype.ChanType):ArrayType {
        return stdgo._internal.internal.abi.Abi_chantype_static_extension.ChanType_static_extension.arrayType(__self__);
    }
    public static function align(__self__:stdgo._internal.internal.abi.Abi_chantype.ChanType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi_chantype_static_extension.ChanType_static_extension.align(__self__);
    }
}
@:dox(hide) typedef T_structTypeUncommonPointer = stdgo._internal.internal.abi.Abi_t_structtypeuncommonpointer.T_structTypeUncommonPointer;
@:dox(hide) class T_structTypeUncommon_static_extension {
    public static function uncommon(__self__:stdgo._internal.internal.abi.Abi_t_structtypeuncommon.T_structTypeUncommon):UncommonType {
        return stdgo._internal.internal.abi.Abi_t_structtypeuncommon_static_extension.T_structTypeUncommon_static_extension.uncommon(__self__);
    }
    public static function size(__self__:stdgo._internal.internal.abi.Abi_t_structtypeuncommon.T_structTypeUncommon):stdgo.GoUIntptr {
        return stdgo._internal.internal.abi.Abi_t_structtypeuncommon_static_extension.T_structTypeUncommon_static_extension.size(__self__);
    }
    public static function pointers(__self__:stdgo._internal.internal.abi.Abi_t_structtypeuncommon.T_structTypeUncommon):Bool {
        return stdgo._internal.internal.abi.Abi_t_structtypeuncommon_static_extension.T_structTypeUncommon_static_extension.pointers(__self__);
    }
    public static function numMethod(__self__:stdgo._internal.internal.abi.Abi_t_structtypeuncommon.T_structTypeUncommon):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi_t_structtypeuncommon_static_extension.T_structTypeUncommon_static_extension.numMethod(__self__);
    }
    public static function mapType(__self__:stdgo._internal.internal.abi.Abi_t_structtypeuncommon.T_structTypeUncommon):MapType {
        return stdgo._internal.internal.abi.Abi_t_structtypeuncommon_static_extension.T_structTypeUncommon_static_extension.mapType(__self__);
    }
    public static function len(__self__:stdgo._internal.internal.abi.Abi_t_structtypeuncommon.T_structTypeUncommon):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi_t_structtypeuncommon_static_extension.T_structTypeUncommon_static_extension.len(__self__);
    }
    public static function kind(__self__:stdgo._internal.internal.abi.Abi_t_structtypeuncommon.T_structTypeUncommon):Kind {
        return stdgo._internal.internal.abi.Abi_t_structtypeuncommon_static_extension.T_structTypeUncommon_static_extension.kind(__self__);
    }
    public static function key(__self__:stdgo._internal.internal.abi.Abi_t_structtypeuncommon.T_structTypeUncommon):Type_ {
        return stdgo._internal.internal.abi.Abi_t_structtypeuncommon_static_extension.T_structTypeUncommon_static_extension.key(__self__);
    }
    public static function isDirectIface(__self__:stdgo._internal.internal.abi.Abi_t_structtypeuncommon.T_structTypeUncommon):Bool {
        return stdgo._internal.internal.abi.Abi_t_structtypeuncommon_static_extension.T_structTypeUncommon_static_extension.isDirectIface(__self__);
    }
    public static function interfaceType(__self__:stdgo._internal.internal.abi.Abi_t_structtypeuncommon.T_structTypeUncommon):InterfaceType {
        return stdgo._internal.internal.abi.Abi_t_structtypeuncommon_static_extension.T_structTypeUncommon_static_extension.interfaceType(__self__);
    }
    public static function ifaceIndir(__self__:stdgo._internal.internal.abi.Abi_t_structtypeuncommon.T_structTypeUncommon):Bool {
        return stdgo._internal.internal.abi.Abi_t_structtypeuncommon_static_extension.T_structTypeUncommon_static_extension.ifaceIndir(__self__);
    }
    public static function hasName(__self__:stdgo._internal.internal.abi.Abi_t_structtypeuncommon.T_structTypeUncommon):Bool {
        return stdgo._internal.internal.abi.Abi_t_structtypeuncommon_static_extension.T_structTypeUncommon_static_extension.hasName(__self__);
    }
    public static function gcSlice(__self__:stdgo._internal.internal.abi.Abi_t_structtypeuncommon.T_structTypeUncommon, _0:stdgo.GoUIntptr, _1:stdgo.GoUIntptr):Array<std.UInt> {
        final _0 = (_0 : stdgo.GoUIntptr);
        final _1 = (_1 : stdgo.GoUIntptr);
        return [for (i in stdgo._internal.internal.abi.Abi_t_structtypeuncommon_static_extension.T_structTypeUncommon_static_extension.gcSlice(__self__, _0, _1)) i];
    }
    public static function funcType(__self__:stdgo._internal.internal.abi.Abi_t_structtypeuncommon.T_structTypeUncommon):FuncType {
        return stdgo._internal.internal.abi.Abi_t_structtypeuncommon_static_extension.T_structTypeUncommon_static_extension.funcType(__self__);
    }
    public static function fieldAlign(__self__:stdgo._internal.internal.abi.Abi_t_structtypeuncommon.T_structTypeUncommon):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi_t_structtypeuncommon_static_extension.T_structTypeUncommon_static_extension.fieldAlign(__self__);
    }
    public static function exportedMethods(__self__:stdgo._internal.internal.abi.Abi_t_structtypeuncommon.T_structTypeUncommon):Array<Method> {
        return [for (i in stdgo._internal.internal.abi.Abi_t_structtypeuncommon_static_extension.T_structTypeUncommon_static_extension.exportedMethods(__self__)) i];
    }
    public static function elem(__self__:stdgo._internal.internal.abi.Abi_t_structtypeuncommon.T_structTypeUncommon):Type_ {
        return stdgo._internal.internal.abi.Abi_t_structtypeuncommon_static_extension.T_structTypeUncommon_static_extension.elem(__self__);
    }
    public static function common(__self__:stdgo._internal.internal.abi.Abi_t_structtypeuncommon.T_structTypeUncommon):Type_ {
        return stdgo._internal.internal.abi.Abi_t_structtypeuncommon_static_extension.T_structTypeUncommon_static_extension.common(__self__);
    }
    public static function chanDir(__self__:stdgo._internal.internal.abi.Abi_t_structtypeuncommon.T_structTypeUncommon):ChanDir {
        return stdgo._internal.internal.abi.Abi_t_structtypeuncommon_static_extension.T_structTypeUncommon_static_extension.chanDir(__self__);
    }
    public static function arrayType(__self__:stdgo._internal.internal.abi.Abi_t_structtypeuncommon.T_structTypeUncommon):ArrayType {
        return stdgo._internal.internal.abi.Abi_t_structtypeuncommon_static_extension.T_structTypeUncommon_static_extension.arrayType(__self__);
    }
    public static function align(__self__:stdgo._internal.internal.abi.Abi_t_structtypeuncommon.T_structTypeUncommon):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi_t_structtypeuncommon_static_extension.T_structTypeUncommon_static_extension.align(__self__);
    }
}
typedef InterfaceTypePointer = stdgo._internal.internal.abi.Abi_interfacetypepointer.InterfaceTypePointer;
class InterfaceType_static_extension {
    static public function numMethod(_t:InterfaceType):StdTypes.Int {
        final _t = (_t : stdgo.Ref<stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType>);
        return stdgo._internal.internal.abi.Abi_interfacetype_static_extension.InterfaceType_static_extension.numMethod(_t);
    }
    public static function uncommon(__self__:stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType):UncommonType {
        return stdgo._internal.internal.abi.Abi_interfacetype_static_extension.InterfaceType_static_extension.uncommon(__self__);
    }
    public static function structType(__self__:stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType):StructType {
        return stdgo._internal.internal.abi.Abi_interfacetype_static_extension.InterfaceType_static_extension.structType(__self__);
    }
    public static function size(__self__:stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType):stdgo.GoUIntptr {
        return stdgo._internal.internal.abi.Abi_interfacetype_static_extension.InterfaceType_static_extension.size(__self__);
    }
    public static function pointers(__self__:stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType):Bool {
        return stdgo._internal.internal.abi.Abi_interfacetype_static_extension.InterfaceType_static_extension.pointers(__self__);
    }
    public static function mapType(__self__:stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType):MapType {
        return stdgo._internal.internal.abi.Abi_interfacetype_static_extension.InterfaceType_static_extension.mapType(__self__);
    }
    public static function len(__self__:stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi_interfacetype_static_extension.InterfaceType_static_extension.len(__self__);
    }
    public static function kind(__self__:stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType):Kind {
        return stdgo._internal.internal.abi.Abi_interfacetype_static_extension.InterfaceType_static_extension.kind(__self__);
    }
    public static function key(__self__:stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType):Type_ {
        return stdgo._internal.internal.abi.Abi_interfacetype_static_extension.InterfaceType_static_extension.key(__self__);
    }
    public static function isDirectIface(__self__:stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType):Bool {
        return stdgo._internal.internal.abi.Abi_interfacetype_static_extension.InterfaceType_static_extension.isDirectIface(__self__);
    }
    public static function interfaceType(__self__:stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType):InterfaceType {
        return stdgo._internal.internal.abi.Abi_interfacetype_static_extension.InterfaceType_static_extension.interfaceType(__self__);
    }
    public static function ifaceIndir(__self__:stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType):Bool {
        return stdgo._internal.internal.abi.Abi_interfacetype_static_extension.InterfaceType_static_extension.ifaceIndir(__self__);
    }
    public static function hasName(__self__:stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType):Bool {
        return stdgo._internal.internal.abi.Abi_interfacetype_static_extension.InterfaceType_static_extension.hasName(__self__);
    }
    public static function gcSlice(__self__:stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType, _0:stdgo.GoUIntptr, _1:stdgo.GoUIntptr):Array<std.UInt> {
        final _0 = (_0 : stdgo.GoUIntptr);
        final _1 = (_1 : stdgo.GoUIntptr);
        return [for (i in stdgo._internal.internal.abi.Abi_interfacetype_static_extension.InterfaceType_static_extension.gcSlice(__self__, _0, _1)) i];
    }
    public static function funcType(__self__:stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType):FuncType {
        return stdgo._internal.internal.abi.Abi_interfacetype_static_extension.InterfaceType_static_extension.funcType(__self__);
    }
    public static function fieldAlign(__self__:stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi_interfacetype_static_extension.InterfaceType_static_extension.fieldAlign(__self__);
    }
    public static function exportedMethods(__self__:stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType):Array<Method> {
        return [for (i in stdgo._internal.internal.abi.Abi_interfacetype_static_extension.InterfaceType_static_extension.exportedMethods(__self__)) i];
    }
    public static function elem(__self__:stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType):Type_ {
        return stdgo._internal.internal.abi.Abi_interfacetype_static_extension.InterfaceType_static_extension.elem(__self__);
    }
    public static function common(__self__:stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType):Type_ {
        return stdgo._internal.internal.abi.Abi_interfacetype_static_extension.InterfaceType_static_extension.common(__self__);
    }
    public static function chanDir(__self__:stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType):ChanDir {
        return stdgo._internal.internal.abi.Abi_interfacetype_static_extension.InterfaceType_static_extension.chanDir(__self__);
    }
    public static function arrayType(__self__:stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType):ArrayType {
        return stdgo._internal.internal.abi.Abi_interfacetype_static_extension.InterfaceType_static_extension.arrayType(__self__);
    }
    public static function align(__self__:stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi_interfacetype_static_extension.InterfaceType_static_extension.align(__self__);
    }
}
typedef MapTypePointer = stdgo._internal.internal.abi.Abi_maptypepointer.MapTypePointer;
class MapType_static_extension {
    static public function hashMightPanic(_mt:MapType):Bool {
        final _mt = (_mt : stdgo.Ref<stdgo._internal.internal.abi.Abi_maptype.MapType>);
        return stdgo._internal.internal.abi.Abi_maptype_static_extension.MapType_static_extension.hashMightPanic(_mt);
    }
    static public function needKeyUpdate(_mt:MapType):Bool {
        final _mt = (_mt : stdgo.Ref<stdgo._internal.internal.abi.Abi_maptype.MapType>);
        return stdgo._internal.internal.abi.Abi_maptype_static_extension.MapType_static_extension.needKeyUpdate(_mt);
    }
    static public function reflexiveKey(_mt:MapType):Bool {
        final _mt = (_mt : stdgo.Ref<stdgo._internal.internal.abi.Abi_maptype.MapType>);
        return stdgo._internal.internal.abi.Abi_maptype_static_extension.MapType_static_extension.reflexiveKey(_mt);
    }
    static public function indirectElem(_mt:MapType):Bool {
        final _mt = (_mt : stdgo.Ref<stdgo._internal.internal.abi.Abi_maptype.MapType>);
        return stdgo._internal.internal.abi.Abi_maptype_static_extension.MapType_static_extension.indirectElem(_mt);
    }
    static public function indirectKey(_mt:MapType):Bool {
        final _mt = (_mt : stdgo.Ref<stdgo._internal.internal.abi.Abi_maptype.MapType>);
        return stdgo._internal.internal.abi.Abi_maptype_static_extension.MapType_static_extension.indirectKey(_mt);
    }
    public static function uncommon(__self__:stdgo._internal.internal.abi.Abi_maptype.MapType):UncommonType {
        return stdgo._internal.internal.abi.Abi_maptype_static_extension.MapType_static_extension.uncommon(__self__);
    }
    public static function structType(__self__:stdgo._internal.internal.abi.Abi_maptype.MapType):StructType {
        return stdgo._internal.internal.abi.Abi_maptype_static_extension.MapType_static_extension.structType(__self__);
    }
    public static function size(__self__:stdgo._internal.internal.abi.Abi_maptype.MapType):stdgo.GoUIntptr {
        return stdgo._internal.internal.abi.Abi_maptype_static_extension.MapType_static_extension.size(__self__);
    }
    public static function pointers(__self__:stdgo._internal.internal.abi.Abi_maptype.MapType):Bool {
        return stdgo._internal.internal.abi.Abi_maptype_static_extension.MapType_static_extension.pointers(__self__);
    }
    public static function numMethod(__self__:stdgo._internal.internal.abi.Abi_maptype.MapType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi_maptype_static_extension.MapType_static_extension.numMethod(__self__);
    }
    public static function mapType(__self__:stdgo._internal.internal.abi.Abi_maptype.MapType):MapType {
        return stdgo._internal.internal.abi.Abi_maptype_static_extension.MapType_static_extension.mapType(__self__);
    }
    public static function len(__self__:stdgo._internal.internal.abi.Abi_maptype.MapType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi_maptype_static_extension.MapType_static_extension.len(__self__);
    }
    public static function kind(__self__:stdgo._internal.internal.abi.Abi_maptype.MapType):Kind {
        return stdgo._internal.internal.abi.Abi_maptype_static_extension.MapType_static_extension.kind(__self__);
    }
    public static function isDirectIface(__self__:stdgo._internal.internal.abi.Abi_maptype.MapType):Bool {
        return stdgo._internal.internal.abi.Abi_maptype_static_extension.MapType_static_extension.isDirectIface(__self__);
    }
    public static function interfaceType(__self__:stdgo._internal.internal.abi.Abi_maptype.MapType):InterfaceType {
        return stdgo._internal.internal.abi.Abi_maptype_static_extension.MapType_static_extension.interfaceType(__self__);
    }
    public static function ifaceIndir(__self__:stdgo._internal.internal.abi.Abi_maptype.MapType):Bool {
        return stdgo._internal.internal.abi.Abi_maptype_static_extension.MapType_static_extension.ifaceIndir(__self__);
    }
    public static function hasName(__self__:stdgo._internal.internal.abi.Abi_maptype.MapType):Bool {
        return stdgo._internal.internal.abi.Abi_maptype_static_extension.MapType_static_extension.hasName(__self__);
    }
    public static function gcSlice(__self__:stdgo._internal.internal.abi.Abi_maptype.MapType, _0:stdgo.GoUIntptr, _1:stdgo.GoUIntptr):Array<std.UInt> {
        final _0 = (_0 : stdgo.GoUIntptr);
        final _1 = (_1 : stdgo.GoUIntptr);
        return [for (i in stdgo._internal.internal.abi.Abi_maptype_static_extension.MapType_static_extension.gcSlice(__self__, _0, _1)) i];
    }
    public static function funcType(__self__:stdgo._internal.internal.abi.Abi_maptype.MapType):FuncType {
        return stdgo._internal.internal.abi.Abi_maptype_static_extension.MapType_static_extension.funcType(__self__);
    }
    public static function fieldAlign(__self__:stdgo._internal.internal.abi.Abi_maptype.MapType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi_maptype_static_extension.MapType_static_extension.fieldAlign(__self__);
    }
    public static function exportedMethods(__self__:stdgo._internal.internal.abi.Abi_maptype.MapType):Array<Method> {
        return [for (i in stdgo._internal.internal.abi.Abi_maptype_static_extension.MapType_static_extension.exportedMethods(__self__)) i];
    }
    public static function common(__self__:stdgo._internal.internal.abi.Abi_maptype.MapType):Type_ {
        return stdgo._internal.internal.abi.Abi_maptype_static_extension.MapType_static_extension.common(__self__);
    }
    public static function chanDir(__self__:stdgo._internal.internal.abi.Abi_maptype.MapType):ChanDir {
        return stdgo._internal.internal.abi.Abi_maptype_static_extension.MapType_static_extension.chanDir(__self__);
    }
    public static function arrayType(__self__:stdgo._internal.internal.abi.Abi_maptype.MapType):ArrayType {
        return stdgo._internal.internal.abi.Abi_maptype_static_extension.MapType_static_extension.arrayType(__self__);
    }
    public static function align(__self__:stdgo._internal.internal.abi.Abi_maptype.MapType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi_maptype_static_extension.MapType_static_extension.align(__self__);
    }
}
typedef SliceTypePointer = stdgo._internal.internal.abi.Abi_slicetypepointer.SliceTypePointer;
class SliceType_static_extension {
    public static function uncommon(__self__:stdgo._internal.internal.abi.Abi_slicetype.SliceType):UncommonType {
        return stdgo._internal.internal.abi.Abi_slicetype_static_extension.SliceType_static_extension.uncommon(__self__);
    }
    public static function structType(__self__:stdgo._internal.internal.abi.Abi_slicetype.SliceType):StructType {
        return stdgo._internal.internal.abi.Abi_slicetype_static_extension.SliceType_static_extension.structType(__self__);
    }
    public static function size(__self__:stdgo._internal.internal.abi.Abi_slicetype.SliceType):stdgo.GoUIntptr {
        return stdgo._internal.internal.abi.Abi_slicetype_static_extension.SliceType_static_extension.size(__self__);
    }
    public static function pointers(__self__:stdgo._internal.internal.abi.Abi_slicetype.SliceType):Bool {
        return stdgo._internal.internal.abi.Abi_slicetype_static_extension.SliceType_static_extension.pointers(__self__);
    }
    public static function numMethod(__self__:stdgo._internal.internal.abi.Abi_slicetype.SliceType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi_slicetype_static_extension.SliceType_static_extension.numMethod(__self__);
    }
    public static function mapType(__self__:stdgo._internal.internal.abi.Abi_slicetype.SliceType):MapType {
        return stdgo._internal.internal.abi.Abi_slicetype_static_extension.SliceType_static_extension.mapType(__self__);
    }
    public static function len(__self__:stdgo._internal.internal.abi.Abi_slicetype.SliceType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi_slicetype_static_extension.SliceType_static_extension.len(__self__);
    }
    public static function kind(__self__:stdgo._internal.internal.abi.Abi_slicetype.SliceType):Kind {
        return stdgo._internal.internal.abi.Abi_slicetype_static_extension.SliceType_static_extension.kind(__self__);
    }
    public static function key(__self__:stdgo._internal.internal.abi.Abi_slicetype.SliceType):Type_ {
        return stdgo._internal.internal.abi.Abi_slicetype_static_extension.SliceType_static_extension.key(__self__);
    }
    public static function isDirectIface(__self__:stdgo._internal.internal.abi.Abi_slicetype.SliceType):Bool {
        return stdgo._internal.internal.abi.Abi_slicetype_static_extension.SliceType_static_extension.isDirectIface(__self__);
    }
    public static function interfaceType(__self__:stdgo._internal.internal.abi.Abi_slicetype.SliceType):InterfaceType {
        return stdgo._internal.internal.abi.Abi_slicetype_static_extension.SliceType_static_extension.interfaceType(__self__);
    }
    public static function ifaceIndir(__self__:stdgo._internal.internal.abi.Abi_slicetype.SliceType):Bool {
        return stdgo._internal.internal.abi.Abi_slicetype_static_extension.SliceType_static_extension.ifaceIndir(__self__);
    }
    public static function hasName(__self__:stdgo._internal.internal.abi.Abi_slicetype.SliceType):Bool {
        return stdgo._internal.internal.abi.Abi_slicetype_static_extension.SliceType_static_extension.hasName(__self__);
    }
    public static function gcSlice(__self__:stdgo._internal.internal.abi.Abi_slicetype.SliceType, _0:stdgo.GoUIntptr, _1:stdgo.GoUIntptr):Array<std.UInt> {
        final _0 = (_0 : stdgo.GoUIntptr);
        final _1 = (_1 : stdgo.GoUIntptr);
        return [for (i in stdgo._internal.internal.abi.Abi_slicetype_static_extension.SliceType_static_extension.gcSlice(__self__, _0, _1)) i];
    }
    public static function funcType(__self__:stdgo._internal.internal.abi.Abi_slicetype.SliceType):FuncType {
        return stdgo._internal.internal.abi.Abi_slicetype_static_extension.SliceType_static_extension.funcType(__self__);
    }
    public static function fieldAlign(__self__:stdgo._internal.internal.abi.Abi_slicetype.SliceType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi_slicetype_static_extension.SliceType_static_extension.fieldAlign(__self__);
    }
    public static function exportedMethods(__self__:stdgo._internal.internal.abi.Abi_slicetype.SliceType):Array<Method> {
        return [for (i in stdgo._internal.internal.abi.Abi_slicetype_static_extension.SliceType_static_extension.exportedMethods(__self__)) i];
    }
    public static function common(__self__:stdgo._internal.internal.abi.Abi_slicetype.SliceType):Type_ {
        return stdgo._internal.internal.abi.Abi_slicetype_static_extension.SliceType_static_extension.common(__self__);
    }
    public static function chanDir(__self__:stdgo._internal.internal.abi.Abi_slicetype.SliceType):ChanDir {
        return stdgo._internal.internal.abi.Abi_slicetype_static_extension.SliceType_static_extension.chanDir(__self__);
    }
    public static function arrayType(__self__:stdgo._internal.internal.abi.Abi_slicetype.SliceType):ArrayType {
        return stdgo._internal.internal.abi.Abi_slicetype_static_extension.SliceType_static_extension.arrayType(__self__);
    }
    public static function align(__self__:stdgo._internal.internal.abi.Abi_slicetype.SliceType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi_slicetype_static_extension.SliceType_static_extension.align(__self__);
    }
}
typedef FuncTypePointer = stdgo._internal.internal.abi.Abi_functypepointer.FuncTypePointer;
class FuncType_static_extension {
    static public function isVariadic(_t:FuncType):Bool {
        final _t = (_t : stdgo.Ref<stdgo._internal.internal.abi.Abi_functype.FuncType>);
        return stdgo._internal.internal.abi.Abi_functype_static_extension.FuncType_static_extension.isVariadic(_t);
    }
    static public function outSlice(_t:FuncType):Array<Type_> {
        final _t = (_t : stdgo.Ref<stdgo._internal.internal.abi.Abi_functype.FuncType>);
        return [for (i in stdgo._internal.internal.abi.Abi_functype_static_extension.FuncType_static_extension.outSlice(_t)) i];
    }
    static public function inSlice(_t:FuncType):Array<Type_> {
        final _t = (_t : stdgo.Ref<stdgo._internal.internal.abi.Abi_functype.FuncType>);
        return [for (i in stdgo._internal.internal.abi.Abi_functype_static_extension.FuncType_static_extension.inSlice(_t)) i];
    }
    static public function out(_t:FuncType, _i:StdTypes.Int):Type_ {
        final _t = (_t : stdgo.Ref<stdgo._internal.internal.abi.Abi_functype.FuncType>);
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.internal.abi.Abi_functype_static_extension.FuncType_static_extension.out(_t, _i);
    }
    static public function numOut(_t:FuncType):StdTypes.Int {
        final _t = (_t : stdgo.Ref<stdgo._internal.internal.abi.Abi_functype.FuncType>);
        return stdgo._internal.internal.abi.Abi_functype_static_extension.FuncType_static_extension.numOut(_t);
    }
    static public function numIn(_t:FuncType):StdTypes.Int {
        final _t = (_t : stdgo.Ref<stdgo._internal.internal.abi.Abi_functype.FuncType>);
        return stdgo._internal.internal.abi.Abi_functype_static_extension.FuncType_static_extension.numIn(_t);
    }
    static public function in_(_t:FuncType, _i:StdTypes.Int):Type_ {
        final _t = (_t : stdgo.Ref<stdgo._internal.internal.abi.Abi_functype.FuncType>);
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.internal.abi.Abi_functype_static_extension.FuncType_static_extension.in_(_t, _i);
    }
    public static function uncommon(__self__:stdgo._internal.internal.abi.Abi_functype.FuncType):UncommonType {
        return stdgo._internal.internal.abi.Abi_functype_static_extension.FuncType_static_extension.uncommon(__self__);
    }
    public static function structType(__self__:stdgo._internal.internal.abi.Abi_functype.FuncType):StructType {
        return stdgo._internal.internal.abi.Abi_functype_static_extension.FuncType_static_extension.structType(__self__);
    }
    public static function size(__self__:stdgo._internal.internal.abi.Abi_functype.FuncType):stdgo.GoUIntptr {
        return stdgo._internal.internal.abi.Abi_functype_static_extension.FuncType_static_extension.size(__self__);
    }
    public static function pointers(__self__:stdgo._internal.internal.abi.Abi_functype.FuncType):Bool {
        return stdgo._internal.internal.abi.Abi_functype_static_extension.FuncType_static_extension.pointers(__self__);
    }
    public static function numMethod(__self__:stdgo._internal.internal.abi.Abi_functype.FuncType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi_functype_static_extension.FuncType_static_extension.numMethod(__self__);
    }
    public static function mapType(__self__:stdgo._internal.internal.abi.Abi_functype.FuncType):MapType {
        return stdgo._internal.internal.abi.Abi_functype_static_extension.FuncType_static_extension.mapType(__self__);
    }
    public static function len(__self__:stdgo._internal.internal.abi.Abi_functype.FuncType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi_functype_static_extension.FuncType_static_extension.len(__self__);
    }
    public static function kind(__self__:stdgo._internal.internal.abi.Abi_functype.FuncType):Kind {
        return stdgo._internal.internal.abi.Abi_functype_static_extension.FuncType_static_extension.kind(__self__);
    }
    public static function key(__self__:stdgo._internal.internal.abi.Abi_functype.FuncType):Type_ {
        return stdgo._internal.internal.abi.Abi_functype_static_extension.FuncType_static_extension.key(__self__);
    }
    public static function isDirectIface(__self__:stdgo._internal.internal.abi.Abi_functype.FuncType):Bool {
        return stdgo._internal.internal.abi.Abi_functype_static_extension.FuncType_static_extension.isDirectIface(__self__);
    }
    public static function interfaceType(__self__:stdgo._internal.internal.abi.Abi_functype.FuncType):InterfaceType {
        return stdgo._internal.internal.abi.Abi_functype_static_extension.FuncType_static_extension.interfaceType(__self__);
    }
    public static function ifaceIndir(__self__:stdgo._internal.internal.abi.Abi_functype.FuncType):Bool {
        return stdgo._internal.internal.abi.Abi_functype_static_extension.FuncType_static_extension.ifaceIndir(__self__);
    }
    public static function hasName(__self__:stdgo._internal.internal.abi.Abi_functype.FuncType):Bool {
        return stdgo._internal.internal.abi.Abi_functype_static_extension.FuncType_static_extension.hasName(__self__);
    }
    public static function gcSlice(__self__:stdgo._internal.internal.abi.Abi_functype.FuncType, _0:stdgo.GoUIntptr, _1:stdgo.GoUIntptr):Array<std.UInt> {
        final _0 = (_0 : stdgo.GoUIntptr);
        final _1 = (_1 : stdgo.GoUIntptr);
        return [for (i in stdgo._internal.internal.abi.Abi_functype_static_extension.FuncType_static_extension.gcSlice(__self__, _0, _1)) i];
    }
    public static function funcType(__self__:stdgo._internal.internal.abi.Abi_functype.FuncType):FuncType {
        return stdgo._internal.internal.abi.Abi_functype_static_extension.FuncType_static_extension.funcType(__self__);
    }
    public static function fieldAlign(__self__:stdgo._internal.internal.abi.Abi_functype.FuncType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi_functype_static_extension.FuncType_static_extension.fieldAlign(__self__);
    }
    public static function exportedMethods(__self__:stdgo._internal.internal.abi.Abi_functype.FuncType):Array<Method> {
        return [for (i in stdgo._internal.internal.abi.Abi_functype_static_extension.FuncType_static_extension.exportedMethods(__self__)) i];
    }
    public static function elem(__self__:stdgo._internal.internal.abi.Abi_functype.FuncType):Type_ {
        return stdgo._internal.internal.abi.Abi_functype_static_extension.FuncType_static_extension.elem(__self__);
    }
    public static function common(__self__:stdgo._internal.internal.abi.Abi_functype.FuncType):Type_ {
        return stdgo._internal.internal.abi.Abi_functype_static_extension.FuncType_static_extension.common(__self__);
    }
    public static function chanDir(__self__:stdgo._internal.internal.abi.Abi_functype.FuncType):ChanDir {
        return stdgo._internal.internal.abi.Abi_functype_static_extension.FuncType_static_extension.chanDir(__self__);
    }
    public static function arrayType(__self__:stdgo._internal.internal.abi.Abi_functype.FuncType):ArrayType {
        return stdgo._internal.internal.abi.Abi_functype_static_extension.FuncType_static_extension.arrayType(__self__);
    }
    public static function align(__self__:stdgo._internal.internal.abi.Abi_functype.FuncType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi_functype_static_extension.FuncType_static_extension.align(__self__);
    }
}
typedef PtrTypePointer = stdgo._internal.internal.abi.Abi_ptrtypepointer.PtrTypePointer;
class PtrType_static_extension {
    public static function uncommon(__self__:stdgo._internal.internal.abi.Abi_ptrtype.PtrType):UncommonType {
        return stdgo._internal.internal.abi.Abi_ptrtype_static_extension.PtrType_static_extension.uncommon(__self__);
    }
    public static function structType(__self__:stdgo._internal.internal.abi.Abi_ptrtype.PtrType):StructType {
        return stdgo._internal.internal.abi.Abi_ptrtype_static_extension.PtrType_static_extension.structType(__self__);
    }
    public static function size(__self__:stdgo._internal.internal.abi.Abi_ptrtype.PtrType):stdgo.GoUIntptr {
        return stdgo._internal.internal.abi.Abi_ptrtype_static_extension.PtrType_static_extension.size(__self__);
    }
    public static function pointers(__self__:stdgo._internal.internal.abi.Abi_ptrtype.PtrType):Bool {
        return stdgo._internal.internal.abi.Abi_ptrtype_static_extension.PtrType_static_extension.pointers(__self__);
    }
    public static function numMethod(__self__:stdgo._internal.internal.abi.Abi_ptrtype.PtrType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi_ptrtype_static_extension.PtrType_static_extension.numMethod(__self__);
    }
    public static function mapType(__self__:stdgo._internal.internal.abi.Abi_ptrtype.PtrType):MapType {
        return stdgo._internal.internal.abi.Abi_ptrtype_static_extension.PtrType_static_extension.mapType(__self__);
    }
    public static function len(__self__:stdgo._internal.internal.abi.Abi_ptrtype.PtrType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi_ptrtype_static_extension.PtrType_static_extension.len(__self__);
    }
    public static function kind(__self__:stdgo._internal.internal.abi.Abi_ptrtype.PtrType):Kind {
        return stdgo._internal.internal.abi.Abi_ptrtype_static_extension.PtrType_static_extension.kind(__self__);
    }
    public static function key(__self__:stdgo._internal.internal.abi.Abi_ptrtype.PtrType):Type_ {
        return stdgo._internal.internal.abi.Abi_ptrtype_static_extension.PtrType_static_extension.key(__self__);
    }
    public static function isDirectIface(__self__:stdgo._internal.internal.abi.Abi_ptrtype.PtrType):Bool {
        return stdgo._internal.internal.abi.Abi_ptrtype_static_extension.PtrType_static_extension.isDirectIface(__self__);
    }
    public static function interfaceType(__self__:stdgo._internal.internal.abi.Abi_ptrtype.PtrType):InterfaceType {
        return stdgo._internal.internal.abi.Abi_ptrtype_static_extension.PtrType_static_extension.interfaceType(__self__);
    }
    public static function ifaceIndir(__self__:stdgo._internal.internal.abi.Abi_ptrtype.PtrType):Bool {
        return stdgo._internal.internal.abi.Abi_ptrtype_static_extension.PtrType_static_extension.ifaceIndir(__self__);
    }
    public static function hasName(__self__:stdgo._internal.internal.abi.Abi_ptrtype.PtrType):Bool {
        return stdgo._internal.internal.abi.Abi_ptrtype_static_extension.PtrType_static_extension.hasName(__self__);
    }
    public static function gcSlice(__self__:stdgo._internal.internal.abi.Abi_ptrtype.PtrType, _0:stdgo.GoUIntptr, _1:stdgo.GoUIntptr):Array<std.UInt> {
        final _0 = (_0 : stdgo.GoUIntptr);
        final _1 = (_1 : stdgo.GoUIntptr);
        return [for (i in stdgo._internal.internal.abi.Abi_ptrtype_static_extension.PtrType_static_extension.gcSlice(__self__, _0, _1)) i];
    }
    public static function funcType(__self__:stdgo._internal.internal.abi.Abi_ptrtype.PtrType):FuncType {
        return stdgo._internal.internal.abi.Abi_ptrtype_static_extension.PtrType_static_extension.funcType(__self__);
    }
    public static function fieldAlign(__self__:stdgo._internal.internal.abi.Abi_ptrtype.PtrType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi_ptrtype_static_extension.PtrType_static_extension.fieldAlign(__self__);
    }
    public static function exportedMethods(__self__:stdgo._internal.internal.abi.Abi_ptrtype.PtrType):Array<Method> {
        return [for (i in stdgo._internal.internal.abi.Abi_ptrtype_static_extension.PtrType_static_extension.exportedMethods(__self__)) i];
    }
    public static function common(__self__:stdgo._internal.internal.abi.Abi_ptrtype.PtrType):Type_ {
        return stdgo._internal.internal.abi.Abi_ptrtype_static_extension.PtrType_static_extension.common(__self__);
    }
    public static function chanDir(__self__:stdgo._internal.internal.abi.Abi_ptrtype.PtrType):ChanDir {
        return stdgo._internal.internal.abi.Abi_ptrtype_static_extension.PtrType_static_extension.chanDir(__self__);
    }
    public static function arrayType(__self__:stdgo._internal.internal.abi.Abi_ptrtype.PtrType):ArrayType {
        return stdgo._internal.internal.abi.Abi_ptrtype_static_extension.PtrType_static_extension.arrayType(__self__);
    }
    public static function align(__self__:stdgo._internal.internal.abi.Abi_ptrtype.PtrType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi_ptrtype_static_extension.PtrType_static_extension.align(__self__);
    }
}
typedef StructFieldPointer = stdgo._internal.internal.abi.Abi_structfieldpointer.StructFieldPointer;
class StructField_static_extension {
    static public function embedded(_f:StructField):Bool {
        final _f = (_f : stdgo.Ref<stdgo._internal.internal.abi.Abi_structfield.StructField>);
        return stdgo._internal.internal.abi.Abi_structfield_static_extension.StructField_static_extension.embedded(_f);
    }
}
typedef StructTypePointer = stdgo._internal.internal.abi.Abi_structtypepointer.StructTypePointer;
class StructType_static_extension {
    public static function uncommon(__self__:stdgo._internal.internal.abi.Abi_structtype.StructType):UncommonType {
        return stdgo._internal.internal.abi.Abi_structtype_static_extension.StructType_static_extension.uncommon(__self__);
    }
    public static function structType(__self__:stdgo._internal.internal.abi.Abi_structtype.StructType):StructType {
        return stdgo._internal.internal.abi.Abi_structtype_static_extension.StructType_static_extension.structType(__self__);
    }
    public static function size(__self__:stdgo._internal.internal.abi.Abi_structtype.StructType):stdgo.GoUIntptr {
        return stdgo._internal.internal.abi.Abi_structtype_static_extension.StructType_static_extension.size(__self__);
    }
    public static function pointers(__self__:stdgo._internal.internal.abi.Abi_structtype.StructType):Bool {
        return stdgo._internal.internal.abi.Abi_structtype_static_extension.StructType_static_extension.pointers(__self__);
    }
    public static function numMethod(__self__:stdgo._internal.internal.abi.Abi_structtype.StructType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi_structtype_static_extension.StructType_static_extension.numMethod(__self__);
    }
    public static function mapType(__self__:stdgo._internal.internal.abi.Abi_structtype.StructType):MapType {
        return stdgo._internal.internal.abi.Abi_structtype_static_extension.StructType_static_extension.mapType(__self__);
    }
    public static function len(__self__:stdgo._internal.internal.abi.Abi_structtype.StructType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi_structtype_static_extension.StructType_static_extension.len(__self__);
    }
    public static function kind(__self__:stdgo._internal.internal.abi.Abi_structtype.StructType):Kind {
        return stdgo._internal.internal.abi.Abi_structtype_static_extension.StructType_static_extension.kind(__self__);
    }
    public static function key(__self__:stdgo._internal.internal.abi.Abi_structtype.StructType):Type_ {
        return stdgo._internal.internal.abi.Abi_structtype_static_extension.StructType_static_extension.key(__self__);
    }
    public static function isDirectIface(__self__:stdgo._internal.internal.abi.Abi_structtype.StructType):Bool {
        return stdgo._internal.internal.abi.Abi_structtype_static_extension.StructType_static_extension.isDirectIface(__self__);
    }
    public static function interfaceType(__self__:stdgo._internal.internal.abi.Abi_structtype.StructType):InterfaceType {
        return stdgo._internal.internal.abi.Abi_structtype_static_extension.StructType_static_extension.interfaceType(__self__);
    }
    public static function ifaceIndir(__self__:stdgo._internal.internal.abi.Abi_structtype.StructType):Bool {
        return stdgo._internal.internal.abi.Abi_structtype_static_extension.StructType_static_extension.ifaceIndir(__self__);
    }
    public static function hasName(__self__:stdgo._internal.internal.abi.Abi_structtype.StructType):Bool {
        return stdgo._internal.internal.abi.Abi_structtype_static_extension.StructType_static_extension.hasName(__self__);
    }
    public static function gcSlice(__self__:stdgo._internal.internal.abi.Abi_structtype.StructType, _0:stdgo.GoUIntptr, _1:stdgo.GoUIntptr):Array<std.UInt> {
        final _0 = (_0 : stdgo.GoUIntptr);
        final _1 = (_1 : stdgo.GoUIntptr);
        return [for (i in stdgo._internal.internal.abi.Abi_structtype_static_extension.StructType_static_extension.gcSlice(__self__, _0, _1)) i];
    }
    public static function funcType(__self__:stdgo._internal.internal.abi.Abi_structtype.StructType):FuncType {
        return stdgo._internal.internal.abi.Abi_structtype_static_extension.StructType_static_extension.funcType(__self__);
    }
    public static function fieldAlign(__self__:stdgo._internal.internal.abi.Abi_structtype.StructType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi_structtype_static_extension.StructType_static_extension.fieldAlign(__self__);
    }
    public static function exportedMethods(__self__:stdgo._internal.internal.abi.Abi_structtype.StructType):Array<Method> {
        return [for (i in stdgo._internal.internal.abi.Abi_structtype_static_extension.StructType_static_extension.exportedMethods(__self__)) i];
    }
    public static function elem(__self__:stdgo._internal.internal.abi.Abi_structtype.StructType):Type_ {
        return stdgo._internal.internal.abi.Abi_structtype_static_extension.StructType_static_extension.elem(__self__);
    }
    public static function common(__self__:stdgo._internal.internal.abi.Abi_structtype.StructType):Type_ {
        return stdgo._internal.internal.abi.Abi_structtype_static_extension.StructType_static_extension.common(__self__);
    }
    public static function chanDir(__self__:stdgo._internal.internal.abi.Abi_structtype.StructType):ChanDir {
        return stdgo._internal.internal.abi.Abi_structtype_static_extension.StructType_static_extension.chanDir(__self__);
    }
    public static function arrayType(__self__:stdgo._internal.internal.abi.Abi_structtype.StructType):ArrayType {
        return stdgo._internal.internal.abi.Abi_structtype_static_extension.StructType_static_extension.arrayType(__self__);
    }
    public static function align(__self__:stdgo._internal.internal.abi.Abi_structtype.StructType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi_structtype_static_extension.StructType_static_extension.align(__self__);
    }
}
typedef NamePointer = stdgo._internal.internal.abi.Abi_namepointer.NamePointer;
class Name_static_extension {
    static public function tag(_n:Name):String {
        return stdgo._internal.internal.abi.Abi_name_static_extension.Name_static_extension.tag(_n);
    }
    static public function name(_n:Name):String {
        return stdgo._internal.internal.abi.Abi_name_static_extension.Name_static_extension.name(_n);
    }
    static public function isBlank(_n:Name):Bool {
        return stdgo._internal.internal.abi.Abi_name_static_extension.Name_static_extension.isBlank(_n);
    }
    static public function readVarint(_n:Name, _off:StdTypes.Int):stdgo.Tuple<StdTypes.Int, StdTypes.Int> {
        final _off = (_off : stdgo.GoInt);
        return {
            final obj = stdgo._internal.internal.abi.Abi_name_static_extension.Name_static_extension.readVarint(_n, _off);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function isEmbedded(_n:Name):Bool {
        return stdgo._internal.internal.abi.Abi_name_static_extension.Name_static_extension.isEmbedded(_n);
    }
    static public function hasTag(_n:Name):Bool {
        return stdgo._internal.internal.abi.Abi_name_static_extension.Name_static_extension.hasTag(_n);
    }
    static public function isExported(_n:Name):Bool {
        return stdgo._internal.internal.abi.Abi_name_static_extension.Name_static_extension.isExported(_n);
    }
    static public function data(_n:Name, _off:StdTypes.Int):stdgo.Pointer<std.UInt> {
        final _off = (_off : stdgo.GoInt);
        return stdgo._internal.internal.abi.Abi_name_static_extension.Name_static_extension.data(_n, _off);
    }
    static public function dataChecked(_n:Name, _off:StdTypes.Int, _whySafe:String):stdgo.Pointer<std.UInt> {
        final _off = (_off : stdgo.GoInt);
        final _whySafe = (_whySafe : stdgo.GoString);
        return stdgo._internal.internal.abi.Abi_name_static_extension.Name_static_extension.dataChecked(_n, _off, _whySafe);
    }
}
typedef IntArgRegBitmapPointer = stdgo._internal.internal.abi.Abi_intargregbitmappointer.IntArgRegBitmapPointer;
class IntArgRegBitmap_static_extension {
    static public function get(_b:IntArgRegBitmap, _i:StdTypes.Int):Bool {
        final _b = (_b : stdgo.Ref<stdgo._internal.internal.abi.Abi_intargregbitmap.IntArgRegBitmap>);
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.internal.abi.Abi_intargregbitmap_static_extension.IntArgRegBitmap_static_extension.get(_b, _i);
    }
    static public function set(_b:IntArgRegBitmap, _i:StdTypes.Int):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.internal.abi.Abi_intargregbitmap.IntArgRegBitmap>);
        final _i = (_i : stdgo.GoInt);
        stdgo._internal.internal.abi.Abi_intargregbitmap_static_extension.IntArgRegBitmap_static_extension.set(_b, _i);
    }
}
typedef FuncFlagPointer = stdgo._internal.internal.abi.Abi_funcflagpointer.FuncFlagPointer;
class FuncFlag_static_extension {

}
typedef FuncIDPointer = stdgo._internal.internal.abi.Abi_funcidpointer.FuncIDPointer;
class FuncID_static_extension {

}
typedef KindPointer = stdgo._internal.internal.abi.Abi_kindpointer.KindPointer;
class Kind_static_extension {
    static public function string(_k:Kind):String {
        return stdgo._internal.internal.abi.Abi_kind_static_extension.Kind_static_extension.string(_k);
    }
}
typedef TFlagPointer = stdgo._internal.internal.abi.Abi_tflagpointer.TFlagPointer;
class TFlag_static_extension {

}
typedef NameOffPointer = stdgo._internal.internal.abi.Abi_nameoffpointer.NameOffPointer;
class NameOff_static_extension {

}
typedef TypeOffPointer = stdgo._internal.internal.abi.Abi_typeoffpointer.TypeOffPointer;
class TypeOff_static_extension {

}
typedef TextOffPointer = stdgo._internal.internal.abi.Abi_textoffpointer.TextOffPointer;
class TextOff_static_extension {

}
typedef ChanDirPointer = stdgo._internal.internal.abi.Abi_chandirpointer.ChanDirPointer;
class ChanDir_static_extension {

}
class Abi {
    /**
        * CommonSize returns sizeof(Type) for a compilation target with a given ptrSize
    **/
    static public inline function commonSize(_ptrSize:StdTypes.Int):StdTypes.Int {
        final _ptrSize = (_ptrSize : stdgo.GoInt);
        return stdgo._internal.internal.abi.Abi_commonsize.commonSize(_ptrSize);
    }
    /**
        * StructFieldSize returns sizeof(StructField) for a compilation target with a given ptrSize
    **/
    static public inline function structFieldSize(_ptrSize:StdTypes.Int):StdTypes.Int {
        final _ptrSize = (_ptrSize : stdgo.GoInt);
        return stdgo._internal.internal.abi.Abi_structfieldsize.structFieldSize(_ptrSize);
    }
    /**
        * UncommonSize returns sizeof(UncommonType).  This currently does not depend on ptrSize.
        * This exported function is in an internal package, so it may change to depend on ptrSize in the future.
    **/
    static public inline function uncommonSize():haxe.UInt64 {
        return stdgo._internal.internal.abi.Abi_uncommonsize.uncommonSize();
    }
    /**
        * IMethodSize returns sizeof(IMethod) for a compilation target with a given ptrSize
    **/
    static public inline function iMethodSize(_ptrSize:StdTypes.Int):StdTypes.Int {
        final _ptrSize = (_ptrSize : stdgo.GoInt);
        return stdgo._internal.internal.abi.Abi_imethodsize.iMethodSize(_ptrSize);
    }
    /**
        * KindOff returns the offset of Type.Kind_ for a compilation target with a given ptrSize
    **/
    static public inline function kindOff(_ptrSize:StdTypes.Int):StdTypes.Int {
        final _ptrSize = (_ptrSize : stdgo.GoInt);
        return stdgo._internal.internal.abi.Abi_kindoff.kindOff(_ptrSize);
    }
    /**
        * SizeOff returns the offset of Type.Size_ for a compilation target with a given ptrSize
    **/
    static public inline function sizeOff(_ptrSize:StdTypes.Int):StdTypes.Int {
        final _ptrSize = (_ptrSize : stdgo.GoInt);
        return stdgo._internal.internal.abi.Abi_sizeoff.sizeOff(_ptrSize);
    }
    /**
        * PtrBytes returns the offset of Type.PtrBytes for a compilation target with a given ptrSize
    **/
    static public inline function ptrBytesOff(_ptrSize:StdTypes.Int):StdTypes.Int {
        final _ptrSize = (_ptrSize : stdgo.GoInt);
        return stdgo._internal.internal.abi.Abi_ptrbytesoff.ptrBytesOff(_ptrSize);
    }
    /**
        * TFlagOff returns the offset of Type.TFlag for a compilation target with a given ptrSize
    **/
    static public inline function tFlagOff(_ptrSize:StdTypes.Int):StdTypes.Int {
        final _ptrSize = (_ptrSize : stdgo.GoInt);
        return stdgo._internal.internal.abi.Abi_tflagoff.tFlagOff(_ptrSize);
    }
    /**
        * NewOffset returns a new Offset with offset 0 and alignment 1.
    **/
    static public inline function newOffset(_ptrSize:std.UInt, _twoWordAlignSlices:Bool):Offset {
        final _ptrSize = (_ptrSize : stdgo.GoUInt8);
        return stdgo._internal.internal.abi.Abi_newoffset.newOffset(_ptrSize, _twoWordAlignSlices);
    }
    /**
        * InitializedOffset returns a new Offset with specified offset, alignment, pointer size, and slice alignment.
    **/
    static public inline function initializedOffset(_off:StdTypes.Int, _align:std.UInt, _ptrSize:std.UInt, _twoWordAlignSlices:Bool):Offset {
        final _off = (_off : stdgo.GoInt);
        final _align = (_align : stdgo.GoUInt8);
        final _ptrSize = (_ptrSize : stdgo.GoUInt8);
        return stdgo._internal.internal.abi.Abi_initializedoffset.initializedOffset(_off, _align, _ptrSize, _twoWordAlignSlices);
    }
    /**
        * CommonOffset returns the Offset to the data after the common portion of type data structures.
    **/
    static public inline function commonOffset(_ptrSize:StdTypes.Int, _twoWordAlignSlices:Bool):Offset {
        final _ptrSize = (_ptrSize : stdgo.GoInt);
        return stdgo._internal.internal.abi.Abi_commonoffset.commonOffset(_ptrSize, _twoWordAlignSlices);
    }
    static public inline function funcPCTestFn():Void {
        stdgo._internal.internal.abi.Abi_funcpctestfn.funcPCTestFn();
    }
    /**
        * go:noinline
    **/
    static public inline function funcPCTest():stdgo.GoUIntptr {
        return stdgo._internal.internal.abi.Abi_funcpctest.funcPCTest();
    }
    /**
        * FuncPCABI0 returns the entry PC of the function f, which must be a
        * direct reference of a function defined as ABI0. Otherwise it is a
        * compile-time error.
        * 
        * Implemented as a compile intrinsic.
    **/
    static public inline function funcPCABI0(_f:stdgo.AnyInterface):stdgo.GoUIntptr {
        final _f = (_f : stdgo.AnyInterface);
        return stdgo._internal.internal.abi.Abi_funcpcabi0.funcPCABI0(_f);
    }
    /**
        * FuncPCABIInternal returns the entry PC of the function f. If f is a
        * direct reference of a function, it must be defined as ABIInternal.
        * Otherwise it is a compile-time error. If f is not a direct reference
        * of a defined function, it assumes that f is a func value. Otherwise
        * the behavior is undefined.
        * 
        * Implemented as a compile intrinsic.
    **/
    static public inline function funcPCABIInternal(_f:stdgo.AnyInterface):stdgo.GoUIntptr {
        final _f = (_f : stdgo.AnyInterface);
        return stdgo._internal.internal.abi.Abi_funcpcabiinternal.funcPCABIInternal(_f);
    }
    static public inline function newName(_n:String, _tag:String, _exported:Bool, _embedded:Bool):Name {
        final _n = (_n : stdgo.GoString);
        final _tag = (_tag : stdgo.GoString);
        return stdgo._internal.internal.abi.Abi_newname.newName(_n, _tag, _exported, _embedded);
    }
}
