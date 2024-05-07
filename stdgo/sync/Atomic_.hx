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
@:forward @:forward.new abstract Bool_(stdgo._internal.sync.atomic_.Atomic_.Bool_) from stdgo._internal.sync.atomic_.Atomic_.Bool_ to stdgo._internal.sync.atomic_.Atomic_.Bool_ {

}
@:forward @:forward.new abstract Pointer_(stdgo._internal.sync.atomic_.Atomic_.Pointer_) from stdgo._internal.sync.atomic_.Atomic_.Pointer_ to stdgo._internal.sync.atomic_.Atomic_.Pointer_ {

}
@:forward @:forward.new abstract Int32(stdgo._internal.sync.atomic_.Atomic_.Int32) from stdgo._internal.sync.atomic_.Atomic_.Int32 to stdgo._internal.sync.atomic_.Atomic_.Int32 {

}
@:forward @:forward.new abstract Int64_(stdgo._internal.sync.atomic_.Atomic_.Int64_) from stdgo._internal.sync.atomic_.Atomic_.Int64_ to stdgo._internal.sync.atomic_.Atomic_.Int64_ {

}
@:forward @:forward.new abstract Uint32(stdgo._internal.sync.atomic_.Atomic_.Uint32) from stdgo._internal.sync.atomic_.Atomic_.Uint32 to stdgo._internal.sync.atomic_.Atomic_.Uint32 {

}
@:forward @:forward.new abstract Uint64(stdgo._internal.sync.atomic_.Atomic_.Uint64) from stdgo._internal.sync.atomic_.Atomic_.Uint64 to stdgo._internal.sync.atomic_.Atomic_.Uint64 {

}
@:forward @:forward.new abstract Uintptr(stdgo._internal.sync.atomic_.Atomic_.Uintptr) from stdgo._internal.sync.atomic_.Atomic_.Uintptr to stdgo._internal.sync.atomic_.Atomic_.Uintptr {

}
@:forward @:forward.new abstract T_noCopy(stdgo._internal.sync.atomic_.Atomic_.T_noCopy) from stdgo._internal.sync.atomic_.Atomic_.T_noCopy to stdgo._internal.sync.atomic_.Atomic_.T_noCopy {

}
@:forward @:forward.new abstract T_align64(stdgo._internal.sync.atomic_.Atomic_.T_align64) from stdgo._internal.sync.atomic_.Atomic_.T_align64 to stdgo._internal.sync.atomic_.Atomic_.T_align64 {

}
@:forward @:forward.new abstract Value(stdgo._internal.sync.atomic_.Atomic_.Value) from stdgo._internal.sync.atomic_.Atomic_.Value to stdgo._internal.sync.atomic_.Atomic_.Value {

}
@:forward @:forward.new abstract T_efaceWords(stdgo._internal.sync.atomic_.Atomic_.T_efaceWords) from stdgo._internal.sync.atomic_.Atomic_.T_efaceWords to stdgo._internal.sync.atomic_.Atomic_.T_efaceWords {

}
/**
    SwapInt32 atomically stores new into *addr and returns the previous *addr value.
    Consider using the more ergonomic and less error-prone [Int32.Swap] instead.
**/
function swapInt32(addr:stdgo.Pointer<StdTypes.Int>, _new:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.sync.atomic_.Atomic_.swapInt32(addr, _new);
    }
/**
    SwapInt64 atomically stores new into *addr and returns the previous *addr value.
    Consider using the more ergonomic and less error-prone [Int64.Swap] instead
    (particularly if you target 32-bit platforms; see the bugs section).
**/
function swapInt64(addr:stdgo.Pointer<haxe.Int64>, _new:haxe.Int64):haxe.Int64 {
        return stdgo._internal.sync.atomic_.Atomic_.swapInt64(addr, _new);
    }
/**
    SwapUint32 atomically stores new into *addr and returns the previous *addr value.
    Consider using the more ergonomic and less error-prone [Uint32.Swap] instead.
**/
function swapUint32(addr:stdgo.Pointer<std.UInt>, _new:std.UInt):std.UInt {
        return stdgo._internal.sync.atomic_.Atomic_.swapUint32(addr, _new);
    }
