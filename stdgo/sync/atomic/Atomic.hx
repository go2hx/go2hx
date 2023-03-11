package stdgo.sync.atomic;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
/**
    // Package atomic provides low-level atomic memory primitives
    // useful for implementing synchronization algorithms.
    //
    // These functions require great care to be used correctly.
    // Except for special, low-level applications, synchronization is better
    // done with channels or the facilities of the sync package.
    // Share memory by communicating;
    // don't communicate by sharing memory.
    //
    // The swap operation, implemented by the SwapT functions, is the atomic
    // equivalent of:
    //
    //	old = *addr
    //	*addr = new
    //	return old
    //
    // The compare-and-swap operation, implemented by the CompareAndSwapT
    // functions, is the atomic equivalent of:
    //
    //	if *addr == old {
    //		*addr = new
    //		return true
    //	}
    //	return false
    //
    // The add operation, implemented by the AddT functions, is the atomic
    // equivalent of:
    //
    //	*addr += delta
    //	return *addr
    //
    // The load and store operations, implemented by the LoadT and StoreT
    // functions, are the atomic equivalents of "return *addr" and
    // "*addr = val".
    //
    // In the terminology of the Go memory model, if the effect of
    // an atomic operation A is observed by atomic operation B,
    // then A “synchronizes before” B.
    // Additionally, all the atomic operations executed in a program
    // behave as though executed in some sequentially consistent order.
    // This definition provides the same semantics as
    // C++'s sequentially consistent atomics and Java's volatile variables.
**/
private var __go2hxdoc__package : Bool;
/**
    // For testing *Pointer[T]'s methods can be inlined.
    // Keep in sync with cmd/compile/internal/test/inl_test.go:TestIntendedInlining.
    
    
**/
private var __22 = (null : Ref<stdgo.sync.atomic.Atomic.Pointer_<GoInt>>);
/**
    
    
    
**/
private var _firstStoreInProgress : GoByte = (0 : GoUInt8);
/**
    // A Bool is an atomic boolean value.
    // The zero value is false.
    
    
**/
@:structInit @:using(stdgo.sync.atomic.Atomic.Bool__static_extension) class Bool_ {
    @:optional
    public var __2 : stdgo.sync.atomic.Atomic.T_noCopy = ({} : stdgo.sync.atomic.Atomic.T_noCopy);
    public var _v : GoUInt32 = 0;
    public function new(?__2:stdgo.sync.atomic.Atomic.T_noCopy, ?_v:GoUInt32) {
        if (__2 != null) this.__2 = __2;
        if (_v != null) this._v = _v;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new Bool_(__2, _v);
    }
}
/**
    // A Pointer is an atomic pointer of type *T. The zero value is a nil *T.
    
    
**/
@:structInit @:using(stdgo.sync.atomic.Atomic.Pointer__static_extension) class Pointer_<T> {
    /**
        // Mention *T in a field to disallow conversion between Pointer types.
        // See go.dev/issue/56603 for more details.
        // Use *T, not T, to avoid spurious recursive type definition errors.
    **/
    @:optional
    public var __5 : GoArray<Ref<T>> = new GoArray<Ref<T>>(...[for (i in 0 ... 0) (null : Ref<T>)]);
    @:optional
    public var __6 : stdgo.sync.atomic.Atomic.T_noCopy = ({} : stdgo.sync.atomic.Atomic.T_noCopy);
    public var _v : stdgo.unsafe.Unsafe.UnsafePointer = null;
    public function new(?__5:GoArray<Ref<T>>, ?__6:stdgo.sync.atomic.Atomic.T_noCopy, ?_v:stdgo.unsafe.Unsafe.UnsafePointer) {
        if (__5 != null) this.__5 = __5;
        if (__6 != null) this.__6 = __6;
        if (_v != null) this._v = _v;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new Pointer_(__5, __6, _v);
    }
}
/**
    // An Int32 is an atomic int32. The zero value is zero.
    
    
**/
@:structInit @:using(stdgo.sync.atomic.Atomic.Int32_static_extension) class Int32 {
    @:optional
    public var __8 : stdgo.sync.atomic.Atomic.T_noCopy = ({} : stdgo.sync.atomic.Atomic.T_noCopy);
    public var _v : GoInt32 = 0;
    public function new(?__8:stdgo.sync.atomic.Atomic.T_noCopy, ?_v:GoInt32) {
        if (__8 != null) this.__8 = __8;
        if (_v != null) this._v = _v;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new Int32(__8, _v);
    }
}
/**
    // An Int64 is an atomic int64. The zero value is zero.
    
    
**/
@:structInit @:using(stdgo.sync.atomic.Atomic.Int64__static_extension) class Int64_ {
    @:optional
    public var __11 : stdgo.sync.atomic.Atomic.T_noCopy = ({} : stdgo.sync.atomic.Atomic.T_noCopy);
    @:optional
    public var __12 : stdgo.sync.atomic.Atomic.T_align64 = ({} : stdgo.sync.atomic.Atomic.T_align64);
    public var _v : GoInt64 = 0;
    public function new(?__11:stdgo.sync.atomic.Atomic.T_noCopy, ?__12:stdgo.sync.atomic.Atomic.T_align64, ?_v:GoInt64) {
        if (__11 != null) this.__11 = __11;
        if (__12 != null) this.__12 = __12;
        if (_v != null) this._v = _v;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new Int64_(__11, __12, _v);
    }
}
/**
    // An Uint32 is an atomic uint32. The zero value is zero.
    
    
**/
@:structInit @:using(stdgo.sync.atomic.Atomic.Uint32_static_extension) class Uint32 {
    @:optional
    public var __13 : stdgo.sync.atomic.Atomic.T_noCopy = ({} : stdgo.sync.atomic.Atomic.T_noCopy);
    public var _v : GoUInt32 = 0;
    public function new(?__13:stdgo.sync.atomic.Atomic.T_noCopy, ?_v:GoUInt32) {
        if (__13 != null) this.__13 = __13;
        if (_v != null) this._v = _v;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new Uint32(__13, _v);
    }
}
/**
    // An Uint64 is an atomic uint64. The zero value is zero.
    
    
**/
@:structInit @:using(stdgo.sync.atomic.Atomic.Uint64_static_extension) class Uint64 {
    @:optional
    public var __16 : stdgo.sync.atomic.Atomic.T_noCopy = ({} : stdgo.sync.atomic.Atomic.T_noCopy);
    @:optional
    public var __17 : stdgo.sync.atomic.Atomic.T_align64 = ({} : stdgo.sync.atomic.Atomic.T_align64);
    public var _v : GoUInt64 = 0;
    public function new(?__16:stdgo.sync.atomic.Atomic.T_noCopy, ?__17:stdgo.sync.atomic.Atomic.T_align64, ?_v:GoUInt64) {
        if (__16 != null) this.__16 = __16;
        if (__17 != null) this.__17 = __17;
        if (_v != null) this._v = _v;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new Uint64(__16, __17, _v);
    }
}
/**
    // An Uintptr is an atomic uintptr. The zero value is zero.
    
    
**/
@:structInit @:using(stdgo.sync.atomic.Atomic.Uintptr_static_extension) class Uintptr {
    @:optional
    public var __19 : stdgo.sync.atomic.Atomic.T_noCopy = ({} : stdgo.sync.atomic.Atomic.T_noCopy);
    public var _v : GoUIntptr = 0;
    public function new(?__19:stdgo.sync.atomic.Atomic.T_noCopy, ?_v:GoUIntptr) {
        if (__19 != null) this.__19 = __19;
        if (_v != null) this._v = _v;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new Uintptr(__19, _v);
    }
}
/**
    // noCopy may be added to structs which must not be copied
    // after the first use.
    //
    // See https://golang.org/issues/8005#issuecomment-190753527
    // for details.
    //
    // Note that it must not be embedded, due to the Lock and Unlock methods.
    
    
**/
@:structInit @:private @:using(stdgo.sync.atomic.Atomic.T_noCopy_static_extension) class T_noCopy {
    public function new() {}
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_noCopy();
    }
}
/**
    // align64 may be added to structs that must be 64-bit aligned.
    // This struct is recognized by a special case in the compiler
    // and will not work if copied to any other package.
    
    
**/
@:structInit @:private class T_align64 {
    public function new() {}
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_align64();
    }
}
/**
    // A Value provides an atomic load and store of a consistently typed value.
    // The zero value for a Value returns nil from Load.
    // Once Store has been called, a Value must not be copied.
    //
    // A Value must not be copied after first use.
    
    
**/
@:structInit @:using(stdgo.sync.atomic.Atomic.Value_static_extension) class Value {
    public var _v : AnyInterface = (null : AnyInterface);
    public function new(?_v:AnyInterface) {
        if (_v != null) this._v = _v;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new Value(_v);
    }
}
/**
    // efaceWords is interface{} internal representation.
    
    
**/
@:structInit @:private class T_efaceWords {
    public var _typ : stdgo.unsafe.Unsafe.UnsafePointer = null;
    public var _data : stdgo.unsafe.Unsafe.UnsafePointer = null;
    public function new(?_typ:stdgo.unsafe.Unsafe.UnsafePointer, ?_data:stdgo.unsafe.Unsafe.UnsafePointer) {
        if (_typ != null) this._typ = _typ;
        if (_data != null) this._data = _data;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_efaceWords(_typ, _data);
    }
}
/**
    // SwapInt32 atomically stores new into *addr and returns the previous *addr value.
    // Consider using the more ergonomic and less error-prone [Int32.Swap] instead.
**/
function swapInt32(_addr:Pointer<GoInt32>, _new:GoInt32):GoInt32 throw "sync.atomic.swapInt32 is not yet implemented";
/**
    // SwapInt64 atomically stores new into *addr and returns the previous *addr value.
    // Consider using the more ergonomic and less error-prone [Int64.Swap] instead
    // (particularly if you target 32-bit platforms; see the bugs section).
**/
function swapInt64(_addr:Pointer<GoInt64>, _new:GoInt64):GoInt64 throw "sync.atomic.swapInt64 is not yet implemented";
/**
    // SwapUint32 atomically stores new into *addr and returns the previous *addr value.
    // Consider using the more ergonomic and less error-prone [Uint32.Swap] instead.
**/
function swapUint32(_addr:Pointer<GoUInt32>, _new:GoUInt32):GoUInt32 throw "sync.atomic.swapUint32 is not yet implemented";
/**
    // SwapUint64 atomically stores new into *addr and returns the previous *addr value.
    // Consider using the more ergonomic and less error-prone [Uint64.Swap] instead
    // (particularly if you target 32-bit platforms; see the bugs section).
**/
function swapUint64(_addr:Pointer<GoUInt64>, _new:GoUInt64):GoUInt64 throw "sync.atomic.swapUint64 is not yet implemented";
/**
    // SwapUintptr atomically stores new into *addr and returns the previous *addr value.
    // Consider using the more ergonomic and less error-prone [Uintptr.Swap] instead.
**/
function swapUintptr(_addr:Pointer<GoUIntptr>, _new:GoUIntptr):GoUIntptr throw "sync.atomic.swapUintptr is not yet implemented";
/**
    // SwapPointer atomically stores new into *addr and returns the previous *addr value.
    // Consider using the more ergonomic and less error-prone [Pointer.Swap] instead.
**/
function swapPointer(_addr:Pointer<stdgo.unsafe.Unsafe.UnsafePointer>, _new:stdgo.unsafe.Unsafe.UnsafePointer):stdgo.unsafe.Unsafe.UnsafePointer throw "sync.atomic.swapPointer is not yet implemented";
/**
    // CompareAndSwapInt32 executes the compare-and-swap operation for an int32 value.
    // Consider using the more ergonomic and less error-prone [Int32.CompareAndSwap] instead.
**/
function compareAndSwapInt32(_addr:Pointer<GoInt32>, _old:GoInt32, _new:GoInt32):Bool throw "sync.atomic.compareAndSwapInt32 is not yet implemented";
/**
    // CompareAndSwapInt64 executes the compare-and-swap operation for an int64 value.
    // Consider using the more ergonomic and less error-prone [Int64.CompareAndSwap] instead
    // (particularly if you target 32-bit platforms; see the bugs section).
**/
function compareAndSwapInt64(_addr:Pointer<GoInt64>, _old:GoInt64, _new:GoInt64):Bool throw "sync.atomic.compareAndSwapInt64 is not yet implemented";
/**
    // CompareAndSwapUint32 executes the compare-and-swap operation for a uint32 value.
    // Consider using the more ergonomic and less error-prone [Uint32.CompareAndSwap] instead.
**/
function compareAndSwapUint32(_addr:Pointer<GoUInt32>, _old:GoUInt32, _new:GoUInt32):Bool throw "sync.atomic.compareAndSwapUint32 is not yet implemented";
/**
    // CompareAndSwapUint64 executes the compare-and-swap operation for a uint64 value.
    // Consider using the more ergonomic and less error-prone [Uint64.CompareAndSwap] instead
    // (particularly if you target 32-bit platforms; see the bugs section).
**/
function compareAndSwapUint64(_addr:Pointer<GoUInt64>, _old:GoUInt64, _new:GoUInt64):Bool throw "sync.atomic.compareAndSwapUint64 is not yet implemented";
/**
    // CompareAndSwapUintptr executes the compare-and-swap operation for a uintptr value.
    // Consider using the more ergonomic and less error-prone [Uintptr.CompareAndSwap] instead.
**/
function compareAndSwapUintptr(_addr:Pointer<GoUIntptr>, _old:GoUIntptr, _new:GoUIntptr):Bool throw "sync.atomic.compareAndSwapUintptr is not yet implemented";
/**
    // CompareAndSwapPointer executes the compare-and-swap operation for a unsafe.Pointer value.
    // Consider using the more ergonomic and less error-prone [Pointer.CompareAndSwap] instead.
**/
function compareAndSwapPointer(_addr:Pointer<stdgo.unsafe.Unsafe.UnsafePointer>, _old:stdgo.unsafe.Unsafe.UnsafePointer, _new:stdgo.unsafe.Unsafe.UnsafePointer):Bool throw "sync.atomic.compareAndSwapPointer is not yet implemented";
/**
    // AddInt32 atomically adds delta to *addr and returns the new value.
    // Consider using the more ergonomic and less error-prone [Int32.Add] instead.
**/
function addInt32(_addr:Pointer<GoInt32>, _delta:GoInt32):GoInt32 throw "sync.atomic.addInt32 is not yet implemented";
/**
    // AddUint32 atomically adds delta to *addr and returns the new value.
    // To subtract a signed positive constant value c from x, do AddUint32(&x, ^uint32(c-1)).
    // In particular, to decrement x, do AddUint32(&x, ^uint32(0)).
    // Consider using the more ergonomic and less error-prone [Uint32.Add] instead.
**/
function addUint32(_addr:Pointer<GoUInt32>, _delta:GoUInt32):GoUInt32 throw "sync.atomic.addUint32 is not yet implemented";
/**
    // AddInt64 atomically adds delta to *addr and returns the new value.
    // Consider using the more ergonomic and less error-prone [Int64.Add] instead
    // (particularly if you target 32-bit platforms; see the bugs section).
**/
function addInt64(_addr:Pointer<GoInt64>, _delta:GoInt64):GoInt64 throw "sync.atomic.addInt64 is not yet implemented";
/**
    // AddUint64 atomically adds delta to *addr and returns the new value.
    // To subtract a signed positive constant value c from x, do AddUint64(&x, ^uint64(c-1)).
    // In particular, to decrement x, do AddUint64(&x, ^uint64(0)).
    // Consider using the more ergonomic and less error-prone [Uint64.Add] instead
    // (particularly if you target 32-bit platforms; see the bugs section).
**/
function addUint64(_addr:Pointer<GoUInt64>, _delta:GoUInt64):GoUInt64 throw "sync.atomic.addUint64 is not yet implemented";
/**
    // AddUintptr atomically adds delta to *addr and returns the new value.
    // Consider using the more ergonomic and less error-prone [Uintptr.Add] instead.
**/
function addUintptr(_addr:Pointer<GoUIntptr>, _delta:GoUIntptr):GoUIntptr throw "sync.atomic.addUintptr is not yet implemented";
/**
    // LoadInt32 atomically loads *addr.
    // Consider using the more ergonomic and less error-prone [Int32.Load] instead.
**/
function loadInt32(_addr:Pointer<GoInt32>):GoInt32 throw "sync.atomic.loadInt32 is not yet implemented";
/**
    // LoadInt64 atomically loads *addr.
    // Consider using the more ergonomic and less error-prone [Int64.Load] instead
    // (particularly if you target 32-bit platforms; see the bugs section).
**/
function loadInt64(_addr:Pointer<GoInt64>):GoInt64 throw "sync.atomic.loadInt64 is not yet implemented";
/**
    // LoadUint32 atomically loads *addr.
    // Consider using the more ergonomic and less error-prone [Uint32.Load] instead.
**/
function loadUint32(_addr:Pointer<GoUInt32>):GoUInt32 throw "sync.atomic.loadUint32 is not yet implemented";
/**
    // LoadUint64 atomically loads *addr.
    // Consider using the more ergonomic and less error-prone [Uint64.Load] instead
    // (particularly if you target 32-bit platforms; see the bugs section).
**/
function loadUint64(_addr:Pointer<GoUInt64>):GoUInt64 throw "sync.atomic.loadUint64 is not yet implemented";
/**
    // LoadUintptr atomically loads *addr.
    // Consider using the more ergonomic and less error-prone [Uintptr.Load] instead.
**/
function loadUintptr(_addr:Pointer<GoUIntptr>):GoUIntptr throw "sync.atomic.loadUintptr is not yet implemented";
/**
    // LoadPointer atomically loads *addr.
    // Consider using the more ergonomic and less error-prone [Pointer.Load] instead.
**/
function loadPointer(_addr:Pointer<stdgo.unsafe.Unsafe.UnsafePointer>):stdgo.unsafe.Unsafe.UnsafePointer throw "sync.atomic.loadPointer is not yet implemented";
/**
    // StoreInt32 atomically stores val into *addr.
    // Consider using the more ergonomic and less error-prone [Int32.Store] instead.
**/
function storeInt32(_addr:Pointer<GoInt32>, _val:GoInt32):Void throw "sync.atomic.storeInt32 is not yet implemented";
/**
    // StoreInt64 atomically stores val into *addr.
    // Consider using the more ergonomic and less error-prone [Int64.Store] instead
    // (particularly if you target 32-bit platforms; see the bugs section).
**/
function storeInt64(_addr:Pointer<GoInt64>, _val:GoInt64):Void throw "sync.atomic.storeInt64 is not yet implemented";
/**
    // StoreUint32 atomically stores val into *addr.
    // Consider using the more ergonomic and less error-prone [Uint32.Store] instead.
**/
function storeUint32(_addr:Pointer<GoUInt32>, _val:GoUInt32):Void {
        _addr.value = _val;
    }
