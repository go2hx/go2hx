package stdgo.sync.atomic_;
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
    static public inline function swapInt32(_addr:stdgo.Pointer<StdTypes.Int>, _new:StdTypes.Int):StdTypes.Int {
        final _new = (_new : stdgo.GoInt32);
        return stdgo._internal.sync.atomic_.Atomic__swapInt32.swapInt32(_addr, _new);
    }
    /**
        SwapInt64 atomically stores new into *addr and returns the previous *addr value.
        Consider using the more ergonomic and less error-prone [Int64.Swap] instead
        (particularly if you target 32-bit platforms; see the bugs section).
    **/
    static public inline function swapInt64(_addr:stdgo.Pointer<haxe.Int64>, _new:haxe.Int64):haxe.Int64 {
        final _new = (_new : stdgo.GoInt64);
        return stdgo._internal.sync.atomic_.Atomic__swapInt64.swapInt64(_addr, _new);
    }
    /**
        SwapUint32 atomically stores new into *addr and returns the previous *addr value.
        Consider using the more ergonomic and less error-prone [Uint32.Swap] instead.
    **/
    static public inline function swapUint32(_addr:stdgo.Pointer<std.UInt>, _new:std.UInt):std.UInt {
        final _new = (_new : stdgo.GoUInt32);
        return stdgo._internal.sync.atomic_.Atomic__swapUint32.swapUint32(_addr, _new);
    }
    /**
        SwapUint64 atomically stores new into *addr and returns the previous *addr value.
        Consider using the more ergonomic and less error-prone [Uint64.Swap] instead
        (particularly if you target 32-bit platforms; see the bugs section).
    **/
    static public inline function swapUint64(_addr:stdgo.Pointer<haxe.UInt64>, _new:haxe.UInt64):haxe.UInt64 {
        final _new = (_new : stdgo.GoUInt64);
        return stdgo._internal.sync.atomic_.Atomic__swapUint64.swapUint64(_addr, _new);
    }
    /**
        SwapUintptr atomically stores new into *addr and returns the previous *addr value.
        Consider using the more ergonomic and less error-prone [Uintptr.Swap] instead.
    **/
    static public inline function swapUintptr(_addr:stdgo.Pointer<stdgo.GoUIntptr>, _new:stdgo.GoUIntptr):stdgo.GoUIntptr {
        final _new = (_new : stdgo.GoUIntptr);
        return stdgo._internal.sync.atomic_.Atomic__swapUintptr.swapUintptr(_addr, _new);
    }
    /**
        SwapPointer atomically stores new into *addr and returns the previous *addr value.
        Consider using the more ergonomic and less error-prone [Pointer.Swap] instead.
    **/
    static public inline function swapPointer(_addr:stdgo.Pointer<stdgo._internal.unsafe.Unsafe.UnsafePointer>, _new:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        return stdgo._internal.sync.atomic_.Atomic__swapPointer.swapPointer(_addr, _new);
    }
    /**
        CompareAndSwapInt32 executes the compare-and-swap operation for an int32 value.
        Consider using the more ergonomic and less error-prone [Int32.CompareAndSwap] instead.
    **/
    static public inline function compareAndSwapInt32(_addr:stdgo.Pointer<StdTypes.Int>, _old:StdTypes.Int, _new:StdTypes.Int):Bool {
        final _old = (_old : stdgo.GoInt32);
        final _new = (_new : stdgo.GoInt32);
        return stdgo._internal.sync.atomic_.Atomic__compareAndSwapInt32.compareAndSwapInt32(_addr, _old, _new);
    }
    /**
        CompareAndSwapInt64 executes the compare-and-swap operation for an int64 value.
        Consider using the more ergonomic and less error-prone [Int64.CompareAndSwap] instead
        (particularly if you target 32-bit platforms; see the bugs section).
    **/
    static public inline function compareAndSwapInt64(_addr:stdgo.Pointer<haxe.Int64>, _old:haxe.Int64, _new:haxe.Int64):Bool {
        final _old = (_old : stdgo.GoInt64);
        final _new = (_new : stdgo.GoInt64);
        return stdgo._internal.sync.atomic_.Atomic__compareAndSwapInt64.compareAndSwapInt64(_addr, _old, _new);
    }
    /**
        CompareAndSwapUint32 executes the compare-and-swap operation for a uint32 value.
        Consider using the more ergonomic and less error-prone [Uint32.CompareAndSwap] instead.
    **/
    static public inline function compareAndSwapUint32(_addr:stdgo.Pointer<std.UInt>, _old:std.UInt, _new:std.UInt):Bool {
        final _old = (_old : stdgo.GoUInt32);
        final _new = (_new : stdgo.GoUInt32);
        return stdgo._internal.sync.atomic_.Atomic__compareAndSwapUint32.compareAndSwapUint32(_addr, _old, _new);
    }
    /**
        CompareAndSwapUint64 executes the compare-and-swap operation for a uint64 value.
        Consider using the more ergonomic and less error-prone [Uint64.CompareAndSwap] instead
        (particularly if you target 32-bit platforms; see the bugs section).
    **/
    static public inline function compareAndSwapUint64(_addr:stdgo.Pointer<haxe.UInt64>, _old:haxe.UInt64, _new:haxe.UInt64):Bool {
        final _old = (_old : stdgo.GoUInt64);
        final _new = (_new : stdgo.GoUInt64);
        return stdgo._internal.sync.atomic_.Atomic__compareAndSwapUint64.compareAndSwapUint64(_addr, _old, _new);
    }
    /**
        CompareAndSwapUintptr executes the compare-and-swap operation for a uintptr value.
        Consider using the more ergonomic and less error-prone [Uintptr.CompareAndSwap] instead.
    **/
    static public inline function compareAndSwapUintptr(_addr:stdgo.Pointer<stdgo.GoUIntptr>, _old:stdgo.GoUIntptr, _new:stdgo.GoUIntptr):Bool {
        final _old = (_old : stdgo.GoUIntptr);
        final _new = (_new : stdgo.GoUIntptr);
        return stdgo._internal.sync.atomic_.Atomic__compareAndSwapUintptr.compareAndSwapUintptr(_addr, _old, _new);
    }
    /**
        CompareAndSwapPointer executes the compare-and-swap operation for a unsafe.Pointer value.
        Consider using the more ergonomic and less error-prone [Pointer.CompareAndSwap] instead.
    **/
    static public inline function compareAndSwapPointer(_addr:stdgo.Pointer<stdgo._internal.unsafe.Unsafe.UnsafePointer>, _old:stdgo._internal.unsafe.Unsafe.UnsafePointer, _new:stdgo._internal.unsafe.Unsafe.UnsafePointer):Bool {
        return stdgo._internal.sync.atomic_.Atomic__compareAndSwapPointer.compareAndSwapPointer(_addr, _old, _new);
    }
    /**
        AddInt32 atomically adds delta to *addr and returns the new value.
        Consider using the more ergonomic and less error-prone [Int32.Add] instead.
    **/
    static public inline function addInt32(_addr:stdgo.Pointer<StdTypes.Int>, _delta:StdTypes.Int):StdTypes.Int {
        final _delta = (_delta : stdgo.GoInt32);
        return stdgo._internal.sync.atomic_.Atomic__addInt32.addInt32(_addr, _delta);
    }
    /**
        AddUint32 atomically adds delta to *addr and returns the new value.
        To subtract a signed positive constant value c from x, do AddUint32(&x, ^uint32(c-1)).
        In particular, to decrement x, do AddUint32(&x, ^uint32(0)).
        Consider using the more ergonomic and less error-prone [Uint32.Add] instead.
    **/
    static public inline function addUint32(_addr:stdgo.Pointer<std.UInt>, _delta:std.UInt):std.UInt {
        final _delta = (_delta : stdgo.GoUInt32);
        return stdgo._internal.sync.atomic_.Atomic__addUint32.addUint32(_addr, _delta);
    }
    /**
        AddInt64 atomically adds delta to *addr and returns the new value.
        Consider using the more ergonomic and less error-prone [Int64.Add] instead
        (particularly if you target 32-bit platforms; see the bugs section).
    **/
    static public inline function addInt64(_addr:stdgo.Pointer<haxe.Int64>, _delta:haxe.Int64):haxe.Int64 {
        final _delta = (_delta : stdgo.GoInt64);
        return stdgo._internal.sync.atomic_.Atomic__addInt64.addInt64(_addr, _delta);
    }
    /**
        AddUint64 atomically adds delta to *addr and returns the new value.
        To subtract a signed positive constant value c from x, do AddUint64(&x, ^uint64(c-1)).
        In particular, to decrement x, do AddUint64(&x, ^uint64(0)).
        Consider using the more ergonomic and less error-prone [Uint64.Add] instead
        (particularly if you target 32-bit platforms; see the bugs section).
    **/
    static public inline function addUint64(_addr:stdgo.Pointer<haxe.UInt64>, _delta:haxe.UInt64):haxe.UInt64 {
        final _delta = (_delta : stdgo.GoUInt64);
        return stdgo._internal.sync.atomic_.Atomic__addUint64.addUint64(_addr, _delta);
    }
    /**
        AddUintptr atomically adds delta to *addr and returns the new value.
        Consider using the more ergonomic and less error-prone [Uintptr.Add] instead.
    **/
    static public inline function addUintptr(_addr:stdgo.Pointer<stdgo.GoUIntptr>, _delta:stdgo.GoUIntptr):stdgo.GoUIntptr {
        final _delta = (_delta : stdgo.GoUIntptr);
        return stdgo._internal.sync.atomic_.Atomic__addUintptr.addUintptr(_addr, _delta);
    }
    /**
        LoadInt32 atomically loads *addr.
        Consider using the more ergonomic and less error-prone [Int32.Load] instead.
    **/
    static public inline function loadInt32(_addr:stdgo.Pointer<StdTypes.Int>):StdTypes.Int {
        return stdgo._internal.sync.atomic_.Atomic__loadInt32.loadInt32(_addr);
    }
    /**
        LoadInt64 atomically loads *addr.
        Consider using the more ergonomic and less error-prone [Int64.Load] instead
        (particularly if you target 32-bit platforms; see the bugs section).
    **/
    static public inline function loadInt64(_addr:stdgo.Pointer<haxe.Int64>):haxe.Int64 {
        return stdgo._internal.sync.atomic_.Atomic__loadInt64.loadInt64(_addr);
    }
    /**
        LoadUint32 atomically loads *addr.
        Consider using the more ergonomic and less error-prone [Uint32.Load] instead.
    **/
    static public inline function loadUint32(_addr:stdgo.Pointer<std.UInt>):std.UInt {
        return stdgo._internal.sync.atomic_.Atomic__loadUint32.loadUint32(_addr);
    }
    /**
        LoadUint64 atomically loads *addr.
        Consider using the more ergonomic and less error-prone [Uint64.Load] instead
        (particularly if you target 32-bit platforms; see the bugs section).
    **/
    static public inline function loadUint64(_addr:stdgo.Pointer<haxe.UInt64>):haxe.UInt64 {
        return stdgo._internal.sync.atomic_.Atomic__loadUint64.loadUint64(_addr);
    }
    /**
        LoadUintptr atomically loads *addr.
        Consider using the more ergonomic and less error-prone [Uintptr.Load] instead.
    **/
    static public inline function loadUintptr(_addr:stdgo.Pointer<stdgo.GoUIntptr>):stdgo.GoUIntptr {
        return stdgo._internal.sync.atomic_.Atomic__loadUintptr.loadUintptr(_addr);
    }
    /**
        LoadPointer atomically loads *addr.
        Consider using the more ergonomic and less error-prone [Pointer.Load] instead.
    **/
    static public inline function loadPointer(_addr:stdgo.Pointer<stdgo._internal.unsafe.Unsafe.UnsafePointer>):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        return stdgo._internal.sync.atomic_.Atomic__loadPointer.loadPointer(_addr);
    }
    /**
        StoreInt32 atomically stores val into *addr.
        Consider using the more ergonomic and less error-prone [Int32.Store] instead.
    **/
    static public inline function storeInt32(_addr:stdgo.Pointer<StdTypes.Int>, _val:StdTypes.Int):Void {
        final _val = (_val : stdgo.GoInt32);
        stdgo._internal.sync.atomic_.Atomic__storeInt32.storeInt32(_addr, _val);
    }
    /**
        StoreInt64 atomically stores val into *addr.
        Consider using the more ergonomic and less error-prone [Int64.Store] instead
        (particularly if you target 32-bit platforms; see the bugs section).
    **/
    static public inline function storeInt64(_addr:stdgo.Pointer<haxe.Int64>, _val:haxe.Int64):Void {
        final _val = (_val : stdgo.GoInt64);
        stdgo._internal.sync.atomic_.Atomic__storeInt64.storeInt64(_addr, _val);
    }
    /**
        StoreUint32 atomically stores val into *addr.
        Consider using the more ergonomic and less error-prone [Uint32.Store] instead.
    **/
    static public inline function storeUint32(_addr:stdgo.Pointer<std.UInt>, _val:std.UInt):Void {
        final _val = (_val : stdgo.GoUInt32);
        stdgo._internal.sync.atomic_.Atomic__storeUint32.storeUint32(_addr, _val);
    }
    /**
        StoreUint64 atomically stores val into *addr.
        Consider using the more ergonomic and less error-prone [Uint64.Store] instead
        (particularly if you target 32-bit platforms; see the bugs section).
    **/
    static public inline function storeUint64(_addr:stdgo.Pointer<haxe.UInt64>, _val:haxe.UInt64):Void {
        final _val = (_val : stdgo.GoUInt64);
        stdgo._internal.sync.atomic_.Atomic__storeUint64.storeUint64(_addr, _val);
    }
    /**
        StoreUintptr atomically stores val into *addr.
        Consider using the more ergonomic and less error-prone [Uintptr.Store] instead.
    **/
    static public inline function storeUintptr(_addr:stdgo.Pointer<stdgo.GoUIntptr>, _val:stdgo.GoUIntptr):Void {
        final _val = (_val : stdgo.GoUIntptr);
        stdgo._internal.sync.atomic_.Atomic__storeUintptr.storeUintptr(_addr, _val);
    }
    /**
        StorePointer atomically stores val into *addr.
        Consider using the more ergonomic and less error-prone [Pointer.Store] instead.
    **/
    static public inline function storePointer(_addr:stdgo.Pointer<stdgo._internal.unsafe.Unsafe.UnsafePointer>, _val:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void {
        stdgo._internal.sync.atomic_.Atomic__storePointer.storePointer(_addr, _val);
    }
}
