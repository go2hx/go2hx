package stdgo.sync.atomic_;
typedef Bool_ = stdgo._internal.sync.atomic_.Atomic__bool_.Bool_;
typedef Pointer_ = stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_;
typedef Int32 = stdgo._internal.sync.atomic_.Atomic__int32.Int32;
typedef Int64_ = stdgo._internal.sync.atomic_.Atomic__int64_.Int64_;
typedef Uint32 = stdgo._internal.sync.atomic_.Atomic__uint32.Uint32;
typedef Uint64 = stdgo._internal.sync.atomic_.Atomic__uint64.Uint64;
typedef Uintptr = stdgo._internal.sync.atomic_.Atomic__uintptr.Uintptr;
typedef Value = stdgo._internal.sync.atomic_.Atomic__value.Value;
typedef Bool_Pointer = stdgo._internal.sync.atomic_.Atomic__bool_pointer.Bool_Pointer;
typedef Pointer_Pointer = stdgo._internal.sync.atomic_.Atomic__pointer_pointer.Pointer_Pointer;
typedef Int32Pointer = stdgo._internal.sync.atomic_.Atomic__int32pointer.Int32Pointer;
typedef Int64_Pointer = stdgo._internal.sync.atomic_.Atomic__int64_pointer.Int64_Pointer;
typedef Uint32Pointer = stdgo._internal.sync.atomic_.Atomic__uint32pointer.Uint32Pointer;
typedef Uint64Pointer = stdgo._internal.sync.atomic_.Atomic__uint64pointer.Uint64Pointer;
typedef UintptrPointer = stdgo._internal.sync.atomic_.Atomic__uintptrpointer.UintptrPointer;
typedef ValuePointer = stdgo._internal.sync.atomic_.Atomic__valuepointer.ValuePointer;
/**
    * Package atomic provides low-level atomic memory primitives
    * useful for implementing synchronization algorithms.
    * 
    * These functions require great care to be used correctly.
    * Except for special, low-level applications, synchronization is better
    * done with channels or the facilities of the [sync] package.
    * Share memory by communicating;
    * don't communicate by sharing memory.
    * 
    * The swap operation, implemented by the SwapT functions, is the atomic
    * equivalent of:
    * 
    * 	old = *addr
    * 	*addr = new
    * 	return old
    * 
    * The compare-and-swap operation, implemented by the CompareAndSwapT
    * functions, is the atomic equivalent of:
    * 
    * 	if *addr == old {
    * 		*addr = new
    * 		return true
    * 	}
    * 	return false
    * 
    * The add operation, implemented by the AddT functions, is the atomic
    * equivalent of:
    * 
    * 	*addr += delta
    * 	return *addr
    * 
    * The load and store operations, implemented by the LoadT and StoreT
    * functions, are the atomic equivalents of "return *addr" and
    * "*addr = val".
    * 
    * In the terminology of the Go memory model, if the effect of
    * an atomic operation A is observed by atomic operation B,
    * then A “synchronizes before” B.
    * Additionally, all the atomic operations executed in a program
    * behave as though executed in some sequentially consistent order.
    * This definition provides the same semantics as
    * C++'s sequentially consistent atomics and Java's volatile variables.
**/
class Atomic_ {
    /**
        * SwapInt32 atomically stores new into *addr and returns the previous *addr value.
        * Consider using the more ergonomic and less error-prone [Int32.Swap] instead.
    **/
    static public inline function swapInt32(_addr:stdgo.Pointer<stdgo.GoInt32>, _new_:stdgo.GoInt32):stdgo.GoInt32 return stdgo._internal.sync.atomic_.Atomic__swapint32.swapInt32(_addr, _new_);
    /**
        * SwapInt64 atomically stores new into *addr and returns the previous *addr value.
        * Consider using the more ergonomic and less error-prone [Int64.Swap] instead
        * (particularly if you target 32-bit platforms; see the bugs section).
    **/
    static public inline function swapInt64(_addr:stdgo.Pointer<stdgo.GoInt64>, _new_:stdgo.GoInt64):stdgo.GoInt64 return stdgo._internal.sync.atomic_.Atomic__swapint64.swapInt64(_addr, _new_);
    /**
        * SwapUint32 atomically stores new into *addr and returns the previous *addr value.
        * Consider using the more ergonomic and less error-prone [Uint32.Swap] instead.
    **/
    static public inline function swapUint32(_addr:stdgo.Pointer<stdgo.GoUInt32>, _new_:stdgo.GoUInt32):stdgo.GoUInt32 return stdgo._internal.sync.atomic_.Atomic__swapuint32.swapUint32(_addr, _new_);
    /**
        * SwapUint64 atomically stores new into *addr and returns the previous *addr value.
        * Consider using the more ergonomic and less error-prone [Uint64.Swap] instead
        * (particularly if you target 32-bit platforms; see the bugs section).
    **/
    static public inline function swapUint64(_addr:stdgo.Pointer<stdgo.GoUInt64>, _new_:stdgo.GoUInt64):stdgo.GoUInt64 return stdgo._internal.sync.atomic_.Atomic__swapuint64.swapUint64(_addr, _new_);
    /**
        * SwapUintptr atomically stores new into *addr and returns the previous *addr value.
        * Consider using the more ergonomic and less error-prone [Uintptr.Swap] instead.
    **/
    static public inline function swapUintptr(_addr:stdgo.Pointer<stdgo.GoUIntptr>, _new_:stdgo.GoUIntptr):stdgo.GoUIntptr return stdgo._internal.sync.atomic_.Atomic__swapuintptr.swapUintptr(_addr, _new_);
    /**
        * SwapPointer atomically stores new into *addr and returns the previous *addr value.
        * Consider using the more ergonomic and less error-prone [Pointer.Swap] instead.
    **/
    static public inline function swapPointer(_addr:stdgo.Pointer<stdgo._internal.unsafe.Unsafe.UnsafePointer>, _new_:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo._internal.unsafe.Unsafe.UnsafePointer return stdgo._internal.sync.atomic_.Atomic__swappointer.swapPointer(_addr, _new_);
    /**
        * CompareAndSwapInt32 executes the compare-and-swap operation for an int32 value.
        * Consider using the more ergonomic and less error-prone [Int32.CompareAndSwap] instead.
    **/
    static public inline function compareAndSwapInt32(_addr:stdgo.Pointer<stdgo.GoInt32>, _old:stdgo.GoInt32, _new_:stdgo.GoInt32):Bool return stdgo._internal.sync.atomic_.Atomic__compareandswapint32.compareAndSwapInt32(_addr, _old, _new_);
    /**
        * CompareAndSwapInt64 executes the compare-and-swap operation for an int64 value.
        * Consider using the more ergonomic and less error-prone [Int64.CompareAndSwap] instead
        * (particularly if you target 32-bit platforms; see the bugs section).
    **/
    static public inline function compareAndSwapInt64(_addr:stdgo.Pointer<stdgo.GoInt64>, _old:stdgo.GoInt64, _new_:stdgo.GoInt64):Bool return stdgo._internal.sync.atomic_.Atomic__compareandswapint64.compareAndSwapInt64(_addr, _old, _new_);
    /**
        * CompareAndSwapUint32 executes the compare-and-swap operation for a uint32 value.
        * Consider using the more ergonomic and less error-prone [Uint32.CompareAndSwap] instead.
    **/
    static public inline function compareAndSwapUint32(_addr:stdgo.Pointer<stdgo.GoUInt32>, _old:stdgo.GoUInt32, _new_:stdgo.GoUInt32):Bool return stdgo._internal.sync.atomic_.Atomic__compareandswapuint32.compareAndSwapUint32(_addr, _old, _new_);
    /**
        * CompareAndSwapUint64 executes the compare-and-swap operation for a uint64 value.
        * Consider using the more ergonomic and less error-prone [Uint64.CompareAndSwap] instead
        * (particularly if you target 32-bit platforms; see the bugs section).
    **/
    static public inline function compareAndSwapUint64(_addr:stdgo.Pointer<stdgo.GoUInt64>, _old:stdgo.GoUInt64, _new_:stdgo.GoUInt64):Bool return stdgo._internal.sync.atomic_.Atomic__compareandswapuint64.compareAndSwapUint64(_addr, _old, _new_);
    /**
        * CompareAndSwapUintptr executes the compare-and-swap operation for a uintptr value.
        * Consider using the more ergonomic and less error-prone [Uintptr.CompareAndSwap] instead.
    **/
    static public inline function compareAndSwapUintptr(_addr:stdgo.Pointer<stdgo.GoUIntptr>, _old:stdgo.GoUIntptr, _new_:stdgo.GoUIntptr):Bool return stdgo._internal.sync.atomic_.Atomic__compareandswapuintptr.compareAndSwapUintptr(_addr, _old, _new_);
    /**
        * CompareAndSwapPointer executes the compare-and-swap operation for a unsafe.Pointer value.
        * Consider using the more ergonomic and less error-prone [Pointer.CompareAndSwap] instead.
    **/
    static public inline function compareAndSwapPointer(_addr:stdgo.Pointer<stdgo._internal.unsafe.Unsafe.UnsafePointer>, _old:stdgo._internal.unsafe.Unsafe.UnsafePointer, _new_:stdgo._internal.unsafe.Unsafe.UnsafePointer):Bool return stdgo._internal.sync.atomic_.Atomic__compareandswappointer.compareAndSwapPointer(_addr, _old, _new_);
    /**
        * AddInt32 atomically adds delta to *addr and returns the new value.
        * Consider using the more ergonomic and less error-prone [Int32.Add] instead.
    **/
    static public inline function addInt32(_addr:stdgo.Pointer<stdgo.GoInt32>, _delta:stdgo.GoInt32):stdgo.GoInt32 return stdgo._internal.sync.atomic_.Atomic__addint32.addInt32(_addr, _delta);
    /**
        * AddUint32 atomically adds delta to *addr and returns the new value.
        * To subtract a signed positive constant value c from x, do AddUint32(&x, ^uint32(c-1)).
        * In particular, to decrement x, do AddUint32(&x, ^uint32(0)).
        * Consider using the more ergonomic and less error-prone [Uint32.Add] instead.
    **/
    static public inline function addUint32(_addr:stdgo.Pointer<stdgo.GoUInt32>, _delta:stdgo.GoUInt32):stdgo.GoUInt32 return stdgo._internal.sync.atomic_.Atomic__adduint32.addUint32(_addr, _delta);
    /**
        * AddInt64 atomically adds delta to *addr and returns the new value.
        * Consider using the more ergonomic and less error-prone [Int64.Add] instead
        * (particularly if you target 32-bit platforms; see the bugs section).
    **/
    static public inline function addInt64(_addr:stdgo.Pointer<stdgo.GoInt64>, _delta:stdgo.GoInt64):stdgo.GoInt64 return stdgo._internal.sync.atomic_.Atomic__addint64.addInt64(_addr, _delta);
    /**
        * AddUint64 atomically adds delta to *addr and returns the new value.
        * To subtract a signed positive constant value c from x, do AddUint64(&x, ^uint64(c-1)).
        * In particular, to decrement x, do AddUint64(&x, ^uint64(0)).
        * Consider using the more ergonomic and less error-prone [Uint64.Add] instead
        * (particularly if you target 32-bit platforms; see the bugs section).
    **/
    static public inline function addUint64(_addr:stdgo.Pointer<stdgo.GoUInt64>, _delta:stdgo.GoUInt64):stdgo.GoUInt64 return stdgo._internal.sync.atomic_.Atomic__adduint64.addUint64(_addr, _delta);
    /**
        * AddUintptr atomically adds delta to *addr and returns the new value.
        * Consider using the more ergonomic and less error-prone [Uintptr.Add] instead.
    **/
    static public inline function addUintptr(_addr:stdgo.Pointer<stdgo.GoUIntptr>, _delta:stdgo.GoUIntptr):stdgo.GoUIntptr return stdgo._internal.sync.atomic_.Atomic__adduintptr.addUintptr(_addr, _delta);
    /**
        * LoadInt32 atomically loads *addr.
        * Consider using the more ergonomic and less error-prone [Int32.Load] instead.
    **/
    static public inline function loadInt32(_addr:stdgo.Pointer<stdgo.GoInt32>):stdgo.GoInt32 return stdgo._internal.sync.atomic_.Atomic__loadint32.loadInt32(_addr);
    /**
        * LoadInt64 atomically loads *addr.
        * Consider using the more ergonomic and less error-prone [Int64.Load] instead
        * (particularly if you target 32-bit platforms; see the bugs section).
    **/
    static public inline function loadInt64(_addr:stdgo.Pointer<stdgo.GoInt64>):stdgo.GoInt64 return stdgo._internal.sync.atomic_.Atomic__loadint64.loadInt64(_addr);
    /**
        * LoadUint32 atomically loads *addr.
        * Consider using the more ergonomic and less error-prone [Uint32.Load] instead.
    **/
    static public inline function loadUint32(_addr:stdgo.Pointer<stdgo.GoUInt32>):stdgo.GoUInt32 return stdgo._internal.sync.atomic_.Atomic__loaduint32.loadUint32(_addr);
    /**
        * LoadUint64 atomically loads *addr.
        * Consider using the more ergonomic and less error-prone [Uint64.Load] instead
        * (particularly if you target 32-bit platforms; see the bugs section).
    **/
    static public inline function loadUint64(_addr:stdgo.Pointer<stdgo.GoUInt64>):stdgo.GoUInt64 return stdgo._internal.sync.atomic_.Atomic__loaduint64.loadUint64(_addr);
    /**
        * LoadUintptr atomically loads *addr.
        * Consider using the more ergonomic and less error-prone [Uintptr.Load] instead.
    **/
    static public inline function loadUintptr(_addr:stdgo.Pointer<stdgo.GoUIntptr>):stdgo.GoUIntptr return stdgo._internal.sync.atomic_.Atomic__loaduintptr.loadUintptr(_addr);
    /**
        * LoadPointer atomically loads *addr.
        * Consider using the more ergonomic and less error-prone [Pointer.Load] instead.
    **/
    static public inline function loadPointer(_addr:stdgo.Pointer<stdgo._internal.unsafe.Unsafe.UnsafePointer>):stdgo._internal.unsafe.Unsafe.UnsafePointer return stdgo._internal.sync.atomic_.Atomic__loadpointer.loadPointer(_addr);
    /**
        * StoreInt32 atomically stores val into *addr.
        * Consider using the more ergonomic and less error-prone [Int32.Store] instead.
    **/
    static public inline function storeInt32(_addr:stdgo.Pointer<stdgo.GoInt32>, _val:stdgo.GoInt32):Void stdgo._internal.sync.atomic_.Atomic__storeint32.storeInt32(_addr, _val);
    /**
        * StoreInt64 atomically stores val into *addr.
        * Consider using the more ergonomic and less error-prone [Int64.Store] instead
        * (particularly if you target 32-bit platforms; see the bugs section).
    **/
    static public inline function storeInt64(_addr:stdgo.Pointer<stdgo.GoInt64>, _val:stdgo.GoInt64):Void stdgo._internal.sync.atomic_.Atomic__storeint64.storeInt64(_addr, _val);
    /**
        * StoreUint32 atomically stores val into *addr.
        * Consider using the more ergonomic and less error-prone [Uint32.Store] instead.
    **/
    static public inline function storeUint32(_addr:stdgo.Pointer<stdgo.GoUInt32>, _val:stdgo.GoUInt32):Void stdgo._internal.sync.atomic_.Atomic__storeuint32.storeUint32(_addr, _val);
    /**
        * StoreUint64 atomically stores val into *addr.
        * Consider using the more ergonomic and less error-prone [Uint64.Store] instead
        * (particularly if you target 32-bit platforms; see the bugs section).
    **/
    static public inline function storeUint64(_addr:stdgo.Pointer<stdgo.GoUInt64>, _val:stdgo.GoUInt64):Void stdgo._internal.sync.atomic_.Atomic__storeuint64.storeUint64(_addr, _val);
    /**
        * StoreUintptr atomically stores val into *addr.
        * Consider using the more ergonomic and less error-prone [Uintptr.Store] instead.
    **/
    static public inline function storeUintptr(_addr:stdgo.Pointer<stdgo.GoUIntptr>, _val:stdgo.GoUIntptr):Void stdgo._internal.sync.atomic_.Atomic__storeuintptr.storeUintptr(_addr, _val);
    /**
        * StorePointer atomically stores val into *addr.
        * Consider using the more ergonomic and less error-prone [Pointer.Store] instead.
    **/
    static public inline function storePointer(_addr:stdgo.Pointer<stdgo._internal.unsafe.Unsafe.UnsafePointer>, _val:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void stdgo._internal.sync.atomic_.Atomic__storepointer.storePointer(_addr, _val);
}
