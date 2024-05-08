package stdgo.sync;
/**
    Package atomic provides low-level atomic memory primitives
    useful for implementing synchronization algorithms.
    
    These functions require great care to be used correctly.
    Except for special, low-level applications, synchronization is better
    done with channels or the facilities of the [sync] package.
    Share memory by communicating;
    don't communicate by sharing memory.
    
    The swap operation, implemented by the SwapT functions, is the atomic
    equivalent of:
    
    	old = *addr
    	*addr = new
    	return old
    
    The compare-and-swap operation, implemented by the CompareAndSwapT
    functions, is the atomic equivalent of:
    
    	if *addr == old {
    		*addr = new
    		return true
    	}
    	return false
    
    The add operation, implemented by the AddT functions, is the atomic
    equivalent of:
    
    	*addr += delta
    	return *addr
    
    The load and store operations, implemented by the LoadT and StoreT
    functions, are the atomic equivalents of "return *addr" and
    "*addr = val".
    
    In the terminology of the Go memory model, if the effect of
    an atomic operation A is observed by atomic operation B,
    then A “synchronizes before” B.
    Additionally, all the atomic operations executed in a program
    behave as though executed in some sequentially consistent order.
    This definition provides the same semantics as
    C++'s sequentially consistent atomics and Java's volatile variables.
**/
private var __go2hxdoc__package : Bool;
abstract Bool_(stdgo._internal.sync.atomic_.Atomic_.Bool_) from stdgo._internal.sync.atomic_.Atomic_.Bool_ to stdgo._internal.sync.atomic_.Atomic_.Bool_ {
    public var __2(get, set) : stdgo._internal.sync.atomic_.Atomic_.T_noCopy;
    function get___2():stdgo._internal.sync.atomic_.Atomic_.T_noCopy return this.__2;
    function set___2(v:stdgo._internal.sync.atomic_.Atomic_.T_noCopy):stdgo._internal.sync.atomic_.Atomic_.T_noCopy {
        this.__2 = v;
        return v;
    }
    public var _v(get, set) : std.UInt;
    function get__v():std.UInt return this._v;
    function set__v(v:std.UInt):std.UInt {
        this._v = v;
        return v;
    }
    public function new(?__2:stdgo._internal.sync.atomic_.Atomic_.T_noCopy, ?_v:std.UInt) this = new stdgo._internal.sync.atomic_.Atomic_.Bool_(__2, _v);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract Pointer_(stdgo._internal.sync.atomic_.Atomic_.Pointer_) from stdgo._internal.sync.atomic_.Atomic_.Pointer_ to stdgo._internal.sync.atomic_.Atomic_.Pointer_ {
    public var __5(get, set) : haxe.ds.Vector<T_>;
    function get___5():haxe.ds.Vector<T_> return haxe.ds.Vector.fromArrayCopy([for (i in this.__5) i]);
    function set___5(v:haxe.ds.Vector<T_>):haxe.ds.Vector<T_> {
        this.__5 = ([for (i in v) i] : stdgo.GoArray<stdgo.Ref<T_>>);
        return v;
    }
    public var __6(get, set) : stdgo._internal.sync.atomic_.Atomic_.T_noCopy;
    function get___6():stdgo._internal.sync.atomic_.Atomic_.T_noCopy return this.__6;
    function set___6(v:stdgo._internal.sync.atomic_.Atomic_.T_noCopy):stdgo._internal.sync.atomic_.Atomic_.T_noCopy {
        this.__6 = v;
        return v;
    }
    public var _v(get, set) : stdgo._internal.unsafe.Unsafe.UnsafePointer;
    function get__v():stdgo._internal.unsafe.Unsafe.UnsafePointer return this._v;
    function set__v(v:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        this._v = v;
        return v;
    }
    public function new(?__5:haxe.ds.Vector<T_>, ?__6:stdgo._internal.sync.atomic_.Atomic_.T_noCopy, ?_v:stdgo._internal.unsafe.Unsafe.UnsafePointer) this = new stdgo._internal.sync.atomic_.Atomic_.Pointer_(([for (i in __5) i] : stdgo.GoArray<stdgo.Ref<T_>>), __6, _v);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract Int32(stdgo._internal.sync.atomic_.Atomic_.Int32) from stdgo._internal.sync.atomic_.Atomic_.Int32 to stdgo._internal.sync.atomic_.Atomic_.Int32 {
    public var __8(get, set) : stdgo._internal.sync.atomic_.Atomic_.T_noCopy;
    function get___8():stdgo._internal.sync.atomic_.Atomic_.T_noCopy return this.__8;
    function set___8(v:stdgo._internal.sync.atomic_.Atomic_.T_noCopy):stdgo._internal.sync.atomic_.Atomic_.T_noCopy {
        this.__8 = v;
        return v;
    }
    public var _v(get, set) : StdTypes.Int;
    function get__v():StdTypes.Int return this._v;
    function set__v(v:StdTypes.Int):StdTypes.Int {
        this._v = v;
        return v;
    }
    public function new(?__8:stdgo._internal.sync.atomic_.Atomic_.T_noCopy, ?_v:StdTypes.Int) this = new stdgo._internal.sync.atomic_.Atomic_.Int32(__8, _v);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract Int64_(stdgo._internal.sync.atomic_.Atomic_.Int64_) from stdgo._internal.sync.atomic_.Atomic_.Int64_ to stdgo._internal.sync.atomic_.Atomic_.Int64_ {
    public var __11(get, set) : stdgo._internal.sync.atomic_.Atomic_.T_noCopy;
    function get___11():stdgo._internal.sync.atomic_.Atomic_.T_noCopy return this.__11;
    function set___11(v:stdgo._internal.sync.atomic_.Atomic_.T_noCopy):stdgo._internal.sync.atomic_.Atomic_.T_noCopy {
        this.__11 = v;
        return v;
    }
    public var __12(get, set) : stdgo._internal.sync.atomic_.Atomic_.T_align64;
    function get___12():stdgo._internal.sync.atomic_.Atomic_.T_align64 return this.__12;
    function set___12(v:stdgo._internal.sync.atomic_.Atomic_.T_align64):stdgo._internal.sync.atomic_.Atomic_.T_align64 {
        this.__12 = v;
        return v;
    }
    public var _v(get, set) : haxe.Int64;
    function get__v():haxe.Int64 return this._v;
    function set__v(v:haxe.Int64):haxe.Int64 {
        this._v = v;
        return v;
    }
    public function new(?__11:stdgo._internal.sync.atomic_.Atomic_.T_noCopy, ?__12:stdgo._internal.sync.atomic_.Atomic_.T_align64, ?_v:haxe.Int64) this = new stdgo._internal.sync.atomic_.Atomic_.Int64_(__11, __12, _v);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract Uint32(stdgo._internal.sync.atomic_.Atomic_.Uint32) from stdgo._internal.sync.atomic_.Atomic_.Uint32 to stdgo._internal.sync.atomic_.Atomic_.Uint32 {
    public var __13(get, set) : stdgo._internal.sync.atomic_.Atomic_.T_noCopy;
    function get___13():stdgo._internal.sync.atomic_.Atomic_.T_noCopy return this.__13;
    function set___13(v:stdgo._internal.sync.atomic_.Atomic_.T_noCopy):stdgo._internal.sync.atomic_.Atomic_.T_noCopy {
        this.__13 = v;
        return v;
    }
    public var _v(get, set) : std.UInt;
    function get__v():std.UInt return this._v;
    function set__v(v:std.UInt):std.UInt {
        this._v = v;
        return v;
    }
    public function new(?__13:stdgo._internal.sync.atomic_.Atomic_.T_noCopy, ?_v:std.UInt) this = new stdgo._internal.sync.atomic_.Atomic_.Uint32(__13, _v);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract Uint64(stdgo._internal.sync.atomic_.Atomic_.Uint64) from stdgo._internal.sync.atomic_.Atomic_.Uint64 to stdgo._internal.sync.atomic_.Atomic_.Uint64 {
    public var __16(get, set) : stdgo._internal.sync.atomic_.Atomic_.T_noCopy;
    function get___16():stdgo._internal.sync.atomic_.Atomic_.T_noCopy return this.__16;
    function set___16(v:stdgo._internal.sync.atomic_.Atomic_.T_noCopy):stdgo._internal.sync.atomic_.Atomic_.T_noCopy {
        this.__16 = v;
        return v;
    }
    public var __17(get, set) : stdgo._internal.sync.atomic_.Atomic_.T_align64;
    function get___17():stdgo._internal.sync.atomic_.Atomic_.T_align64 return this.__17;
    function set___17(v:stdgo._internal.sync.atomic_.Atomic_.T_align64):stdgo._internal.sync.atomic_.Atomic_.T_align64 {
        this.__17 = v;
        return v;
    }
    public var _v(get, set) : haxe.UInt64;
    function get__v():haxe.UInt64 return this._v;
    function set__v(v:haxe.UInt64):haxe.UInt64 {
        this._v = v;
        return v;
    }
    public function new(?__16:stdgo._internal.sync.atomic_.Atomic_.T_noCopy, ?__17:stdgo._internal.sync.atomic_.Atomic_.T_align64, ?_v:haxe.UInt64) this = new stdgo._internal.sync.atomic_.Atomic_.Uint64(__16, __17, _v);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract Uintptr(stdgo._internal.sync.atomic_.Atomic_.Uintptr) from stdgo._internal.sync.atomic_.Atomic_.Uintptr to stdgo._internal.sync.atomic_.Atomic_.Uintptr {
    public var __19(get, set) : stdgo._internal.sync.atomic_.Atomic_.T_noCopy;
    function get___19():stdgo._internal.sync.atomic_.Atomic_.T_noCopy return this.__19;
    function set___19(v:stdgo._internal.sync.atomic_.Atomic_.T_noCopy):stdgo._internal.sync.atomic_.Atomic_.T_noCopy {
        this.__19 = v;
        return v;
    }
    public var _v(get, set) : stdgo.GoUIntptr;
    function get__v():stdgo.GoUIntptr return this._v;
    function set__v(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this._v = v;
        return v;
    }
    public function new(?__19:stdgo._internal.sync.atomic_.Atomic_.T_noCopy, ?_v:stdgo.GoUIntptr) this = new stdgo._internal.sync.atomic_.Atomic_.Uintptr(__19, _v);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_noCopy(stdgo._internal.sync.atomic_.Atomic_.T_noCopy) from stdgo._internal.sync.atomic_.Atomic_.T_noCopy to stdgo._internal.sync.atomic_.Atomic_.T_noCopy {
    public function new() this = new stdgo._internal.sync.atomic_.Atomic_.T_noCopy();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_align64(stdgo._internal.sync.atomic_.Atomic_.T_align64) from stdgo._internal.sync.atomic_.Atomic_.T_align64 to stdgo._internal.sync.atomic_.Atomic_.T_align64 {
    public function new() this = new stdgo._internal.sync.atomic_.Atomic_.T_align64();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract Value(stdgo._internal.sync.atomic_.Atomic_.Value) from stdgo._internal.sync.atomic_.Atomic_.Value to stdgo._internal.sync.atomic_.Atomic_.Value {
    public var _v(get, set) : stdgo.AnyInterface;
    function get__v():stdgo.AnyInterface return this._v;
    function set__v(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._v = v;
        return v;
    }
    public function new(?_v:stdgo.AnyInterface) this = new stdgo._internal.sync.atomic_.Atomic_.Value(_v);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_efaceWords(stdgo._internal.sync.atomic_.Atomic_.T_efaceWords) from stdgo._internal.sync.atomic_.Atomic_.T_efaceWords to stdgo._internal.sync.atomic_.Atomic_.T_efaceWords {
    public var _typ(get, set) : stdgo._internal.unsafe.Unsafe.UnsafePointer;
    function get__typ():stdgo._internal.unsafe.Unsafe.UnsafePointer return this._typ;
    function set__typ(v:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        this._typ = v;
        return v;
    }
    public var _data(get, set) : stdgo._internal.unsafe.Unsafe.UnsafePointer;
    function get__data():stdgo._internal.unsafe.Unsafe.UnsafePointer return this._data;
    function set__data(v:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        this._data = v;
        return v;
    }
    public function new(?_typ:stdgo._internal.unsafe.Unsafe.UnsafePointer, ?_data:stdgo._internal.unsafe.Unsafe.UnsafePointer) this = new stdgo._internal.sync.atomic_.Atomic_.T_efaceWords(_typ, _data);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class Atomic_ {
    /**
        SwapInt32 atomically stores new into *addr and returns the previous *addr value.
        Consider using the more ergonomic and less error-prone [Int32.Swap] instead.
    **/
    static public function swapInt32(addr:stdgo.Pointer<StdTypes.Int>, _new:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.sync.atomic_.Atomic_.swapInt32(addr, _new);
    }
    /**
        SwapInt64 atomically stores new into *addr and returns the previous *addr value.
        Consider using the more ergonomic and less error-prone [Int64.Swap] instead
        (particularly if you target 32-bit platforms; see the bugs section).
    **/
    static public function swapInt64(addr:stdgo.Pointer<haxe.Int64>, _new:haxe.Int64):haxe.Int64 {
        return stdgo._internal.sync.atomic_.Atomic_.swapInt64(addr, _new);
    }
    /**
        SwapUint32 atomically stores new into *addr and returns the previous *addr value.
        Consider using the more ergonomic and less error-prone [Uint32.Swap] instead.
    **/
    static public function swapUint32(addr:stdgo.Pointer<std.UInt>, _new:std.UInt):std.UInt {
        return stdgo._internal.sync.atomic_.Atomic_.swapUint32(addr, _new);
    }
    /**
        SwapUint64 atomically stores new into *addr and returns the previous *addr value.
        Consider using the more ergonomic and less error-prone [Uint64.Swap] instead
        (particularly if you target 32-bit platforms; see the bugs section).
    **/
    static public function swapUint64(addr:stdgo.Pointer<haxe.UInt64>, _new:haxe.UInt64):haxe.UInt64 {
        return stdgo._internal.sync.atomic_.Atomic_.swapUint64(addr, _new);
    }
    /**
        SwapUintptr atomically stores new into *addr and returns the previous *addr value.
        Consider using the more ergonomic and less error-prone [Uintptr.Swap] instead.
    **/
    static public function swapUintptr(addr:stdgo.Pointer<stdgo.GoUIntptr>, _new:stdgo.GoUIntptr):stdgo.GoUIntptr {
        return stdgo._internal.sync.atomic_.Atomic_.swapUintptr(addr, _new);
    }
    /**
        SwapPointer atomically stores new into *addr and returns the previous *addr value.
        Consider using the more ergonomic and less error-prone [Pointer.Swap] instead.
    **/
    static public function swapPointer(addr:stdgo.Pointer<stdgo._internal.unsafe.Unsafe.UnsafePointer>, _new:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        return stdgo._internal.sync.atomic_.Atomic_.swapPointer(addr, _new);
    }
    /**
        CompareAndSwapInt32 executes the compare-and-swap operation for an int32 value.
        Consider using the more ergonomic and less error-prone [Int32.CompareAndSwap] instead.
    **/
    static public function compareAndSwapInt32(addr:stdgo.Pointer<StdTypes.Int>, old:StdTypes.Int, _new:StdTypes.Int):Bool {
        return stdgo._internal.sync.atomic_.Atomic_.compareAndSwapInt32(addr, old, _new);
    }
    /**
        CompareAndSwapInt64 executes the compare-and-swap operation for an int64 value.
        Consider using the more ergonomic and less error-prone [Int64.CompareAndSwap] instead
        (particularly if you target 32-bit platforms; see the bugs section).
    **/
    static public function compareAndSwapInt64(addr:stdgo.Pointer<haxe.Int64>, old:haxe.Int64, _new:haxe.Int64):Bool {
        return stdgo._internal.sync.atomic_.Atomic_.compareAndSwapInt64(addr, old, _new);
    }
    /**
        CompareAndSwapUint32 executes the compare-and-swap operation for a uint32 value.
        Consider using the more ergonomic and less error-prone [Uint32.CompareAndSwap] instead.
    **/
    static public function compareAndSwapUint32(addr:stdgo.Pointer<std.UInt>, old:std.UInt, _new:std.UInt):Bool {
        return stdgo._internal.sync.atomic_.Atomic_.compareAndSwapUint32(addr, old, _new);
    }
    /**
        CompareAndSwapUint64 executes the compare-and-swap operation for a uint64 value.
        Consider using the more ergonomic and less error-prone [Uint64.CompareAndSwap] instead
        (particularly if you target 32-bit platforms; see the bugs section).
    **/
    static public function compareAndSwapUint64(addr:stdgo.Pointer<haxe.UInt64>, old:haxe.UInt64, _new:haxe.UInt64):Bool {
        return stdgo._internal.sync.atomic_.Atomic_.compareAndSwapUint64(addr, old, _new);
    }
    /**
        CompareAndSwapUintptr executes the compare-and-swap operation for a uintptr value.
        Consider using the more ergonomic and less error-prone [Uintptr.CompareAndSwap] instead.
    **/
    static public function compareAndSwapUintptr(addr:stdgo.Pointer<stdgo.GoUIntptr>, old:stdgo.GoUIntptr, _new:stdgo.GoUIntptr):Bool {
        return stdgo._internal.sync.atomic_.Atomic_.compareAndSwapUintptr(addr, old, _new);
    }
    /**
        CompareAndSwapPointer executes the compare-and-swap operation for a unsafe.Pointer value.
        Consider using the more ergonomic and less error-prone [Pointer.CompareAndSwap] instead.
    **/
    static public function compareAndSwapPointer(addr:stdgo.Pointer<stdgo._internal.unsafe.Unsafe.UnsafePointer>, old:stdgo._internal.unsafe.Unsafe.UnsafePointer, _new:stdgo._internal.unsafe.Unsafe.UnsafePointer):Bool {
        return stdgo._internal.sync.atomic_.Atomic_.compareAndSwapPointer(addr, old, _new);
    }
    /**
        AddInt32 atomically adds delta to *addr and returns the new value.
        Consider using the more ergonomic and less error-prone [Int32.Add] instead.
    **/
    static public function addInt32(addr:stdgo.Pointer<StdTypes.Int>, delta:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.sync.atomic_.Atomic_.addInt32(addr, delta);
    }
    /**
        AddUint32 atomically adds delta to *addr and returns the new value.
        To subtract a signed positive constant value c from x, do AddUint32(&x, ^uint32(c-1)).
        In particular, to decrement x, do AddUint32(&x, ^uint32(0)).
        Consider using the more ergonomic and less error-prone [Uint32.Add] instead.
    **/
    static public function addUint32(addr:stdgo.Pointer<std.UInt>, delta:std.UInt):std.UInt {
        return stdgo._internal.sync.atomic_.Atomic_.addUint32(addr, delta);
    }
    /**
        AddInt64 atomically adds delta to *addr and returns the new value.
        Consider using the more ergonomic and less error-prone [Int64.Add] instead
        (particularly if you target 32-bit platforms; see the bugs section).
    **/
    static public function addInt64(addr:stdgo.Pointer<haxe.Int64>, delta:haxe.Int64):haxe.Int64 {
        return stdgo._internal.sync.atomic_.Atomic_.addInt64(addr, delta);
    }
    /**
        AddUint64 atomically adds delta to *addr and returns the new value.
        To subtract a signed positive constant value c from x, do AddUint64(&x, ^uint64(c-1)).
        In particular, to decrement x, do AddUint64(&x, ^uint64(0)).
        Consider using the more ergonomic and less error-prone [Uint64.Add] instead
        (particularly if you target 32-bit platforms; see the bugs section).
    **/
    static public function addUint64(addr:stdgo.Pointer<haxe.UInt64>, delta:haxe.UInt64):haxe.UInt64 {
        return stdgo._internal.sync.atomic_.Atomic_.addUint64(addr, delta);
    }
    /**
        AddUintptr atomically adds delta to *addr and returns the new value.
        Consider using the more ergonomic and less error-prone [Uintptr.Add] instead.
    **/
    static public function addUintptr(addr:stdgo.Pointer<stdgo.GoUIntptr>, delta:stdgo.GoUIntptr):stdgo.GoUIntptr {
        return stdgo._internal.sync.atomic_.Atomic_.addUintptr(addr, delta);
    }
    /**
        LoadInt32 atomically loads *addr.
        Consider using the more ergonomic and less error-prone [Int32.Load] instead.
    **/
    static public function loadInt32(addr:stdgo.Pointer<StdTypes.Int>):StdTypes.Int {
        return stdgo._internal.sync.atomic_.Atomic_.loadInt32(addr);
    }
    /**
        LoadInt64 atomically loads *addr.
        Consider using the more ergonomic and less error-prone [Int64.Load] instead
        (particularly if you target 32-bit platforms; see the bugs section).
    **/
    static public function loadInt64(addr:stdgo.Pointer<haxe.Int64>):haxe.Int64 {
        return stdgo._internal.sync.atomic_.Atomic_.loadInt64(addr);
    }
    /**
        LoadUint32 atomically loads *addr.
        Consider using the more ergonomic and less error-prone [Uint32.Load] instead.
    **/
    static public function loadUint32(addr:stdgo.Pointer<std.UInt>):std.UInt {
        return stdgo._internal.sync.atomic_.Atomic_.loadUint32(addr);
    }
    /**
        LoadUint64 atomically loads *addr.
        Consider using the more ergonomic and less error-prone [Uint64.Load] instead
        (particularly if you target 32-bit platforms; see the bugs section).
    **/
    static public function loadUint64(addr:stdgo.Pointer<haxe.UInt64>):haxe.UInt64 {
        return stdgo._internal.sync.atomic_.Atomic_.loadUint64(addr);
    }
    /**
        LoadUintptr atomically loads *addr.
        Consider using the more ergonomic and less error-prone [Uintptr.Load] instead.
    **/
    static public function loadUintptr(addr:stdgo.Pointer<stdgo.GoUIntptr>):stdgo.GoUIntptr {
        return stdgo._internal.sync.atomic_.Atomic_.loadUintptr(addr);
    }
    /**
        LoadPointer atomically loads *addr.
        Consider using the more ergonomic and less error-prone [Pointer.Load] instead.
    **/
    static public function loadPointer(addr:stdgo.Pointer<stdgo._internal.unsafe.Unsafe.UnsafePointer>):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        return stdgo._internal.sync.atomic_.Atomic_.loadPointer(addr);
    }
    /**
        StoreInt32 atomically stores val into *addr.
        Consider using the more ergonomic and less error-prone [Int32.Store] instead.
    **/
    static public function storeInt32(addr:stdgo.Pointer<StdTypes.Int>, val:StdTypes.Int):Void {
        stdgo._internal.sync.atomic_.Atomic_.storeInt32(addr, val);
    }
    /**
        StoreInt64 atomically stores val into *addr.
        Consider using the more ergonomic and less error-prone [Int64.Store] instead
        (particularly if you target 32-bit platforms; see the bugs section).
    **/
    static public function storeInt64(addr:stdgo.Pointer<haxe.Int64>, val:haxe.Int64):Void {
        stdgo._internal.sync.atomic_.Atomic_.storeInt64(addr, val);
    }
    /**
        StoreUint32 atomically stores val into *addr.
        Consider using the more ergonomic and less error-prone [Uint32.Store] instead.
    **/
    static public function storeUint32(addr:stdgo.Pointer<std.UInt>, val:std.UInt):Void {
        stdgo._internal.sync.atomic_.Atomic_.storeUint32(addr, val);
    }
    /**
        StoreUint64 atomically stores val into *addr.
        Consider using the more ergonomic and less error-prone [Uint64.Store] instead
        (particularly if you target 32-bit platforms; see the bugs section).
    **/
    static public function storeUint64(addr:stdgo.Pointer<haxe.UInt64>, val:haxe.UInt64):Void {
        stdgo._internal.sync.atomic_.Atomic_.storeUint64(addr, val);
    }
    /**
        StoreUintptr atomically stores val into *addr.
        Consider using the more ergonomic and less error-prone [Uintptr.Store] instead.
    **/
    static public function storeUintptr(addr:stdgo.Pointer<stdgo.GoUIntptr>, val:stdgo.GoUIntptr):Void {
        stdgo._internal.sync.atomic_.Atomic_.storeUintptr(addr, val);
    }
    /**
        StorePointer atomically stores val into *addr.
        Consider using the more ergonomic and less error-prone [Pointer.Store] instead.
    **/
    static public function storePointer(addr:stdgo.Pointer<stdgo._internal.unsafe.Unsafe.UnsafePointer>, val:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void {
        stdgo._internal.sync.atomic_.Atomic_.storePointer(addr, val);
    }
}
