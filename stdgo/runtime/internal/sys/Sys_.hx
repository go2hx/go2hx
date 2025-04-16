package stdgo.runtime.internal.sys;
var stackGuardMultiplier : stdgo.GoUInt64 = 1i32;
var defaultPhysPageSize : stdgo.GoUInt64 = 65536i32;
var pCQuantum : stdgo.GoUInt64 = 1i32;
var int64Align : stdgo.GoUInt64 = 4i32;
var minFrameSize : stdgo.GoUInt64 = 0i32;
var stackAlign : stdgo.GoUInt64 = 4i32;
typedef NotInHeap = stdgo._internal.runtime.internal.sys.Sys_notinheap.NotInHeap;
typedef NotInHeapPointer = stdgo._internal.runtime.internal.sys.Sys_notinheappointer.NotInHeapPointer;
/**
    * package sys contains system- and configuration- and architecture-specific
    * constants used by the runtime.
**/
class Sys_ {
    /**
        * TrailingZeros32 returns the number of trailing zero bits in x; the result is 32 for x == 0.
    **/
    static public inline function trailingZeros32(_x:stdgo.GoUInt32):stdgo.GoInt return stdgo._internal.runtime.internal.sys.Sys_trailingzeros32.trailingZeros32(_x);
    /**
        * TrailingZeros64 returns the number of trailing zero bits in x; the result is 64 for x == 0.
    **/
    static public inline function trailingZeros64(_x:stdgo.GoUInt64):stdgo.GoInt return stdgo._internal.runtime.internal.sys.Sys_trailingzeros64.trailingZeros64(_x);
    /**
        * TrailingZeros8 returns the number of trailing zero bits in x; the result is 8 for x == 0.
    **/
    static public inline function trailingZeros8(_x:stdgo.GoUInt8):stdgo.GoInt return stdgo._internal.runtime.internal.sys.Sys_trailingzeros8.trailingZeros8(_x);
    /**
        * Len64 returns the minimum number of bits required to represent x; the result is 0 for x == 0.
        * 
        * nosplit because this is used in src/runtime/histogram.go, which make run in sensitive contexts.
        * 
        * go:nosplit
    **/
    static public inline function len64(_x:stdgo.GoUInt64):stdgo.GoInt return stdgo._internal.runtime.internal.sys.Sys_len64.len64(_x);
    /**
        * OnesCount64 returns the number of one bits ("population count") in x.
    **/
    static public inline function onesCount64(_x:stdgo.GoUInt64):stdgo.GoInt return stdgo._internal.runtime.internal.sys.Sys_onescount64.onesCount64(_x);
    /**
        * LeadingZeros64 returns the number of leading zero bits in x; the result is 64 for x == 0.
    **/
    static public inline function leadingZeros64(_x:stdgo.GoUInt64):stdgo.GoInt return stdgo._internal.runtime.internal.sys.Sys_leadingzeros64.leadingZeros64(_x);
    /**
        * LeadingZeros8 returns the number of leading zero bits in x; the result is 8 for x == 0.
    **/
    static public inline function leadingZeros8(_x:stdgo.GoUInt8):stdgo.GoInt return stdgo._internal.runtime.internal.sys.Sys_leadingzeros8.leadingZeros8(_x);
    /**
        * Len8 returns the minimum number of bits required to represent x; the result is 0 for x == 0.
    **/
    static public inline function len8(_x:stdgo.GoUInt8):stdgo.GoInt return stdgo._internal.runtime.internal.sys.Sys_len8.len8(_x);
    /**
        * Bswap64 returns its input with byte order reversed
        * 0x0102030405060708 -> 0x0807060504030201
    **/
    static public inline function bswap64(_x:stdgo.GoUInt64):stdgo.GoUInt64 return stdgo._internal.runtime.internal.sys.Sys_bswap64.bswap64(_x);
    /**
        * Bswap32 returns its input with byte order reversed
        * 0x01020304 -> 0x04030201
    **/
    static public inline function bswap32(_x:stdgo.GoUInt32):stdgo.GoUInt32 return stdgo._internal.runtime.internal.sys.Sys_bswap32.bswap32(_x);
    /**
        * Prefetch prefetches data from memory addr to cache
        * 
        * AMD64: Produce PREFETCHT0 instruction
        * 
        * ARM64: Produce PRFM instruction with PLDL1KEEP option
    **/
    static public inline function prefetch(_addr:stdgo.GoUIntptr):Void stdgo._internal.runtime.internal.sys.Sys_prefetch.prefetch(_addr);
    /**
        * PrefetchStreamed prefetches data from memory addr, with a hint that this data is being streamed.
        * That is, it is likely to be accessed very soon, but only once. If possible, this will avoid polluting the cache.
        * 
        * AMD64: Produce PREFETCHNTA instruction
        * 
        * ARM64: Produce PRFM instruction with PLDL1STRM option
    **/
    static public inline function prefetchStreamed(_addr:stdgo.GoUIntptr):Void stdgo._internal.runtime.internal.sys.Sys_prefetchstreamed.prefetchStreamed(_addr);
}
