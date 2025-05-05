package stdgo.runtime;
var compiler : stdgo.GoString = ("go2hx" : stdgo.GoString);
var dlogEnabled : Bool = false;
var debugLogBytes : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var debugLogStringLimit : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var tracebackInnerFrames : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var tracebackOuterFrames : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var preemptMSupported : Bool = false;
var hashLoad : stdgo.GoFloat32 = (0 : stdgo.GoFloat32);
var ptrSize : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var profBufBlocking : stdgo._internal.runtime.Runtime_t_profbufreadmode.T_profBufReadMode = ((0 : stdgo.GoInt) : stdgo._internal.runtime.Runtime_t_profbufreadmode.T_profBufReadMode);
var profBufNonBlocking : stdgo._internal.runtime.Runtime_t_profbufreadmode.T_profBufReadMode = ((0 : stdgo.GoInt) : stdgo._internal.runtime.Runtime_t_profbufreadmode.T_profBufReadMode);
var runtimeHmapSize : stdgo.GoUIntptr = new stdgo.GoUIntptr(0);
var pageSize : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var pallocChunkPages : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var pageAlloc64Bit : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var pallocSumBytes : stdgo.GoUIntptr = new stdgo.GoUIntptr(0);
var pageCachePages : stdgo.GoUIntptr = new stdgo.GoUIntptr(0);
var semTableSize : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var timeHistSubBucketBits : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var timeHistNumSubBuckets : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var timeHistNumBuckets : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var timeHistMinBucketBits : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var timeHistMaxBucketBits : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var raceenabled : Bool = false;
var gCBackgroundUtilization : stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
var gCGoalUtilization : stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
var defaultHeapMinimum : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var memoryLimitHeapGoalHeadroomPercent : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var memoryLimitMinHeapGoalHeadroom : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var capacityPerProc : stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
var gCCPULimiterUpdatePeriod : stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
var scavengePercent : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var gTrackingPeriod : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var userArenaChunkBytes : stdgo.GoUIntptr = new stdgo.GoUIntptr(0);
var framePointerEnabled : Bool = false;
var gOOS : stdgo.GoString = ("" : stdgo.GoString);
var gOARCH : stdgo.GoString = ("" : stdgo.GoString);
var fmtSprintf(get, set) : (stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> stdgo.GoString;
private function get_fmtSprintf():(stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> stdgo.GoString return stdgo._internal.runtime.Runtime_fmtsprintf.fmtSprintf;
private function set_fmtSprintf(v:(stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> stdgo.GoString):(stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> stdgo.GoString {
        stdgo._internal.runtime.Runtime_fmtsprintf.fmtSprintf = v;
        return v;
    }
var testenvOptimizationOff(get, set) : () -> Bool;
private function get_testenvOptimizationOff():() -> Bool return stdgo._internal.runtime.Runtime_testenvoptimizationoff.testenvOptimizationOff;
private function set_testenvOptimizationOff(v:() -> Bool):() -> Bool {
        stdgo._internal.runtime.Runtime_testenvoptimizationoff.testenvOptimizationOff = v;
        return v;
    }
var memProfileRate(get, set) : stdgo.GoInt;
private function get_memProfileRate():stdgo.GoInt return stdgo._internal.runtime.Runtime_memprofilerate.memProfileRate;
private function set_memProfileRate(v:stdgo.GoInt):stdgo.GoInt {
        stdgo._internal.runtime.Runtime_memprofilerate.memProfileRate = v;
        return v;
    }
var atomicFields(get, set) : stdgo.Slice<stdgo.GoUIntptr>;
private function get_atomicFields():stdgo.Slice<stdgo.GoUIntptr> return stdgo._internal.runtime.Runtime_atomicfields.atomicFields;
private function set_atomicFields(v:stdgo.Slice<stdgo.GoUIntptr>):stdgo.Slice<stdgo.GoUIntptr> {
        stdgo._internal.runtime.Runtime_atomicfields.atomicFields = v;
        return v;
    }
var atomicVariables(get, set) : stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>;
private function get_atomicVariables():stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer> return stdgo._internal.runtime.Runtime_atomicvariables.atomicVariables;
private function set_atomicVariables(v:stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>):stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer> {
        stdgo._internal.runtime.Runtime_atomicvariables.atomicVariables = v;
        return v;
    }
var dlog(get, set) : () -> stdgo.Ref<stdgo._internal.runtime.Runtime_t_dlogger.T_dlogger>;
private function get_dlog():() -> stdgo.Ref<stdgo._internal.runtime.Runtime_t_dlogger.T_dlogger> return stdgo._internal.runtime.Runtime_dlog.dlog;
private function set_dlog(v:() -> stdgo.Ref<stdgo._internal.runtime.Runtime_t_dlogger.T_dlogger>):() -> stdgo.Ref<stdgo._internal.runtime.Runtime_t_dlogger.T_dlogger> {
        stdgo._internal.runtime.Runtime_dlog.dlog = v;
        return v;
    }
var fadd64(get, set) : (stdgo.GoUInt64, stdgo.GoUInt64) -> stdgo.GoUInt64;
private function get_fadd64():(stdgo.GoUInt64, stdgo.GoUInt64) -> stdgo.GoUInt64 return stdgo._internal.runtime.Runtime_fadd64.fadd64;
private function set_fadd64(v:(stdgo.GoUInt64, stdgo.GoUInt64) -> stdgo.GoUInt64):(stdgo.GoUInt64, stdgo.GoUInt64) -> stdgo.GoUInt64 {
        stdgo._internal.runtime.Runtime_fadd64.fadd64 = v;
        return v;
    }
var fsub64(get, set) : (stdgo.GoUInt64, stdgo.GoUInt64) -> stdgo.GoUInt64;
private function get_fsub64():(stdgo.GoUInt64, stdgo.GoUInt64) -> stdgo.GoUInt64 return stdgo._internal.runtime.Runtime_fsub64.fsub64;
private function set_fsub64(v:(stdgo.GoUInt64, stdgo.GoUInt64) -> stdgo.GoUInt64):(stdgo.GoUInt64, stdgo.GoUInt64) -> stdgo.GoUInt64 {
        stdgo._internal.runtime.Runtime_fsub64.fsub64 = v;
        return v;
    }
var fmul64(get, set) : (stdgo.GoUInt64, stdgo.GoUInt64) -> stdgo.GoUInt64;
private function get_fmul64():(stdgo.GoUInt64, stdgo.GoUInt64) -> stdgo.GoUInt64 return stdgo._internal.runtime.Runtime_fmul64.fmul64;
private function set_fmul64(v:(stdgo.GoUInt64, stdgo.GoUInt64) -> stdgo.GoUInt64):(stdgo.GoUInt64, stdgo.GoUInt64) -> stdgo.GoUInt64 {
        stdgo._internal.runtime.Runtime_fmul64.fmul64 = v;
        return v;
    }
var fdiv64(get, set) : (stdgo.GoUInt64, stdgo.GoUInt64) -> stdgo.GoUInt64;
private function get_fdiv64():(stdgo.GoUInt64, stdgo.GoUInt64) -> stdgo.GoUInt64 return stdgo._internal.runtime.Runtime_fdiv64.fdiv64;
private function set_fdiv64(v:(stdgo.GoUInt64, stdgo.GoUInt64) -> stdgo.GoUInt64):(stdgo.GoUInt64, stdgo.GoUInt64) -> stdgo.GoUInt64 {
        stdgo._internal.runtime.Runtime_fdiv64.fdiv64 = v;
        return v;
    }
var f64to32(get, set) : stdgo.GoUInt64 -> stdgo.GoUInt32;
private function get_f64to32():stdgo.GoUInt64 -> stdgo.GoUInt32 return stdgo._internal.runtime.Runtime_f64to32.f64to32;
private function set_f64to32(v:stdgo.GoUInt64 -> stdgo.GoUInt32):stdgo.GoUInt64 -> stdgo.GoUInt32 {
        stdgo._internal.runtime.Runtime_f64to32.f64to32 = v;
        return v;
    }
var f32to64(get, set) : stdgo.GoUInt32 -> stdgo.GoUInt64;
private function get_f32to64():stdgo.GoUInt32 -> stdgo.GoUInt64 return stdgo._internal.runtime.Runtime_f32to64.f32to64;
private function set_f32to64(v:stdgo.GoUInt32 -> stdgo.GoUInt64):stdgo.GoUInt32 -> stdgo.GoUInt64 {
        stdgo._internal.runtime.Runtime_f32to64.f32to64 = v;
        return v;
    }
var fcmp64(get, set) : (stdgo.GoUInt64, stdgo.GoUInt64) -> stdgo.Tuple<stdgo.GoInt32, Bool>;
private function get_fcmp64():(stdgo.GoUInt64, stdgo.GoUInt64) -> stdgo.Tuple<stdgo.GoInt32, Bool> return stdgo._internal.runtime.Runtime_fcmp64.fcmp64;
private function set_fcmp64(v:(stdgo.GoUInt64, stdgo.GoUInt64) -> stdgo.Tuple<stdgo.GoInt32, Bool>):(stdgo.GoUInt64, stdgo.GoUInt64) -> { var _0 : stdgo.GoInt32; var _1 : Bool; } {
        stdgo._internal.runtime.Runtime_fcmp64.fcmp64 = v;
        return v;
    }
var fintto64(get, set) : stdgo.GoInt64 -> stdgo.GoUInt64;
private function get_fintto64():stdgo.GoInt64 -> stdgo.GoUInt64 return stdgo._internal.runtime.Runtime_fintto64.fintto64;
private function set_fintto64(v:stdgo.GoInt64 -> stdgo.GoUInt64):stdgo.GoInt64 -> stdgo.GoUInt64 {
        stdgo._internal.runtime.Runtime_fintto64.fintto64 = v;
        return v;
    }
var f64toint(get, set) : stdgo.GoUInt64 -> stdgo.Tuple<stdgo.GoInt64, Bool>;
private function get_f64toint():stdgo.GoUInt64 -> stdgo.Tuple<stdgo.GoInt64, Bool> return stdgo._internal.runtime.Runtime_f64toint.f64toint;
private function set_f64toint(v:stdgo.GoUInt64 -> stdgo.Tuple<stdgo.GoInt64, Bool>):stdgo.GoUInt64 -> { var _0 : stdgo.GoInt64; var _1 : Bool; } {
        stdgo._internal.runtime.Runtime_f64toint.f64toint = v;
        return v;
    }
var entersyscall(get, set) : () -> Void;
private function get_entersyscall():() -> Void return stdgo._internal.runtime.Runtime_entersyscall.entersyscall;
private function set_entersyscall(v:() -> Void):() -> Void {
        stdgo._internal.runtime.Runtime_entersyscall.entersyscall = v;
        return v;
    }
var exitsyscall(get, set) : () -> Void;
private function get_exitsyscall():() -> Void return stdgo._internal.runtime.Runtime_exitsyscall.exitsyscall;
private function set_exitsyscall(v:() -> Void):() -> Void {
        stdgo._internal.runtime.Runtime_exitsyscall.exitsyscall = v;
        return v;
    }
var lockedOSThread(get, set) : () -> Bool;
private function get_lockedOSThread():() -> Bool return stdgo._internal.runtime.Runtime_lockedosthread.lockedOSThread;
private function set_lockedOSThread(v:() -> Bool):() -> Bool {
        stdgo._internal.runtime.Runtime_lockedosthread.lockedOSThread = v;
        return v;
    }
var xadduintptr(get, set) : (stdgo.Pointer<stdgo.GoUIntptr>, stdgo.GoUIntptr) -> stdgo.GoUIntptr;
private function get_xadduintptr():(stdgo.Pointer<stdgo.GoUIntptr>, stdgo.GoUIntptr) -> stdgo.GoUIntptr return stdgo._internal.runtime.Runtime_xadduintptr.xadduintptr;
private function set_xadduintptr(v:(stdgo.Pointer<stdgo.GoUIntptr>, stdgo.GoUIntptr) -> stdgo.GoUIntptr):(stdgo.Pointer<stdgo.GoUIntptr>, stdgo.GoUIntptr) -> stdgo.GoUIntptr {
        stdgo._internal.runtime.Runtime_xadduintptr.xadduintptr = v;
        return v;
    }
var fastlog2(get, set) : stdgo.GoFloat64 -> stdgo.GoFloat64;
private function get_fastlog2():stdgo.GoFloat64 -> stdgo.GoFloat64 return stdgo._internal.runtime.Runtime_fastlog2.fastlog2;
private function set_fastlog2(v:stdgo.GoFloat64 -> stdgo.GoFloat64):stdgo.GoFloat64 -> stdgo.GoFloat64 {
        stdgo._internal.runtime.Runtime_fastlog2.fastlog2 = v;
        return v;
    }
var atoi(get, set) : stdgo.GoString -> stdgo.Tuple<stdgo.GoInt, Bool>;
private function get_atoi():stdgo.GoString -> stdgo.Tuple<stdgo.GoInt, Bool> return stdgo._internal.runtime.Runtime_atoi.atoi;
private function set_atoi(v:stdgo.GoString -> stdgo.Tuple<stdgo.GoInt, Bool>):stdgo.GoString -> { var _0 : stdgo.GoInt; var _1 : Bool; } {
        stdgo._internal.runtime.Runtime_atoi.atoi = v;
        return v;
    }
var atoi32(get, set) : stdgo.GoString -> stdgo.Tuple<stdgo.GoInt32, Bool>;
private function get_atoi32():stdgo.GoString -> stdgo.Tuple<stdgo.GoInt32, Bool> return stdgo._internal.runtime.Runtime_atoi32.atoi32;
private function set_atoi32(v:stdgo.GoString -> stdgo.Tuple<stdgo.GoInt32, Bool>):stdgo.GoString -> { var _0 : stdgo.GoInt32; var _1 : Bool; } {
        stdgo._internal.runtime.Runtime_atoi32.atoi32 = v;
        return v;
    }
var parseByteCount(get, set) : stdgo.GoString -> stdgo.Tuple<stdgo.GoInt64, Bool>;
private function get_parseByteCount():stdgo.GoString -> stdgo.Tuple<stdgo.GoInt64, Bool> return stdgo._internal.runtime.Runtime_parsebytecount.parseByteCount;
private function set_parseByteCount(v:stdgo.GoString -> stdgo.Tuple<stdgo.GoInt64, Bool>):stdgo.GoString -> { var _0 : stdgo.GoInt64; var _1 : Bool; } {
        stdgo._internal.runtime.Runtime_parsebytecount.parseByteCount = v;
        return v;
    }
var nanotime(get, set) : () -> stdgo.GoInt64;
private function get_nanotime():() -> stdgo.GoInt64 return stdgo._internal.runtime.Runtime_nanotime.nanotime;
private function set_nanotime(v:() -> stdgo.GoInt64):() -> stdgo.GoInt64 {
        stdgo._internal.runtime.Runtime_nanotime.nanotime = v;
        return v;
    }
var netpollBreak(get, set) : () -> Void;
private function get_netpollBreak():() -> Void return stdgo._internal.runtime.Runtime_netpollbreak.netpollBreak;
private function set_netpollBreak(v:() -> Void):() -> Void {
        stdgo._internal.runtime.Runtime_netpollbreak.netpollBreak = v;
        return v;
    }
var usleep(get, set) : stdgo.GoUInt32 -> Void;
private function get_usleep():stdgo.GoUInt32 -> Void return stdgo._internal.runtime.Runtime_usleep.usleep;
private function set_usleep(v:stdgo.GoUInt32 -> Void):stdgo.GoUInt32 -> Void {
        stdgo._internal.runtime.Runtime_usleep.usleep = v;
        return v;
    }
var physPageSize(get, set) : stdgo.GoUIntptr;
private function get_physPageSize():stdgo.GoUIntptr return stdgo._internal.runtime.Runtime_physpagesize.physPageSize;
private function set_physPageSize(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        stdgo._internal.runtime.Runtime_physpagesize.physPageSize = v;
        return v;
    }
var physHugePageSize(get, set) : stdgo.GoUIntptr;
private function get_physHugePageSize():stdgo.GoUIntptr return stdgo._internal.runtime.Runtime_physhugepagesize.physHugePageSize;
private function set_physHugePageSize(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        stdgo._internal.runtime.Runtime_physhugepagesize.physHugePageSize = v;
        return v;
    }
var netpollGenericInit(get, set) : () -> Void;
private function get_netpollGenericInit():() -> Void return stdgo._internal.runtime.Runtime_netpollgenericinit.netpollGenericInit;
private function set_netpollGenericInit(v:() -> Void):() -> Void {
        stdgo._internal.runtime.Runtime_netpollgenericinit.netpollGenericInit = v;
        return v;
    }
var memmove(get, set) : (stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> Void;
private function get_memmove():(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> Void return stdgo._internal.runtime.Runtime_memmove.memmove;
private function set_memmove(v:(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> Void):(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> Void {
        stdgo._internal.runtime.Runtime_memmove.memmove = v;
        return v;
    }
var memclrNoHeapPointers(get, set) : (stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> Void;
private function get_memclrNoHeapPointers():(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> Void return stdgo._internal.runtime.Runtime_memclrnoheappointers.memclrNoHeapPointers;
private function set_memclrNoHeapPointers(v:(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> Void):(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> Void {
        stdgo._internal.runtime.Runtime_memclrnoheappointers.memclrNoHeapPointers = v;
        return v;
    }
var cgoCheckPointer(get, set) : (stdgo.AnyInterface, stdgo.AnyInterface) -> Void;
private function get_cgoCheckPointer():(stdgo.AnyInterface, stdgo.AnyInterface) -> Void return stdgo._internal.runtime.Runtime_cgocheckpointer.cgoCheckPointer;
private function set_cgoCheckPointer(v:(stdgo.AnyInterface, stdgo.AnyInterface) -> Void):(stdgo.AnyInterface, stdgo.AnyInterface) -> Void {
        stdgo._internal.runtime.Runtime_cgocheckpointer.cgoCheckPointer = v;
        return v;
    }
var lockPartialOrder(get, set) : stdgo.Slice<stdgo.Slice<stdgo._internal.runtime.Runtime_t_lockrank.T_lockRank>>;
private function get_lockPartialOrder():stdgo.Slice<stdgo.Slice<stdgo._internal.runtime.Runtime_t_lockrank.T_lockRank>> return stdgo._internal.runtime.Runtime_lockpartialorder.lockPartialOrder;
private function set_lockPartialOrder(v:stdgo.Slice<stdgo.Slice<stdgo._internal.runtime.Runtime_t_lockrank.T_lockRank>>):stdgo.Slice<stdgo.Slice<stdgo._internal.runtime.Runtime_t_lockrank.T_lockRank>> {
        stdgo._internal.runtime.Runtime_lockpartialorder.lockPartialOrder = v;
        return v;
    }
var stringHash(get, set) : (stdgo.GoString, stdgo.GoUIntptr) -> stdgo.GoUIntptr;
private function get_stringHash():(stdgo.GoString, stdgo.GoUIntptr) -> stdgo.GoUIntptr return stdgo._internal.runtime.Runtime_stringhash.stringHash;
private function set_stringHash(v:(stdgo.GoString, stdgo.GoUIntptr) -> stdgo.GoUIntptr):(stdgo.GoString, stdgo.GoUIntptr) -> stdgo.GoUIntptr {
        stdgo._internal.runtime.Runtime_stringhash.stringHash = v;
        return v;
    }
var bytesHash(get, set) : (stdgo.Slice<stdgo.GoUInt8>, stdgo.GoUIntptr) -> stdgo.GoUIntptr;
private function get_bytesHash():(stdgo.Slice<stdgo.GoUInt8>, stdgo.GoUIntptr) -> stdgo.GoUIntptr return stdgo._internal.runtime.Runtime_byteshash.bytesHash;
private function set_bytesHash(v:(stdgo.Slice<stdgo.GoUInt8>, stdgo.GoUIntptr) -> stdgo.GoUIntptr):(stdgo.Slice<stdgo.GoUInt8>, stdgo.GoUIntptr) -> stdgo.GoUIntptr {
        stdgo._internal.runtime.Runtime_byteshash.bytesHash = v;
        return v;
    }
var int32Hash(get, set) : (stdgo.GoUInt32, stdgo.GoUIntptr) -> stdgo.GoUIntptr;
private function get_int32Hash():(stdgo.GoUInt32, stdgo.GoUIntptr) -> stdgo.GoUIntptr return stdgo._internal.runtime.Runtime_int32hash.int32Hash;
private function set_int32Hash(v:(stdgo.GoUInt32, stdgo.GoUIntptr) -> stdgo.GoUIntptr):(stdgo.GoUInt32, stdgo.GoUIntptr) -> stdgo.GoUIntptr {
        stdgo._internal.runtime.Runtime_int32hash.int32Hash = v;
        return v;
    }
var int64Hash(get, set) : (stdgo.GoUInt64, stdgo.GoUIntptr) -> stdgo.GoUIntptr;
private function get_int64Hash():(stdgo.GoUInt64, stdgo.GoUIntptr) -> stdgo.GoUIntptr return stdgo._internal.runtime.Runtime_int64hash.int64Hash;
private function set_int64Hash(v:(stdgo.GoUInt64, stdgo.GoUIntptr) -> stdgo.GoUIntptr):(stdgo.GoUInt64, stdgo.GoUIntptr) -> stdgo.GoUIntptr {
        stdgo._internal.runtime.Runtime_int64hash.int64Hash = v;
        return v;
    }
var memHash(get, set) : (stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr, stdgo.GoUIntptr) -> stdgo.GoUIntptr;
private function get_memHash():(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr, stdgo.GoUIntptr) -> stdgo.GoUIntptr return stdgo._internal.runtime.Runtime_memhash.memHash;
private function set_memHash(v:(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr, stdgo.GoUIntptr) -> stdgo.GoUIntptr):(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr, stdgo.GoUIntptr) -> stdgo.GoUIntptr {
        stdgo._internal.runtime.Runtime_memhash.memHash = v;
        return v;
    }
var memHash32(get, set) : (stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> stdgo.GoUIntptr;
private function get_memHash32():(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> stdgo.GoUIntptr return stdgo._internal.runtime.Runtime_memhash32.memHash32;
private function set_memHash32(v:(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> stdgo.GoUIntptr):(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> stdgo.GoUIntptr {
        stdgo._internal.runtime.Runtime_memhash32.memHash32 = v;
        return v;
    }
var memHash64(get, set) : (stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> stdgo.GoUIntptr;
private function get_memHash64():(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> stdgo.GoUIntptr return stdgo._internal.runtime.Runtime_memhash64.memHash64;
private function set_memHash64(v:(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> stdgo.GoUIntptr):(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> stdgo.GoUIntptr {
        stdgo._internal.runtime.Runtime_memhash64.memHash64 = v;
        return v;
    }
var efaceHash(get, set) : (stdgo.AnyInterface, stdgo.GoUIntptr) -> stdgo.GoUIntptr;
private function get_efaceHash():(stdgo.AnyInterface, stdgo.GoUIntptr) -> stdgo.GoUIntptr return stdgo._internal.runtime.Runtime_efacehash.efaceHash;
private function set_efaceHash(v:(stdgo.AnyInterface, stdgo.GoUIntptr) -> stdgo.GoUIntptr):(stdgo.AnyInterface, stdgo.GoUIntptr) -> stdgo.GoUIntptr {
        stdgo._internal.runtime.Runtime_efacehash.efaceHash = v;
        return v;
    }
var ifaceHash(get, set) : (stdgo.AnyInterface, stdgo.GoUIntptr) -> stdgo.GoUIntptr;
private function get_ifaceHash():(stdgo.AnyInterface, stdgo.GoUIntptr) -> stdgo.GoUIntptr return stdgo._internal.runtime.Runtime_ifacehash.ifaceHash;
private function set_ifaceHash(v:(stdgo.AnyInterface, stdgo.GoUIntptr) -> stdgo.GoUIntptr):(stdgo.AnyInterface, stdgo.GoUIntptr) -> stdgo.GoUIntptr {
        stdgo._internal.runtime.Runtime_ifacehash.ifaceHash = v;
        return v;
    }
var useAeshash(get, set) : stdgo.Pointer<Bool>;
private function get_useAeshash():stdgo.Pointer<Bool> return stdgo._internal.runtime.Runtime_useaeshash.useAeshash;
private function set_useAeshash(v:stdgo.Pointer<Bool>):stdgo.Pointer<Bool> {
        stdgo._internal.runtime.Runtime_useaeshash.useAeshash = v;
        return v;
    }
var open(get, set) : (stdgo.Pointer<stdgo.GoUInt8>, stdgo.GoInt32, stdgo.GoInt32) -> stdgo.GoInt32;
private function get_open():(stdgo.Pointer<stdgo.GoUInt8>, stdgo.GoInt32, stdgo.GoInt32) -> stdgo.GoInt32 return stdgo._internal.runtime.Runtime_open.open;
private function set_open(v:(stdgo.Pointer<stdgo.GoUInt8>, stdgo.GoInt32, stdgo.GoInt32) -> stdgo.GoInt32):(stdgo.Pointer<stdgo.GoUInt8>, stdgo.GoInt32, stdgo.GoInt32) -> stdgo.GoInt32 {
        stdgo._internal.runtime.Runtime_open.open = v;
        return v;
    }
var close(get, set) : stdgo.GoInt32 -> stdgo.GoInt32;
private function get_close():stdgo.GoInt32 -> stdgo.GoInt32 return stdgo._internal.runtime.Runtime_close.close;
private function set_close(v:stdgo.GoInt32 -> stdgo.GoInt32):stdgo.GoInt32 -> stdgo.GoInt32 {
        stdgo._internal.runtime.Runtime_close.close = v;
        return v;
    }
var read(get, set) : (stdgo.GoInt32, stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoInt32) -> stdgo.GoInt32;
private function get_read():(stdgo.GoInt32, stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoInt32) -> stdgo.GoInt32 return stdgo._internal.runtime.Runtime_read.read;
private function set_read(v:(stdgo.GoInt32, stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoInt32) -> stdgo.GoInt32):(stdgo.GoInt32, stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoInt32) -> stdgo.GoInt32 {
        stdgo._internal.runtime.Runtime_read.read = v;
        return v;
    }
var write(get, set) : (stdgo.GoUIntptr, stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoInt32) -> stdgo.GoInt32;
private function get_write():(stdgo.GoUIntptr, stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoInt32) -> stdgo.GoInt32 return stdgo._internal.runtime.Runtime_write.write;
private function set_write(v:(stdgo.GoUIntptr, stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoInt32) -> stdgo.GoInt32):(stdgo.GoUIntptr, stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoInt32) -> stdgo.GoInt32 {
        stdgo._internal.runtime.Runtime_write.write = v;
        return v;
    }
var forceGCPeriod(get, set) : stdgo.Pointer<stdgo.GoInt64>;
private function get_forceGCPeriod():stdgo.Pointer<stdgo.GoInt64> return stdgo._internal.runtime.Runtime_forcegcperiod.forceGCPeriod;
private function set_forceGCPeriod(v:stdgo.Pointer<stdgo.GoInt64>):stdgo.Pointer<stdgo.GoInt64> {
        stdgo._internal.runtime.Runtime_forcegcperiod.forceGCPeriod = v;
        return v;
    }
var readUnaligned32(get, set) : stdgo._internal.unsafe.Unsafe.UnsafePointer -> stdgo.GoUInt32;
private function get_readUnaligned32():stdgo._internal.unsafe.Unsafe.UnsafePointer -> stdgo.GoUInt32 return stdgo._internal.runtime.Runtime_readunaligned32.readUnaligned32;
private function set_readUnaligned32(v:stdgo._internal.unsafe.Unsafe.UnsafePointer -> stdgo.GoUInt32):stdgo._internal.unsafe.Unsafe.UnsafePointer -> stdgo.GoUInt32 {
        stdgo._internal.runtime.Runtime_readunaligned32.readUnaligned32 = v;
        return v;
    }
var readUnaligned64(get, set) : stdgo._internal.unsafe.Unsafe.UnsafePointer -> stdgo.GoUInt64;
private function get_readUnaligned64():stdgo._internal.unsafe.Unsafe.UnsafePointer -> stdgo.GoUInt64 return stdgo._internal.runtime.Runtime_readunaligned64.readUnaligned64;
private function set_readUnaligned64(v:stdgo._internal.unsafe.Unsafe.UnsafePointer -> stdgo.GoUInt64):stdgo._internal.unsafe.Unsafe.UnsafePointer -> stdgo.GoUInt64 {
        stdgo._internal.runtime.Runtime_readunaligned64.readUnaligned64 = v;
        return v;
    }
var casGStatusAlwaysTrack(get, set) : stdgo.Pointer<Bool>;
private function get_casGStatusAlwaysTrack():stdgo.Pointer<Bool> return stdgo._internal.runtime.Runtime_casgstatusalwaystrack.casGStatusAlwaysTrack;
private function set_casGStatusAlwaysTrack(v:stdgo.Pointer<Bool>):stdgo.Pointer<Bool> {
        stdgo._internal.runtime.Runtime_casgstatusalwaystrack.casGStatusAlwaysTrack = v;
        return v;
    }
var baseChunkIdx(get, set) : ChunkIdx;
private function get_baseChunkIdx():ChunkIdx return stdgo._internal.runtime.Runtime_basechunkidx.baseChunkIdx;
private function set_baseChunkIdx(v:ChunkIdx):stdgo._internal.runtime.Runtime_chunkidx.ChunkIdx {
        stdgo._internal.runtime.Runtime_basechunkidx.baseChunkIdx = v;
        return v;
    }
var semacquire(get, set) : stdgo.Pointer<stdgo.GoUInt32> -> Void;
private function get_semacquire():stdgo.Pointer<stdgo.GoUInt32> -> Void return stdgo._internal.runtime.Runtime_semacquire.semacquire;
private function set_semacquire(v:stdgo.Pointer<stdgo.GoUInt32> -> Void):stdgo.Pointer<stdgo.GoUInt32> -> Void {
        stdgo._internal.runtime.Runtime_semacquire.semacquire = v;
        return v;
    }
var semrelease1(get, set) : (stdgo.Pointer<stdgo.GoUInt32>, Bool, stdgo.GoInt) -> Void;
private function get_semrelease1():(stdgo.Pointer<stdgo.GoUInt32>, Bool, stdgo.GoInt) -> Void return stdgo._internal.runtime.Runtime_semrelease1.semrelease1;
private function set_semrelease1(v:(stdgo.Pointer<stdgo.GoUInt32>, Bool, stdgo.GoInt) -> Void):(stdgo.Pointer<stdgo.GoUInt32>, Bool, stdgo.GoInt) -> Void {
        stdgo._internal.runtime.Runtime_semrelease1.semrelease1 = v;
        return v;
    }
var timeHistogramMetricsBuckets(get, set) : () -> stdgo.Slice<stdgo.GoFloat64>;
private function get_timeHistogramMetricsBuckets():() -> stdgo.Slice<stdgo.GoFloat64> return stdgo._internal.runtime.Runtime_timehistogrammetricsbuckets.timeHistogramMetricsBuckets;
private function set_timeHistogramMetricsBuckets(v:() -> stdgo.Slice<stdgo.GoFloat64>):() -> stdgo.Slice<stdgo.GoFloat64> {
        stdgo._internal.runtime.Runtime_timehistogrammetricsbuckets.timeHistogramMetricsBuckets = v;
        return v;
    }
var gCTestMoveStackOnNextCall(get, set) : () -> Void;
private function get_gCTestMoveStackOnNextCall():() -> Void return stdgo._internal.runtime.Runtime_gctestmovestackonnextcall.gCTestMoveStackOnNextCall;
private function set_gCTestMoveStackOnNextCall(v:() -> Void):() -> Void {
        stdgo._internal.runtime.Runtime_gctestmovestackonnextcall.gCTestMoveStackOnNextCall = v;
        return v;
    }
var timediv(get, set) : (stdgo.GoInt64, stdgo.GoInt32, stdgo.Pointer<stdgo.GoInt32>) -> stdgo.GoInt32;
private function get_timediv():(stdgo.GoInt64, stdgo.GoInt32, stdgo.Pointer<stdgo.GoInt32>) -> stdgo.GoInt32 return stdgo._internal.runtime.Runtime_timediv.timediv;
private function set_timediv(v:(stdgo.GoInt64, stdgo.GoInt32, stdgo.Pointer<stdgo.GoInt32>) -> stdgo.GoInt32):(stdgo.GoInt64, stdgo.GoInt32, stdgo.Pointer<stdgo.GoInt32>) -> stdgo.GoInt32 {
        stdgo._internal.runtime.Runtime_timediv.timediv = v;
        return v;
    }
var zeroBase(get, set) : stdgo._internal.unsafe.Unsafe.UnsafePointer;
private function get_zeroBase():stdgo._internal.unsafe.Unsafe.UnsafePointer return stdgo._internal.runtime.Runtime_zerobase.zeroBase;
private function set_zeroBase(v:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        stdgo._internal.runtime.Runtime_zerobase.zeroBase = v;
        return v;
    }
var alignUp(get, set) : (stdgo.GoUIntptr, stdgo.GoUIntptr) -> stdgo.GoUIntptr;
private function get_alignUp():(stdgo.GoUIntptr, stdgo.GoUIntptr) -> stdgo.GoUIntptr return stdgo._internal.runtime.Runtime_alignup.alignUp;
private function set_alignUp(v:(stdgo.GoUIntptr, stdgo.GoUIntptr) -> stdgo.GoUIntptr):(stdgo.GoUIntptr, stdgo.GoUIntptr) -> stdgo.GoUIntptr {
        stdgo._internal.runtime.Runtime_alignup.alignUp = v;
        return v;
    }
var isPinned(get, set) : stdgo._internal.unsafe.Unsafe.UnsafePointer -> Bool;
private function get_isPinned():stdgo._internal.unsafe.Unsafe.UnsafePointer -> Bool return stdgo._internal.runtime.Runtime_ispinned.isPinned;
private function set_isPinned(v:stdgo._internal.unsafe.Unsafe.UnsafePointer -> Bool):stdgo._internal.unsafe.Unsafe.UnsafePointer -> Bool {
        stdgo._internal.runtime.Runtime_ispinned.isPinned = v;
        return v;
    }
var getPinCounter(get, set) : stdgo._internal.unsafe.Unsafe.UnsafePointer -> stdgo.Pointer<stdgo.GoUIntptr>;
private function get_getPinCounter():stdgo._internal.unsafe.Unsafe.UnsafePointer -> stdgo.Pointer<stdgo.GoUIntptr> return stdgo._internal.runtime.Runtime_getpincounter.getPinCounter;
private function set_getPinCounter(v:stdgo._internal.unsafe.Unsafe.UnsafePointer -> stdgo.Pointer<stdgo.GoUIntptr>):stdgo._internal.unsafe.Unsafe.UnsafePointer -> stdgo.Pointer<stdgo.GoUIntptr> {
        stdgo._internal.runtime.Runtime_getpincounter.getPinCounter = v;
        return v;
    }
typedef Error = stdgo._internal.runtime.Runtime_error.Error;
typedef TestingT = stdgo._internal.runtime.Runtime_testingt.TestingT;
typedef TypeAssertionError = stdgo._internal.runtime.Runtime_typeassertionerror.TypeAssertionError;
typedef LFNode = stdgo._internal.runtime.Runtime_lfnode.LFNode;
typedef RWMutex = stdgo._internal.runtime.Runtime_rwmutex.RWMutex;
typedef AddrRange = stdgo._internal.runtime.Runtime_addrrange.AddrRange;
typedef AddrRanges = stdgo._internal.runtime.Runtime_addrranges.AddrRanges;
typedef BitRange = stdgo._internal.runtime.Runtime_bitrange.BitRange;
typedef BitsMismatch = stdgo._internal.runtime.Runtime_bitsmismatch.BitsMismatch;
typedef SemTable = stdgo._internal.runtime.Runtime_semtable.SemTable;
typedef GCController = stdgo._internal.runtime.Runtime_gccontroller.GCController;
typedef GCControllerReviseDelta = stdgo._internal.runtime.Runtime_gccontrollerrevisedelta.GCControllerReviseDelta;
typedef PIController = stdgo._internal.runtime.Runtime_picontroller.PIController;
typedef GCCPULimiter = stdgo._internal.runtime.Runtime_gccpulimiter.GCCPULimiter;
typedef Scavenger = stdgo._internal.runtime.Runtime_scavenger.Scavenger;
typedef ScavengeIndex = stdgo._internal.runtime.Runtime_scavengeindex.ScavengeIndex;
typedef UserArena = stdgo._internal.runtime.Runtime_userarena.UserArena;
typedef StackRecord = stdgo._internal.runtime.Runtime_stackrecord.StackRecord;
typedef MemProfileRecord = stdgo._internal.runtime.Runtime_memprofilerecord.MemProfileRecord;
typedef BlockProfileRecord = stdgo._internal.runtime.Runtime_blockprofilerecord.BlockProfileRecord;
typedef MemStats = stdgo._internal.runtime.Runtime_memstats.MemStats;
typedef PanicNilError = stdgo._internal.runtime.Runtime_panicnilerror.PanicNilError;
typedef Pinner = stdgo._internal.runtime.Runtime_pinner.Pinner;
typedef Frames = stdgo._internal.runtime.Runtime_frames.Frames;
typedef Frame = stdgo._internal.runtime.Runtime_frame.Frame;
typedef Func = stdgo._internal.runtime.Runtime_func.Func;
typedef LockRank = stdgo._internal.runtime.Runtime_lockrank.LockRank;
typedef ProfBuf = stdgo._internal.runtime.Runtime_profbuf.ProfBuf;
typedef G = stdgo._internal.runtime.Runtime_g.G;
typedef Sudog = stdgo._internal.runtime.Runtime_sudog.Sudog;
typedef PallocSum = stdgo._internal.runtime.Runtime_pallocsum.PallocSum;
typedef PallocBits = stdgo._internal.runtime.Runtime_pallocbits.PallocBits;
typedef PallocData = stdgo._internal.runtime.Runtime_pallocdata.PallocData;
typedef PageCache = stdgo._internal.runtime.Runtime_pagecache.PageCache;
typedef ChunkIdx = stdgo._internal.runtime.Runtime_chunkidx.ChunkIdx;
typedef PageAlloc = stdgo._internal.runtime.Runtime_pagealloc.PageAlloc;
typedef MSpan = stdgo._internal.runtime.Runtime_mspan.MSpan;
typedef TimeHistogram = stdgo._internal.runtime.Runtime_timehistogram.TimeHistogram;
typedef TypeAssertionErrorPointer = stdgo._internal.runtime.Runtime_typeassertionerrorpointer.TypeAssertionErrorPointer;
typedef LFNodePointer = stdgo._internal.runtime.Runtime_lfnodepointer.LFNodePointer;
typedef RWMutexPointer = stdgo._internal.runtime.Runtime_rwmutexpointer.RWMutexPointer;
typedef AddrRangePointer = stdgo._internal.runtime.Runtime_addrrangepointer.AddrRangePointer;
typedef AddrRangesPointer = stdgo._internal.runtime.Runtime_addrrangespointer.AddrRangesPointer;
typedef BitRangePointer = stdgo._internal.runtime.Runtime_bitrangepointer.BitRangePointer;
typedef BitsMismatchPointer = stdgo._internal.runtime.Runtime_bitsmismatchpointer.BitsMismatchPointer;
typedef SemTablePointer = stdgo._internal.runtime.Runtime_semtablepointer.SemTablePointer;
typedef GCControllerPointer = stdgo._internal.runtime.Runtime_gccontrollerpointer.GCControllerPointer;
typedef GCControllerReviseDeltaPointer = stdgo._internal.runtime.Runtime_gccontrollerrevisedeltapointer.GCControllerReviseDeltaPointer;
typedef PIControllerPointer = stdgo._internal.runtime.Runtime_picontrollerpointer.PIControllerPointer;
typedef GCCPULimiterPointer = stdgo._internal.runtime.Runtime_gccpulimiterpointer.GCCPULimiterPointer;
typedef ScavengerPointer = stdgo._internal.runtime.Runtime_scavengerpointer.ScavengerPointer;
typedef ScavengeIndexPointer = stdgo._internal.runtime.Runtime_scavengeindexpointer.ScavengeIndexPointer;
typedef UserArenaPointer = stdgo._internal.runtime.Runtime_userarenapointer.UserArenaPointer;
typedef StackRecordPointer = stdgo._internal.runtime.Runtime_stackrecordpointer.StackRecordPointer;
typedef MemProfileRecordPointer = stdgo._internal.runtime.Runtime_memprofilerecordpointer.MemProfileRecordPointer;
typedef BlockProfileRecordPointer = stdgo._internal.runtime.Runtime_blockprofilerecordpointer.BlockProfileRecordPointer;
typedef MemStatsPointer = stdgo._internal.runtime.Runtime_memstatspointer.MemStatsPointer;
typedef PanicNilErrorPointer = stdgo._internal.runtime.Runtime_panicnilerrorpointer.PanicNilErrorPointer;
typedef PinnerPointer = stdgo._internal.runtime.Runtime_pinnerpointer.PinnerPointer;
typedef FramesPointer = stdgo._internal.runtime.Runtime_framespointer.FramesPointer;
typedef FramePointer = stdgo._internal.runtime.Runtime_framepointer.FramePointer;
typedef FuncPointer = stdgo._internal.runtime.Runtime_funcpointer.FuncPointer;
typedef LockRankPointer = stdgo._internal.runtime.Runtime_lockrankpointer.LockRankPointer;
typedef ProfBufPointer = stdgo._internal.runtime.Runtime_profbufpointer.ProfBufPointer;
typedef GPointer = stdgo._internal.runtime.Runtime_gpointer.GPointer;
typedef SudogPointer = stdgo._internal.runtime.Runtime_sudogpointer.SudogPointer;
typedef PallocSumPointer = stdgo._internal.runtime.Runtime_pallocsumpointer.PallocSumPointer;
typedef PallocBitsPointer = stdgo._internal.runtime.Runtime_pallocbitspointer.PallocBitsPointer;
typedef PallocDataPointer = stdgo._internal.runtime.Runtime_pallocdatapointer.PallocDataPointer;
typedef PageCachePointer = stdgo._internal.runtime.Runtime_pagecachepointer.PageCachePointer;
typedef ChunkIdxPointer = stdgo._internal.runtime.Runtime_chunkidxpointer.ChunkIdxPointer;
typedef PageAllocPointer = stdgo._internal.runtime.Runtime_pageallocpointer.PageAllocPointer;
typedef MSpanPointer = stdgo._internal.runtime.Runtime_mspanpointer.MSpanPointer;
typedef TimeHistogramPointer = stdgo._internal.runtime.Runtime_timehistogrampointer.TimeHistogramPointer;
/**
    * 
    * Package runtime contains operations that interact with Go's runtime system,
    * such as functions to control goroutines. It also includes the low-level type information
    * used by the reflect package; see reflect's documentation for the programmable
    * interface to the run-time type system.
    * 
    * # Environment Variables
    * 
    * The following environment variables ($name or %name%, depending on the host
    * operating system) control the run-time behavior of Go programs. The meanings
    * and use may change from release to release.
    * 
    * The GOGC variable sets the initial garbage collection target percentage.
    * A collection is triggered when the ratio of freshly allocated data to live data
    * remaining after the previous collection reaches this percentage. The default
    * is GOGC=100. Setting GOGC=off disables the garbage collector entirely.
    * [runtime/debug.SetGCPercent] allows changing this percentage at run time.
    * 
    * The GOMEMLIMIT variable sets a soft memory limit for the runtime. This memory limit
    * includes the Go heap and all other memory managed by the runtime, and excludes
    * external memory sources such as mappings of the binary itself, memory managed in
    * other languages, and memory held by the operating system on behalf of the Go
    * program. GOMEMLIMIT is a numeric value in bytes with an optional unit suffix.
    * The supported suffixes include B, KiB, MiB, GiB, and TiB. These suffixes
    * represent quantities of bytes as defined by the IEC 80000-13 standard. That is,
    * they are based on powers of two: KiB means 2^10 bytes, MiB means 2^20 bytes,
    * and so on. The default setting is math.MaxInt64, which effectively disables the
    * memory limit. [runtime/debug.SetMemoryLimit] allows changing this limit at run
    * time.
    * 
    * The GODEBUG variable controls debugging variables within the runtime.
    * It is a comma-separated list of name=val pairs setting these named variables:
    * 
    * 	allocfreetrace: setting allocfreetrace=1 causes every allocation to be
    * 	profiled and a stack trace printed on each object's allocation and free.
    * 
    * 	clobberfree: setting clobberfree=1 causes the garbage collector to
    * 	clobber the memory content of an object with bad content when it frees
    * 	the object.
    * 
    * 	cpu.*: cpu.all=off disables the use of all optional instruction set extensions.
    * 	cpu.extension=off disables use of instructions from the specified instruction set extension.
    * 	extension is the lower case name for the instruction set extension such as sse41 or avx
    * 	as listed in internal/cpu package. As an example cpu.avx=off disables runtime detection
    * 	and thereby use of AVX instructions.
    * 
    * 	cgocheck: setting cgocheck=0 disables all checks for packages
    * 	using cgo to incorrectly pass Go pointers to non-Go code.
    * 	Setting cgocheck=1 (the default) enables relatively cheap
    * 	checks that may miss some errors. A more complete, but slow,
    * 	cgocheck mode can be enabled using GOEXPERIMENT (which
    * 	requires a rebuild), see https://pkg.go.dev/internal/goexperiment for details.
    * 
    * 	dontfreezetheworld: by default, the start of a fatal panic or throw
    * 	"freezes the world", preempting all threads to stop all running
    * 	goroutines, which makes it possible to traceback all goroutines, and
    * 	keeps their state close to the point of panic. Setting
    * 	dontfreezetheworld=1 disables this preemption, allowing goroutines to
    * 	continue executing during panic processing. Note that goroutines that
    * 	naturally enter the scheduler will still stop. This can be useful when
    * 	debugging the runtime scheduler, as freezetheworld perturbs scheduler
    * 	state and thus may hide problems.
    * 
    * 	efence: setting efence=1 causes the allocator to run in a mode
    * 	where each object is allocated on a unique page and addresses are
    * 	never recycled.
    * 
    * 	gccheckmark: setting gccheckmark=1 enables verification of the
    * 	garbage collector's concurrent mark phase by performing a
    * 	second mark pass while the world is stopped.  If the second
    * 	pass finds a reachable object that was not found by concurrent
    * 	mark, the garbage collector will panic.
    * 
    * 	gcpacertrace: setting gcpacertrace=1 causes the garbage collector to
    * 	print information about the internal state of the concurrent pacer.
    * 
    * 	gcshrinkstackoff: setting gcshrinkstackoff=1 disables moving goroutines
    * 	onto smaller stacks. In this mode, a goroutine's stack can only grow.
    * 
    * 	gcstoptheworld: setting gcstoptheworld=1 disables concurrent garbage collection,
    * 	making every garbage collection a stop-the-world event. Setting gcstoptheworld=2
    * 	also disables concurrent sweeping after the garbage collection finishes.
    * 
    * 	gctrace: setting gctrace=1 causes the garbage collector to emit a single line to standard
    * 	error at each collection, summarizing the amount of memory collected and the
    * 	length of the pause. The format of this line is subject to change. Included in
    * 	the explanation below is also the relevant runtime/metrics metric for each field.
    * 	Currently, it is:
    * 		gc # @#s #%: #+#+# ms clock, #+#/#/#+# ms cpu, #->#-># MB, # MB goal, # MB stacks, #MB globals, # P
    * 	where the fields are as follows:
    * 		gc #         the GC number, incremented at each GC
    * 		@#s          time in seconds since program start
    * 		#%           percentage of time spent in GC since program start
    * 		#+...+#      wall-clock/CPU times for the phases of the GC
    * 		#->#-># MB   heap size at GC start, at GC end, and live heap, or /gc/scan/heap:bytes
    * 		# MB goal    goal heap size, or /gc/heap/goal:bytes
    * 		# MB stacks  estimated scannable stack size, or /gc/scan/stack:bytes
    * 		# MB globals scannable global size, or /gc/scan/globals:bytes
    * 		# P          number of processors used, or /sched/gomaxprocs:threads
    * 	The phases are stop-the-world (STW) sweep termination, concurrent
    * 	mark and scan, and STW mark termination. The CPU times
    * 	for mark/scan are broken down in to assist time (GC performed in
    * 	line with allocation), background GC time, and idle GC time.
    * 	If the line ends with "(forced)", this GC was forced by a
    * 	runtime.GC() call.
    * 
    * 	harddecommit: setting harddecommit=1 causes memory that is returned to the OS to
    * 	also have protections removed on it. This is the only mode of operation on Windows,
    * 	but is helpful in debugging scavenger-related issues on other platforms. Currently,
    * 	only supported on Linux.
    * 
    * 	inittrace: setting inittrace=1 causes the runtime to emit a single line to standard
    * 	error for each package with init work, summarizing the execution time and memory
    * 	allocation. No information is printed for inits executed as part of plugin loading
    * 	and for packages without both user defined and compiler generated init work.
    * 	The format of this line is subject to change. Currently, it is:
    * 		init # @#ms, # ms clock, # bytes, # allocs
    * 	where the fields are as follows:
    * 		init #      the package name
    * 		@# ms       time in milliseconds when the init started since program start
    * 		# clock     wall-clock time for package initialization work
    * 		# bytes     memory allocated on the heap
    * 		# allocs    number of heap allocations
    * 
    * 	madvdontneed: setting madvdontneed=0 will use MADV_FREE
    * 	instead of MADV_DONTNEED on Linux when returning memory to the
    * 	kernel. This is more efficient, but means RSS numbers will
    * 	drop only when the OS is under memory pressure. On the BSDs and
    * 	Illumos/Solaris, setting madvdontneed=1 will use MADV_DONTNEED instead
    * 	of MADV_FREE. This is less efficient, but causes RSS numbers to drop
    * 	more quickly.
    * 
    * 	memprofilerate: setting memprofilerate=X will update the value of runtime.MemProfileRate.
    * 	When set to 0 memory profiling is disabled.  Refer to the description of
    * 	MemProfileRate for the default value.
    * 
    * 	pagetrace: setting pagetrace=/path/to/file will write out a trace of page events
    * 	that can be viewed, analyzed, and visualized using the x/debug/cmd/pagetrace tool.
    * 	Build your program with GOEXPERIMENT=pagetrace to enable this functionality. Do not
    * 	enable this functionality if your program is a setuid binary as it introduces a security
    * 	risk in that scenario. Currently not supported on Windows, plan9 or js/wasm. Setting this
    * 	option for some applications can produce large traces, so use with care.
    * 
    * 	invalidptr: invalidptr=1 (the default) causes the garbage collector and stack
    * 	copier to crash the program if an invalid pointer value (for example, 1)
    * 	is found in a pointer-typed location. Setting invalidptr=0 disables this check.
    * 	This should only be used as a temporary workaround to diagnose buggy code.
    * 	The real fix is to not store integers in pointer-typed locations.
    * 
    * 	sbrk: setting sbrk=1 replaces the memory allocator and garbage collector
    * 	with a trivial allocator that obtains memory from the operating system and
    * 	never reclaims any memory.
    * 
    * 	scavtrace: setting scavtrace=1 causes the runtime to emit a single line to standard
    * 	error, roughly once per GC cycle, summarizing the amount of work done by the
    * 	scavenger as well as the total amount of memory returned to the operating system
    * 	and an estimate of physical memory utilization. The format of this line is subject
    * 	to change, but currently it is:
    * 		scav # KiB work (bg), # KiB work (eager), # KiB total, #% util
    * 	where the fields are as follows:
    * 		# KiB work (bg)    the amount of memory returned to the OS in the background since
    * 		                   the last line
    * 		# KiB work (eager) the amount of memory returned to the OS eagerly since the last line
    * 		# KiB now          the amount of address space currently returned to the OS
    * 		#% util            the fraction of all unscavenged heap memory which is in-use
    * 	If the line ends with "(forced)", then scavenging was forced by a
    * 	debug.FreeOSMemory() call.
    * 
    * 	scheddetail: setting schedtrace=X and scheddetail=1 causes the scheduler to emit
    * 	detailed multiline info every X milliseconds, describing state of the scheduler,
    * 	processors, threads and goroutines.
    * 
    * 	schedtrace: setting schedtrace=X causes the scheduler to emit a single line to standard
    * 	error every X milliseconds, summarizing the scheduler state.
    * 
    * 	tracebackancestors: setting tracebackancestors=N extends tracebacks with the stacks at
    * 	which goroutines were created, where N limits the number of ancestor goroutines to
    * 	report. This also extends the information returned by runtime.Stack. Ancestor's goroutine
    * 	IDs will refer to the ID of the goroutine at the time of creation; it's possible for this
    * 	ID to be reused for another goroutine. Setting N to 0 will report no ancestry information.
    * 
    * 	tracefpunwindoff: setting tracefpunwindoff=1 forces the execution tracer to
    * 	use the runtime's default stack unwinder instead of frame pointer unwinding.
    * 	This increases tracer overhead, but could be helpful as a workaround or for
    * 	debugging unexpected regressions caused by frame pointer unwinding.
    * 
    * 	asyncpreemptoff: asyncpreemptoff=1 disables signal-based
    * 	asynchronous goroutine preemption. This makes some loops
    * 	non-preemptible for long periods, which may delay GC and
    * 	goroutine scheduling. This is useful for debugging GC issues
    * 	because it also disables the conservative stack scanning used
    * 	for asynchronously preempted goroutines.
    * 
    * The net and net/http packages also refer to debugging variables in GODEBUG.
    * See the documentation for those packages for details.
    * 
    * The GOMAXPROCS variable limits the number of operating system threads that
    * can execute user-level Go code simultaneously. There is no limit to the number of threads
    * that can be blocked in system calls on behalf of Go code; those do not count against
    * the GOMAXPROCS limit. This package's GOMAXPROCS function queries and changes
    * the limit.
    * 
    * The GORACE variable configures the race detector, for programs built using -race.
    * See https://golang.org/doc/articles/race_detector.html for details.
    * 
    * The GOTRACEBACK variable controls the amount of output generated when a Go
    * program fails due to an unrecovered panic or an unexpected runtime condition.
    * By default, a failure prints a stack trace for the current goroutine,
    * eliding functions internal to the run-time system, and then exits with exit code 2.
    * The failure prints stack traces for all goroutines if there is no current goroutine
    * or the failure is internal to the run-time.
    * GOTRACEBACK=none omits the goroutine stack traces entirely.
    * GOTRACEBACK=single (the default) behaves as described above.
    * GOTRACEBACK=all adds stack traces for all user-created goroutines.
    * GOTRACEBACK=system is like “all” but adds stack frames for run-time functions
    * and shows goroutines created internally by the run-time.
    * GOTRACEBACK=crash is like “system” but crashes in an operating system-specific
    * manner instead of exiting. For example, on Unix systems, the crash raises
    * SIGABRT to trigger a core dump.
    * GOTRACEBACK=wer is like “crash” but doesn't disable Windows Error Reporting (WER).
    * For historical reasons, the GOTRACEBACK settings 0, 1, and 2 are synonyms for
    * none, all, and system, respectively.
    * The runtime/debug package's SetTraceback function allows increasing the
    * amount of output at run time, but it cannot reduce the amount below that
    * specified by the environment variable.
    * See https://golang.org/pkg/runtime/debug/#SetTraceback.
    * 
    * The GOARCH, GOOS, GOPATH, and GOROOT environment variables complete
    * the set of Go environment variables. They influence the building of Go programs
    * (see https://golang.org/cmd/go and https://golang.org/pkg/go/build).
    * GOARCH, GOOS, and GOROOT are recorded at compile time and made available by
    * constants or functions in this package, but they do not influence the execution
    * of the run-time system.
    * 
    * # Security
    * 
    * On Unix platforms, Go's runtime system behaves slightly differently when a
    * binary is setuid/setgid or executed with setuid/setgid-like properties, in order
    * to prevent dangerous behaviors. On Linux this is determined by checking for the
    * AT_SECURE flag in the auxiliary vector, on the BSDs and Solaris/Illumos it is
    * determined by checking the issetugid syscall, and on AIX it is determined by
    * checking if the uid/gid match the effective uid/gid.
    * 
    * When the runtime determines the binary is setuid/setgid-like, it does three main
    * things:
    *   - The standard input/output file descriptors (0, 1, 2) are checked to be open.
    *     If any of them are closed, they are opened pointing at /dev/null.
    *   - The value of the GOTRACEBACK environment variable is set to 'none'.
    *   - When a signal is received that terminates the program, or the program
    *     encounters an unrecoverable panic that would otherwise override the value
    *     of GOTRACEBACK, the goroutine stack, registers, and other memory related
    *     information are omitted.
    * 
**/
class Runtime {
    /**
        * SetCPUProfileRate sets the CPU profiling rate to hz samples per second.
        * If hz <= 0, SetCPUProfileRate turns off profiling.
        * If the profiler is on, the rate cannot be changed without first turning it off.
        * 
        * Most clients should use the runtime/pprof package or
        * the testing package's -test.cpuprofile flag instead of calling
        * SetCPUProfileRate directly.
    **/
    static public inline function setCPUProfileRate(_hz:stdgo.GoInt):Void stdgo._internal.runtime.Runtime_setcpuprofilerate.setCPUProfileRate(_hz);
    /**
        * CPUProfile panics.
        * It formerly provided raw access to chunks of
        * a pprof-format profile generated by the runtime.
        * The details of generating that format have changed,
        * so this functionality has been removed.
        * 
        * Deprecated: Use the runtime/pprof package,
        * or the handlers in the net/http/pprof package,
        * or the testing package's -test.cpuprofile flag instead.
    **/
    static public inline function cPUProfile():stdgo.Slice<stdgo.GoUInt8> return stdgo._internal.runtime.Runtime_cpuprofile.cPUProfile();
    /**
        * GOMAXPROCS sets the maximum number of CPUs that can be executing
        * simultaneously and returns the previous setting. It defaults to
        * the value of runtime.NumCPU. If n < 1, it does not change the current setting.
        * This call will go away when the scheduler improves.
    **/
    static public inline function gOMAXPROCS(_n:stdgo.GoInt):stdgo.GoInt return stdgo._internal.runtime.Runtime_gomaxprocs.gOMAXPROCS(_n);
    /**
        * NumCPU returns the number of logical CPUs usable by the current process.
        * 
        * The set of available CPUs is checked by querying the operating system
        * at process startup. Changes to operating system CPU allocation after
        * process startup are not reflected.
    **/
    static public inline function numCPU():stdgo.GoInt return stdgo._internal.runtime.Runtime_numcpu.numCPU();
    /**
        * NumCgoCall returns the number of cgo calls made by the current process.
    **/
    static public inline function numCgoCall():stdgo.GoInt64 return stdgo._internal.runtime.Runtime_numcgocall.numCgoCall();
    /**
        * NumGoroutine returns the number of goroutines that currently exist.
    **/
    static public inline function numGoroutine():stdgo.GoInt return stdgo._internal.runtime.Runtime_numgoroutine.numGoroutine();
    static public inline function dumpDebugLog():stdgo.GoString return stdgo._internal.runtime.Runtime_dumpdebuglog.dumpDebugLog();
    static public inline function resetDebugLog():Void stdgo._internal.runtime.Runtime_resetdebuglog.resetDebugLog();
    static public inline function lFStackPush(_head:stdgo.Pointer<stdgo.GoUInt64>, _node:stdgo.Ref<stdgo._internal.runtime.Runtime_lfnode.LFNode>):Void stdgo._internal.runtime.Runtime_lfstackpush.lFStackPush(_head, _node);
    static public inline function lFStackPop(_head:stdgo.Pointer<stdgo.GoUInt64>):stdgo.Ref<stdgo._internal.runtime.Runtime_lfnode.LFNode> return stdgo._internal.runtime.Runtime_lfstackpop.lFStackPop(_head);
    static public inline function lFNodeValidate(_node:stdgo.Ref<stdgo._internal.runtime.Runtime_lfnode.LFNode>):Void stdgo._internal.runtime.Runtime_lfnodevalidate.lFNodeValidate(_node);
    static public inline function netpoll(_delta:stdgo.GoInt64):Void stdgo._internal.runtime.Runtime_netpoll.netpoll(_delta);
    static public inline function gCMask(_x:stdgo.AnyInterface):stdgo.Slice<stdgo.GoUInt8> return stdgo._internal.runtime.Runtime_gcmask.gCMask(_x);
    static public inline function runSchedLocalQueueTest():Void stdgo._internal.runtime.Runtime_runschedlocalqueuetest.runSchedLocalQueueTest();
    static public inline function runSchedLocalQueueStealTest():Void stdgo._internal.runtime.Runtime_runschedlocalqueuestealtest.runSchedLocalQueueStealTest();
    static public inline function runSchedLocalQueueEmptyTest(_iters:stdgo.GoInt):Void stdgo._internal.runtime.Runtime_runschedlocalqueueemptytest.runSchedLocalQueueEmptyTest(_iters);
    static public inline function memclrBytes(_b:stdgo.Slice<stdgo.GoUInt8>):Void stdgo._internal.runtime.Runtime_memclrbytes.memclrBytes(_b);
    /**
        * entry point for testing
    **/
    static public inline function gostringW(_w:stdgo.Slice<stdgo.GoUInt16>):stdgo.GoString return stdgo._internal.runtime.Runtime_gostringw.gostringW(_w);
    static public inline function envs():stdgo.Slice<stdgo.GoString> return stdgo._internal.runtime.Runtime_envs.envs();
    static public inline function setEnvs(_e:stdgo.Slice<stdgo.GoString>):Void stdgo._internal.runtime.Runtime_setenvs.setEnvs(_e);
    static public inline function benchSetType(_n:stdgo.GoInt, _resetTimer:() -> Void):Void stdgo._internal.runtime.Runtime_benchsettype.benchSetType(_n, _resetTimer);
    static public inline function benchSetTypeSlice(_n:stdgo.GoInt, _resetTimer:() -> Void, _len:stdgo.GoInt):Void stdgo._internal.runtime.Runtime_benchsettypeslice.benchSetTypeSlice(_n, _resetTimer, _len);
    /**
        * SetTracebackEnv is like runtime/debug.SetTraceback, but it raises
        * the "environment" traceback level, so later calls to
        * debug.SetTraceback (e.g., from testing timeouts) can't lower it.
    **/
    static public inline function setTracebackEnv(_level:stdgo.GoString):Void stdgo._internal.runtime.Runtime_settracebackenv.setTracebackEnv(_level);
    static public inline function countPagesInUse():{ var _0 : stdgo.GoUIntptr; var _1 : stdgo.GoUIntptr; } return stdgo._internal.runtime.Runtime_countpagesinuse.countPagesInUse();
    static public inline function fastrand():stdgo.GoUInt32 return stdgo._internal.runtime.Runtime_fastrand.fastrand();
    static public inline function fastrand64():stdgo.GoUInt64 return stdgo._internal.runtime.Runtime_fastrand64.fastrand64();
    static public inline function fastrandn(_n:stdgo.GoUInt32):stdgo.GoUInt32 return stdgo._internal.runtime.Runtime_fastrandn.fastrandn(_n);
    static public inline function newProfBuf(_hdrsize:stdgo.GoInt, _bufwords:stdgo.GoInt, _tags:stdgo.GoInt):stdgo.Ref<stdgo._internal.runtime.Runtime_profbuf.ProfBuf> return stdgo._internal.runtime.Runtime_newprofbuf.newProfBuf(_hdrsize, _bufwords, _tags);
    static public inline function readMetricsSlow(_memStats:stdgo.Ref<stdgo._internal.runtime.Runtime_memstats.MemStats>, _samplesp:stdgo._internal.unsafe.Unsafe.UnsafePointer, _len:stdgo.GoInt, _cap:stdgo.GoInt):Void stdgo._internal.runtime.Runtime_readmetricsslow.readMetricsSlow(_memStats, _samplesp, _len, _cap);
    /**
        * ReadMemStatsSlow returns both the runtime-computed MemStats and
        * MemStats accumulated by scanning the heap.
    **/
    static public inline function readMemStatsSlow():{ var _0 : stdgo._internal.runtime.Runtime_memstats.MemStats; var _1 : stdgo._internal.runtime.Runtime_memstats.MemStats; } return stdgo._internal.runtime.Runtime_readmemstatsslow.readMemStatsSlow();
    /**
        * ShrinkStackAndVerifyFramePointers attempts to shrink the stack of the current goroutine
        * and verifies that unwinding the new stack doesn't crash, even if the old
        * stack has been freed or reused (simulated via poisoning).
    **/
    static public inline function shrinkStackAndVerifyFramePointers():Void stdgo._internal.runtime.Runtime_shrinkstackandverifyframepointers.shrinkStackAndVerifyFramePointers();
    /**
        * BlockOnSystemStack switches to the system stack, prints "x\n" to
        * stderr, and blocks in a stack containing
        * "runtime.blockOnSystemStackInternal".
    **/
    static public inline function blockOnSystemStack():Void stdgo._internal.runtime.Runtime_blockonsystemstack.blockOnSystemStack();
    static public inline function mapBucketsCount(_m:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>):stdgo.GoInt return stdgo._internal.runtime.Runtime_mapbucketscount.mapBucketsCount(_m);
    static public inline function mapBucketsPointerIsNil(_m:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>):Bool return stdgo._internal.runtime.Runtime_mapbucketspointerisnil.mapBucketsPointerIsNil(_m);
    static public inline function lockOSCounts():{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; } return stdgo._internal.runtime.Runtime_lockoscounts.lockOSCounts();
    /**
        * go:noinline
    **/
    static public inline function tracebackSystemstack(_stk:stdgo.Slice<stdgo.GoUIntptr>, _i:stdgo.GoInt):stdgo.GoInt return stdgo._internal.runtime.Runtime_tracebacksystemstack.tracebackSystemstack(_stk, _i);
    static public inline function keepNArenaHints(_n:stdgo.GoInt):Void stdgo._internal.runtime.Runtime_keepnarenahints.keepNArenaHints(_n);
    /**
        * MapNextArenaHint reserves a page at the next arena growth hint,
        * preventing the arena from growing there, and returns the range of
        * addresses that are no longer viable.
        * 
        * This may fail to reserve memory. If it fails, it still returns the
        * address range it attempted to reserve.
    **/
    static public inline function mapNextArenaHint():{ var _0 : stdgo.GoUIntptr; var _1 : stdgo.GoUIntptr; var _2 : Bool; } return stdgo._internal.runtime.Runtime_mapnextarenahint.mapNextArenaHint();
    static public inline function getNextArenaHint():stdgo.GoUIntptr return stdgo._internal.runtime.Runtime_getnextarenahint.getNextArenaHint();
    static public inline function getg():stdgo.Ref<stdgo._internal.runtime.Runtime_t_g.T_g> return stdgo._internal.runtime.Runtime_getg.getg();
    static public inline function goid():stdgo.GoUInt64 return stdgo._internal.runtime.Runtime_goid.goid();
    static public inline function gIsWaitingOnMutex(_gp:stdgo.Ref<stdgo._internal.runtime.Runtime_t_g.T_g>):Bool return stdgo._internal.runtime.Runtime_giswaitingonmutex.gIsWaitingOnMutex(_gp);
    /**
        * go:noinline
    **/
    static public inline function panicForTesting(_b:stdgo.Slice<stdgo.GoUInt8>, _i:stdgo.GoInt):stdgo.GoUInt8 return stdgo._internal.runtime.Runtime_panicfortesting.panicForTesting(_b, _i);
    static public inline function g0StackOverflow():Void stdgo._internal.runtime.Runtime_g0stackoverflow.g0StackOverflow();
    static public inline function mapTombstoneCheck(_m:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>):Void stdgo._internal.runtime.Runtime_maptombstonecheck.mapTombstoneCheck(_m);
    static public inline function runGetgThreadSwitchTest():Void stdgo._internal.runtime.Runtime_rungetgthreadswitchtest.runGetgThreadSwitchTest();
    static public inline function packPallocSum(_start:stdgo.GoUInt, _max:stdgo.GoUInt, _end:stdgo.GoUInt):stdgo._internal.runtime.Runtime_pallocsum.PallocSum return stdgo._internal.runtime.Runtime_packpallocsum.packPallocSum(_start, _max, _end);
    /**
        * SummarizeSlow is a slow but more obviously correct implementation
        * of (*pallocBits).summarize. Used for testing.
    **/
    static public inline function summarizeSlow(_b:stdgo.Ref<stdgo._internal.runtime.Runtime_pallocbits.PallocBits>):stdgo._internal.runtime.Runtime_pallocsum.PallocSum return stdgo._internal.runtime.Runtime_summarizeslow.summarizeSlow(_b);
    /**
        * Expose non-trivial helpers for testing.
    **/
    static public inline function findBitRange64(_c:stdgo.GoUInt64, _n:stdgo.GoUInt):stdgo.GoUInt return stdgo._internal.runtime.Runtime_findbitrange64.findBitRange64(_c, _n);
    /**
        * Given two PallocBits, returns a set of bit ranges where
        * they differ.
    **/
    static public inline function diffPallocBits(_a:stdgo.Ref<stdgo._internal.runtime.Runtime_pallocbits.PallocBits>, _b:stdgo.Ref<stdgo._internal.runtime.Runtime_pallocbits.PallocBits>):stdgo.Slice<stdgo._internal.runtime.Runtime_bitrange.BitRange> return stdgo._internal.runtime.Runtime_diffpallocbits.diffPallocBits(_a, _b);
    /**
        * StringifyPallocBits gets the bits in the bit range r from b,
        * and returns a string containing the bits as ASCII 0 and 1
        * characters.
    **/
    static public inline function stringifyPallocBits(_b:stdgo.Ref<stdgo._internal.runtime.Runtime_pallocbits.PallocBits>, _r:BitRange):stdgo.GoString return stdgo._internal.runtime.Runtime_stringifypallocbits.stringifyPallocBits(_b, _r);
    /**
        * Expose fillAligned for testing.
    **/
    static public inline function fillAligned(_x:stdgo.GoUInt64, _m:stdgo.GoUInt):stdgo.GoUInt64 return stdgo._internal.runtime.Runtime_fillaligned.fillAligned(_x, _m);
    static public inline function newPageCache(_base:stdgo.GoUIntptr, _cache:stdgo.GoUInt64, _scav:stdgo.GoUInt64):stdgo._internal.runtime.Runtime_pagecache.PageCache return stdgo._internal.runtime.Runtime_newpagecache.newPageCache(_base, _cache, _scav);
    /**
        * MakeAddrRange creates a new address range.
    **/
    static public inline function makeAddrRange(_base:stdgo.GoUIntptr, _limit:stdgo.GoUIntptr):stdgo._internal.runtime.Runtime_addrrange.AddrRange return stdgo._internal.runtime.Runtime_makeaddrrange.makeAddrRange(_base, _limit);
    /**
        * NewAddrRanges creates a new empty addrRanges.
        * 
        * Note that this initializes addrRanges just like in the
        * runtime, so its memory is persistentalloc'd. Call this
        * function sparingly since the memory it allocates is
        * leaked.
        * 
        * This AddrRanges is mutable, so we can test methods like
        * Add.
    **/
    static public inline function newAddrRanges():stdgo._internal.runtime.Runtime_addrranges.AddrRanges return stdgo._internal.runtime.Runtime_newaddrranges.newAddrRanges();
    /**
        * MakeAddrRanges creates a new addrRanges populated with
        * the ranges in a.
        * 
        * The returned AddrRanges is immutable, so methods like
        * Add will fail.
    **/
    static public inline function makeAddrRanges(_a:haxe.Rest<AddrRange>):stdgo._internal.runtime.Runtime_addrranges.AddrRanges return stdgo._internal.runtime.Runtime_makeaddrranges.makeAddrRanges(...[for (i in _a) i]);
    /**
        * NewPageAlloc creates a new page allocator for testing and
        * initializes it with the scav and chunks maps. Each key in these maps
        * represents a chunk index and each value is a series of bit ranges to
        * set within each bitmap's chunk.
        * 
        * The initialization of the pageAlloc preserves the invariant that if a
        * scavenged bit is set the alloc bit is necessarily unset, so some
        * of the bits described by scav may be cleared in the final bitmap if
        * ranges in chunks overlap with them.
        * 
        * scav is optional, and if nil, the scavenged bitmap will be cleared
        * (as opposed to all 1s, which it usually is). Furthermore, every
        * chunk index in scav must appear in chunks; ones that do not are
        * ignored.
    **/
    static public inline function newPageAlloc(_chunks:stdgo.GoMap<stdgo._internal.runtime.Runtime_chunkidx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_bitrange.BitRange>>, _scav:stdgo.GoMap<stdgo._internal.runtime.Runtime_chunkidx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_bitrange.BitRange>>):stdgo.Ref<stdgo._internal.runtime.Runtime_pagealloc.PageAlloc> return stdgo._internal.runtime.Runtime_newpagealloc.newPageAlloc(_chunks, _scav);
    /**
        * FreePageAlloc releases hard OS resources owned by the pageAlloc. Once this
        * is called the pageAlloc may no longer be used. The object itself will be
        * collected by the garbage collector once it is no longer live.
    **/
    static public inline function freePageAlloc(_pp:stdgo.Ref<stdgo._internal.runtime.Runtime_pagealloc.PageAlloc>):Void stdgo._internal.runtime.Runtime_freepagealloc.freePageAlloc(_pp);
    /**
        * PageBase returns an address given a chunk index and a page index
        * relative to that chunk.
    **/
    static public inline function pageBase(_c:ChunkIdx, _pageIdx:stdgo.GoUInt):stdgo.GoUIntptr return stdgo._internal.runtime.Runtime_pagebase.pageBase(_c, _pageIdx);
    static public inline function checkScavengedBitsCleared(_mismatches:stdgo.Slice<stdgo._internal.runtime.Runtime_bitsmismatch.BitsMismatch>):{ var _0 : stdgo.GoInt; var _1 : Bool; } return stdgo._internal.runtime.Runtime_checkscavengedbitscleared.checkScavengedBitsCleared(_mismatches);
    static public inline function pageCachePagesLeaked():stdgo.GoUIntptr return stdgo._internal.runtime.Runtime_pagecachepagesleaked.pageCachePagesLeaked();
    static public inline function semNwait(_addr:stdgo.Pointer<stdgo.GoUInt32>):stdgo.GoUInt32 return stdgo._internal.runtime.Runtime_semnwait.semNwait(_addr);
    /**
        * Allocate an mspan for testing.
    **/
    static public inline function allocMSpan():stdgo.Ref<stdgo._internal.runtime.Runtime_mspan.MSpan> return stdgo._internal.runtime.Runtime_allocmspan.allocMSpan();
    /**
        * Free an allocated mspan.
    **/
    static public inline function freeMSpan(_s:stdgo.Ref<stdgo._internal.runtime.Runtime_mspan.MSpan>):Void stdgo._internal.runtime.Runtime_freemspan.freeMSpan(_s);
    static public inline function mSpanCountAlloc(_ms:stdgo.Ref<stdgo._internal.runtime.Runtime_mspan.MSpan>, _bits:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt return stdgo._internal.runtime.Runtime_mspancountalloc.mSpanCountAlloc(_ms, _bits);
    static public inline function setIntArgRegs(_a:stdgo.GoInt):stdgo.GoInt return stdgo._internal.runtime.Runtime_setintargregs.setIntArgRegs(_a);
    static public inline function finalizerGAsleep():Bool return stdgo._internal.runtime.Runtime_finalizergasleep.finalizerGAsleep();
    /**
        * For GCTestIsReachable, it's important that we do this as a call so
        * escape analysis can see through it.
    **/
    static public inline function gCTestIsReachable(_ptrs:haxe.Rest<stdgo._internal.unsafe.Unsafe.UnsafePointer>):stdgo.GoUInt64 return stdgo._internal.runtime.Runtime_gctestisreachable.gCTestIsReachable(...[for (i in _ptrs) i]);
    /**
        * For GCTestPointerClass, it's important that we do this as a call so
        * escape analysis can see through it.
        * 
        * This is nosplit because gcTestPointerClass is.
        * 
        * go:nosplit
    **/
    static public inline function gCTestPointerClass(_p:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo.GoString return stdgo._internal.runtime.Runtime_gctestpointerclass.gCTestPointerClass(_p);
    static public inline function newGCController(_gcPercent:stdgo.GoInt, _memoryLimit:stdgo.GoInt64):stdgo.Ref<stdgo._internal.runtime.Runtime_gccontroller.GCController> return stdgo._internal.runtime.Runtime_newgccontroller.newGCController(_gcPercent, _memoryLimit);
    static public inline function escape(_x:Dynamic):Dynamic return stdgo._internal.runtime.Runtime_escape.escape(_x);
    /**
        * Acquirem blocks preemption.
    **/
    static public inline function acquirem():Void stdgo._internal.runtime.Runtime_acquirem.acquirem();
    static public inline function releasem():Void stdgo._internal.runtime.Runtime_releasem.releasem();
    static public inline function newPIController(_kp:stdgo.GoFloat64, _ti:stdgo.GoFloat64, _tt:stdgo.GoFloat64, _min:stdgo.GoFloat64, _max:stdgo.GoFloat64):stdgo.Ref<stdgo._internal.runtime.Runtime_picontroller.PIController> return stdgo._internal.runtime.Runtime_newpicontroller.newPIController(_kp, _ti, _tt, _min, _max);
    static public inline function newGCCPULimiter(_now:stdgo.GoInt64, _gomaxprocs:stdgo.GoInt32):stdgo.Ref<stdgo._internal.runtime.Runtime_gccpulimiter.GCCPULimiter> return stdgo._internal.runtime.Runtime_newgccpulimiter.newGCCPULimiter(_now, _gomaxprocs);
    static public inline function newScavengeIndex(_min:ChunkIdx, _max:ChunkIdx):stdgo.Ref<stdgo._internal.runtime.Runtime_scavengeindex.ScavengeIndex> return stdgo._internal.runtime.Runtime_newscavengeindex.newScavengeIndex(_min, _max);
    static public inline function checkPackScavChunkData(_gen:stdgo.GoUInt32, _inUse:stdgo.GoUInt16, _lastInUse:stdgo.GoUInt16, _flags:stdgo.GoUInt8):Bool return stdgo._internal.runtime.Runtime_checkpackscavchunkdata.checkPackScavChunkData(_gen, _inUse, _lastInUse, _flags);
    static public inline function newUserArena():stdgo.Ref<stdgo._internal.runtime.Runtime_userarena.UserArena> return stdgo._internal.runtime.Runtime_newuserarena.newUserArena();
    static public inline function globalWaitingArenaChunks():stdgo.GoInt return stdgo._internal.runtime.Runtime_globalwaitingarenachunks.globalWaitingArenaChunks();
    static public inline function userArenaClone(_s:Dynamic):Dynamic return stdgo._internal.runtime.Runtime_userarenaclone.userArenaClone(_s);
    /**
        * BlockUntilEmptyFinalizerQueue blocks until either the finalizer
        * queue is emptied (and the finalizers have executed) or the timeout
        * is reached. Returns true if the finalizer queue was emptied.
    **/
    static public inline function blockUntilEmptyFinalizerQueue(_timeout:stdgo.GoInt64):Bool return stdgo._internal.runtime.Runtime_blockuntilemptyfinalizerqueue.blockUntilEmptyFinalizerQueue(_timeout);
    static public inline function frameStartLine(_f:stdgo.Ref<stdgo._internal.runtime.Runtime_frame.Frame>):stdgo.GoInt return stdgo._internal.runtime.Runtime_framestartline.frameStartLine(_f);
    /**
        * PersistentAlloc allocates some memory that lives outside the Go heap.
        * This memory will never be freed; use sparingly.
    **/
    static public inline function persistentAlloc(_n:stdgo.GoUIntptr):stdgo._internal.unsafe.Unsafe.UnsafePointer return stdgo._internal.runtime.Runtime_persistentalloc.persistentAlloc(_n);
    /**
        * FPCallers works like Callers and uses frame pointer unwinding to populate
        * pcBuf with the return addresses of the physical frames on the stack.
    **/
    static public inline function fPCallers(_pcBuf:stdgo.Slice<stdgo.GoUIntptr>):stdgo.GoInt return stdgo._internal.runtime.Runtime_fpcallers.fPCallers(_pcBuf);
    static public inline function setPinnerLeakPanic(_f:() -> Void):Void stdgo._internal.runtime.Runtime_setpinnerleakpanic.setPinnerLeakPanic(_f);
    static public inline function getPinnerLeakPanic():() -> Void return stdgo._internal.runtime.Runtime_getpinnerleakpanic.getPinnerLeakPanic();
    /**
        * Caller reports file and line number information about function invocations on
        * the calling goroutine's stack. The argument skip is the number of stack frames
        * to ascend, with 0 identifying the caller of Caller.  (For historical reasons the
        * meaning of skip differs between Caller and Callers.) The return values report the
        * program counter, file name, and line number within the file of the corresponding
        * call. The boolean ok is false if it was not possible to recover the information.
    **/
    static public inline function caller(_skip:stdgo.GoInt):{ var _0 : stdgo.GoUIntptr; var _1 : stdgo.GoString; var _2 : stdgo.GoInt; var _3 : Bool; } return stdgo._internal.runtime.Runtime_caller.caller(_skip);
    /**
        * Callers fills the slice pc with the return program counters of function invocations
        * on the calling goroutine's stack. The argument skip is the number of stack frames
        * to skip before recording in pc, with 0 identifying the frame for Callers itself and
        * 1 identifying the caller of Callers.
        * It returns the number of entries written to pc.
        * 
        * To translate these PCs into symbolic information such as function
        * names and line numbers, use CallersFrames. CallersFrames accounts
        * for inlined functions and adjusts the return program counters into
        * call program counters. Iterating over the returned slice of PCs
        * directly is discouraged, as is using FuncForPC on any of the
        * returned PCs, since these cannot account for inlining or return
        * program counter adjustment.
    **/
    static public inline function callers(_skip:stdgo.GoInt, _pc:stdgo.Slice<stdgo.GoUIntptr>):stdgo.GoInt return stdgo._internal.runtime.Runtime_callers.callers(_skip, _pc);
    /**
        * GOROOT returns the root of the Go tree. It uses the
        * GOROOT environment variable, if set at process start,
        * or else the root used during the Go build.
    **/
    static public inline function gOROOT():stdgo.GoString return stdgo._internal.runtime.Runtime_goroot.gOROOT();
    /**
        * Version returns the Go tree's version string.
        * It is either the commit hash and date at the time of the build or,
        * when possible, a release tag like "go1.3".
    **/
    static public inline function version():stdgo.GoString return stdgo._internal.runtime.Runtime_version.version();
    /**
        * SetFinalizer sets the finalizer associated with obj to the provided
        * finalizer function. When the garbage collector finds an unreachable block
        * with an associated finalizer, it clears the association and runs
        * finalizer(obj) in a separate goroutine. This makes obj reachable again,
        * but now without an associated finalizer. Assuming that SetFinalizer
        * is not called again, the next time the garbage collector sees
        * that obj is unreachable, it will free obj.
        * 
        * SetFinalizer(obj, nil) clears any finalizer associated with obj.
        * 
        * The argument obj must be a pointer to an object allocated by calling
        * new, by taking the address of a composite literal, or by taking the
        * address of a local variable.
        * The argument finalizer must be a function that takes a single argument
        * to which obj's type can be assigned, and can have arbitrary ignored return
        * values. If either of these is not true, SetFinalizer may abort the
        * program.
        * 
        * Finalizers are run in dependency order: if A points at B, both have
        * finalizers, and they are otherwise unreachable, only the finalizer
        * for A runs; once A is freed, the finalizer for B can run.
        * If a cyclic structure includes a block with a finalizer, that
        * cycle is not guaranteed to be garbage collected and the finalizer
        * is not guaranteed to run, because there is no ordering that
        * respects the dependencies.
        * 
        * The finalizer is scheduled to run at some arbitrary time after the
        * program can no longer reach the object to which obj points.
        * There is no guarantee that finalizers will run before a program exits,
        * so typically they are useful only for releasing non-memory resources
        * associated with an object during a long-running program.
        * For example, an os.File object could use a finalizer to close the
        * associated operating system file descriptor when a program discards
        * an os.File without calling Close, but it would be a mistake
        * to depend on a finalizer to flush an in-memory I/O buffer such as a
        * bufio.Writer, because the buffer would not be flushed at program exit.
        * 
        * It is not guaranteed that a finalizer will run if the size of *obj is
        * zero bytes, because it may share same address with other zero-size
        * objects in memory. See https://go.dev/ref/spec#Size_and_alignment_guarantees.
        * 
        * It is not guaranteed that a finalizer will run for objects allocated
        * in initializers for package-level variables. Such objects may be
        * linker-allocated, not heap-allocated.
        * 
        * Note that because finalizers may execute arbitrarily far into the future
        * after an object is no longer referenced, the runtime is allowed to perform
        * a space-saving optimization that batches objects together in a single
        * allocation slot. The finalizer for an unreferenced object in such an
        * allocation may never run if it always exists in the same batch as a
        * referenced object. Typically, this batching only happens for tiny
        * (on the order of 16 bytes or less) and pointer-free objects.
        * 
        * A finalizer may run as soon as an object becomes unreachable.
        * In order to use finalizers correctly, the program must ensure that
        * the object is reachable until it is no longer required.
        * Objects stored in global variables, or that can be found by tracing
        * pointers from a global variable, are reachable. For other objects,
        * pass the object to a call of the KeepAlive function to mark the
        * last point in the function where the object must be reachable.
        * 
        * For example, if p points to a struct, such as os.File, that contains
        * a file descriptor d, and p has a finalizer that closes that file
        * descriptor, and if the last use of p in a function is a call to
        * syscall.Write(p.d, buf, size), then p may be unreachable as soon as
        * the program enters syscall.Write. The finalizer may run at that moment,
        * closing p.d, causing syscall.Write to fail because it is writing to
        * a closed file descriptor (or, worse, to an entirely different
        * file descriptor opened by a different goroutine). To avoid this problem,
        * call KeepAlive(p) after the call to syscall.Write.
        * 
        * A single goroutine runs all finalizers for a program, sequentially.
        * If a finalizer must run for a long time, it should do so by starting
        * a new goroutine.
        * 
        * In the terminology of the Go memory model, a call
        * SetFinalizer(x, f) “synchronizes before” the finalization call f(x).
        * However, there is no guarantee that KeepAlive(x) or any other use of x
        * “synchronizes before” f(x), so in general a finalizer should use a mutex
        * or other synchronization mechanism if it needs to access mutable state in x.
        * For example, consider a finalizer that inspects a mutable field in x
        * that is modified from time to time in the main program before x
        * becomes unreachable and the finalizer is invoked.
        * The modifications in the main program and the inspection in the finalizer
        * need to use appropriate synchronization, such as mutexes or atomic updates,
        * to avoid read-write races.
    **/
    static public inline function setFinalizer(_obj:stdgo.AnyInterface, _finalizer:stdgo.AnyInterface):Void stdgo._internal.runtime.Runtime_setfinalizer.setFinalizer(_obj, _finalizer);
    /**
        * KeepAlive marks its argument as currently reachable.
        * This ensures that the object is not freed, and its finalizer is not run,
        * before the point in the program where KeepAlive is called.
        * 
        * A very simplified example showing where KeepAlive is required:
        * 
        * 	type File struct { d int }
        * 	d, err := syscall.Open("/file/path", syscall.O_RDONLY, 0)
        * 	// ... do something if err != nil ...
        * 	p := &File{d}
        * 	runtime.SetFinalizer(p, func(p *File) { syscall.Close(p.d) })
        * 	var buf [10]byte
        * 	n, err := syscall.Read(p.d, buf[:])
        * 	// Ensure p is not finalized until Read returns.
        * 	runtime.KeepAlive(p)
        * 	// No more uses of p after this point.
        * 
        * Without the KeepAlive call, the finalizer could run at the start of
        * syscall.Read, closing the file descriptor before syscall.Read makes
        * the actual system call.
        * 
        * Note: KeepAlive should only be used to prevent finalizers from
        * running prematurely. In particular, when used with unsafe.Pointer,
        * the rules for valid uses of unsafe.Pointer still apply.
    **/
    static public inline function keepAlive(_x:stdgo.AnyInterface):Void stdgo._internal.runtime.Runtime_keepalive.keepAlive(_x);
    /**
        * GC runs a garbage collection and blocks the caller until the
        * garbage collection is complete. It may also block the entire
        * program.
    **/
    static public inline function gC():Void stdgo._internal.runtime.Runtime_gc.gC();
    /**
        * SetBlockProfileRate controls the fraction of goroutine blocking events
        * that are reported in the blocking profile. The profiler aims to sample
        * an average of one blocking event per rate nanoseconds spent blocked.
        * 
        * To include every blocking event in the profile, pass rate = 1.
        * To turn off profiling entirely, pass rate <= 0.
    **/
    static public inline function setBlockProfileRate(_rate:stdgo.GoInt):Void stdgo._internal.runtime.Runtime_setblockprofilerate.setBlockProfileRate(_rate);
    /**
        * SetMutexProfileFraction controls the fraction of mutex contention events
        * that are reported in the mutex profile. On average 1/rate events are
        * reported. The previous rate is returned.
        * 
        * To turn off profiling entirely, pass rate 0.
        * To just read the current rate, pass rate < 0.
        * (For n>1 the details of sampling may change.)
    **/
    static public inline function setMutexProfileFraction(_rate:stdgo.GoInt):stdgo.GoInt return stdgo._internal.runtime.Runtime_setmutexprofilefraction.setMutexProfileFraction(_rate);
    /**
        * MemProfile returns a profile of memory allocated and freed per allocation
        * site.
        * 
        * MemProfile returns n, the number of records in the current memory profile.
        * If len(p) >= n, MemProfile copies the profile into p and returns n, true.
        * If len(p) < n, MemProfile does not change p and returns n, false.
        * 
        * If inuseZero is true, the profile includes allocation records
        * where r.AllocBytes > 0 but r.AllocBytes == r.FreeBytes.
        * These are sites where memory was allocated, but it has all
        * been released back to the runtime.
        * 
        * The returned profile may be up to two garbage collection cycles old.
        * This is to avoid skewing the profile toward allocations; because
        * allocations happen in real time but frees are delayed until the garbage
        * collector performs sweeping, the profile only accounts for allocations
        * that have had a chance to be freed by the garbage collector.
        * 
        * Most clients should use the runtime/pprof package or
        * the testing package's -test.memprofile flag instead
        * of calling MemProfile directly.
    **/
    static public inline function memProfile(_p:stdgo.Slice<stdgo._internal.runtime.Runtime_memprofilerecord.MemProfileRecord>, _inuseZero:Bool):{ var _0 : stdgo.GoInt; var _1 : Bool; } return stdgo._internal.runtime.Runtime_memprofile.memProfile(_p, _inuseZero);
    /**
        * BlockProfile returns n, the number of records in the current blocking profile.
        * If len(p) >= n, BlockProfile copies the profile into p and returns n, true.
        * If len(p) < n, BlockProfile does not change p and returns n, false.
        * 
        * Most clients should use the runtime/pprof package or
        * the testing package's -test.blockprofile flag instead
        * of calling BlockProfile directly.
    **/
    static public inline function blockProfile(_p:stdgo.Slice<stdgo._internal.runtime.Runtime_blockprofilerecord.BlockProfileRecord>):{ var _0 : stdgo.GoInt; var _1 : Bool; } return stdgo._internal.runtime.Runtime_blockprofile.blockProfile(_p);
    /**
        * MutexProfile returns n, the number of records in the current mutex profile.
        * If len(p) >= n, MutexProfile copies the profile into p and returns n, true.
        * Otherwise, MutexProfile does not change p, and returns n, false.
        * 
        * Most clients should use the runtime/pprof package
        * instead of calling MutexProfile directly.
    **/
    static public inline function mutexProfile(_p:stdgo.Slice<stdgo._internal.runtime.Runtime_blockprofilerecord.BlockProfileRecord>):{ var _0 : stdgo.GoInt; var _1 : Bool; } return stdgo._internal.runtime.Runtime_mutexprofile.mutexProfile(_p);
    /**
        * ThreadCreateProfile returns n, the number of records in the thread creation profile.
        * If len(p) >= n, ThreadCreateProfile copies the profile into p and returns n, true.
        * If len(p) < n, ThreadCreateProfile does not change p and returns n, false.
        * 
        * Most clients should use the runtime/pprof package instead
        * of calling ThreadCreateProfile directly.
    **/
    static public inline function threadCreateProfile(_p:stdgo.Slice<stdgo._internal.runtime.Runtime_stackrecord.StackRecord>):{ var _0 : stdgo.GoInt; var _1 : Bool; } return stdgo._internal.runtime.Runtime_threadcreateprofile.threadCreateProfile(_p);
    /**
        * GoroutineProfile returns n, the number of records in the active goroutine stack profile.
        * If len(p) >= n, GoroutineProfile copies the profile into p and returns n, true.
        * If len(p) < n, GoroutineProfile does not change p and returns n, false.
        * 
        * Most clients should use the runtime/pprof package instead
        * of calling GoroutineProfile directly.
    **/
    static public inline function goroutineProfile(_p:stdgo.Slice<stdgo._internal.runtime.Runtime_stackrecord.StackRecord>):{ var _0 : stdgo.GoInt; var _1 : Bool; } return stdgo._internal.runtime.Runtime_goroutineprofile.goroutineProfile(_p);
    /**
        * Stack formats a stack trace of the calling goroutine into buf
        * and returns the number of bytes written to buf.
        * If all is true, Stack formats stack traces of all other goroutines
        * into buf after the trace for the current goroutine.
    **/
    static public inline function stack(_buf:stdgo.Slice<stdgo.GoUInt8>, _all:Bool):stdgo.GoInt return stdgo._internal.runtime.Runtime_stack.stack(_buf, _all);
    /**
        * ReadMemStats populates m with memory allocator statistics.
        * 
        * The returned memory allocator statistics are up to date as of the
        * call to ReadMemStats. This is in contrast with a heap profile,
        * which is a snapshot as of the most recently completed garbage
        * collection cycle.
    **/
    static public inline function readMemStats(_m:stdgo.Ref<stdgo._internal.runtime.Runtime_memstats.MemStats>):Void stdgo._internal.runtime.Runtime_readmemstats.readMemStats(_m);
    /**
        * Goexit terminates the goroutine that calls it. No other goroutine is affected.
        * Goexit runs all deferred calls before terminating the goroutine. Because Goexit
        * is not a panic, any recover calls in those deferred functions will return nil.
        * 
        * Calling Goexit from the main goroutine terminates that goroutine
        * without func main returning. Since func main has not returned,
        * the program continues execution of other goroutines.
        * If all other goroutines exit, the program crashes.
    **/
    static public inline function goexit():Void stdgo._internal.runtime.Runtime_goexit.goexit();
    /**
        * Gosched yields the processor, allowing other goroutines to run. It does not
        * suspend the current goroutine, so execution resumes automatically.
        * 
        * go:nosplit
    **/
    static public inline function gosched():Void stdgo._internal.runtime.Runtime_gosched.gosched();
    /**
        * Breakpoint executes a breakpoint trap.
    **/
    static public inline function breakpoint():Void stdgo._internal.runtime.Runtime_breakpoint.breakpoint();
    /**
        * LockOSThread wires the calling goroutine to its current operating system thread.
        * The calling goroutine will always execute in that thread,
        * and no other goroutine will execute in it,
        * until the calling goroutine has made as many calls to
        * UnlockOSThread as to LockOSThread.
        * If the calling goroutine exits without unlocking the thread,
        * the thread will be terminated.
        * 
        * All init functions are run on the startup thread. Calling LockOSThread
        * from an init function will cause the main function to be invoked on
        * that thread.
        * 
        * A goroutine should call LockOSThread before calling OS services or
        * non-Go library functions that depend on per-thread state.
        * 
        * go:nosplit
    **/
    static public inline function lockOSThread():Void stdgo._internal.runtime.Runtime_lockosthread.lockOSThread();
    /**
        * UnlockOSThread undoes an earlier call to LockOSThread.
        * If this drops the number of active LockOSThread calls on the
        * calling goroutine to zero, it unwires the calling goroutine from
        * its fixed operating system thread.
        * If there are no active LockOSThread calls, this is a no-op.
        * 
        * Before calling UnlockOSThread, the caller must ensure that the OS
        * thread is suitable for running other goroutines. If the caller made
        * any permanent changes to the state of the thread that would affect
        * other goroutines, it should not call this function and thus leave
        * the goroutine locked to the OS thread until the goroutine (and
        * hence the thread) exits.
        * 
        * go:nosplit
    **/
    static public inline function unlockOSThread():Void stdgo._internal.runtime.Runtime_unlockosthread.unlockOSThread();
    static public inline function runStealOrderTest():Void stdgo._internal.runtime.Runtime_runstealordertest.runStealOrderTest();
    /**
        * CallersFrames takes a slice of PC values returned by Callers and
        * prepares to return function/file/line information.
        * Do not change the slice until you are done with the Frames.
    **/
    static public inline function callersFrames(_callers:stdgo.Slice<stdgo.GoUIntptr>):stdgo.Ref<stdgo._internal.runtime.Runtime_frames.Frames> return stdgo._internal.runtime.Runtime_callersframes.callersFrames(_callers);
    /**
        * FuncForPC returns a *Func describing the function that contains the
        * given program counter address, or else nil.
        * 
        * If pc represents multiple functions because of inlining, it returns
        * the *Func describing the innermost function, but with an entry of
        * the outermost function.
    **/
    static public inline function funcForPC(_pc:stdgo.GoUIntptr):stdgo.Ref<stdgo._internal.runtime.Runtime_func.Func> return stdgo._internal.runtime.Runtime_funcforpc.funcForPC(_pc);
    static public inline function xTestInlineUnwinder(_t:TestingT):Void stdgo._internal.runtime.Runtime_xtestinlineunwinder.xTestInlineUnwinder(_t);
    /**
        * StartTrace enables tracing for the current process.
        * While tracing, the data will be buffered and available via ReadTrace.
        * StartTrace returns an error if tracing is already enabled.
        * Most clients should use the runtime/trace package or the testing package's
        * -test.trace flag instead of calling StartTrace directly.
    **/
    static public inline function startTrace():stdgo.Error return stdgo._internal.runtime.Runtime_starttrace.startTrace();
    /**
        * StopTrace stops tracing, if it was previously enabled.
        * StopTrace only returns after all the reads for the trace have completed.
    **/
    static public inline function stopTrace():Void stdgo._internal.runtime.Runtime_stoptrace.stopTrace();
    /**
        * ReadTrace returns the next chunk of binary tracing data, blocking until data
        * is available. If tracing is turned off and all the data accumulated while it
        * was on has been returned, ReadTrace returns nil. The caller must copy the
        * returned data before calling ReadTrace again.
        * ReadTrace must be called from one goroutine at a time.
    **/
    static public inline function readTrace():stdgo.Slice<stdgo.GoUInt8> return stdgo._internal.runtime.Runtime_readtrace.readTrace();
    /**
        * SetCgoTraceback records three C functions to use to gather
        * traceback information from C code and to convert that traceback
        * information into symbolic information. These are used when printing
        * stack traces for a program that uses cgo.
        * 
        * The traceback and context functions may be called from a signal
        * handler, and must therefore use only async-signal safe functions.
        * The symbolizer function may be called while the program is
        * crashing, and so must be cautious about using memory.  None of the
        * functions may call back into Go.
        * 
        * The context function will be called with a single argument, a
        * pointer to a struct:
        * 
        * 	struct {
        * 		Context uintptr
        * 	}
        * 
        * In C syntax, this struct will be
        * 
        * 	struct {
        * 		uintptr_t Context;
        * 	};
        * 
        * If the Context field is 0, the context function is being called to
        * record the current traceback context. It should record in the
        * Context field whatever information is needed about the current
        * point of execution to later produce a stack trace, probably the
        * stack pointer and PC. In this case the context function will be
        * called from C code.
        * 
        * If the Context field is not 0, then it is a value returned by a
        * previous call to the context function. This case is called when the
        * context is no longer needed; that is, when the Go code is returning
        * to its C code caller. This permits the context function to release
        * any associated resources.
        * 
        * While it would be correct for the context function to record a
        * complete a stack trace whenever it is called, and simply copy that
        * out in the traceback function, in a typical program the context
        * function will be called many times without ever recording a
        * traceback for that context. Recording a complete stack trace in a
        * call to the context function is likely to be inefficient.
        * 
        * The traceback function will be called with a single argument, a
        * pointer to a struct:
        * 
        * 	struct {
        * 		Context    uintptr
        * 		SigContext uintptr
        * 		Buf        *uintptr
        * 		Max        uintptr
        * 	}
        * 
        * In C syntax, this struct will be
        * 
        * 	struct {
        * 		uintptr_t  Context;
        * 		uintptr_t  SigContext;
        * 		uintptr_t* Buf;
        * 		uintptr_t  Max;
        * 	};
        * 
        * The Context field will be zero to gather a traceback from the
        * current program execution point. In this case, the traceback
        * function will be called from C code.
        * 
        * Otherwise Context will be a value previously returned by a call to
        * the context function. The traceback function should gather a stack
        * trace from that saved point in the program execution. The traceback
        * function may be called from an execution thread other than the one
        * that recorded the context, but only when the context is known to be
        * valid and unchanging. The traceback function may also be called
        * deeper in the call stack on the same thread that recorded the
        * context. The traceback function may be called multiple times with
        * the same Context value; it will usually be appropriate to cache the
        * result, if possible, the first time this is called for a specific
        * context value.
        * 
        * If the traceback function is called from a signal handler on a Unix
        * system, SigContext will be the signal context argument passed to
        * the signal handler (a C ucontext_t* cast to uintptr_t). This may be
        * used to start tracing at the point where the signal occurred. If
        * the traceback function is not called from a signal handler,
        * SigContext will be zero.
        * 
        * Buf is where the traceback information should be stored. It should
        * be PC values, such that Buf[0] is the PC of the caller, Buf[1] is
        * the PC of that function's caller, and so on.  Max is the maximum
        * number of entries to store.  The function should store a zero to
        * indicate the top of the stack, or that the caller is on a different
        * stack, presumably a Go stack.
        * 
        * Unlike runtime.Callers, the PC values returned should, when passed
        * to the symbolizer function, return the file/line of the call
        * instruction.  No additional subtraction is required or appropriate.
        * 
        * On all platforms, the traceback function is invoked when a call from
        * Go to C to Go requests a stack trace. On linux/amd64, linux/ppc64le,
        * linux/arm64, and freebsd/amd64, the traceback function is also invoked
        * when a signal is received by a thread that is executing a cgo call.
        * The traceback function should not make assumptions about when it is
        * called, as future versions of Go may make additional calls.
        * 
        * The symbolizer function will be called with a single argument, a
        * pointer to a struct:
        * 
        * 	struct {
        * 		PC      uintptr // program counter to fetch information for
        * 		File    *byte   // file name (NUL terminated)
        * 		Lineno  uintptr // line number
        * 		Func    *byte   // function name (NUL terminated)
        * 		Entry   uintptr // function entry point
        * 		More    uintptr // set non-zero if more info for this PC
        * 		Data    uintptr // unused by runtime, available for function
        * 	}
        * 
        * In C syntax, this struct will be
        * 
        * 	struct {
        * 		uintptr_t PC;
        * 		char*     File;
        * 		uintptr_t Lineno;
        * 		char*     Func;
        * 		uintptr_t Entry;
        * 		uintptr_t More;
        * 		uintptr_t Data;
        * 	};
        * 
        * The PC field will be a value returned by a call to the traceback
        * function.
        * 
        * The first time the function is called for a particular traceback,
        * all the fields except PC will be 0. The function should fill in the
        * other fields if possible, setting them to 0/nil if the information
        * is not available. The Data field may be used to store any useful
        * information across calls. The More field should be set to non-zero
        * if there is more information for this PC, zero otherwise. If More
        * is set non-zero, the function will be called again with the same
        * PC, and may return different information (this is intended for use
        * with inlined functions). If More is zero, the function will be
        * called with the next PC value in the traceback. When the traceback
        * is complete, the function will be called once more with PC set to
        * zero; this may be used to free any information. Each call will
        * leave the fields of the struct set to the same values they had upon
        * return, except for the PC field when the More field is zero. The
        * function must not keep a copy of the struct pointer between calls.
        * 
        * When calling SetCgoTraceback, the version argument is the version
        * number of the structs that the functions expect to receive.
        * Currently this must be zero.
        * 
        * The symbolizer function may be nil, in which case the results of
        * the traceback function will be displayed as numbers. If the
        * traceback function is nil, the symbolizer function will never be
        * called. The context function may be nil, in which case the
        * traceback function will only be called with the context field set
        * to zero.  If the context function is nil, then calls from Go to C
        * to Go will not show a traceback for the C portion of the call stack.
        * 
        * SetCgoTraceback should be called only once, ideally from an init function.
    **/
    static public inline function setCgoTraceback(_version:stdgo.GoInt, _traceback:stdgo._internal.unsafe.Unsafe.UnsafePointer, _context:stdgo._internal.unsafe.Unsafe.UnsafePointer, _symbolizer:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void stdgo._internal.runtime.Runtime_setcgotraceback.setCgoTraceback(_version, _traceback, _context, _symbolizer);
    static public inline function xTestSPWrite(_t:TestingT):Void stdgo._internal.runtime.Runtime_xtestspwrite.xTestSPWrite(_t);
}
