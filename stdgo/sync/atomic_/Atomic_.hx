package stdgo.sync.atomic_;
/**
    // Package atomic provides low-level atomic memory primitives
    // useful for implementing synchronization algorithms.
    //
    // These functions require great care to be used correctly.
    // Except for special, low-level applications, synchronization is better
    // done with channels or the facilities of the [sync] package.
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
var __24 : stdgo.StdGoTypes.Ref<stdgo.sync.atomic_.Atomic_.Pointer_<stdgo.StdGoTypes.GoInt>> = (null : stdgo.StdGoTypes.Ref<stdgo.sync.atomic_.Atomic_.Pointer_<stdgo.StdGoTypes.GoInt>>);
/**
    
    
    
**/
var _firstStoreInProgress = (0 : stdgo.StdGoTypes.GoUInt8);
/**
    // A Bool is an atomic boolean value.
    // The zero value is false.
    
    
**/
@:structInit @:using(stdgo.sync.atomic_.Atomic_.Bool__static_extension) class Bool_ {
    @:optional
    public var __2 : stdgo.sync.atomic_.Atomic_.T_noCopy = ({} : stdgo.sync.atomic_.Atomic_.T_noCopy);
    public var _v : stdgo.StdGoTypes.GoUInt32 = 0;
    public function new(?__2:stdgo.sync.atomic_.Atomic_.T_noCopy, ?_v:stdgo.StdGoTypes.GoUInt32) {
        if (__2 != null) this.__2 = __2;
        if (_v != null) this._v = _v;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Bool_(__2, _v);
    }
}
/**
    // A Pointer is an atomic pointer of type *T. The zero value is a nil *T.
    
    
**/
@:structInit @:using(stdgo.sync.atomic_.Atomic_.Pointer__static_extension) class Pointer_<T> {
    /**
        // Mention *T in a field to disallow conversion between Pointer types.
        // See go.dev/issue/56603 for more details.
        // Use *T, not T, to avoid spurious recursive type definition errors.
    **/
    @:optional
    public var __5 : stdgo.GoArray<stdgo.StdGoTypes.Ref<T>> = new stdgo.GoArray<stdgo.StdGoTypes.Ref<T>>(...[for (i in 0 ... 0) (null : stdgo.StdGoTypes.Ref<T>)]);
    @:optional
    public var __6 : stdgo.sync.atomic_.Atomic_.T_noCopy = ({} : stdgo.sync.atomic_.Atomic_.T_noCopy);
    public var _v : stdgo.unsafe.Unsafe.UnsafePointer = @:default_value_kind null;
    public function new(?__5:stdgo.GoArray<stdgo.StdGoTypes.Ref<T>>, ?__6:stdgo.sync.atomic_.Atomic_.T_noCopy, ?_v:stdgo.unsafe.Unsafe.UnsafePointer) {
        if (__5 != null) this.__5 = __5;
        if (__6 != null) this.__6 = __6;
        if (_v != null) this._v = _v;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Pointer_(__5, __6, _v);
    }
}
/**
    // An Int32 is an atomic int32. The zero value is zero.
    
    
**/
@:structInit @:using(stdgo.sync.atomic_.Atomic_.Int32_static_extension) class Int32 {
    @:optional
    public var __8 : stdgo.sync.atomic_.Atomic_.T_noCopy = ({} : stdgo.sync.atomic_.Atomic_.T_noCopy);
    public var _v : stdgo.StdGoTypes.GoInt32 = 0;
    public function new(?__8:stdgo.sync.atomic_.Atomic_.T_noCopy, ?_v:stdgo.StdGoTypes.GoInt32) {
        if (__8 != null) this.__8 = __8;
        if (_v != null) this._v = _v;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Int32(__8, _v);
    }
}
/**
    // An Int64 is an atomic int64. The zero value is zero.
    
    
**/
@:structInit @:using(stdgo.sync.atomic_.Atomic_.Int64__static_extension) class Int64_ {
    @:optional
    public var __11 : stdgo.sync.atomic_.Atomic_.T_noCopy = ({} : stdgo.sync.atomic_.Atomic_.T_noCopy);
    @:optional
    public var __12 : stdgo.sync.atomic_.Atomic_.T_align64 = ({} : stdgo.sync.atomic_.Atomic_.T_align64);
    public var _v : stdgo.StdGoTypes.GoInt64 = 0;
    public function new(?__11:stdgo.sync.atomic_.Atomic_.T_noCopy, ?__12:stdgo.sync.atomic_.Atomic_.T_align64, ?_v:stdgo.StdGoTypes.GoInt64) {
        if (__11 != null) this.__11 = __11;
        if (__12 != null) this.__12 = __12;
        if (_v != null) this._v = _v;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Int64_(__11, __12, _v);
    }
}
/**
    // A Uint32 is an atomic uint32. The zero value is zero.
    
    
**/
@:structInit @:using(stdgo.sync.atomic_.Atomic_.Uint32_static_extension) class Uint32 {
    @:optional
    public var __13 : stdgo.sync.atomic_.Atomic_.T_noCopy = ({} : stdgo.sync.atomic_.Atomic_.T_noCopy);
    public var _v : stdgo.StdGoTypes.GoUInt32 = 0;
    public function new(?__13:stdgo.sync.atomic_.Atomic_.T_noCopy, ?_v:stdgo.StdGoTypes.GoUInt32) {
        if (__13 != null) this.__13 = __13;
        if (_v != null) this._v = _v;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Uint32(__13, _v);
    }
}
/**
    // A Uint64 is an atomic uint64. The zero value is zero.
    
    
**/
@:structInit @:using(stdgo.sync.atomic_.Atomic_.Uint64_static_extension) class Uint64 {
    @:optional
    public var __16 : stdgo.sync.atomic_.Atomic_.T_noCopy = ({} : stdgo.sync.atomic_.Atomic_.T_noCopy);
    @:optional
    public var __17 : stdgo.sync.atomic_.Atomic_.T_align64 = ({} : stdgo.sync.atomic_.Atomic_.T_align64);
    public var _v : stdgo.StdGoTypes.GoUInt64 = 0;
    public function new(?__16:stdgo.sync.atomic_.Atomic_.T_noCopy, ?__17:stdgo.sync.atomic_.Atomic_.T_align64, ?_v:stdgo.StdGoTypes.GoUInt64) {
        if (__16 != null) this.__16 = __16;
        if (__17 != null) this.__17 = __17;
        if (_v != null) this._v = _v;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Uint64(__16, __17, _v);
    }
}
/**
    // A Uintptr is an atomic uintptr. The zero value is zero.
    
    
**/
@:structInit @:using(stdgo.sync.atomic_.Atomic_.Uintptr_static_extension) class Uintptr {
    @:optional
    public var __19 : stdgo.sync.atomic_.Atomic_.T_noCopy = ({} : stdgo.sync.atomic_.Atomic_.T_noCopy);
    public var _v : stdgo.StdGoTypes.GoUIntptr = 0;
    public function new(?__19:stdgo.sync.atomic_.Atomic_.T_noCopy, ?_v:stdgo.StdGoTypes.GoUIntptr) {
        if (__19 != null) this.__19 = __19;
        if (_v != null) this._v = _v;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
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
@:structInit @:private @:using(stdgo.sync.atomic_.Atomic_.T_noCopy_static_extension) class T_noCopy {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
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
    public function __underlying__() return stdgo.Go.toInterface(this);
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
@:structInit @:using(stdgo.sync.atomic_.Atomic_.Value_static_extension) class Value {
    public var _v : stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface);
    public function new(?_v:stdgo.StdGoTypes.AnyInterface) {
        if (_v != null) this._v = _v;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Value(_v);
    }
}
/**
    // efaceWords is interface{} internal representation.
    
    
**/
@:structInit @:private class T_efaceWords {
    public var _typ : stdgo.unsafe.Unsafe.UnsafePointer = @:default_value_kind null;
    public var _data : stdgo.unsafe.Unsafe.UnsafePointer = @:default_value_kind null;
    public function new(?_typ:stdgo.unsafe.Unsafe.UnsafePointer, ?_data:stdgo.unsafe.Unsafe.UnsafePointer) {
        if (_typ != null) this._typ = _typ;
        if (_data != null) this._data = _data;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_efaceWords(_typ, _data);
    }
}
/**
    // SwapInt32 atomically stores new into *addr and returns the previous *addr value.
    // Consider using the more ergonomic and less error-prone [Int32.Swap] instead.
**/
function swapInt32(_addr:stdgo.Pointer<stdgo.StdGoTypes.GoInt32>, _new:stdgo.StdGoTypes.GoInt32):stdgo.StdGoTypes.GoInt32 throw ":sync.atomic_.swapInt32 is not yet implemented";
/**
    // SwapInt64 atomically stores new into *addr and returns the previous *addr value.
    // Consider using the more ergonomic and less error-prone [Int64.Swap] instead
    // (particularly if you target 32-bit platforms; see the bugs section).
**/
function swapInt64(_addr:stdgo.Pointer<stdgo.StdGoTypes.GoInt64>, _new:stdgo.StdGoTypes.GoInt64):stdgo.StdGoTypes.GoInt64 throw ":sync.atomic_.swapInt64 is not yet implemented";
/**
    // SwapUint32 atomically stores new into *addr and returns the previous *addr value.
    // Consider using the more ergonomic and less error-prone [Uint32.Swap] instead.
**/
function swapUint32(_addr:stdgo.Pointer<stdgo.StdGoTypes.GoUInt32>, _new:stdgo.StdGoTypes.GoUInt32):stdgo.StdGoTypes.GoUInt32 throw ":sync.atomic_.swapUint32 is not yet implemented";
/**
    // SwapUint64 atomically stores new into *addr and returns the previous *addr value.
    // Consider using the more ergonomic and less error-prone [Uint64.Swap] instead
    // (particularly if you target 32-bit platforms; see the bugs section).
**/
function swapUint64(_addr:stdgo.Pointer<stdgo.StdGoTypes.GoUInt64>, _new:stdgo.StdGoTypes.GoUInt64):stdgo.StdGoTypes.GoUInt64 throw ":sync.atomic_.swapUint64 is not yet implemented";
/**
    // SwapUintptr atomically stores new into *addr and returns the previous *addr value.
    // Consider using the more ergonomic and less error-prone [Uintptr.Swap] instead.
**/
function swapUintptr(_addr:stdgo.Pointer<stdgo.StdGoTypes.GoUIntptr>, _new:stdgo.StdGoTypes.GoUIntptr):stdgo.StdGoTypes.GoUIntptr throw ":sync.atomic_.swapUintptr is not yet implemented";
/**
    // SwapPointer atomically stores new into *addr and returns the previous *addr value.
    // Consider using the more ergonomic and less error-prone [Pointer.Swap] instead.
**/
function swapPointer(_addr:stdgo.Pointer<stdgo.unsafe.Unsafe.UnsafePointer>, _new:stdgo.unsafe.Unsafe.UnsafePointer):stdgo.unsafe.Unsafe.UnsafePointer throw ":sync.atomic_.swapPointer is not yet implemented";
/**
    // CompareAndSwapInt32 executes the compare-and-swap operation for an int32 value.
    // Consider using the more ergonomic and less error-prone [Int32.CompareAndSwap] instead.
**/
function compareAndSwapInt32(_addr:stdgo.Pointer<stdgo.StdGoTypes.GoInt32>, _old:stdgo.StdGoTypes.GoInt32, _new:stdgo.StdGoTypes.GoInt32):Bool throw ":sync.atomic_.compareAndSwapInt32 is not yet implemented";
/**
    // CompareAndSwapInt64 executes the compare-and-swap operation for an int64 value.
    // Consider using the more ergonomic and less error-prone [Int64.CompareAndSwap] instead
    // (particularly if you target 32-bit platforms; see the bugs section).
**/
function compareAndSwapInt64(_addr:stdgo.Pointer<stdgo.StdGoTypes.GoInt64>, _old:stdgo.StdGoTypes.GoInt64, _new:stdgo.StdGoTypes.GoInt64):Bool throw ":sync.atomic_.compareAndSwapInt64 is not yet implemented";
/**
    // CompareAndSwapUint32 executes the compare-and-swap operation for a uint32 value.
    // Consider using the more ergonomic and less error-prone [Uint32.CompareAndSwap] instead.
**/
function compareAndSwapUint32(_addr:stdgo.Pointer<stdgo.StdGoTypes.GoUInt32>, _old:stdgo.StdGoTypes.GoUInt32, _new:stdgo.StdGoTypes.GoUInt32):Bool throw ":sync.atomic_.compareAndSwapUint32 is not yet implemented";
/**
    // CompareAndSwapUint64 executes the compare-and-swap operation for a uint64 value.
    // Consider using the more ergonomic and less error-prone [Uint64.CompareAndSwap] instead
    // (particularly if you target 32-bit platforms; see the bugs section).
**/
function compareAndSwapUint64(_addr:stdgo.Pointer<stdgo.StdGoTypes.GoUInt64>, _old:stdgo.StdGoTypes.GoUInt64, _new:stdgo.StdGoTypes.GoUInt64):Bool throw ":sync.atomic_.compareAndSwapUint64 is not yet implemented";
/**
    // CompareAndSwapUintptr executes the compare-and-swap operation for a uintptr value.
    // Consider using the more ergonomic and less error-prone [Uintptr.CompareAndSwap] instead.
**/
function compareAndSwapUintptr(_addr:stdgo.Pointer<stdgo.StdGoTypes.GoUIntptr>, _old:stdgo.StdGoTypes.GoUIntptr, _new:stdgo.StdGoTypes.GoUIntptr):Bool throw ":sync.atomic_.compareAndSwapUintptr is not yet implemented";
/**
    // CompareAndSwapPointer executes the compare-and-swap operation for a unsafe.Pointer value.
    // Consider using the more ergonomic and less error-prone [Pointer.CompareAndSwap] instead.
**/
function compareAndSwapPointer(_addr:stdgo.Pointer<stdgo.unsafe.Unsafe.UnsafePointer>, _old:stdgo.unsafe.Unsafe.UnsafePointer, _new:stdgo.unsafe.Unsafe.UnsafePointer):Bool throw ":sync.atomic_.compareAndSwapPointer is not yet implemented";
/**
    // AddInt32 atomically adds delta to *addr and returns the new value.
    // Consider using the more ergonomic and less error-prone [Int32.Add] instead.
**/
function addInt32(_addr:stdgo.Pointer<stdgo.StdGoTypes.GoInt32>, _delta:stdgo.StdGoTypes.GoInt32):stdgo.StdGoTypes.GoInt32 throw ":sync.atomic_.addInt32 is not yet implemented";
/**
    // AddUint32 atomically adds delta to *addr and returns the new value.
    // To subtract a signed positive constant value c from x, do AddUint32(&x, ^uint32(c-1)).
    // In particular, to decrement x, do AddUint32(&x, ^uint32(0)).
    // Consider using the more ergonomic and less error-prone [Uint32.Add] instead.
**/
function addUint32(_addr:stdgo.Pointer<stdgo.StdGoTypes.GoUInt32>, _delta:stdgo.StdGoTypes.GoUInt32):stdgo.StdGoTypes.GoUInt32 throw ":sync.atomic_.addUint32 is not yet implemented";
/**
    // AddInt64 atomically adds delta to *addr and returns the new value.
    // Consider using the more ergonomic and less error-prone [Int64.Add] instead
    // (particularly if you target 32-bit platforms; see the bugs section).
**/
function addInt64(_addr:stdgo.Pointer<stdgo.StdGoTypes.GoInt64>, _delta:stdgo.StdGoTypes.GoInt64):stdgo.StdGoTypes.GoInt64 throw ":sync.atomic_.addInt64 is not yet implemented";
/**
    // AddUint64 atomically adds delta to *addr and returns the new value.
    // To subtract a signed positive constant value c from x, do AddUint64(&x, ^uint64(c-1)).
    // In particular, to decrement x, do AddUint64(&x, ^uint64(0)).
    // Consider using the more ergonomic and less error-prone [Uint64.Add] instead
    // (particularly if you target 32-bit platforms; see the bugs section).
**/
function addUint64(_addr:stdgo.Pointer<stdgo.StdGoTypes.GoUInt64>, _delta:stdgo.StdGoTypes.GoUInt64):stdgo.StdGoTypes.GoUInt64 throw ":sync.atomic_.addUint64 is not yet implemented";
/**
    // AddUintptr atomically adds delta to *addr and returns the new value.
    // Consider using the more ergonomic and less error-prone [Uintptr.Add] instead.
**/
function addUintptr(_addr:stdgo.Pointer<stdgo.StdGoTypes.GoUIntptr>, _delta:stdgo.StdGoTypes.GoUIntptr):stdgo.StdGoTypes.GoUIntptr throw ":sync.atomic_.addUintptr is not yet implemented";
/**
    // LoadInt32 atomically loads *addr.
    // Consider using the more ergonomic and less error-prone [Int32.Load] instead.
**/
function loadInt32(_addr:stdgo.Pointer<stdgo.StdGoTypes.GoInt32>):stdgo.StdGoTypes.GoInt32 throw ":sync.atomic_.loadInt32 is not yet implemented";
/**
    // LoadInt64 atomically loads *addr.
    // Consider using the more ergonomic and less error-prone [Int64.Load] instead
    // (particularly if you target 32-bit platforms; see the bugs section).
**/
function loadInt64(_addr:stdgo.Pointer<stdgo.StdGoTypes.GoInt64>):stdgo.StdGoTypes.GoInt64 throw ":sync.atomic_.loadInt64 is not yet implemented";
/**
    // LoadUint32 atomically loads *addr.
    // Consider using the more ergonomic and less error-prone [Uint32.Load] instead.
**/
function loadUint32(_addr:stdgo.Pointer<stdgo.StdGoTypes.GoUInt32>):stdgo.StdGoTypes.GoUInt32 throw ":sync.atomic_.loadUint32 is not yet implemented";
/**
    // LoadUint64 atomically loads *addr.
    // Consider using the more ergonomic and less error-prone [Uint64.Load] instead
    // (particularly if you target 32-bit platforms; see the bugs section).
**/
function loadUint64(_addr:stdgo.Pointer<stdgo.StdGoTypes.GoUInt64>):stdgo.StdGoTypes.GoUInt64 throw ":sync.atomic_.loadUint64 is not yet implemented";
/**
    // LoadUintptr atomically loads *addr.
    // Consider using the more ergonomic and less error-prone [Uintptr.Load] instead.
**/
function loadUintptr(_addr:stdgo.Pointer<stdgo.StdGoTypes.GoUIntptr>):stdgo.StdGoTypes.GoUIntptr throw ":sync.atomic_.loadUintptr is not yet implemented";
/**
    // LoadPointer atomically loads *addr.
    // Consider using the more ergonomic and less error-prone [Pointer.Load] instead.
**/
function loadPointer(_addr:stdgo.Pointer<stdgo.unsafe.Unsafe.UnsafePointer>):stdgo.unsafe.Unsafe.UnsafePointer throw ":sync.atomic_.loadPointer is not yet implemented";
/**
    // StoreInt32 atomically stores val into *addr.
    // Consider using the more ergonomic and less error-prone [Int32.Store] instead.
**/
function storeInt32(_addr:stdgo.Pointer<stdgo.StdGoTypes.GoInt32>, _val:stdgo.StdGoTypes.GoInt32):Void throw ":sync.atomic_.storeInt32 is not yet implemented";
/**
    // StoreInt64 atomically stores val into *addr.
    // Consider using the more ergonomic and less error-prone [Int64.Store] instead
    // (particularly if you target 32-bit platforms; see the bugs section).
**/
function storeInt64(_addr:stdgo.Pointer<stdgo.StdGoTypes.GoInt64>, _val:stdgo.StdGoTypes.GoInt64):Void throw ":sync.atomic_.storeInt64 is not yet implemented";
/**
    // StoreUint32 atomically stores val into *addr.
    // Consider using the more ergonomic and less error-prone [Uint32.Store] instead.
**/
function storeUint32(_addr:stdgo.Pointer<stdgo.StdGoTypes.GoUInt32>, _val:stdgo.StdGoTypes.GoUInt32):Void {
        _addr.value = _val;
    }
/**
    // StoreUint64 atomically stores val into *addr.
    // Consider using the more ergonomic and less error-prone [Uint64.Store] instead
    // (particularly if you target 32-bit platforms; see the bugs section).
**/
function storeUint64(_addr:stdgo.Pointer<stdgo.StdGoTypes.GoUInt64>, _val:stdgo.StdGoTypes.GoUInt64):Void {
        _addr.value = _val;
    }
/**
    // StoreUintptr atomically stores val into *addr.
    // Consider using the more ergonomic and less error-prone [Uintptr.Store] instead.
**/
function storeUintptr(_addr:stdgo.Pointer<stdgo.StdGoTypes.GoUIntptr>, _val:stdgo.StdGoTypes.GoUIntptr):Void throw ":sync.atomic_.storeUintptr is not yet implemented";
/**
    // StorePointer atomically stores val into *addr.
    // Consider using the more ergonomic and less error-prone [Pointer.Store] instead.
**/
function storePointer(_addr:stdgo.Pointer<stdgo.unsafe.Unsafe.UnsafePointer>, _val:stdgo.unsafe.Unsafe.UnsafePointer):Void throw ":sync.atomic_.storePointer is not yet implemented";
/**
    // b32 returns a uint32 0 or 1 representing b.
**/
function _b32(_b:Bool):stdgo.StdGoTypes.GoUInt32 throw ":sync.atomic_._b32 is not yet implemented";
/**
    // Disable/enable preemption, implemented in runtime.
**/
function _runtime_procPin():stdgo.StdGoTypes.GoInt throw ":sync.atomic_._runtime_procPin is not yet implemented";
function _runtime_procUnpin():Void throw ":sync.atomic_._runtime_procUnpin is not yet implemented";
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
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Bool_>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync.atomic_.Atomic_.Bool__asInterface) class Bool__static_extension {
    /**
        // CompareAndSwap executes the compare-and-swap operation for the boolean value x.
    **/
    @:keep
    static public function compareAndSwap( _x:stdgo.StdGoTypes.Ref<Bool_>, _old:Bool, _new:Bool):Bool throw "Bool_:sync.atomic_.compareAndSwap is not yet implemented";
    /**
        // Swap atomically stores new into x and returns the previous value.
    **/
    @:keep
    static public function swap( _x:stdgo.StdGoTypes.Ref<Bool_>, _new:Bool):Bool throw "Bool_:sync.atomic_.swap is not yet implemented";
    /**
        // Store atomically stores val into x.
    **/
    @:keep
    static public function store( _x:stdgo.StdGoTypes.Ref<Bool_>, _val:Bool):Void storeUint32(stdgo.Go.pointer(_x._v), _val ? 1 : 0);
    /**
        // Load atomically loads and returns the value stored in x.
    **/
    @:keep
    static public function load( _x:stdgo.StdGoTypes.Ref<Bool_>):Bool return @:privateAccess _x._v == 1;
}
class Pointer__asInterface<T> {
    /**
        // CompareAndSwap executes the compare-and-swap operation for x.
    **/
    @:keep
    public var compareAndSwap : (_old:stdgo.StdGoTypes.Ref<T>, _new:stdgo.StdGoTypes.Ref<T>) -> Bool;
    /**
        // Swap atomically stores new into x and returns the previous value.
    **/
    @:keep
    public var swap : (_new:stdgo.StdGoTypes.Ref<T>) -> stdgo.StdGoTypes.Ref<T>;
    /**
        // Store atomically stores val into x.
    **/
    @:keep
    public var store : (_val:stdgo.StdGoTypes.Ref<T>) -> Void;
    /**
        // Load atomically loads and returns the value stored in x.
    **/
    @:keep
    public var load : () -> stdgo.StdGoTypes.Ref<T>;
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Pointer_<T>>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync.atomic_.Atomic_.Pointer__asInterface) class Pointer__static_extension {
    /**
        // CompareAndSwap executes the compare-and-swap operation for x.
    **/
    @:keep
    macro static public function compareAndSwap<T>( _x:haxe.macro.Expr.ExprOf<stdgo.StdGoTypes.Ref<Pointer_<T>>>, __generic__0:haxe.macro.Expr.ExprOf<T>, _old:haxe.macro.Expr.ExprOf<stdgo.StdGoTypes.Ref<T>>, _new:haxe.macro.Expr.ExprOf<stdgo.StdGoTypes.Ref<T>>):haxe.macro.Expr.ExprOf<Bool>;
    /**
        // Swap atomically stores new into x and returns the previous value.
    **/
    @:keep
    macro static public function swap<T>( _x:haxe.macro.Expr.ExprOf<stdgo.StdGoTypes.Ref<Pointer_<T>>>, __generic__0:haxe.macro.Expr.ExprOf<T>, _new:haxe.macro.Expr.ExprOf<stdgo.StdGoTypes.Ref<T>>):haxe.macro.Expr.ExprOf<stdgo.StdGoTypes.Ref<T>>;
    /**
        // Store atomically stores val into x.
    **/
    @:keep
    macro static public function store<T>( _x:haxe.macro.Expr.ExprOf<stdgo.StdGoTypes.Ref<Pointer_<T>>>, __generic__0:haxe.macro.Expr.ExprOf<T>, _val:haxe.macro.Expr.ExprOf<stdgo.StdGoTypes.Ref<T>>):haxe.macro.Expr.ExprOf<Void>;
    /**
        // Load atomically loads and returns the value stored in x.
    **/
    @:keep
    macro static public function load<T>( _x:haxe.macro.Expr.ExprOf<stdgo.StdGoTypes.Ref<Pointer_<T>>>, __generic__0:haxe.macro.Expr.ExprOf<T>):haxe.macro.Expr.ExprOf<stdgo.StdGoTypes.Ref<T>>;
}
class Int32_asInterface {
    /**
        // Add atomically adds delta to x and returns the new value.
    **/
    @:keep
    public dynamic function add(_delta:stdgo.StdGoTypes.GoInt32):stdgo.StdGoTypes.GoInt32 return __self__.value.add(_delta);
    /**
        // CompareAndSwap executes the compare-and-swap operation for x.
    **/
    @:keep
    public dynamic function compareAndSwap(_old:stdgo.StdGoTypes.GoInt32, _new:stdgo.StdGoTypes.GoInt32):Bool return __self__.value.compareAndSwap(_old, _new);
    /**
        // Swap atomically stores new into x and returns the previous value.
    **/
    @:keep
    public dynamic function swap(_new:stdgo.StdGoTypes.GoInt32):stdgo.StdGoTypes.GoInt32 return __self__.value.swap(_new);
    /**
        // Store atomically stores val into x.
    **/
    @:keep
    public dynamic function store(_val:stdgo.StdGoTypes.GoInt32):Void __self__.value.store(_val);
    /**
        // Load atomically loads and returns the value stored in x.
    **/
    @:keep
    public dynamic function load():stdgo.StdGoTypes.GoInt32 return __self__.value.load();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Int32>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync.atomic_.Atomic_.Int32_asInterface) class Int32_static_extension {
    /**
        // Add atomically adds delta to x and returns the new value.
    **/
    @:keep
    static public function add( _x:stdgo.StdGoTypes.Ref<Int32>, _delta:stdgo.StdGoTypes.GoInt32):stdgo.StdGoTypes.GoInt32 throw "Int32:sync.atomic_.add is not yet implemented";
    /**
        // CompareAndSwap executes the compare-and-swap operation for x.
    **/
    @:keep
    static public function compareAndSwap( _x:stdgo.StdGoTypes.Ref<Int32>, _old:stdgo.StdGoTypes.GoInt32, _new:stdgo.StdGoTypes.GoInt32):Bool throw "Int32:sync.atomic_.compareAndSwap is not yet implemented";
    /**
        // Swap atomically stores new into x and returns the previous value.
    **/
    @:keep
    static public function swap( _x:stdgo.StdGoTypes.Ref<Int32>, _new:stdgo.StdGoTypes.GoInt32):stdgo.StdGoTypes.GoInt32 throw "Int32:sync.atomic_.swap is not yet implemented";
    /**
        // Store atomically stores val into x.
    **/
    @:keep
    static public function store( _x:stdgo.StdGoTypes.Ref<Int32>, _val:stdgo.StdGoTypes.GoInt32):Void {
        @:recv var _x:stdgo.StdGoTypes.Ref<Int32> = _x;
        _x._v = _val;
    }
    /**
        // Load atomically loads and returns the value stored in x.
    **/
    @:keep
    static public function load( _x:stdgo.StdGoTypes.Ref<Int32>):stdgo.StdGoTypes.GoInt32 {
        @:recv var _x:stdgo.StdGoTypes.Ref<Int32> = _x;
        return @:privateAccess _x._v;
    }
}
class Int64__asInterface {
    /**
        // Add atomically adds delta to x and returns the new value.
    **/
    @:keep
    public dynamic function add(_delta:stdgo.StdGoTypes.GoInt64):stdgo.StdGoTypes.GoInt64 return __self__.value.add(_delta);
    /**
        // CompareAndSwap executes the compare-and-swap operation for x.
    **/
    @:keep
    public dynamic function compareAndSwap(_old:stdgo.StdGoTypes.GoInt64, _new:stdgo.StdGoTypes.GoInt64):Bool return __self__.value.compareAndSwap(_old, _new);
    /**
        // Swap atomically stores new into x and returns the previous value.
    **/
    @:keep
    public dynamic function swap(_new:stdgo.StdGoTypes.GoInt64):stdgo.StdGoTypes.GoInt64 return __self__.value.swap(_new);
    /**
        // Store atomically stores val into x.
    **/
    @:keep
    public dynamic function store(_val:stdgo.StdGoTypes.GoInt64):Void __self__.value.store(_val);
    /**
        // Load atomically loads and returns the value stored in x.
    **/
    @:keep
    public dynamic function load():stdgo.StdGoTypes.GoInt64 return __self__.value.load();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Int64_>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync.atomic_.Atomic_.Int64__asInterface) class Int64__static_extension {
    /**
        // Add atomically adds delta to x and returns the new value.
    **/
    @:keep
    static public function add( _x:stdgo.StdGoTypes.Ref<Int64_>, _delta:stdgo.StdGoTypes.GoInt64):stdgo.StdGoTypes.GoInt64 throw "Int64_:sync.atomic_.add is not yet implemented";
    /**
        // CompareAndSwap executes the compare-and-swap operation for x.
    **/
    @:keep
    static public function compareAndSwap( _x:stdgo.StdGoTypes.Ref<Int64_>, _old:stdgo.StdGoTypes.GoInt64, _new:stdgo.StdGoTypes.GoInt64):Bool throw "Int64_:sync.atomic_.compareAndSwap is not yet implemented";
    /**
        // Swap atomically stores new into x and returns the previous value.
    **/
    @:keep
    static public function swap( _x:stdgo.StdGoTypes.Ref<Int64_>, _new:stdgo.StdGoTypes.GoInt64):stdgo.StdGoTypes.GoInt64 throw "Int64_:sync.atomic_.swap is not yet implemented";
    /**
        // Store atomically stores val into x.
    **/
    @:keep
    static public function store( _x:stdgo.StdGoTypes.Ref<Int64_>, _val:stdgo.StdGoTypes.GoInt64):Void throw "Int64_:sync.atomic_.store is not yet implemented";
    /**
        // Load atomically loads and returns the value stored in x.
    **/
    @:keep
    static public function load( _x:stdgo.StdGoTypes.Ref<Int64_>):stdgo.StdGoTypes.GoInt64 throw "Int64_:sync.atomic_.load is not yet implemented";
}
class Uint32_asInterface {
    /**
        // Add atomically adds delta to x and returns the new value.
    **/
    @:keep
    public dynamic function add(_delta:stdgo.StdGoTypes.GoUInt32):stdgo.StdGoTypes.GoUInt32 return __self__.value.add(_delta);
    /**
        // CompareAndSwap executes the compare-and-swap operation for x.
    **/
    @:keep
    public dynamic function compareAndSwap(_old:stdgo.StdGoTypes.GoUInt32, _new:stdgo.StdGoTypes.GoUInt32):Bool return __self__.value.compareAndSwap(_old, _new);
    /**
        // Swap atomically stores new into x and returns the previous value.
    **/
    @:keep
    public dynamic function swap(_new:stdgo.StdGoTypes.GoUInt32):stdgo.StdGoTypes.GoUInt32 return __self__.value.swap(_new);
    /**
        // Store atomically stores val into x.
    **/
    @:keep
    public dynamic function store(_val:stdgo.StdGoTypes.GoUInt32):Void __self__.value.store(_val);
    /**
        // Load atomically loads and returns the value stored in x.
    **/
    @:keep
    public dynamic function load():stdgo.StdGoTypes.GoUInt32 return __self__.value.load();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Uint32>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync.atomic_.Atomic_.Uint32_asInterface) class Uint32_static_extension {
    /**
        // Add atomically adds delta to x and returns the new value.
    **/
    @:keep
    static public function add( _x:stdgo.StdGoTypes.Ref<Uint32>, _delta:stdgo.StdGoTypes.GoUInt32):stdgo.StdGoTypes.GoUInt32 throw "Uint32:sync.atomic_.add is not yet implemented";
    /**
        // CompareAndSwap executes the compare-and-swap operation for x.
    **/
    @:keep
    static public function compareAndSwap( _x:stdgo.StdGoTypes.Ref<Uint32>, _old:stdgo.StdGoTypes.GoUInt32, _new:stdgo.StdGoTypes.GoUInt32):Bool throw "Uint32:sync.atomic_.compareAndSwap is not yet implemented";
    /**
        // Swap atomically stores new into x and returns the previous value.
    **/
    @:keep
    static public function swap( _x:stdgo.StdGoTypes.Ref<Uint32>, _new:stdgo.StdGoTypes.GoUInt32):stdgo.StdGoTypes.GoUInt32 throw "Uint32:sync.atomic_.swap is not yet implemented";
    /**
        // Store atomically stores val into x.
    **/
    @:keep
    static public function store( _x:stdgo.StdGoTypes.Ref<Uint32>, _val:stdgo.StdGoTypes.GoUInt32):Void throw "Uint32:sync.atomic_.store is not yet implemented";
    /**
        // Load atomically loads and returns the value stored in x.
    **/
    @:keep
    static public function load( _x:stdgo.StdGoTypes.Ref<Uint32>):stdgo.StdGoTypes.GoUInt32 throw "Uint32:sync.atomic_.load is not yet implemented";
}
class Uint64_asInterface {
    /**
        // Add atomically adds delta to x and returns the new value.
    **/
    @:keep
    public dynamic function add(_delta:stdgo.StdGoTypes.GoUInt64):stdgo.StdGoTypes.GoUInt64 return __self__.value.add(_delta);
    /**
        // CompareAndSwap executes the compare-and-swap operation for x.
    **/
    @:keep
    public dynamic function compareAndSwap(_old:stdgo.StdGoTypes.GoUInt64, _new:stdgo.StdGoTypes.GoUInt64):Bool return __self__.value.compareAndSwap(_old, _new);
    /**
        // Swap atomically stores new into x and returns the previous value.
    **/
    @:keep
    public dynamic function swap(_new:stdgo.StdGoTypes.GoUInt64):stdgo.StdGoTypes.GoUInt64 return __self__.value.swap(_new);
    /**
        // Store atomically stores val into x.
    **/
    @:keep
    public dynamic function store(_val:stdgo.StdGoTypes.GoUInt64):Void __self__.value.store(_val);
    /**
        // Load atomically loads and returns the value stored in x.
    **/
    @:keep
    public dynamic function load():stdgo.StdGoTypes.GoUInt64 return __self__.value.load();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Uint64>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync.atomic_.Atomic_.Uint64_asInterface) class Uint64_static_extension {
    /**
        // Add atomically adds delta to x and returns the new value.
    **/
    @:keep
    static public function add( _x:stdgo.StdGoTypes.Ref<Uint64>, _delta:stdgo.StdGoTypes.GoUInt64):stdgo.StdGoTypes.GoUInt64 throw "Uint64:sync.atomic_.add is not yet implemented";
    /**
        // CompareAndSwap executes the compare-and-swap operation for x.
    **/
    @:keep
    static public function compareAndSwap( _x:stdgo.StdGoTypes.Ref<Uint64>, _old:stdgo.StdGoTypes.GoUInt64, _new:stdgo.StdGoTypes.GoUInt64):Bool throw "Uint64:sync.atomic_.compareAndSwap is not yet implemented";
    /**
        // Swap atomically stores new into x and returns the previous value.
    **/
    @:keep
    static public function swap( _x:stdgo.StdGoTypes.Ref<Uint64>, _new:stdgo.StdGoTypes.GoUInt64):stdgo.StdGoTypes.GoUInt64 throw "Uint64:sync.atomic_.swap is not yet implemented";
    /**
        // Store atomically stores val into x.
    **/
    @:keep
    static public function store( _x:stdgo.StdGoTypes.Ref<Uint64>, _val:stdgo.StdGoTypes.GoUInt64):Void throw "Uint64:sync.atomic_.store is not yet implemented";
    /**
        // Load atomically loads and returns the value stored in x.
    **/
    @:keep
    static public function load( _x:stdgo.StdGoTypes.Ref<Uint64>):stdgo.StdGoTypes.GoUInt64 throw "Uint64:sync.atomic_.load is not yet implemented";
}
class Uintptr_asInterface {
    /**
        // Add atomically adds delta to x and returns the new value.
    **/
    @:keep
    public dynamic function add(_delta:stdgo.StdGoTypes.GoUIntptr):stdgo.StdGoTypes.GoUIntptr return __self__.value.add(_delta);
    /**
        // CompareAndSwap executes the compare-and-swap operation for x.
    **/
    @:keep
    public dynamic function compareAndSwap(_old:stdgo.StdGoTypes.GoUIntptr, _new:stdgo.StdGoTypes.GoUIntptr):Bool return __self__.value.compareAndSwap(_old, _new);
    /**
        // Swap atomically stores new into x and returns the previous value.
    **/
    @:keep
    public dynamic function swap(_new:stdgo.StdGoTypes.GoUIntptr):stdgo.StdGoTypes.GoUIntptr return __self__.value.swap(_new);
    /**
        // Store atomically stores val into x.
    **/
    @:keep
    public dynamic function store(_val:stdgo.StdGoTypes.GoUIntptr):Void __self__.value.store(_val);
    /**
        // Load atomically loads and returns the value stored in x.
    **/
    @:keep
    public dynamic function load():stdgo.StdGoTypes.GoUIntptr return __self__.value.load();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Uintptr>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync.atomic_.Atomic_.Uintptr_asInterface) class Uintptr_static_extension {
    /**
        // Add atomically adds delta to x and returns the new value.
    **/
    @:keep
    static public function add( _x:stdgo.StdGoTypes.Ref<Uintptr>, _delta:stdgo.StdGoTypes.GoUIntptr):stdgo.StdGoTypes.GoUIntptr throw "Uintptr:sync.atomic_.add is not yet implemented";
    /**
        // CompareAndSwap executes the compare-and-swap operation for x.
    **/
    @:keep
    static public function compareAndSwap( _x:stdgo.StdGoTypes.Ref<Uintptr>, _old:stdgo.StdGoTypes.GoUIntptr, _new:stdgo.StdGoTypes.GoUIntptr):Bool throw "Uintptr:sync.atomic_.compareAndSwap is not yet implemented";
    /**
        // Swap atomically stores new into x and returns the previous value.
    **/
    @:keep
    static public function swap( _x:stdgo.StdGoTypes.Ref<Uintptr>, _new:stdgo.StdGoTypes.GoUIntptr):stdgo.StdGoTypes.GoUIntptr throw "Uintptr:sync.atomic_.swap is not yet implemented";
    /**
        // Store atomically stores val into x.
    **/
    @:keep
    static public function store( _x:stdgo.StdGoTypes.Ref<Uintptr>, _val:stdgo.StdGoTypes.GoUIntptr):Void throw "Uintptr:sync.atomic_.store is not yet implemented";
    /**
        // Load atomically loads and returns the value stored in x.
    **/
    @:keep
    static public function load( _x:stdgo.StdGoTypes.Ref<Uintptr>):stdgo.StdGoTypes.GoUIntptr throw "Uintptr:sync.atomic_.load is not yet implemented";
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
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_noCopy>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync.atomic_.Atomic_.T_noCopy_asInterface) class T_noCopy_static_extension {
    @:keep
    static public function unlock( _:stdgo.StdGoTypes.Ref<T_noCopy>):Void throw "T_noCopy:sync.atomic_.unlock is not yet implemented";
    /**
        // Lock is a no-op used by -copylocks checker from `go vet`.
    **/
    @:keep
    static public function lock( _:stdgo.StdGoTypes.Ref<T_noCopy>):Void throw "T_noCopy:sync.atomic_.lock is not yet implemented";
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
    public dynamic function compareAndSwap(_old:stdgo.StdGoTypes.AnyInterface, _new:stdgo.StdGoTypes.AnyInterface):Bool return __self__.value.compareAndSwap(_old, _new);
    /**
        // Swap stores new into Value and returns the previous value. It returns nil if
        // the Value is empty.
        //
        // All calls to Swap for a given Value must use values of the same concrete
        // type. Swap of an inconsistent type panics, as does Swap(nil).
    **/
    @:keep
    public dynamic function swap(_new:stdgo.StdGoTypes.AnyInterface):stdgo.StdGoTypes.AnyInterface return __self__.value.swap(_new);
    /**
        // Store sets the value of the Value v to val.
        // All calls to Store for a given Value must use values of the same concrete type.
        // Store of an inconsistent type panics, as does Store(nil).
    **/
    @:keep
    public dynamic function store(_val:stdgo.StdGoTypes.AnyInterface):Void __self__.value.store(_val);
    /**
        // Load returns the value set by the most recent Store.
        // It returns nil if there has been no call to Store for this Value.
    **/
    @:keep
    public dynamic function load():stdgo.StdGoTypes.AnyInterface return __self__.value.load();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Value>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync.atomic_.Atomic_.Value_asInterface) class Value_static_extension {
    /**
        // CompareAndSwap executes the compare-and-swap operation for the Value.
        //
        // All calls to CompareAndSwap for a given Value must use values of the same
        // concrete type. CompareAndSwap of an inconsistent type panics, as does
        // CompareAndSwap(old, nil).
    **/
    @:keep
    static public function compareAndSwap( _v:stdgo.StdGoTypes.Ref<Value>, _old:stdgo.StdGoTypes.AnyInterface, _new:stdgo.StdGoTypes.AnyInterface):Bool throw "Value:sync.atomic_.compareAndSwap is not yet implemented";
    /**
        // Swap stores new into Value and returns the previous value. It returns nil if
        // the Value is empty.
        //
        // All calls to Swap for a given Value must use values of the same concrete
        // type. Swap of an inconsistent type panics, as does Swap(nil).
    **/
    @:keep
    static public function swap( _v:stdgo.StdGoTypes.Ref<Value>, _new:stdgo.StdGoTypes.AnyInterface):stdgo.StdGoTypes.AnyInterface throw "Value:sync.atomic_.swap is not yet implemented";
    /**
        // Store sets the value of the Value v to val.
        // All calls to Store for a given Value must use values of the same concrete type.
        // Store of an inconsistent type panics, as does Store(nil).
    **/
    @:keep
    static public function store( _v:stdgo.StdGoTypes.Ref<Value>, _val:stdgo.StdGoTypes.AnyInterface):Void throw "Value:sync.atomic_.store is not yet implemented";
    /**
        // Load returns the value set by the most recent Store.
        // It returns nil if there has been no call to Store for this Value.
    **/
    @:keep
    static public function load( _v:stdgo.StdGoTypes.Ref<Value>):stdgo.StdGoTypes.AnyInterface throw "Value:sync.atomic_.load is not yet implemented";
}
