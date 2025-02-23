package stdgo.runtime.internal.sys;
final stackGuardMultiplier : haxe.UInt64 = stdgo._internal.runtime.internal.sys.Sys_stackguardmultiplier.stackGuardMultiplier;
final defaultPhysPageSize : haxe.UInt64 = stdgo._internal.runtime.internal.sys.Sys_defaultphyspagesize.defaultPhysPageSize;
final pCQuantum : haxe.UInt64 = stdgo._internal.runtime.internal.sys.Sys_pcquantum.pCQuantum;
final int64Align : haxe.UInt64 = stdgo._internal.runtime.internal.sys.Sys_int64align.int64Align;
final minFrameSize : haxe.UInt64 = stdgo._internal.runtime.internal.sys.Sys_minframesize.minFrameSize;
final stackAlign : haxe.UInt64 = stdgo._internal.runtime.internal.sys.Sys_stackalign.stackAlign;
@:structInit @:using(stdgo.runtime.internal.sys.Sys_.T_nih_static_extension) @:dox(hide) abstract T_nih(stdgo._internal.runtime.internal.sys.Sys_t_nih.T_nih) from stdgo._internal.runtime.internal.sys.Sys_t_nih.T_nih to stdgo._internal.runtime.internal.sys.Sys_t_nih.T_nih {
    public function new() this = new stdgo._internal.runtime.internal.sys.Sys_t_nih.T_nih();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.internal.sys.Sys_.NotInHeap_static_extension) abstract NotInHeap(stdgo._internal.runtime.internal.sys.Sys_notinheap.NotInHeap) from stdgo._internal.runtime.internal.sys.Sys_notinheap.NotInHeap to stdgo._internal.runtime.internal.sys.Sys_notinheap.NotInHeap {
    public var __1(get, set) : T_nih;
    function get___1():T_nih return this.__1;
    function set___1(v:T_nih):T_nih {
        this.__1 = v;
        return v;
    }
    public function new(?__1:T_nih) this = new stdgo._internal.runtime.internal.sys.Sys_notinheap.NotInHeap(__1);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T_nihPointer = stdgo._internal.runtime.internal.sys.Sys_t_nihpointer.T_nihPointer;
@:dox(hide) class T_nih_static_extension {

}
typedef NotInHeapPointer = stdgo._internal.runtime.internal.sys.Sys_notinheappointer.NotInHeapPointer;
class NotInHeap_static_extension {

}
/**
    * package sys contains system- and configuration- and architecture-specific
    * constants used by the runtime.
**/
class Sys_ {
    /**
        * TrailingZeros32 returns the number of trailing zero bits in x; the result is 32 for x == 0.
    **/
    static public inline function trailingZeros32(_x:std.UInt):StdTypes.Int {
        final _x = (_x : stdgo.GoUInt32);
        return stdgo._internal.runtime.internal.sys.Sys_trailingzeros32.trailingZeros32(_x);
    }
    /**
        * TrailingZeros64 returns the number of trailing zero bits in x; the result is 64 for x == 0.
    **/
    static public inline function trailingZeros64(_x:haxe.UInt64):StdTypes.Int {
        final _x = (_x : stdgo.GoUInt64);
        return stdgo._internal.runtime.internal.sys.Sys_trailingzeros64.trailingZeros64(_x);
    }
    /**
        * TrailingZeros8 returns the number of trailing zero bits in x; the result is 8 for x == 0.
    **/
    static public inline function trailingZeros8(_x:std.UInt):StdTypes.Int {
        final _x = (_x : stdgo.GoUInt8);
        return stdgo._internal.runtime.internal.sys.Sys_trailingzeros8.trailingZeros8(_x);
    }
    /**
        * Len64 returns the minimum number of bits required to represent x; the result is 0 for x == 0.
        * 
        * nosplit because this is used in src/runtime/histogram.go, which make run in sensitive contexts.
        * 
        * go:nosplit
    **/
    static public inline function len64(_x:haxe.UInt64):StdTypes.Int {
        final _x = (_x : stdgo.GoUInt64);
        return stdgo._internal.runtime.internal.sys.Sys_len64.len64(_x);
    }
    /**
        * OnesCount64 returns the number of one bits ("population count") in x.
    **/
    static public inline function onesCount64(_x:haxe.UInt64):StdTypes.Int {
        final _x = (_x : stdgo.GoUInt64);
        return stdgo._internal.runtime.internal.sys.Sys_onescount64.onesCount64(_x);
    }
    /**
        * LeadingZeros64 returns the number of leading zero bits in x; the result is 64 for x == 0.
    **/
    static public inline function leadingZeros64(_x:haxe.UInt64):StdTypes.Int {
        final _x = (_x : stdgo.GoUInt64);
        return stdgo._internal.runtime.internal.sys.Sys_leadingzeros64.leadingZeros64(_x);
    }
    /**
        * LeadingZeros8 returns the number of leading zero bits in x; the result is 8 for x == 0.
    **/
    static public inline function leadingZeros8(_x:std.UInt):StdTypes.Int {
        final _x = (_x : stdgo.GoUInt8);
        return stdgo._internal.runtime.internal.sys.Sys_leadingzeros8.leadingZeros8(_x);
    }
    /**
        * Len8 returns the minimum number of bits required to represent x; the result is 0 for x == 0.
    **/
    static public inline function len8(_x:std.UInt):StdTypes.Int {
        final _x = (_x : stdgo.GoUInt8);
        return stdgo._internal.runtime.internal.sys.Sys_len8.len8(_x);
    }
    /**
        * Bswap64 returns its input with byte order reversed
        * 0x0102030405060708 -> 0x0807060504030201
    **/
    static public inline function bswap64(_x:haxe.UInt64):haxe.UInt64 {
        final _x = (_x : stdgo.GoUInt64);
        return stdgo._internal.runtime.internal.sys.Sys_bswap64.bswap64(_x);
    }
    /**
        * Bswap32 returns its input with byte order reversed
        * 0x01020304 -> 0x04030201
    **/
    static public inline function bswap32(_x:std.UInt):std.UInt {
        final _x = (_x : stdgo.GoUInt32);
        return stdgo._internal.runtime.internal.sys.Sys_bswap32.bswap32(_x);
    }
    /**
        * Prefetch prefetches data from memory addr to cache
        * 
        * AMD64: Produce PREFETCHT0 instruction
        * 
        * ARM64: Produce PRFM instruction with PLDL1KEEP option
    **/
    static public inline function prefetch(_addr:stdgo.GoUIntptr):Void {
        final _addr = (_addr : stdgo.GoUIntptr);
        stdgo._internal.runtime.internal.sys.Sys_prefetch.prefetch(_addr);
    }
    /**
        * PrefetchStreamed prefetches data from memory addr, with a hint that this data is being streamed.
        * That is, it is likely to be accessed very soon, but only once. If possible, this will avoid polluting the cache.
        * 
        * AMD64: Produce PREFETCHNTA instruction
        * 
        * ARM64: Produce PRFM instruction with PLDL1STRM option
    **/
    static public inline function prefetchStreamed(_addr:stdgo.GoUIntptr):Void {
        final _addr = (_addr : stdgo.GoUIntptr);
        stdgo._internal.runtime.internal.sys.Sys_prefetchstreamed.prefetchStreamed(_addr);
    }
}