/**
    SwapUint64 atomically stores new into *addr and returns the previous *addr value.
    Consider using the more ergonomic and less error-prone [Uint64.Swap] instead
    (particularly if you target 32-bit platforms; see the bugs section).
**/
function swapUint64(addr:stdgo.Pointer<haxe.UInt64>, _new:haxe.UInt64):haxe.UInt64 {
        return stdgo._internal.sync.atomic_.Atomic_.swapUint64(addr, _new);
    }
/**
    SwapUintptr atomically stores new into *addr and returns the previous *addr value.
    Consider using the more ergonomic and less error-prone [Uintptr.Swap] instead.
**/
function swapUintptr(addr:stdgo.Pointer<stdgo.GoUIntptr>, _new:stdgo.GoUIntptr):stdgo.GoUIntptr {
        return stdgo._internal.sync.atomic_.Atomic_.swapUintptr(addr, _new);
    }
/**
    SwapPointer atomically stores new into *addr and returns the previous *addr value.
    Consider using the more ergonomic and less error-prone [Pointer.Swap] instead.
**/
function swapPointer(addr:stdgo.Pointer<stdgo._internal.unsafe.Unsafe.UnsafePointer>, _new:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        return stdgo._internal.sync.atomic_.Atomic_.swapPointer(addr, _new);
    }
/**
    CompareAndSwapInt32 executes the compare-and-swap operation for an int32 value.
    Consider using the more ergonomic and less error-prone [Int32.CompareAndSwap] instead.
**/
function compareAndSwapInt32(addr:stdgo.Pointer<StdTypes.Int>, old:StdTypes.Int, _new:StdTypes.Int):Bool {
        return stdgo._internal.sync.atomic_.Atomic_.compareAndSwapInt32(addr, old, _new);
    }
/**
    CompareAndSwapInt64 executes the compare-and-swap operation for an int64 value.
    Consider using the more ergonomic and less error-prone [Int64.CompareAndSwap] instead
    (particularly if you target 32-bit platforms; see the bugs section).
**/
function compareAndSwapInt64(addr:stdgo.Pointer<haxe.Int64>, old:haxe.Int64, _new:haxe.Int64):Bool {
        return stdgo._internal.sync.atomic_.Atomic_.compareAndSwapInt64(addr, old, _new);
    }
/**
    CompareAndSwapUint32 executes the compare-and-swap operation for a uint32 value.
    Consider using the more ergonomic and less error-prone [Uint32.CompareAndSwap] instead.
**/
function compareAndSwapUint32(addr:stdgo.Pointer<std.UInt>, old:std.UInt, _new:std.UInt):Bool {
        return stdgo._internal.sync.atomic_.Atomic_.compareAndSwapUint32(addr, old, _new);
    }
/**
    CompareAndSwapUint64 executes the compare-and-swap operation for a uint64 value.
    Consider using the more ergonomic and less error-prone [Uint64.CompareAndSwap] instead
    (particularly if you target 32-bit platforms; see the bugs section).
**/
function compareAndSwapUint64(addr:stdgo.Pointer<haxe.UInt64>, old:haxe.UInt64, _new:haxe.UInt64):Bool {
        return stdgo._internal.sync.atomic_.Atomic_.compareAndSwapUint64(addr, old, _new);
    }
/**
    CompareAndSwapUintptr executes the compare-and-swap operation for a uintptr value.
    Consider using the more ergonomic and less error-prone [Uintptr.CompareAndSwap] instead.
**/
function compareAndSwapUintptr(addr:stdgo.Pointer<stdgo.GoUIntptr>, old:stdgo.GoUIntptr, _new:stdgo.GoUIntptr):Bool {
        return stdgo._internal.sync.atomic_.Atomic_.compareAndSwapUintptr(addr, old, _new);
    }
/**
    CompareAndSwapPointer executes the compare-and-swap operation for a unsafe.Pointer value.
    Consider using the more ergonomic and less error-prone [Pointer.CompareAndSwap] instead.
**/
function compareAndSwapPointer(addr:stdgo.Pointer<stdgo._internal.unsafe.Unsafe.UnsafePointer>, old:stdgo._internal.unsafe.Unsafe.UnsafePointer, _new:stdgo._internal.unsafe.Unsafe.UnsafePointer):Bool {
        return stdgo._internal.sync.atomic_.Atomic_.compareAndSwapPointer(addr, old, _new);
    }
