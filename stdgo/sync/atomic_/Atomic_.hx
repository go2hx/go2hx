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
@:invalid typedef Bool_ = Dynamic;
@:invalid typedef Pointer_ = Dynamic;
@:invalid typedef Int32 = Dynamic;
@:invalid typedef Int64_ = Dynamic;
@:invalid typedef Uint32 = Dynamic;
@:invalid typedef Uint64 = Dynamic;
@:invalid typedef Uintptr = Dynamic;
@:invalid typedef T_noCopy = Dynamic;
@:invalid typedef T_align64 = Dynamic;
@:invalid typedef Value = Dynamic;
@:invalid typedef T_efaceWords = Dynamic;
/**
    // SwapInt32 atomically stores new into *addr and returns the previous *addr value.
    // Consider using the more ergonomic and less error-prone [Int32.Swap] instead.
**/
inline function swapInt32(addr:stdgo.Pointer<Int>, _new:Int):Int throw "not implemented";
/**
    // SwapInt64 atomically stores new into *addr and returns the previous *addr value.
    // Consider using the more ergonomic and less error-prone [Int64.Swap] instead
    // (particularly if you target 32-bit platforms; see the bugs section).
**/
inline function swapInt64(addr:stdgo.Pointer<haxe.Int64>, _new:haxe.Int64):haxe.Int64 throw "not implemented";
/**
    // SwapUint32 atomically stores new into *addr and returns the previous *addr value.
    // Consider using the more ergonomic and less error-prone [Uint32.Swap] instead.
**/
inline function swapUint32(addr:stdgo.Pointer<UInt>, _new:UInt):UInt throw "not implemented";
/**
    // SwapUint64 atomically stores new into *addr and returns the previous *addr value.
    // Consider using the more ergonomic and less error-prone [Uint64.Swap] instead
    // (particularly if you target 32-bit platforms; see the bugs section).
**/
inline function swapUint64(addr:stdgo.Pointer<haxe.UInt64>, _new:haxe.UInt64):haxe.UInt64 throw "not implemented";
/**
    // SwapUintptr atomically stores new into *addr and returns the previous *addr value.
    // Consider using the more ergonomic and less error-prone [Uintptr.Swap] instead.
**/
inline function swapUintptr(addr:stdgo.Pointer<stdgo.GoUIntptr>, _new:stdgo.GoUIntptr):stdgo.GoUIntptr throw "not implemented";
/**
    // SwapPointer atomically stores new into *addr and returns the previous *addr value.
    // Consider using the more ergonomic and less error-prone [Pointer.Swap] instead.
**/
inline function swapPointer(addr:stdgo.Pointer<stdgo._internal.unsafe.Unsafe.UnsafePointer>, _new:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo._internal.unsafe.Unsafe.UnsafePointer throw "not implemented";
/**
    // CompareAndSwapInt32 executes the compare-and-swap operation for an int32 value.
    // Consider using the more ergonomic and less error-prone [Int32.CompareAndSwap] instead.
**/
inline function compareAndSwapInt32(addr:stdgo.Pointer<Int>, old:Int, _new:Int):Bool throw "not implemented";
/**
    // CompareAndSwapInt64 executes the compare-and-swap operation for an int64 value.
    // Consider using the more ergonomic and less error-prone [Int64.CompareAndSwap] instead
    // (particularly if you target 32-bit platforms; see the bugs section).
**/
inline function compareAndSwapInt64(addr:stdgo.Pointer<haxe.Int64>, old:haxe.Int64, _new:haxe.Int64):Bool throw "not implemented";
/**
    // CompareAndSwapUint32 executes the compare-and-swap operation for a uint32 value.
    // Consider using the more ergonomic and less error-prone [Uint32.CompareAndSwap] instead.
**/
inline function compareAndSwapUint32(addr:stdgo.Pointer<UInt>, old:UInt, _new:UInt):Bool throw "not implemented";
/**
    // CompareAndSwapUint64 executes the compare-and-swap operation for a uint64 value.
    // Consider using the more ergonomic and less error-prone [Uint64.CompareAndSwap] instead
    // (particularly if you target 32-bit platforms; see the bugs section).
**/
inline function compareAndSwapUint64(addr:stdgo.Pointer<haxe.UInt64>, old:haxe.UInt64, _new:haxe.UInt64):Bool throw "not implemented";
/**
    // CompareAndSwapUintptr executes the compare-and-swap operation for a uintptr value.
    // Consider using the more ergonomic and less error-prone [Uintptr.CompareAndSwap] instead.
**/
inline function compareAndSwapUintptr(addr:stdgo.Pointer<stdgo.GoUIntptr>, old:stdgo.GoUIntptr, _new:stdgo.GoUIntptr):Bool throw "not implemented";
/**
    // CompareAndSwapPointer executes the compare-and-swap operation for a unsafe.Pointer value.
    // Consider using the more ergonomic and less error-prone [Pointer.CompareAndSwap] instead.
**/
inline function compareAndSwapPointer(addr:stdgo.Pointer<stdgo._internal.unsafe.Unsafe.UnsafePointer>, old:stdgo._internal.unsafe.Unsafe.UnsafePointer, _new:stdgo._internal.unsafe.Unsafe.UnsafePointer):Bool throw "not implemented";
/**
    // AddInt32 atomically adds delta to *addr and returns the new value.
    // Consider using the more ergonomic and less error-prone [Int32.Add] instead.
**/
inline function addInt32(addr:stdgo.Pointer<Int>, delta:Int):Int throw "not implemented";
/**
    // AddUint32 atomically adds delta to *addr and returns the new value.
    // To subtract a signed positive constant value c from x, do AddUint32(&x, ^uint32(c-1)).
    // In particular, to decrement x, do AddUint32(&x, ^uint32(0)).
    // Consider using the more ergonomic and less error-prone [Uint32.Add] instead.
**/
inline function addUint32(addr:stdgo.Pointer<UInt>, delta:UInt):UInt throw "not implemented";
/**
    // AddInt64 atomically adds delta to *addr and returns the new value.
    // Consider using the more ergonomic and less error-prone [Int64.Add] instead
    // (particularly if you target 32-bit platforms; see the bugs section).
**/
inline function addInt64(addr:stdgo.Pointer<haxe.Int64>, delta:haxe.Int64):haxe.Int64 throw "not implemented";
/**
    // AddUint64 atomically adds delta to *addr and returns the new value.
    // To subtract a signed positive constant value c from x, do AddUint64(&x, ^uint64(c-1)).
    // In particular, to decrement x, do AddUint64(&x, ^uint64(0)).
    // Consider using the more ergonomic and less error-prone [Uint64.Add] instead
    // (particularly if you target 32-bit platforms; see the bugs section).
**/
inline function addUint64(addr:stdgo.Pointer<haxe.UInt64>, delta:haxe.UInt64):haxe.UInt64 throw "not implemented";
/**
    // AddUintptr atomically adds delta to *addr and returns the new value.
    // Consider using the more ergonomic and less error-prone [Uintptr.Add] instead.
**/
inline function addUintptr(addr:stdgo.Pointer<stdgo.GoUIntptr>, delta:stdgo.GoUIntptr):stdgo.GoUIntptr throw "not implemented";
/**
    // LoadInt32 atomically loads *addr.
    // Consider using the more ergonomic and less error-prone [Int32.Load] instead.
**/
inline function loadInt32(addr:stdgo.Pointer<Int>):Int throw "not implemented";
/**
    // LoadInt64 atomically loads *addr.
    // Consider using the more ergonomic and less error-prone [Int64.Load] instead
    // (particularly if you target 32-bit platforms; see the bugs section).
**/
inline function loadInt64(addr:stdgo.Pointer<haxe.Int64>):haxe.Int64 throw "not implemented";
/**
    // LoadUint32 atomically loads *addr.
    // Consider using the more ergonomic and less error-prone [Uint32.Load] instead.
**/
inline function loadUint32(addr:stdgo.Pointer<UInt>):UInt throw "not implemented";
/**
    // LoadUint64 atomically loads *addr.
    // Consider using the more ergonomic and less error-prone [Uint64.Load] instead
    // (particularly if you target 32-bit platforms; see the bugs section).
**/
inline function loadUint64(addr:stdgo.Pointer<haxe.UInt64>):haxe.UInt64 throw "not implemented";
/**
    // LoadUintptr atomically loads *addr.
    // Consider using the more ergonomic and less error-prone [Uintptr.Load] instead.
**/
inline function loadUintptr(addr:stdgo.Pointer<stdgo.GoUIntptr>):stdgo.GoUIntptr throw "not implemented";
/**
    // LoadPointer atomically loads *addr.
    // Consider using the more ergonomic and less error-prone [Pointer.Load] instead.
**/
inline function loadPointer(addr:stdgo.Pointer<stdgo._internal.unsafe.Unsafe.UnsafePointer>):stdgo._internal.unsafe.Unsafe.UnsafePointer throw "not implemented";
/**
    // StoreInt32 atomically stores val into *addr.
    // Consider using the more ergonomic and less error-prone [Int32.Store] instead.
**/
inline function storeInt32(addr:stdgo.Pointer<Int>, val:Int):Void throw "not implemented";
/**
    // StoreInt64 atomically stores val into *addr.
    // Consider using the more ergonomic and less error-prone [Int64.Store] instead
    // (particularly if you target 32-bit platforms; see the bugs section).
**/
inline function storeInt64(addr:stdgo.Pointer<haxe.Int64>, val:haxe.Int64):Void throw "not implemented";
/**
    // StoreUint32 atomically stores val into *addr.
    // Consider using the more ergonomic and less error-prone [Uint32.Store] instead.
**/
inline function storeUint32(addr:stdgo.Pointer<UInt>, val:UInt):Void throw "not implemented";
/**
    // StoreUint64 atomically stores val into *addr.
    // Consider using the more ergonomic and less error-prone [Uint64.Store] instead
    // (particularly if you target 32-bit platforms; see the bugs section).
**/
inline function storeUint64(addr:stdgo.Pointer<haxe.UInt64>, val:haxe.UInt64):Void throw "not implemented";
/**
    // StoreUintptr atomically stores val into *addr.
    // Consider using the more ergonomic and less error-prone [Uintptr.Store] instead.
**/
inline function storeUintptr(addr:stdgo.Pointer<stdgo.GoUIntptr>, val:stdgo.GoUIntptr):Void throw "not implemented";
/**
    // StorePointer atomically stores val into *addr.
    // Consider using the more ergonomic and less error-prone [Pointer.Store] instead.
**/
inline function storePointer(addr:stdgo.Pointer<stdgo._internal.unsafe.Unsafe.UnsafePointer>, val:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void throw "not implemented";
@:invalid typedef Bool__asInterface = Dynamic;
@:invalid typedef Bool__static_extension = Dynamic;
@:invalid typedef Pointer__asInterface = Dynamic;
@:invalid typedef Pointer__static_extension = Dynamic;
@:invalid typedef Int32_asInterface = Dynamic;
@:invalid typedef Int32_static_extension = Dynamic;
@:invalid typedef Int64__asInterface = Dynamic;
@:invalid typedef Int64__static_extension = Dynamic;
@:invalid typedef Uint32_asInterface = Dynamic;
@:invalid typedef Uint32_static_extension = Dynamic;
@:invalid typedef Uint64_asInterface = Dynamic;
@:invalid typedef Uint64_static_extension = Dynamic;
@:invalid typedef Uintptr_asInterface = Dynamic;
@:invalid typedef Uintptr_static_extension = Dynamic;
@:invalid typedef T_noCopy_asInterface = Dynamic;
@:invalid typedef T_noCopy_static_extension = Dynamic;
@:invalid typedef Value_asInterface = Dynamic;
@:invalid typedef Value_static_extension = Dynamic;
