package stdgo.sync.atomic_;
@:structInit @:using(stdgo.sync.atomic_.Atomic_.Bool__static_extension) abstract Bool_(stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_) from stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_ to stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_ {
    public var __1(get, set) : T_noCopy;
    function get___1():T_noCopy return this.__1;
    function set___1(v:T_noCopy):T_noCopy {
        this.__1 = v;
        return v;
    }
    public var _v(get, set) : std.UInt;
    function get__v():std.UInt return this._v;
    function set__v(v:std.UInt):std.UInt {
        this._v = v;
        return v;
    }
    public function new(?__1:T_noCopy, ?_v:std.UInt) this = new stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_(__1, _v);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.sync.atomic_.Atomic_.Pointer__static_extension) abstract Pointer_(stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_) from stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_ to stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_ {
    public var __4(get, set) : haxe.ds.Vector<Dynamic>;
    function get___4():haxe.ds.Vector<Dynamic> return haxe.ds.Vector.fromArrayCopy([for (i in this.__4) i]);
    function set___4(v:haxe.ds.Vector<Dynamic>):haxe.ds.Vector<Dynamic> {
        this.__4 = ([for (i in v) i] : stdgo.GoArray<stdgo.Ref<Dynamic>>);
        return v;
    }
    public var __5(get, set) : T_noCopy;
    function get___5():T_noCopy return this.__5;
    function set___5(v:T_noCopy):T_noCopy {
        this.__5 = v;
        return v;
    }
    public var _v(get, set) : stdgo._internal.unsafe.Unsafe.UnsafePointer;
    function get__v():stdgo._internal.unsafe.Unsafe.UnsafePointer return this._v;
    function set__v(v:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        this._v = v;
        return v;
    }
    public function new(?__4:haxe.ds.Vector<Dynamic>, ?__5:T_noCopy, ?_v:stdgo._internal.unsafe.Unsafe.UnsafePointer) this = new stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_(([for (i in __4) i] : stdgo.GoArray<stdgo.Ref<Dynamic>>), __5, _v);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.sync.atomic_.Atomic_.Int32_static_extension) abstract Int32(stdgo._internal.sync.atomic_.Atomic__Int32.Int32) from stdgo._internal.sync.atomic_.Atomic__Int32.Int32 to stdgo._internal.sync.atomic_.Atomic__Int32.Int32 {
    public var __7(get, set) : T_noCopy;
    function get___7():T_noCopy return this.__7;
    function set___7(v:T_noCopy):T_noCopy {
        this.__7 = v;
        return v;
    }
    public var _v(get, set) : StdTypes.Int;
    function get__v():StdTypes.Int return this._v;
    function set__v(v:StdTypes.Int):StdTypes.Int {
        this._v = v;
        return v;
    }
    public function new(?__7:T_noCopy, ?_v:StdTypes.Int) this = new stdgo._internal.sync.atomic_.Atomic__Int32.Int32(__7, _v);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.sync.atomic_.Atomic_.Int64__static_extension) abstract Int64_(stdgo._internal.sync.atomic_.Atomic__Int64_.Int64_) from stdgo._internal.sync.atomic_.Atomic__Int64_.Int64_ to stdgo._internal.sync.atomic_.Atomic__Int64_.Int64_ {
    public var __10(get, set) : T_noCopy;
    function get___10():T_noCopy return this.__10;
    function set___10(v:T_noCopy):T_noCopy {
        this.__10 = v;
        return v;
    }
    public var __11(get, set) : T_align64;
    function get___11():T_align64 return this.__11;
    function set___11(v:T_align64):T_align64 {
        this.__11 = v;
        return v;
    }
    public var _v(get, set) : haxe.Int64;
    function get__v():haxe.Int64 return this._v;
    function set__v(v:haxe.Int64):haxe.Int64 {
        this._v = v;
        return v;
    }
    public function new(?__10:T_noCopy, ?__11:T_align64, ?_v:haxe.Int64) this = new stdgo._internal.sync.atomic_.Atomic__Int64_.Int64_(__10, __11, _v);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.sync.atomic_.Atomic_.Uint32_static_extension) abstract Uint32(stdgo._internal.sync.atomic_.Atomic__Uint32.Uint32) from stdgo._internal.sync.atomic_.Atomic__Uint32.Uint32 to stdgo._internal.sync.atomic_.Atomic__Uint32.Uint32 {
    public var __12(get, set) : T_noCopy;
    function get___12():T_noCopy return this.__12;
    function set___12(v:T_noCopy):T_noCopy {
        this.__12 = v;
        return v;
    }
    public var _v(get, set) : std.UInt;
    function get__v():std.UInt return this._v;
    function set__v(v:std.UInt):std.UInt {
        this._v = v;
        return v;
    }
    public function new(?__12:T_noCopy, ?_v:std.UInt) this = new stdgo._internal.sync.atomic_.Atomic__Uint32.Uint32(__12, _v);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.sync.atomic_.Atomic_.Uint64_static_extension) abstract Uint64(stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64) from stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64 to stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64 {
    public var __15(get, set) : T_noCopy;
    function get___15():T_noCopy return this.__15;
    function set___15(v:T_noCopy):T_noCopy {
        this.__15 = v;
        return v;
    }
    public var __16(get, set) : T_align64;
    function get___16():T_align64 return this.__16;
    function set___16(v:T_align64):T_align64 {
        this.__16 = v;
        return v;
    }
    public var _v(get, set) : haxe.UInt64;
    function get__v():haxe.UInt64 return this._v;
    function set__v(v:haxe.UInt64):haxe.UInt64 {
        this._v = v;
        return v;
    }
    public function new(?__15:T_noCopy, ?__16:T_align64, ?_v:haxe.UInt64) this = new stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64(__15, __16, _v);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.sync.atomic_.Atomic_.Uintptr_static_extension) abstract Uintptr(stdgo._internal.sync.atomic_.Atomic__Uintptr.Uintptr) from stdgo._internal.sync.atomic_.Atomic__Uintptr.Uintptr to stdgo._internal.sync.atomic_.Atomic__Uintptr.Uintptr {
    public var __18(get, set) : T_noCopy;
    function get___18():T_noCopy return this.__18;
    function set___18(v:T_noCopy):T_noCopy {
        this.__18 = v;
        return v;
    }
    public var _v(get, set) : stdgo.GoUIntptr;
    function get__v():stdgo.GoUIntptr return this._v;
    function set__v(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this._v = v;
        return v;
    }
    public function new(?__18:T_noCopy, ?_v:stdgo.GoUIntptr) this = new stdgo._internal.sync.atomic_.Atomic__Uintptr.Uintptr(__18, _v);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.sync.atomic_.Atomic_.T_noCopy_static_extension) abstract T_noCopy(stdgo._internal.sync.atomic_.Atomic__T_noCopy.T_noCopy) from stdgo._internal.sync.atomic_.Atomic__T_noCopy.T_noCopy to stdgo._internal.sync.atomic_.Atomic__T_noCopy.T_noCopy {
    public function new() this = new stdgo._internal.sync.atomic_.Atomic__T_noCopy.T_noCopy();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_align64(stdgo._internal.sync.atomic_.Atomic__T_align64.T_align64) from stdgo._internal.sync.atomic_.Atomic__T_align64.T_align64 to stdgo._internal.sync.atomic_.Atomic__T_align64.T_align64 {
    public function new() this = new stdgo._internal.sync.atomic_.Atomic__T_align64.T_align64();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.sync.atomic_.Atomic_.Value_static_extension) abstract Value(stdgo._internal.sync.atomic_.Atomic__Value.Value) from stdgo._internal.sync.atomic_.Atomic__Value.Value to stdgo._internal.sync.atomic_.Atomic__Value.Value {
    public var _v(get, set) : stdgo.AnyInterface;
    function get__v():stdgo.AnyInterface return this._v;
    function set__v(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._v = v;
        return v;
    }
    public function new(?_v:stdgo.AnyInterface) this = new stdgo._internal.sync.atomic_.Atomic__Value.Value(_v);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_efaceWords(stdgo._internal.sync.atomic_.Atomic__T_efaceWords.T_efaceWords) from stdgo._internal.sync.atomic_.Atomic__T_efaceWords.T_efaceWords to stdgo._internal.sync.atomic_.Atomic__T_efaceWords.T_efaceWords {
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
    public function new(?_typ:stdgo._internal.unsafe.Unsafe.UnsafePointer, ?_data:stdgo._internal.unsafe.Unsafe.UnsafePointer) this = new stdgo._internal.sync.atomic_.Atomic__T_efaceWords.T_efaceWords(_typ, _data);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class Bool__static_extension {
    static public function compareAndSwap(_x:Bool_, _old:Bool, _new:Bool):Bool {
        return stdgo._internal.sync.atomic_.Atomic__Bool__static_extension.Bool__static_extension.compareAndSwap(_x, _old, _new);
    }
    static public function swap(_x:Bool_, _new:Bool):Bool {
        return stdgo._internal.sync.atomic_.Atomic__Bool__static_extension.Bool__static_extension.swap(_x, _new);
    }
    static public function store(_x:Bool_, _val:Bool):Void {
        stdgo._internal.sync.atomic_.Atomic__Bool__static_extension.Bool__static_extension.store(_x, _val);
    }
    static public function load(_x:Bool_):Bool {
        return stdgo._internal.sync.atomic_.Atomic__Bool__static_extension.Bool__static_extension.load(_x);
    }
}
class Pointer__static_extension {
    static public function compareAndSwap<Dynamic>(_x:Pointer_<Dynamic>, _old:Dynamic, _new:Dynamic):Bool {
        return stdgo._internal.sync.atomic_.Atomic__Pointer__static_extension.Pointer__static_extension.compareAndSwap(_x, _old, _new);
    }
    static public function swap<Dynamic>(_x:Pointer_<Dynamic>, _new:Dynamic):Dynamic {
        return stdgo._internal.sync.atomic_.Atomic__Pointer__static_extension.Pointer__static_extension.swap(_x, _new);
    }
    static public function store<Dynamic>(_x:Pointer_<Dynamic>, _val:Dynamic):Void {
        stdgo._internal.sync.atomic_.Atomic__Pointer__static_extension.Pointer__static_extension.store(_x, _val);
    }
    static public function load<Dynamic>(_x:Pointer_<Dynamic>):Dynamic {
        return stdgo._internal.sync.atomic_.Atomic__Pointer__static_extension.Pointer__static_extension.load(_x);
    }
}
class Int32_static_extension {
    static public function add(_x:Int32, _delta:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.sync.atomic_.Atomic__Int32_static_extension.Int32_static_extension.add(_x, _delta);
    }
    static public function compareAndSwap(_x:Int32, _old:StdTypes.Int, _new:StdTypes.Int):Bool {
        return stdgo._internal.sync.atomic_.Atomic__Int32_static_extension.Int32_static_extension.compareAndSwap(_x, _old, _new);
    }
    static public function swap(_x:Int32, _new:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.sync.atomic_.Atomic__Int32_static_extension.Int32_static_extension.swap(_x, _new);
    }
    static public function store(_x:Int32, _val:StdTypes.Int):Void {
        stdgo._internal.sync.atomic_.Atomic__Int32_static_extension.Int32_static_extension.store(_x, _val);
    }
    static public function load(_x:Int32):StdTypes.Int {
        return stdgo._internal.sync.atomic_.Atomic__Int32_static_extension.Int32_static_extension.load(_x);
    }
}
class Int64__static_extension {
    static public function add(_x:Int64_, _delta:haxe.Int64):haxe.Int64 {
        return stdgo._internal.sync.atomic_.Atomic__Int64__static_extension.Int64__static_extension.add(_x, _delta);
    }
    static public function compareAndSwap(_x:Int64_, _old:haxe.Int64, _new:haxe.Int64):Bool {
        return stdgo._internal.sync.atomic_.Atomic__Int64__static_extension.Int64__static_extension.compareAndSwap(_x, _old, _new);
    }
    static public function swap(_x:Int64_, _new:haxe.Int64):haxe.Int64 {
        return stdgo._internal.sync.atomic_.Atomic__Int64__static_extension.Int64__static_extension.swap(_x, _new);
    }
    static public function store(_x:Int64_, _val:haxe.Int64):Void {
        stdgo._internal.sync.atomic_.Atomic__Int64__static_extension.Int64__static_extension.store(_x, _val);
    }
    static public function load(_x:Int64_):haxe.Int64 {
        return stdgo._internal.sync.atomic_.Atomic__Int64__static_extension.Int64__static_extension.load(_x);
    }
}
class Uint32_static_extension {
    static public function add(_x:Uint32, _delta:std.UInt):std.UInt {
        return stdgo._internal.sync.atomic_.Atomic__Uint32_static_extension.Uint32_static_extension.add(_x, _delta);
    }
    static public function compareAndSwap(_x:Uint32, _old:std.UInt, _new:std.UInt):Bool {
        return stdgo._internal.sync.atomic_.Atomic__Uint32_static_extension.Uint32_static_extension.compareAndSwap(_x, _old, _new);
    }
    static public function swap(_x:Uint32, _new:std.UInt):std.UInt {
        return stdgo._internal.sync.atomic_.Atomic__Uint32_static_extension.Uint32_static_extension.swap(_x, _new);
    }
    static public function store(_x:Uint32, _val:std.UInt):Void {
        stdgo._internal.sync.atomic_.Atomic__Uint32_static_extension.Uint32_static_extension.store(_x, _val);
    }
    static public function load(_x:Uint32):std.UInt {
        return stdgo._internal.sync.atomic_.Atomic__Uint32_static_extension.Uint32_static_extension.load(_x);
    }
}
class Uint64_static_extension {
    static public function add(_x:Uint64, _delta:haxe.UInt64):haxe.UInt64 {
        return stdgo._internal.sync.atomic_.Atomic__Uint64_static_extension.Uint64_static_extension.add(_x, _delta);
    }
    static public function compareAndSwap(_x:Uint64, _old:haxe.UInt64, _new:haxe.UInt64):Bool {
        return stdgo._internal.sync.atomic_.Atomic__Uint64_static_extension.Uint64_static_extension.compareAndSwap(_x, _old, _new);
    }
    static public function swap(_x:Uint64, _new:haxe.UInt64):haxe.UInt64 {
        return stdgo._internal.sync.atomic_.Atomic__Uint64_static_extension.Uint64_static_extension.swap(_x, _new);
    }
    static public function store(_x:Uint64, _val:haxe.UInt64):Void {
        stdgo._internal.sync.atomic_.Atomic__Uint64_static_extension.Uint64_static_extension.store(_x, _val);
    }
    static public function load(_x:Uint64):haxe.UInt64 {
        return stdgo._internal.sync.atomic_.Atomic__Uint64_static_extension.Uint64_static_extension.load(_x);
    }
}
class Uintptr_static_extension {
    static public function add(_x:Uintptr, _delta:stdgo.GoUIntptr):stdgo.GoUIntptr {
        return stdgo._internal.sync.atomic_.Atomic__Uintptr_static_extension.Uintptr_static_extension.add(_x, _delta);
    }
    static public function compareAndSwap(_x:Uintptr, _old:stdgo.GoUIntptr, _new:stdgo.GoUIntptr):Bool {
        return stdgo._internal.sync.atomic_.Atomic__Uintptr_static_extension.Uintptr_static_extension.compareAndSwap(_x, _old, _new);
    }
    static public function swap(_x:Uintptr, _new:stdgo.GoUIntptr):stdgo.GoUIntptr {
        return stdgo._internal.sync.atomic_.Atomic__Uintptr_static_extension.Uintptr_static_extension.swap(_x, _new);
    }
    static public function store(_x:Uintptr, _val:stdgo.GoUIntptr):Void {
        stdgo._internal.sync.atomic_.Atomic__Uintptr_static_extension.Uintptr_static_extension.store(_x, _val);
    }
    static public function load(_x:Uintptr):stdgo.GoUIntptr {
        return stdgo._internal.sync.atomic_.Atomic__Uintptr_static_extension.Uintptr_static_extension.load(_x);
    }
}
class T_noCopy_static_extension {
    static public function unlock(_:T_noCopy):Void {
        stdgo._internal.sync.atomic_.Atomic__T_noCopy_static_extension.T_noCopy_static_extension.unlock(_);
    }
    static public function lock(_:T_noCopy):Void {
        stdgo._internal.sync.atomic_.Atomic__T_noCopy_static_extension.T_noCopy_static_extension.lock(_);
    }
}
class Value_static_extension {
    static public function compareAndSwap(_v:Value, _old:stdgo.AnyInterface, _new:stdgo.AnyInterface):Bool {
        return stdgo._internal.sync.atomic_.Atomic__Value_static_extension.Value_static_extension.compareAndSwap(_v, _old, _new);
    }
    static public function swap(_v:Value, _new:stdgo.AnyInterface):stdgo.AnyInterface {
        return stdgo._internal.sync.atomic_.Atomic__Value_static_extension.Value_static_extension.swap(_v, _new);
    }
    static public function store(_v:Value, _val:stdgo.AnyInterface):Void {
        stdgo._internal.sync.atomic_.Atomic__Value_static_extension.Value_static_extension.store(_v, _val);
    }
    static public function load(_v:Value):stdgo.AnyInterface {
        return stdgo._internal.sync.atomic_.Atomic__Value_static_extension.Value_static_extension.load(_v);
    }
}
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
class Atomic_ {
    /**
        SwapInt32 atomically stores new into *addr and returns the previous *addr value.
        Consider using the more ergonomic and less error-prone [Int32.Swap] instead.
    **/
    static public function swapInt32(_addr:stdgo.Pointer<StdTypes.Int>, _new:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.sync.atomic_.Atomic__swapInt32.swapInt32(_addr, _new);
    }
    /**
        SwapInt64 atomically stores new into *addr and returns the previous *addr value.
        Consider using the more ergonomic and less error-prone [Int64.Swap] instead
        (particularly if you target 32-bit platforms; see the bugs section).
    **/
    static public function swapInt64(_addr:stdgo.Pointer<haxe.Int64>, _new:haxe.Int64):haxe.Int64 {
        return stdgo._internal.sync.atomic_.Atomic__swapInt64.swapInt64(_addr, _new);
    }
    /**
        SwapUint32 atomically stores new into *addr and returns the previous *addr value.
        Consider using the more ergonomic and less error-prone [Uint32.Swap] instead.
    **/
    static public function swapUint32(_addr:stdgo.Pointer<std.UInt>, _new:std.UInt):std.UInt {
        return stdgo._internal.sync.atomic_.Atomic__swapUint32.swapUint32(_addr, _new);
    }
    /**
        SwapUint64 atomically stores new into *addr and returns the previous *addr value.
        Consider using the more ergonomic and less error-prone [Uint64.Swap] instead
        (particularly if you target 32-bit platforms; see the bugs section).
    **/
    static public function swapUint64(_addr:stdgo.Pointer<haxe.UInt64>, _new:haxe.UInt64):haxe.UInt64 {
        return stdgo._internal.sync.atomic_.Atomic__swapUint64.swapUint64(_addr, _new);
    }
    /**
        SwapUintptr atomically stores new into *addr and returns the previous *addr value.
        Consider using the more ergonomic and less error-prone [Uintptr.Swap] instead.
    **/
    static public function swapUintptr(_addr:stdgo.Pointer<stdgo.GoUIntptr>, _new:stdgo.GoUIntptr):stdgo.GoUIntptr {
        return stdgo._internal.sync.atomic_.Atomic__swapUintptr.swapUintptr(_addr, _new);
    }
    /**
        SwapPointer atomically stores new into *addr and returns the previous *addr value.
        Consider using the more ergonomic and less error-prone [Pointer.Swap] instead.
    **/
    static public function swapPointer(_addr:stdgo.Pointer<stdgo._internal.unsafe.Unsafe.UnsafePointer>, _new:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        return stdgo._internal.sync.atomic_.Atomic__swapPointer.swapPointer(_addr, _new);
    }
    /**
        CompareAndSwapInt32 executes the compare-and-swap operation for an int32 value.
        Consider using the more ergonomic and less error-prone [Int32.CompareAndSwap] instead.
    **/
    static public function compareAndSwapInt32(_addr:stdgo.Pointer<StdTypes.Int>, _old:StdTypes.Int, _new:StdTypes.Int):Bool {
        return stdgo._internal.sync.atomic_.Atomic__compareAndSwapInt32.compareAndSwapInt32(_addr, _old, _new);
    }
    /**
        CompareAndSwapInt64 executes the compare-and-swap operation for an int64 value.
        Consider using the more ergonomic and less error-prone [Int64.CompareAndSwap] instead
        (particularly if you target 32-bit platforms; see the bugs section).
    **/
    static public function compareAndSwapInt64(_addr:stdgo.Pointer<haxe.Int64>, _old:haxe.Int64, _new:haxe.Int64):Bool {
        return stdgo._internal.sync.atomic_.Atomic__compareAndSwapInt64.compareAndSwapInt64(_addr, _old, _new);
    }
    /**
        CompareAndSwapUint32 executes the compare-and-swap operation for a uint32 value.
        Consider using the more ergonomic and less error-prone [Uint32.CompareAndSwap] instead.
    **/
    static public function compareAndSwapUint32(_addr:stdgo.Pointer<std.UInt>, _old:std.UInt, _new:std.UInt):Bool {
        return stdgo._internal.sync.atomic_.Atomic__compareAndSwapUint32.compareAndSwapUint32(_addr, _old, _new);
    }
    /**
        CompareAndSwapUint64 executes the compare-and-swap operation for a uint64 value.
        Consider using the more ergonomic and less error-prone [Uint64.CompareAndSwap] instead
        (particularly if you target 32-bit platforms; see the bugs section).
    **/
    static public function compareAndSwapUint64(_addr:stdgo.Pointer<haxe.UInt64>, _old:haxe.UInt64, _new:haxe.UInt64):Bool {
        return stdgo._internal.sync.atomic_.Atomic__compareAndSwapUint64.compareAndSwapUint64(_addr, _old, _new);
    }
    /**
        CompareAndSwapUintptr executes the compare-and-swap operation for a uintptr value.
        Consider using the more ergonomic and less error-prone [Uintptr.CompareAndSwap] instead.
    **/
    static public function compareAndSwapUintptr(_addr:stdgo.Pointer<stdgo.GoUIntptr>, _old:stdgo.GoUIntptr, _new:stdgo.GoUIntptr):Bool {
        return stdgo._internal.sync.atomic_.Atomic__compareAndSwapUintptr.compareAndSwapUintptr(_addr, _old, _new);
    }
    /**
        CompareAndSwapPointer executes the compare-and-swap operation for a unsafe.Pointer value.
        Consider using the more ergonomic and less error-prone [Pointer.CompareAndSwap] instead.
    **/
    static public function compareAndSwapPointer(_addr:stdgo.Pointer<stdgo._internal.unsafe.Unsafe.UnsafePointer>, _old:stdgo._internal.unsafe.Unsafe.UnsafePointer, _new:stdgo._internal.unsafe.Unsafe.UnsafePointer):Bool {
        return stdgo._internal.sync.atomic_.Atomic__compareAndSwapPointer.compareAndSwapPointer(_addr, _old, _new);
    }
    /**
        AddInt32 atomically adds delta to *addr and returns the new value.
        Consider using the more ergonomic and less error-prone [Int32.Add] instead.
    **/
    static public function addInt32(_addr:stdgo.Pointer<StdTypes.Int>, _delta:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.sync.atomic_.Atomic__addInt32.addInt32(_addr, _delta);
    }
    /**
        AddUint32 atomically adds delta to *addr and returns the new value.
        To subtract a signed positive constant value c from x, do AddUint32(&x, ^uint32(c-1)).
        In particular, to decrement x, do AddUint32(&x, ^uint32(0)).
        Consider using the more ergonomic and less error-prone [Uint32.Add] instead.
    **/
    static public function addUint32(_addr:stdgo.Pointer<std.UInt>, _delta:std.UInt):std.UInt {
        return stdgo._internal.sync.atomic_.Atomic__addUint32.addUint32(_addr, _delta);
    }
    /**
        AddInt64 atomically adds delta to *addr and returns the new value.
        Consider using the more ergonomic and less error-prone [Int64.Add] instead
        (particularly if you target 32-bit platforms; see the bugs section).
    **/
    static public function addInt64(_addr:stdgo.Pointer<haxe.Int64>, _delta:haxe.Int64):haxe.Int64 {
        return stdgo._internal.sync.atomic_.Atomic__addInt64.addInt64(_addr, _delta);
    }
    /**
        AddUint64 atomically adds delta to *addr and returns the new value.
        To subtract a signed positive constant value c from x, do AddUint64(&x, ^uint64(c-1)).
        In particular, to decrement x, do AddUint64(&x, ^uint64(0)).
        Consider using the more ergonomic and less error-prone [Uint64.Add] instead
        (particularly if you target 32-bit platforms; see the bugs section).
    **/
    static public function addUint64(_addr:stdgo.Pointer<haxe.UInt64>, _delta:haxe.UInt64):haxe.UInt64 {
        return stdgo._internal.sync.atomic_.Atomic__addUint64.addUint64(_addr, _delta);
    }
    /**
        AddUintptr atomically adds delta to *addr and returns the new value.
        Consider using the more ergonomic and less error-prone [Uintptr.Add] instead.
    **/
    static public function addUintptr(_addr:stdgo.Pointer<stdgo.GoUIntptr>, _delta:stdgo.GoUIntptr):stdgo.GoUIntptr {
        return stdgo._internal.sync.atomic_.Atomic__addUintptr.addUintptr(_addr, _delta);
    }
    /**
        LoadInt32 atomically loads *addr.
        Consider using the more ergonomic and less error-prone [Int32.Load] instead.
    **/
    static public function loadInt32(_addr:stdgo.Pointer<StdTypes.Int>):StdTypes.Int {
        return stdgo._internal.sync.atomic_.Atomic__loadInt32.loadInt32(_addr);
    }
    /**
        LoadInt64 atomically loads *addr.
        Consider using the more ergonomic and less error-prone [Int64.Load] instead
        (particularly if you target 32-bit platforms; see the bugs section).
    **/
    static public function loadInt64(_addr:stdgo.Pointer<haxe.Int64>):haxe.Int64 {
        return stdgo._internal.sync.atomic_.Atomic__loadInt64.loadInt64(_addr);
    }
    /**
        LoadUint32 atomically loads *addr.
        Consider using the more ergonomic and less error-prone [Uint32.Load] instead.
    **/
    static public function loadUint32(_addr:stdgo.Pointer<std.UInt>):std.UInt {
        return stdgo._internal.sync.atomic_.Atomic__loadUint32.loadUint32(_addr);
    }
    /**
        LoadUint64 atomically loads *addr.
        Consider using the more ergonomic and less error-prone [Uint64.Load] instead
        (particularly if you target 32-bit platforms; see the bugs section).
    **/
    static public function loadUint64(_addr:stdgo.Pointer<haxe.UInt64>):haxe.UInt64 {
        return stdgo._internal.sync.atomic_.Atomic__loadUint64.loadUint64(_addr);
    }
    /**
        LoadUintptr atomically loads *addr.
        Consider using the more ergonomic and less error-prone [Uintptr.Load] instead.
    **/
    static public function loadUintptr(_addr:stdgo.Pointer<stdgo.GoUIntptr>):stdgo.GoUIntptr {
        return stdgo._internal.sync.atomic_.Atomic__loadUintptr.loadUintptr(_addr);
    }
    /**
        LoadPointer atomically loads *addr.
        Consider using the more ergonomic and less error-prone [Pointer.Load] instead.
    **/
    static public function loadPointer(_addr:stdgo.Pointer<stdgo._internal.unsafe.Unsafe.UnsafePointer>):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        return stdgo._internal.sync.atomic_.Atomic__loadPointer.loadPointer(_addr);
    }
    /**
        StoreInt32 atomically stores val into *addr.
        Consider using the more ergonomic and less error-prone [Int32.Store] instead.
    **/
    static public function storeInt32(_addr:stdgo.Pointer<StdTypes.Int>, _val:StdTypes.Int):Void {
        stdgo._internal.sync.atomic_.Atomic__storeInt32.storeInt32(_addr, _val);
    }
    /**
        StoreInt64 atomically stores val into *addr.
        Consider using the more ergonomic and less error-prone [Int64.Store] instead
        (particularly if you target 32-bit platforms; see the bugs section).
    **/
    static public function storeInt64(_addr:stdgo.Pointer<haxe.Int64>, _val:haxe.Int64):Void {
        stdgo._internal.sync.atomic_.Atomic__storeInt64.storeInt64(_addr, _val);
    }
    /**
        StoreUint32 atomically stores val into *addr.
        Consider using the more ergonomic and less error-prone [Uint32.Store] instead.
    **/
    static public function storeUint32(_addr:stdgo.Pointer<std.UInt>, _val:std.UInt):Void {
        stdgo._internal.sync.atomic_.Atomic__storeUint32.storeUint32(_addr, _val);
    }
    /**
        StoreUint64 atomically stores val into *addr.
        Consider using the more ergonomic and less error-prone [Uint64.Store] instead
        (particularly if you target 32-bit platforms; see the bugs section).
    **/
    static public function storeUint64(_addr:stdgo.Pointer<haxe.UInt64>, _val:haxe.UInt64):Void {
        stdgo._internal.sync.atomic_.Atomic__storeUint64.storeUint64(_addr, _val);
    }
    /**
        StoreUintptr atomically stores val into *addr.
        Consider using the more ergonomic and less error-prone [Uintptr.Store] instead.
    **/
    static public function storeUintptr(_addr:stdgo.Pointer<stdgo.GoUIntptr>, _val:stdgo.GoUIntptr):Void {
        stdgo._internal.sync.atomic_.Atomic__storeUintptr.storeUintptr(_addr, _val);
    }
    /**
        StorePointer atomically stores val into *addr.
        Consider using the more ergonomic and less error-prone [Pointer.Store] instead.
    **/
    static public function storePointer(_addr:stdgo.Pointer<stdgo._internal.unsafe.Unsafe.UnsafePointer>, _val:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void {
        stdgo._internal.sync.atomic_.Atomic__storePointer.storePointer(_addr, _val);
    }
}