/**
    AddInt32 atomically adds delta to *addr and returns the new value.
    Consider using the more ergonomic and less error-prone [Int32.Add] instead.
**/
function addInt32(addr:stdgo.Pointer<StdTypes.Int>, delta:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.sync.atomic_.Atomic_.addInt32(addr, delta);
    }
/**
    AddUint32 atomically adds delta to *addr and returns the new value.
    To subtract a signed positive constant value c from x, do AddUint32(&x, ^uint32(c-1)).
    In particular, to decrement x, do AddUint32(&x, ^uint32(0)).
    Consider using the more ergonomic and less error-prone [Uint32.Add] instead.
**/
function addUint32(addr:stdgo.Pointer<std.UInt>, delta:std.UInt):std.UInt {
        return stdgo._internal.sync.atomic_.Atomic_.addUint32(addr, delta);
    }
/**
    AddInt64 atomically adds delta to *addr and returns the new value.
    Consider using the more ergonomic and less error-prone [Int64.Add] instead
    (particularly if you target 32-bit platforms; see the bugs section).
**/
function addInt64(addr:stdgo.Pointer<haxe.Int64>, delta:haxe.Int64):haxe.Int64 {
        return stdgo._internal.sync.atomic_.Atomic_.addInt64(addr, delta);
    }
/**
    AddUint64 atomically adds delta to *addr and returns the new value.
    To subtract a signed positive constant value c from x, do AddUint64(&x, ^uint64(c-1)).
    In particular, to decrement x, do AddUint64(&x, ^uint64(0)).
    Consider using the more ergonomic and less error-prone [Uint64.Add] instead
    (particularly if you target 32-bit platforms; see the bugs section).
**/
function addUint64(addr:stdgo.Pointer<haxe.UInt64>, delta:haxe.UInt64):haxe.UInt64 {
        return stdgo._internal.sync.atomic_.Atomic_.addUint64(addr, delta);
    }
/**
    AddUintptr atomically adds delta to *addr and returns the new value.
    Consider using the more ergonomic and less error-prone [Uintptr.Add] instead.
**/
function addUintptr(addr:stdgo.Pointer<stdgo.GoUIntptr>, delta:stdgo.GoUIntptr):stdgo.GoUIntptr {
        return stdgo._internal.sync.atomic_.Atomic_.addUintptr(addr, delta);
    }
/**
    LoadInt32 atomically loads *addr.
    Consider using the more ergonomic and less error-prone [Int32.Load] instead.
**/
function loadInt32(addr:stdgo.Pointer<StdTypes.Int>):StdTypes.Int {
        return stdgo._internal.sync.atomic_.Atomic_.loadInt32(addr);
    }
/**
    LoadInt64 atomically loads *addr.
    Consider using the more ergonomic and less error-prone [Int64.Load] instead
    (particularly if you target 32-bit platforms; see the bugs section).
**/
function loadInt64(addr:stdgo.Pointer<haxe.Int64>):haxe.Int64 {
        return stdgo._internal.sync.atomic_.Atomic_.loadInt64(addr);
    }
/**
    LoadUint32 atomically loads *addr.
    Consider using the more ergonomic and less error-prone [Uint32.Load] instead.
**/
function loadUint32(addr:stdgo.Pointer<std.UInt>):std.UInt {
        return stdgo._internal.sync.atomic_.Atomic_.loadUint32(addr);
    }
/**
    LoadUint64 atomically loads *addr.
    Consider using the more ergonomic and less error-prone [Uint64.Load] instead
    (particularly if you target 32-bit platforms; see the bugs section).
**/
function loadUint64(addr:stdgo.Pointer<haxe.UInt64>):haxe.UInt64 {
        return stdgo._internal.sync.atomic_.Atomic_.loadUint64(addr);
    }