/**
    // StoreUint64 atomically stores val into *addr.
    // Consider using the more ergonomic and less error-prone [Uint64.Store] instead
    // (particularly if you target 32-bit platforms; see the bugs section).
**/
function storeUint64(_addr:Pointer<GoUInt64>, _val:GoUInt64):Void {
        _addr.value = _val;
    }
/**
    // StoreUintptr atomically stores val into *addr.
    // Consider using the more ergonomic and less error-prone [Uintptr.Store] instead.
**/
function storeUintptr(_addr:Pointer<GoUIntptr>, _val:GoUIntptr):Void throw "sync.atomic.storeUintptr is not yet implemented";
/**
    // StorePointer atomically stores val into *addr.
    // Consider using the more ergonomic and less error-prone [Pointer.Store] instead.
**/
function storePointer(_addr:Pointer<stdgo.unsafe.Unsafe.UnsafePointer>, _val:stdgo.unsafe.Unsafe.UnsafePointer):Void throw "sync.atomic.storePointer is not yet implemented";
/**
    // b32 returns a uint32 0 or 1 representing b.
**/
private function _b32(_b:Bool):GoUInt32 throw "sync.atomic._b32 is not yet implemented";
/**
    // Disable/enable preemption, implemented in runtime.
**/
private function _runtime_procPin():Void throw "sync.atomic._runtime_procPin is not yet implemented";
private function _runtime_procUnpin():Void throw "sync.atomic._runtime_procUnpin is not yet implemented";
class Bool__asInterface {
    /**
        // CompareAndSwap executes the compare-and-swap operation for the boolean value x.
    **/
    @:keep
    public dynamic function compareAndSwap(_old:Bool, _new:Bool):Bool return __self__.value.compareAndSwap(_old, _new);
    /**
        // Swap atomically stores new into x and returns the previous value.
    **/
    @:keep
    public dynamic function swap(_new:Bool):Bool return __self__.value.swap(_new);
    /**
        // Store atomically stores val into x.
    **/
    @:keep
    public dynamic function store(_val:Bool):Void __self__.value.store(_val);
    /**
        // Load atomically loads and returns the value stored in x.
    **/
    @:keep
    public dynamic function load():Bool return __self__.value.load();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<Bool_>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync.atomic.Atomic.Bool__asInterface) class Bool__static_extension {
    /**
        // CompareAndSwap executes the compare-and-swap operation for the boolean value x.
    **/
    @:keep
    static public function compareAndSwap( _x:Ref<Bool_>, _old:Bool, _new:Bool):Bool throw "sync.atomic.compareAndSwap is not yet implemented";
    /**
        // Swap atomically stores new into x and returns the previous value.
    **/
    @:keep
    static public function swap( _x:Ref<Bool_>, _new:Bool):Bool throw "sync.atomic.swap is not yet implemented";
    /**
        // Store atomically stores val into x.
    **/
    @:keep
    static public function store( _x:Ref<Bool_>, _val:Bool):Void storeUint32(Go.pointer(_x._v), _val ? 1 : 0);
    /**
        // Load atomically loads and returns the value stored in x.
    **/
    @:keep
    static public function load( _x:Ref<Bool_>):Bool throw "sync.atomic.load is not yet implemented";
}
class Pointer__asInterface<T> {
    /**
        // CompareAndSwap executes the compare-and-swap operation for x.
    **/
    @:keep
    public var compareAndSwap : (Ref<T>, Ref<T>) -> Bool;
    /**
        // Swap atomically stores new into x and returns the previous value.
    **/
    @:keep
    public var swap : Ref<T> -> Ref<T>;
    /**
        // Store atomically stores val into x.
    **/
    @:keep
    public var store : Ref<T> -> Void;
    /**
        // Load atomically loads and returns the value stored in x.
    **/
    @:keep
    public var load : () -> Ref<T>;
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<Pointer_<T>>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync.atomic.Atomic.Pointer__asInterface) class Pointer__static_extension {
    /**
        // CompareAndSwap executes the compare-and-swap operation for x.
    **/
    @:keep
    macro static public function compareAndSwap<T>( _x:haxe.macro.Expr.ExprOf<Ref<Pointer_<T>>>, _old:haxe.macro.Expr.ExprOf<Ref<T>>, _new:haxe.macro.Expr.ExprOf<Ref<T>>):haxe.macro.Expr.ExprOf<Bool>;
    /**
        // Swap atomically stores new into x and returns the previous value.
    **/
    @:keep
    macro static public function swap<T>( _x:haxe.macro.Expr.ExprOf<Ref<Pointer_<T>>>, _new:haxe.macro.Expr.ExprOf<Ref<T>>):haxe.macro.Expr.ExprOf<Ref<T>>;
    /**
        // Store atomically stores val into x.
    **/
    @:keep
    macro static public function store<T>( _x:haxe.macro.Expr.ExprOf<Ref<Pointer_<T>>>, _val:haxe.macro.Expr.ExprOf<Ref<T>>):haxe.macro.Expr.ExprOf<Void>;
    /**
        // Load atomically loads and returns the value stored in x.
    **/
    @:keep
    macro static public function load<T>( _x:haxe.macro.Expr.ExprOf<Ref<Pointer_<T>>>):haxe.macro.Expr.ExprOf<Ref<T>>;
}
class Int32_asInterface {
    /**
        // Add atomically adds delta to x and returns the new value.
    **/
    @:keep
    public dynamic function add(_delta:GoInt32):GoInt32 return __self__.value.add(_delta);
    /**
        // CompareAndSwap executes the compare-and-swap operation for x.
    **/
    @:keep
    public dynamic function compareAndSwap(_old:GoInt32, _new:GoInt32):Bool return __self__.value.compareAndSwap(_old, _new);
    /**
        // Swap atomically stores new into x and returns the previous value.
    **/
    @:keep
    public dynamic function swap(_new:GoInt32):GoInt32 return __self__.value.swap(_new);
    /**
        // Store atomically stores val into x.
    **/
    @:keep
    public dynamic function store(_val:GoInt32):Void __self__.value.store(_val);
    /**
        // Load atomically loads and returns the value stored in x.
    **/
    @:keep
    public dynamic function load():GoInt32 return __self__.value.load();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<Int32>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync.atomic.Atomic.Int32_asInterface) class Int32_static_extension {
    /**
        // Add atomically adds delta to x and returns the new value.
    **/
    @:keep
    static public function add( _x:Ref<Int32>, _delta:GoInt32):GoInt32 throw "sync.atomic.add is not yet implemented";
    /**
        // CompareAndSwap executes the compare-and-swap operation for x.
    **/
    @:keep
    static public function compareAndSwap( _x:Ref<Int32>, _old:GoInt32, _new:GoInt32):Bool throw "sync.atomic.compareAndSwap is not yet implemented";
    /**
        // Swap atomically stores new into x and returns the previous value.
    **/
    @:keep
    static public function swap( _x:Ref<Int32>, _new:GoInt32):GoInt32 throw "sync.atomic.swap is not yet implemented";
    /**
        // Store atomically stores val into x.
    **/
    @:keep
    static public function store( _x:Ref<Int32>, _val:GoInt32):Void throw "sync.atomic.store is not yet implemented";
    /**
        // Load atomically loads and returns the value stored in x.
    **/
    @:keep
    static public function load( _x:Ref<Int32>):GoInt32 throw "sync.atomic.load is not yet implemented";
}
class Int64__asInterface {
    /**
        // Add atomically adds delta to x and returns the new value.
    **/
    @:keep
    public dynamic function add(_delta:GoInt64):GoInt64 return __self__.value.add(_delta);
    /**
        // CompareAndSwap executes the compare-and-swap operation for x.
    **/
    @:keep
    public dynamic function compareAndSwap(_old:GoInt64, _new:GoInt64):Bool return __self__.value.compareAndSwap(_old, _new);
    /**
        // Swap atomically stores new into x and returns the previous value.
    **/
    @:keep
    public dynamic function swap(_new:GoInt64):GoInt64 return __self__.value.swap(_new);
    /**
        // Store atomically stores val into x.
    **/
    @:keep
    public dynamic function store(_val:GoInt64):Void __self__.value.store(_val);
    /**
        // Load atomically loads and returns the value stored in x.
    **/
    @:keep
    public dynamic function load():GoInt64 return __self__.value.load();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<Int64_>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync.atomic.Atomic.Int64__asInterface) class Int64__static_extension {
    /**
        // Add atomically adds delta to x and returns the new value.
    **/
    @:keep
    static public function add( _x:Ref<Int64_>, _delta:GoInt64):GoInt64 throw "sync.atomic.add is not yet implemented";
    /**
        // CompareAndSwap executes the compare-and-swap operation for x.
    **/
    @:keep
    static public function compareAndSwap( _x:Ref<Int64_>, _old:GoInt64, _new:GoInt64):Bool throw "sync.atomic.compareAndSwap is not yet implemented";
    /**
        // Swap atomically stores new into x and returns the previous value.
    **/
    @:keep
    static public function swap( _x:Ref<Int64_>, _new:GoInt64):GoInt64 throw "sync.atomic.swap is not yet implemented";
    /**
        // Store atomically stores val into x.
    **/
    @:keep
    static public function store( _x:Ref<Int64_>, _val:GoInt64):Void throw "sync.atomic.store is not yet implemented";
    /**
        // Load atomically loads and returns the value stored in x.
    **/
    @:keep
    static public function load( _x:Ref<Int64_>):GoInt64 throw "sync.atomic.load is not yet implemented";
}
class Uint32_asInterface {
    /**
        // Add atomically adds delta to x and returns the new value.
    **/
    @:keep
    public dynamic function add(_delta:GoUInt32):GoUInt32 return __self__.value.add(_delta);
    /**
        // CompareAndSwap executes the compare-and-swap operation for x.
    **/
    @:keep
    public dynamic function compareAndSwap(_old:GoUInt32, _new:GoUInt32):Bool return __self__.value.compareAndSwap(_old, _new);
    /**
        // Swap atomically stores new into x and returns the previous value.
    **/
    @:keep
    public dynamic function swap(_new:GoUInt32):GoUInt32 return __self__.value.swap(_new);
    /**
        // Store atomically stores val into x.
    **/
    @:keep
    public dynamic function store(_val:GoUInt32):Void __self__.value.store(_val);
    /**
        // Load atomically loads and returns the value stored in x.
    **/
    @:keep
    public dynamic function load():GoUInt32 return __self__.value.load();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<Uint32>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync.atomic.Atomic.Uint32_asInterface) class Uint32_static_extension {
    /**
        // Add atomically adds delta to x and returns the new value.
    **/
    @:keep
    static public function add( _x:Ref<Uint32>, _delta:GoUInt32):GoUInt32 throw "sync.atomic.add is not yet implemented";
    /**
        // CompareAndSwap executes the compare-and-swap operation for x.
    **/
    @:keep
    static public function compareAndSwap( _x:Ref<Uint32>, _old:GoUInt32, _new:GoUInt32):Bool throw "sync.atomic.compareAndSwap is not yet implemented";
    /**
        // Swap atomically stores new into x and returns the previous value.
    **/
    @:keep
    static public function swap( _x:Ref<Uint32>, _new:GoUInt32):GoUInt32 throw "sync.atomic.swap is not yet implemented";
    /**
        // Store atomically stores val into x.
    **/
    @:keep
    static public function store( _x:Ref<Uint32>, _val:GoUInt32):Void throw "sync.atomic.store is not yet implemented";
    /**
        // Load atomically loads and returns the value stored in x.
    **/
    @:keep
    static public function load( _x:Ref<Uint32>):GoUInt32 throw "sync.atomic.load is not yet implemented";
}
class Uint64_asInterface {
    /**
        // Add atomically adds delta to x and returns the new value.
    **/
    @:keep
    public dynamic function add(_delta:GoUInt64):GoUInt64 return __self__.value.add(_delta);
    /**
        // CompareAndSwap executes the compare-and-swap operation for x.
    **/
    @:keep
    public dynamic function compareAndSwap(_old:GoUInt64, _new:GoUInt64):Bool return __self__.value.compareAndSwap(_old, _new);
    /**
        // Swap atomically stores new into x and returns the previous value.
    **/
    @:keep
    public dynamic function swap(_new:GoUInt64):GoUInt64 return __self__.value.swap(_new);
    /**
        // Store atomically stores val into x.
    **/
    @:keep
    public dynamic function store(_val:GoUInt64):Void __self__.value.store(_val);
    /**
        // Load atomically loads and returns the value stored in x.
    **/
    @:keep
    public dynamic function load():GoUInt64 return __self__.value.load();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<Uint64>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync.atomic.Atomic.Uint64_asInterface) class Uint64_static_extension {
    /**
        // Add atomically adds delta to x and returns the new value.
    **/
    @:keep
    static public function add( _x:Ref<Uint64>, _delta:GoUInt64):GoUInt64 throw "sync.atomic.add is not yet implemented";
    /**
        // CompareAndSwap executes the compare-and-swap operation for x.
    **/
    @:keep
    static public function compareAndSwap( _x:Ref<Uint64>, _old:GoUInt64, _new:GoUInt64):Bool throw "sync.atomic.compareAndSwap is not yet implemented";
    /**
        // Swap atomically stores new into x and returns the previous value.
    **/
    @:keep
    static public function swap( _x:Ref<Uint64>, _new:GoUInt64):GoUInt64 throw "sync.atomic.swap is not yet implemented";
    /**
        // Store atomically stores val into x.
    **/
    @:keep
    static public function store( _x:Ref<Uint64>, _val:GoUInt64):Void throw "sync.atomic.store is not yet implemented";
    /**
        // Load atomically loads and returns the value stored in x.
    **/
    @:keep
    static public function load( _x:Ref<Uint64>):GoUInt64 throw "sync.atomic.load is not yet implemented";
}
class Uintptr_asInterface {
    /**
        // Add atomically adds delta to x and returns the new value.
    **/
    @:keep
    public dynamic function add(_delta:GoUIntptr):GoUIntptr return __self__.value.add(_delta);
    /**
        // CompareAndSwap executes the compare-and-swap operation for x.
    **/
    @:keep
    public dynamic function compareAndSwap(_old:GoUIntptr, _new:GoUIntptr):Bool return __self__.value.compareAndSwap(_old, _new);
    /**
        // Swap atomically stores new into x and returns the previous value.
    **/
    @:keep
    public dynamic function swap(_new:GoUIntptr):GoUIntptr return __self__.value.swap(_new);
    /**
        // Store atomically stores val into x.
    **/
    @:keep
    public dynamic function store(_val:GoUIntptr):Void __self__.value.store(_val);
    /**
        // Load atomically loads and returns the value stored in x.
    **/
    @:keep
    public dynamic function load():GoUIntptr return __self__.value.load();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<Uintptr>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync.atomic.Atomic.Uintptr_asInterface) class Uintptr_static_extension {
    /**
        // Add atomically adds delta to x and returns the new value.
    **/
    @:keep
    static public function add( _x:Ref<Uintptr>, _delta:GoUIntptr):GoUIntptr throw "sync.atomic.add is not yet implemented";
    /**
        // CompareAndSwap executes the compare-and-swap operation for x.
    **/
    @:keep
    static public function compareAndSwap( _x:Ref<Uintptr>, _old:GoUIntptr, _new:GoUIntptr):Bool throw "sync.atomic.compareAndSwap is not yet implemented";
    /**
        // Swap atomically stores new into x and returns the previous value.
    **/
    @:keep
    static public function swap( _x:Ref<Uintptr>, _new:GoUIntptr):GoUIntptr throw "sync.atomic.swap is not yet implemented";
    /**
        // Store atomically stores val into x.
    **/
    @:keep
    static public function store( _x:Ref<Uintptr>, _val:GoUIntptr):Void throw "sync.atomic.store is not yet implemented";
    /**
        // Load atomically loads and returns the value stored in x.
    **/
    @:keep
    static public function load( _x:Ref<Uintptr>):GoUIntptr throw "sync.atomic.load is not yet implemented";
}
class T_noCopy_asInterface {
    @:keep
    public dynamic function unlock():Void __self__.value.unlock();
    /**
        // Lock is a no-op used by -copylocks checker from `go vet`.
    **/
    @:keep
    public dynamic function lock():Void __self__.value.lock();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_noCopy>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync.atomic.Atomic.T_noCopy_asInterface) class T_noCopy_static_extension {
    @:keep
    static public function unlock( _:Ref<T_noCopy>):Void throw "sync.atomic.unlock is not yet implemented";
    /**
        // Lock is a no-op used by -copylocks checker from `go vet`.
    **/
    @:keep
    static public function lock( _:Ref<T_noCopy>):Void throw "sync.atomic.lock is not yet implemented";
}
class Value_asInterface {
    /**
        // CompareAndSwap executes the compare-and-swap operation for the Value.
        //
        // All calls to CompareAndSwap for a given Value must use values of the same
        // concrete type. CompareAndSwap of an inconsistent type panics, as does
        // CompareAndSwap(old, nil).
    **/
    @:keep
    public dynamic function compareAndSwap(_old:AnyInterface, _new:AnyInterface):Bool return __self__.value.compareAndSwap(_old, _new);
    /**
        // Swap stores new into Value and returns the previous value. It returns nil if
        // the Value is empty.
        //
        // All calls to Swap for a given Value must use values of the same concrete
        // type. Swap of an inconsistent type panics, as does Swap(nil).
    **/
    @:keep
    public dynamic function swap(_new:AnyInterface):AnyInterface return __self__.value.swap(_new);
    /**
        // Store sets the value of the Value v to val.
        // All calls to Store for a given Value must use values of the same concrete type.
        // Store of an inconsistent type panics, as does Store(nil).
    **/
    @:keep
    public dynamic function store(_val:AnyInterface):Void __self__.value.store(_val);
    /**
        // Load returns the value set by the most recent Store.
        // It returns nil if there has been no call to Store for this Value.
    **/
    @:keep
    public dynamic function load():AnyInterface return __self__.value.load();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<Value>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync.atomic.Atomic.Value_asInterface) class Value_static_extension {
    /**
        // CompareAndSwap executes the compare-and-swap operation for the Value.
        //
        // All calls to CompareAndSwap for a given Value must use values of the same
        // concrete type. CompareAndSwap of an inconsistent type panics, as does
        // CompareAndSwap(old, nil).
    **/
    @:keep
    static public function compareAndSwap( _v:Ref<Value>, _old:AnyInterface, _new:AnyInterface):Bool throw "sync.atomic.compareAndSwap is not yet implemented";
    /**
        // Swap stores new into Value and returns the previous value. It returns nil if
        // the Value is empty.
        //
        // All calls to Swap for a given Value must use values of the same concrete
        // type. Swap of an inconsistent type panics, as does Swap(nil).
    **/
    @:keep
    static public function swap( _v:Ref<Value>, _new:AnyInterface):AnyInterface throw "sync.atomic.swap is not yet implemented";
    /**
        // Store sets the value of the Value v to val.
        // All calls to Store for a given Value must use values of the same concrete type.
        // Store of an inconsistent type panics, as does Store(nil).
    **/
    @:keep
    static public function store( _v:Ref<Value>, _val:AnyInterface):Void throw "sync.atomic.store is not yet implemented";
    /**
        // Load returns the value set by the most recent Store.
        // It returns nil if there has been no call to Store for this Value.
    **/
    @:keep
    static public function load( _v:Ref<Value>):AnyInterface throw "sync.atomic.load is not yet implemented";
}