/**
    LoadUintptr atomically loads *addr.
    Consider using the more ergonomic and less error-prone [Uintptr.Load] instead.
**/
function loadUintptr(addr:stdgo.Pointer<stdgo.GoUIntptr>):stdgo.GoUIntptr {
        return stdgo._internal.sync.atomic_.Atomic_.loadUintptr(addr);
    }
/**
    LoadPointer atomically loads *addr.
    Consider using the more ergonomic and less error-prone [Pointer.Load] instead.
**/
function loadPointer(addr:stdgo.Pointer<stdgo._internal.unsafe.Unsafe.UnsafePointer>):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        return stdgo._internal.sync.atomic_.Atomic_.loadPointer(addr);
    }
/**
    StoreInt32 atomically stores val into *addr.
    Consider using the more ergonomic and less error-prone [Int32.Store] instead.
**/
function storeInt32(addr:stdgo.Pointer<StdTypes.Int>, val:StdTypes.Int):Void {
        stdgo._internal.sync.atomic_.Atomic_.storeInt32(addr, val);
    }
/**
    StoreInt64 atomically stores val into *addr.
    Consider using the more ergonomic and less error-prone [Int64.Store] instead
    (particularly if you target 32-bit platforms; see the bugs section).
**/
function storeInt64(addr:stdgo.Pointer<haxe.Int64>, val:haxe.Int64):Void {
        stdgo._internal.sync.atomic_.Atomic_.storeInt64(addr, val);
    }
/**
    StoreUint32 atomically stores val into *addr.
    Consider using the more ergonomic and less error-prone [Uint32.Store] instead.
**/
function storeUint32(addr:stdgo.Pointer<std.UInt>, val:std.UInt):Void {
        stdgo._internal.sync.atomic_.Atomic_.storeUint32(addr, val);
    }
/**
    StoreUint64 atomically stores val into *addr.
    Consider using the more ergonomic and less error-prone [Uint64.Store] instead
    (particularly if you target 32-bit platforms; see the bugs section).
**/
function storeUint64(addr:stdgo.Pointer<haxe.UInt64>, val:haxe.UInt64):Void {
        stdgo._internal.sync.atomic_.Atomic_.storeUint64(addr, val);
    }
/**
    StoreUintptr atomically stores val into *addr.
    Consider using the more ergonomic and less error-prone [Uintptr.Store] instead.
**/
function storeUintptr(addr:stdgo.Pointer<stdgo.GoUIntptr>, val:stdgo.GoUIntptr):Void {
        stdgo._internal.sync.atomic_.Atomic_.storeUintptr(addr, val);
    }
/**
    StorePointer atomically stores val into *addr.
    Consider using the more ergonomic and less error-prone [Pointer.Store] instead.
**/
function storePointer(addr:stdgo.Pointer<stdgo._internal.unsafe.Unsafe.UnsafePointer>, val:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void {
        stdgo._internal.sync.atomic_.Atomic_.storePointer(addr, val);
    }
@:forward @:forward.new abstract Bool__asInterface(stdgo._internal.sync.atomic_.Atomic_.Bool__asInterface) from stdgo._internal.sync.atomic_.Atomic_.Bool__asInterface to stdgo._internal.sync.atomic_.Atomic_.Bool__asInterface {

}
@:forward @:forward.new abstract Bool__static_extension(stdgo._internal.sync.atomic_.Atomic_.Bool__static_extension) from stdgo._internal.sync.atomic_.Atomic_.Bool__static_extension to stdgo._internal.sync.atomic_.Atomic_.Bool__static_extension {

}
@:forward @:forward.new abstract Pointer__asInterface(stdgo._internal.sync.atomic_.Atomic_.Pointer__asInterface) from stdgo._internal.sync.atomic_.Atomic_.Pointer__asInterface to stdgo._internal.sync.atomic_.Atomic_.Pointer__asInterface {

}
@:forward @:forward.new abstract Pointer__static_extension(stdgo._internal.sync.atomic_.Atomic_.Pointer__static_extension) from stdgo._internal.sync.atomic_.Atomic_.Pointer__static_extension to stdgo._internal.sync.atomic_.Atomic_.Pointer__static_extension {

}
@:forward @:forward.new abstract Int32_asInterface(stdgo._internal.sync.atomic_.Atomic_.Int32_asInterface) from stdgo._internal.sync.atomic_.Atomic_.Int32_asInterface to stdgo._internal.sync.atomic_.Atomic_.Int32_asInterface {

}
@:forward @:forward.new abstract Int32_static_extension(stdgo._internal.sync.atomic_.Atomic_.Int32_static_extension) from stdgo._internal.sync.atomic_.Atomic_.Int32_static_extension to stdgo._internal.sync.atomic_.Atomic_.Int32_static_extension {

}
@:forward @:forward.new abstract Int64__asInterface(stdgo._internal.sync.atomic_.Atomic_.Int64__asInterface) from stdgo._internal.sync.atomic_.Atomic_.Int64__asInterface to stdgo._internal.sync.atomic_.Atomic_.Int64__asInterface {

}
@:forward @:forward.new abstract Int64__static_extension(stdgo._internal.sync.atomic_.Atomic_.Int64__static_extension) from stdgo._internal.sync.atomic_.Atomic_.Int64__static_extension to stdgo._internal.sync.atomic_.Atomic_.Int64__static_extension {

}
@:forward @:forward.new abstract Uint32_asInterface(stdgo._internal.sync.atomic_.Atomic_.Uint32_asInterface) from stdgo._internal.sync.atomic_.Atomic_.Uint32_asInterface to stdgo._internal.sync.atomic_.Atomic_.Uint32_asInterface {

}
@:forward @:forward.new abstract Uint32_static_extension(stdgo._internal.sync.atomic_.Atomic_.Uint32_static_extension) from stdgo._internal.sync.atomic_.Atomic_.Uint32_static_extension to stdgo._internal.sync.atomic_.Atomic_.Uint32_static_extension {

}
@:forward @:forward.new abstract Uint64_asInterface(stdgo._internal.sync.atomic_.Atomic_.Uint64_asInterface) from stdgo._internal.sync.atomic_.Atomic_.Uint64_asInterface to stdgo._internal.sync.atomic_.Atomic_.Uint64_asInterface {

}
@:forward @:forward.new abstract Uint64_static_extension(stdgo._internal.sync.atomic_.Atomic_.Uint64_static_extension) from stdgo._internal.sync.atomic_.Atomic_.Uint64_static_extension to stdgo._internal.sync.atomic_.Atomic_.Uint64_static_extension {

}
@:forward @:forward.new abstract Uintptr_asInterface(stdgo._internal.sync.atomic_.Atomic_.Uintptr_asInterface) from stdgo._internal.sync.atomic_.Atomic_.Uintptr_asInterface to stdgo._internal.sync.atomic_.Atomic_.Uintptr_asInterface {

}
@:forward @:forward.new abstract Uintptr_static_extension(stdgo._internal.sync.atomic_.Atomic_.Uintptr_static_extension) from stdgo._internal.sync.atomic_.Atomic_.Uintptr_static_extension to stdgo._internal.sync.atomic_.Atomic_.Uintptr_static_extension {

}
@:forward @:forward.new abstract T_noCopy_asInterface(stdgo._internal.sync.atomic_.Atomic_.T_noCopy_asInterface) from stdgo._internal.sync.atomic_.Atomic_.T_noCopy_asInterface to stdgo._internal.sync.atomic_.Atomic_.T_noCopy_asInterface {

}
@:forward @:forward.new abstract T_noCopy_static_extension(stdgo._internal.sync.atomic_.Atomic_.T_noCopy_static_extension) from stdgo._internal.sync.atomic_.Atomic_.T_noCopy_static_extension to stdgo._internal.sync.atomic_.Atomic_.T_noCopy_static_extension {

}
@:forward @:forward.new abstract Value_asInterface(stdgo._internal.sync.atomic_.Atomic_.Value_asInterface) from stdgo._internal.sync.atomic_.Atomic_.Value_asInterface to stdgo._internal.sync.atomic_.Atomic_.Value_asInterface {

}
@:forward @:forward.new abstract Value_static_extension(stdgo._internal.sync.atomic_.Atomic_.Value_static_extension) from stdgo._internal.sync.atomic_.Atomic_.Value_static_extension to stdgo._internal.sync.atomic_.Atomic_.Value_static_extension {

}