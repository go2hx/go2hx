package stdgo.runtime;
final compiler : String = stdgo._internal.runtime.Runtime_compiler.compiler;
final dlogEnabled : Bool = stdgo._internal.runtime.Runtime_dlogenabled.dlogEnabled;
final debugLogBytes : haxe.UInt64 = stdgo._internal.runtime.Runtime_debuglogbytes.debugLogBytes;
final debugLogStringLimit : haxe.UInt64 = stdgo._internal.runtime.Runtime_debuglogstringlimit.debugLogStringLimit;
final tracebackInnerFrames : haxe.UInt64 = stdgo._internal.runtime.Runtime_tracebackinnerframes.tracebackInnerFrames;
final tracebackOuterFrames : haxe.UInt64 = stdgo._internal.runtime.Runtime_tracebackouterframes.tracebackOuterFrames;
final preemptMSupported : Bool = stdgo._internal.runtime.Runtime_preemptmsupported.preemptMSupported;
final hashLoad : StdTypes.Float = stdgo._internal.runtime.Runtime_hashload.hashLoad;
final ptrSize : haxe.UInt64 = stdgo._internal.runtime.Runtime_ptrsize.ptrSize;
final profBufBlocking : T_profBufReadMode = stdgo._internal.runtime.Runtime_profbufblocking.profBufBlocking;
final profBufNonBlocking : T_profBufReadMode = stdgo._internal.runtime.Runtime_profbufnonblocking.profBufNonBlocking;
final runtimeHmapSize : stdgo.GoUIntptr = stdgo._internal.runtime.Runtime_runtimehmapsize.runtimeHmapSize;
final pageSize : haxe.UInt64 = stdgo._internal.runtime.Runtime_pagesize.pageSize;
final pallocChunkPages : haxe.UInt64 = stdgo._internal.runtime.Runtime_pallocchunkpages.pallocChunkPages;
final pageAlloc64Bit : haxe.UInt64 = stdgo._internal.runtime.Runtime_pagealloc64bit.pageAlloc64Bit;
final pallocSumBytes : stdgo.GoUIntptr = stdgo._internal.runtime.Runtime_pallocsumbytes.pallocSumBytes;
final pageCachePages : stdgo.GoUIntptr = stdgo._internal.runtime.Runtime_pagecachepages.pageCachePages;
final semTableSize : haxe.UInt64 = stdgo._internal.runtime.Runtime_semtablesize.semTableSize;
final timeHistSubBucketBits : haxe.UInt64 = stdgo._internal.runtime.Runtime_timehistsubbucketbits.timeHistSubBucketBits;
final timeHistNumSubBuckets : haxe.UInt64 = stdgo._internal.runtime.Runtime_timehistnumsubbuckets.timeHistNumSubBuckets;
final timeHistNumBuckets : haxe.UInt64 = stdgo._internal.runtime.Runtime_timehistnumbuckets.timeHistNumBuckets;
final timeHistMinBucketBits : haxe.UInt64 = stdgo._internal.runtime.Runtime_timehistminbucketbits.timeHistMinBucketBits;
final timeHistMaxBucketBits : haxe.UInt64 = stdgo._internal.runtime.Runtime_timehistmaxbucketbits.timeHistMaxBucketBits;
final raceenabled : Bool = stdgo._internal.runtime.Runtime_raceenabled.raceenabled;
final gCBackgroundUtilization : StdTypes.Float = stdgo._internal.runtime.Runtime_gcbackgroundutilization.gCBackgroundUtilization;
final gCGoalUtilization : StdTypes.Float = stdgo._internal.runtime.Runtime_gcgoalutilization.gCGoalUtilization;
final defaultHeapMinimum : haxe.UInt64 = stdgo._internal.runtime.Runtime_defaultheapminimum.defaultHeapMinimum;
final memoryLimitHeapGoalHeadroomPercent : haxe.UInt64 = stdgo._internal.runtime.Runtime_memorylimitheapgoalheadroompercent.memoryLimitHeapGoalHeadroomPercent;
final memoryLimitMinHeapGoalHeadroom : haxe.UInt64 = stdgo._internal.runtime.Runtime_memorylimitminheapgoalheadroom.memoryLimitMinHeapGoalHeadroom;
final capacityPerProc : StdTypes.Float = stdgo._internal.runtime.Runtime_capacityperproc.capacityPerProc;
final gCCPULimiterUpdatePeriod : StdTypes.Float = stdgo._internal.runtime.Runtime_gccpulimiterupdateperiod.gCCPULimiterUpdatePeriod;
final scavengePercent : haxe.UInt64 = stdgo._internal.runtime.Runtime_scavengepercent.scavengePercent;
final gTrackingPeriod : haxe.UInt64 = stdgo._internal.runtime.Runtime_gtrackingperiod.gTrackingPeriod;
final userArenaChunkBytes : stdgo.GoUIntptr = stdgo._internal.runtime.Runtime_userarenachunkbytes.userArenaChunkBytes;
final framePointerEnabled : Bool = stdgo._internal.runtime.Runtime_framepointerenabled.framePointerEnabled;
final gOOS : String = stdgo._internal.runtime.Runtime_goos.gOOS;
final gOARCH : String = stdgo._internal.runtime.Runtime_goarch.gOARCH;
var fmtSprintf(get, set) : (String, haxe.Rest<stdgo.AnyInterface>) -> String;
private function get_fmtSprintf():(String, haxe.Rest<stdgo.AnyInterface>) -> String return (_0, _1) -> stdgo._internal.runtime.Runtime_fmtsprintf.fmtSprintf(_0, _1);
private function set_fmtSprintf(v:(String, haxe.Rest<stdgo.AnyInterface>) -> String):(String, haxe.Rest<stdgo.AnyInterface>) -> String {
        stdgo._internal.runtime.Runtime_fmtsprintf.fmtSprintf = v;
        return v;
    }
var testenvOptimizationOff(get, set) : () -> Bool;
private function get_testenvOptimizationOff():() -> Bool return () -> stdgo._internal.runtime.Runtime_testenvoptimizationoff.testenvOptimizationOff();
private function set_testenvOptimizationOff(v:() -> Bool):() -> Bool {
        stdgo._internal.runtime.Runtime_testenvoptimizationoff.testenvOptimizationOff = v;
        return v;
    }
var memProfileRate(get, set) : StdTypes.Int;
private function get_memProfileRate():StdTypes.Int return stdgo._internal.runtime.Runtime_memprofilerate.memProfileRate;
private function set_memProfileRate(v:StdTypes.Int):StdTypes.Int {
        stdgo._internal.runtime.Runtime_memprofilerate.memProfileRate = (v : stdgo.GoInt);
        return v;
    }
var atomicFields(get, set) : Array<stdgo.GoUIntptr>;
private function get_atomicFields():Array<stdgo.GoUIntptr> return [for (i in stdgo._internal.runtime.Runtime_atomicfields.atomicFields) i];
private function set_atomicFields(v:Array<stdgo.GoUIntptr>):Array<stdgo.GoUIntptr> {
        stdgo._internal.runtime.Runtime_atomicfields.atomicFields = ([for (i in v) (i : stdgo.GoUIntptr)] : stdgo.Slice<stdgo.GoUIntptr>);
        return v;
    }
var atomicVariables(get, set) : Array<stdgo._internal.unsafe.Unsafe.UnsafePointer>;
private function get_atomicVariables():Array<stdgo._internal.unsafe.Unsafe.UnsafePointer> return [for (i in stdgo._internal.runtime.Runtime_atomicvariables.atomicVariables) i];
private function set_atomicVariables(v:Array<stdgo._internal.unsafe.Unsafe.UnsafePointer>):Array<stdgo._internal.unsafe.Unsafe.UnsafePointer> {
        stdgo._internal.runtime.Runtime_atomicvariables.atomicVariables = ([for (i in v) i] : stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>);
        return v;
    }
var dlog(get, set) : () -> T_dlogger;
private function get_dlog():() -> T_dlogger return () -> stdgo._internal.runtime.Runtime_dlog.dlog();
private function set_dlog(v:() -> T_dlogger):() -> T_dlogger {
        stdgo._internal.runtime.Runtime_dlog.dlog = v;
        return v;
    }
var fadd64(get, set) : (haxe.UInt64, haxe.UInt64) -> haxe.UInt64;
private function get_fadd64():(haxe.UInt64, haxe.UInt64) -> haxe.UInt64 return (_0, _1) -> stdgo._internal.runtime.Runtime_fadd64.fadd64(_0, _1);
private function set_fadd64(v:(haxe.UInt64, haxe.UInt64) -> haxe.UInt64):(haxe.UInt64, haxe.UInt64) -> haxe.UInt64 {
        stdgo._internal.runtime.Runtime_fadd64.fadd64 = v;
        return v;
    }
var fsub64(get, set) : (haxe.UInt64, haxe.UInt64) -> haxe.UInt64;
private function get_fsub64():(haxe.UInt64, haxe.UInt64) -> haxe.UInt64 return (_0, _1) -> stdgo._internal.runtime.Runtime_fsub64.fsub64(_0, _1);
private function set_fsub64(v:(haxe.UInt64, haxe.UInt64) -> haxe.UInt64):(haxe.UInt64, haxe.UInt64) -> haxe.UInt64 {
        stdgo._internal.runtime.Runtime_fsub64.fsub64 = v;
        return v;
    }
var fmul64(get, set) : (haxe.UInt64, haxe.UInt64) -> haxe.UInt64;
private function get_fmul64():(haxe.UInt64, haxe.UInt64) -> haxe.UInt64 return (_0, _1) -> stdgo._internal.runtime.Runtime_fmul64.fmul64(_0, _1);
private function set_fmul64(v:(haxe.UInt64, haxe.UInt64) -> haxe.UInt64):(haxe.UInt64, haxe.UInt64) -> haxe.UInt64 {
        stdgo._internal.runtime.Runtime_fmul64.fmul64 = v;
        return v;
    }
var fdiv64(get, set) : (haxe.UInt64, haxe.UInt64) -> haxe.UInt64;
private function get_fdiv64():(haxe.UInt64, haxe.UInt64) -> haxe.UInt64 return (_0, _1) -> stdgo._internal.runtime.Runtime_fdiv64.fdiv64(_0, _1);
private function set_fdiv64(v:(haxe.UInt64, haxe.UInt64) -> haxe.UInt64):(haxe.UInt64, haxe.UInt64) -> haxe.UInt64 {
        stdgo._internal.runtime.Runtime_fdiv64.fdiv64 = v;
        return v;
    }
var f64to32(get, set) : haxe.UInt64 -> std.UInt;
private function get_f64to32():haxe.UInt64 -> std.UInt return _0 -> stdgo._internal.runtime.Runtime_f64to32.f64to32(_0);
private function set_f64to32(v:haxe.UInt64 -> std.UInt):haxe.UInt64 -> std.UInt {
        stdgo._internal.runtime.Runtime_f64to32.f64to32 = v;
        return v;
    }
var f32to64(get, set) : std.UInt -> haxe.UInt64;
private function get_f32to64():std.UInt -> haxe.UInt64 return _0 -> stdgo._internal.runtime.Runtime_f32to64.f32to64(_0);
private function set_f32to64(v:std.UInt -> haxe.UInt64):std.UInt -> haxe.UInt64 {
        stdgo._internal.runtime.Runtime_f32to64.f32to64 = v;
        return v;
    }
var fcmp64(get, set) : (haxe.UInt64, haxe.UInt64) -> stdgo.Tuple<StdTypes.Int, Bool>;
private function get_fcmp64():(haxe.UInt64, haxe.UInt64) -> stdgo.Tuple<StdTypes.Int, Bool> return (_0, _1) -> stdgo._internal.runtime.Runtime_fcmp64.fcmp64(_0, _1);
private function set_fcmp64(v:(haxe.UInt64, haxe.UInt64) -> stdgo.Tuple<StdTypes.Int, Bool>):(haxe.UInt64, haxe.UInt64) -> stdgo.Tuple<StdTypes.Int, Bool> {
        stdgo._internal.runtime.Runtime_fcmp64.fcmp64 = v;
        return v;
    }
var fintto64(get, set) : haxe.Int64 -> haxe.UInt64;
private function get_fintto64():haxe.Int64 -> haxe.UInt64 return _0 -> stdgo._internal.runtime.Runtime_fintto64.fintto64(_0);
private function set_fintto64(v:haxe.Int64 -> haxe.UInt64):haxe.Int64 -> haxe.UInt64 {
        stdgo._internal.runtime.Runtime_fintto64.fintto64 = v;
        return v;
    }
var f64toint(get, set) : haxe.UInt64 -> stdgo.Tuple<haxe.Int64, Bool>;
private function get_f64toint():haxe.UInt64 -> stdgo.Tuple<haxe.Int64, Bool> return _0 -> stdgo._internal.runtime.Runtime_f64toint.f64toint(_0);
private function set_f64toint(v:haxe.UInt64 -> stdgo.Tuple<haxe.Int64, Bool>):haxe.UInt64 -> stdgo.Tuple<haxe.Int64, Bool> {
        stdgo._internal.runtime.Runtime_f64toint.f64toint = v;
        return v;
    }
var entersyscall(get, set) : () -> Void;
private function get_entersyscall():() -> Void return () -> stdgo._internal.runtime.Runtime_entersyscall.entersyscall();
private function set_entersyscall(v:() -> Void):() -> Void {
        stdgo._internal.runtime.Runtime_entersyscall.entersyscall = v;
        return v;
    }
var exitsyscall(get, set) : () -> Void;
private function get_exitsyscall():() -> Void return () -> stdgo._internal.runtime.Runtime_exitsyscall.exitsyscall();
private function set_exitsyscall(v:() -> Void):() -> Void {
        stdgo._internal.runtime.Runtime_exitsyscall.exitsyscall = v;
        return v;
    }
var lockedOSThread(get, set) : () -> Bool;
private function get_lockedOSThread():() -> Bool return () -> stdgo._internal.runtime.Runtime_lockedosthread.lockedOSThread();
private function set_lockedOSThread(v:() -> Bool):() -> Bool {
        stdgo._internal.runtime.Runtime_lockedosthread.lockedOSThread = v;
        return v;
    }
var xadduintptr(get, set) : (stdgo.Pointer<stdgo.GoUIntptr>, stdgo.GoUIntptr) -> stdgo.GoUIntptr;
private function get_xadduintptr():(stdgo.Pointer<stdgo.GoUIntptr>, stdgo.GoUIntptr) -> stdgo.GoUIntptr return (_0, _1) -> stdgo._internal.runtime.Runtime_xadduintptr.xadduintptr(_0, _1);
private function set_xadduintptr(v:(stdgo.Pointer<stdgo.GoUIntptr>, stdgo.GoUIntptr) -> stdgo.GoUIntptr):(stdgo.Pointer<stdgo.GoUIntptr>, stdgo.GoUIntptr) -> stdgo.GoUIntptr {
        stdgo._internal.runtime.Runtime_xadduintptr.xadduintptr = v;
        return v;
    }
var fastlog2(get, set) : StdTypes.Float -> StdTypes.Float;
private function get_fastlog2():StdTypes.Float -> StdTypes.Float return _0 -> stdgo._internal.runtime.Runtime_fastlog2.fastlog2(_0);
private function set_fastlog2(v:StdTypes.Float -> StdTypes.Float):StdTypes.Float -> StdTypes.Float {
        stdgo._internal.runtime.Runtime_fastlog2.fastlog2 = v;
        return v;
    }
var atoi(get, set) : String -> stdgo.Tuple<StdTypes.Int, Bool>;
private function get_atoi():String -> stdgo.Tuple<StdTypes.Int, Bool> return _0 -> stdgo._internal.runtime.Runtime_atoi.atoi(_0);
private function set_atoi(v:String -> stdgo.Tuple<StdTypes.Int, Bool>):String -> stdgo.Tuple<StdTypes.Int, Bool> {
        stdgo._internal.runtime.Runtime_atoi.atoi = v;
        return v;
    }
var atoi32(get, set) : String -> stdgo.Tuple<StdTypes.Int, Bool>;
private function get_atoi32():String -> stdgo.Tuple<StdTypes.Int, Bool> return _0 -> stdgo._internal.runtime.Runtime_atoi32.atoi32(_0);
private function set_atoi32(v:String -> stdgo.Tuple<StdTypes.Int, Bool>):String -> stdgo.Tuple<StdTypes.Int, Bool> {
        stdgo._internal.runtime.Runtime_atoi32.atoi32 = v;
        return v;
    }
var parseByteCount(get, set) : String -> stdgo.Tuple<haxe.Int64, Bool>;
private function get_parseByteCount():String -> stdgo.Tuple<haxe.Int64, Bool> return _0 -> stdgo._internal.runtime.Runtime_parsebytecount.parseByteCount(_0);
private function set_parseByteCount(v:String -> stdgo.Tuple<haxe.Int64, Bool>):String -> stdgo.Tuple<haxe.Int64, Bool> {
        stdgo._internal.runtime.Runtime_parsebytecount.parseByteCount = v;
        return v;
    }
var nanotime(get, set) : () -> haxe.Int64;
private function get_nanotime():() -> haxe.Int64 return () -> stdgo._internal.runtime.Runtime_nanotime.nanotime();
private function set_nanotime(v:() -> haxe.Int64):() -> haxe.Int64 {
        stdgo._internal.runtime.Runtime_nanotime.nanotime = v;
        return v;
    }
var netpollBreak(get, set) : () -> Void;
private function get_netpollBreak():() -> Void return () -> stdgo._internal.runtime.Runtime_netpollbreak.netpollBreak();
private function set_netpollBreak(v:() -> Void):() -> Void {
        stdgo._internal.runtime.Runtime_netpollbreak.netpollBreak = v;
        return v;
    }
var usleep(get, set) : std.UInt -> Void;
private function get_usleep():std.UInt -> Void return _0 -> stdgo._internal.runtime.Runtime_usleep.usleep(_0);
private function set_usleep(v:std.UInt -> Void):std.UInt -> Void {
        stdgo._internal.runtime.Runtime_usleep.usleep = v;
        return v;
    }
var physPageSize(get, set) : stdgo.GoUIntptr;
private function get_physPageSize():stdgo.GoUIntptr return stdgo._internal.runtime.Runtime_physpagesize.physPageSize;
private function set_physPageSize(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        stdgo._internal.runtime.Runtime_physpagesize.physPageSize = (v : stdgo.GoUIntptr);
        return v;
    }
var physHugePageSize(get, set) : stdgo.GoUIntptr;
private function get_physHugePageSize():stdgo.GoUIntptr return stdgo._internal.runtime.Runtime_physhugepagesize.physHugePageSize;
private function set_physHugePageSize(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        stdgo._internal.runtime.Runtime_physhugepagesize.physHugePageSize = (v : stdgo.GoUIntptr);
        return v;
    }
var netpollGenericInit(get, set) : () -> Void;
private function get_netpollGenericInit():() -> Void return () -> stdgo._internal.runtime.Runtime_netpollgenericinit.netpollGenericInit();
private function set_netpollGenericInit(v:() -> Void):() -> Void {
        stdgo._internal.runtime.Runtime_netpollgenericinit.netpollGenericInit = v;
        return v;
    }
var memmove(get, set) : (stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> Void;
private function get_memmove():(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> Void return (_0, _1, _2) -> stdgo._internal.runtime.Runtime_memmove.memmove(_0, _1, _2);
private function set_memmove(v:(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> Void):(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> Void {
        stdgo._internal.runtime.Runtime_memmove.memmove = v;
        return v;
    }
var memclrNoHeapPointers(get, set) : (stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> Void;
private function get_memclrNoHeapPointers():(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> Void return (_0, _1) -> stdgo._internal.runtime.Runtime_memclrnoheappointers.memclrNoHeapPointers(_0, _1);
private function set_memclrNoHeapPointers(v:(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> Void):(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> Void {
        stdgo._internal.runtime.Runtime_memclrnoheappointers.memclrNoHeapPointers = v;
        return v;
    }
var cgoCheckPointer(get, set) : (stdgo.AnyInterface, stdgo.AnyInterface) -> Void;
private function get_cgoCheckPointer():(stdgo.AnyInterface, stdgo.AnyInterface) -> Void return (_0, _1) -> stdgo._internal.runtime.Runtime_cgocheckpointer.cgoCheckPointer(_0, _1);
private function set_cgoCheckPointer(v:(stdgo.AnyInterface, stdgo.AnyInterface) -> Void):(stdgo.AnyInterface, stdgo.AnyInterface) -> Void {
        stdgo._internal.runtime.Runtime_cgocheckpointer.cgoCheckPointer = v;
        return v;
    }
var lockPartialOrder(get, set) : Array<Array<T_lockRank>>;
private function get_lockPartialOrder():Array<Array<T_lockRank>> return [for (i in stdgo._internal.runtime.Runtime_lockpartialorder.lockPartialOrder) [for (i in i) i]];
private function set_lockPartialOrder(v:Array<Array<T_lockRank>>):Array<Array<T_lockRank>> {
        stdgo._internal.runtime.Runtime_lockpartialorder.lockPartialOrder = ([for (i in v) ([for (i in i) i] : stdgo.Slice<stdgo._internal.runtime.Runtime_t_lockrank.T_lockRank>)] : stdgo.Slice<stdgo.Slice<stdgo._internal.runtime.Runtime_t_lockrank.T_lockRank>>);
        return v;
    }
var stringHash(get, set) : (String, stdgo.GoUIntptr) -> stdgo.GoUIntptr;
private function get_stringHash():(String, stdgo.GoUIntptr) -> stdgo.GoUIntptr return (_0, _1) -> stdgo._internal.runtime.Runtime_stringhash.stringHash(_0, _1);
private function set_stringHash(v:(String, stdgo.GoUIntptr) -> stdgo.GoUIntptr):(String, stdgo.GoUIntptr) -> stdgo.GoUIntptr {
        stdgo._internal.runtime.Runtime_stringhash.stringHash = v;
        return v;
    }
var bytesHash(get, set) : (Array<std.UInt>, stdgo.GoUIntptr) -> stdgo.GoUIntptr;
private function get_bytesHash():(Array<std.UInt>, stdgo.GoUIntptr) -> stdgo.GoUIntptr return (_0, _1) -> stdgo._internal.runtime.Runtime_byteshash.bytesHash([for (i in _0) i], _1);
private function set_bytesHash(v:(Array<std.UInt>, stdgo.GoUIntptr) -> stdgo.GoUIntptr):(Array<std.UInt>, stdgo.GoUIntptr) -> stdgo.GoUIntptr {
        stdgo._internal.runtime.Runtime_byteshash.bytesHash = v;
        return v;
    }
var int32Hash(get, set) : (std.UInt, stdgo.GoUIntptr) -> stdgo.GoUIntptr;
private function get_int32Hash():(std.UInt, stdgo.GoUIntptr) -> stdgo.GoUIntptr return (_0, _1) -> stdgo._internal.runtime.Runtime_int32hash.int32Hash(_0, _1);
private function set_int32Hash(v:(std.UInt, stdgo.GoUIntptr) -> stdgo.GoUIntptr):(std.UInt, stdgo.GoUIntptr) -> stdgo.GoUIntptr {
        stdgo._internal.runtime.Runtime_int32hash.int32Hash = v;
        return v;
    }
var int64Hash(get, set) : (haxe.UInt64, stdgo.GoUIntptr) -> stdgo.GoUIntptr;
private function get_int64Hash():(haxe.UInt64, stdgo.GoUIntptr) -> stdgo.GoUIntptr return (_0, _1) -> stdgo._internal.runtime.Runtime_int64hash.int64Hash(_0, _1);
private function set_int64Hash(v:(haxe.UInt64, stdgo.GoUIntptr) -> stdgo.GoUIntptr):(haxe.UInt64, stdgo.GoUIntptr) -> stdgo.GoUIntptr {
        stdgo._internal.runtime.Runtime_int64hash.int64Hash = v;
        return v;
    }
var memHash(get, set) : (stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr, stdgo.GoUIntptr) -> stdgo.GoUIntptr;
private function get_memHash():(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr, stdgo.GoUIntptr) -> stdgo.GoUIntptr return (_0, _1, _2) -> stdgo._internal.runtime.Runtime_memhash.memHash(_0, _1, _2);
private function set_memHash(v:(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr, stdgo.GoUIntptr) -> stdgo.GoUIntptr):(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr, stdgo.GoUIntptr) -> stdgo.GoUIntptr {
        stdgo._internal.runtime.Runtime_memhash.memHash = v;
        return v;
    }
var memHash32(get, set) : (stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> stdgo.GoUIntptr;
private function get_memHash32():(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> stdgo.GoUIntptr return (_0, _1) -> stdgo._internal.runtime.Runtime_memhash32.memHash32(_0, _1);
private function set_memHash32(v:(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> stdgo.GoUIntptr):(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> stdgo.GoUIntptr {
        stdgo._internal.runtime.Runtime_memhash32.memHash32 = v;
        return v;
    }
var memHash64(get, set) : (stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> stdgo.GoUIntptr;
private function get_memHash64():(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> stdgo.GoUIntptr return (_0, _1) -> stdgo._internal.runtime.Runtime_memhash64.memHash64(_0, _1);
private function set_memHash64(v:(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> stdgo.GoUIntptr):(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> stdgo.GoUIntptr {
        stdgo._internal.runtime.Runtime_memhash64.memHash64 = v;
        return v;
    }
var efaceHash(get, set) : (stdgo.AnyInterface, stdgo.GoUIntptr) -> stdgo.GoUIntptr;
private function get_efaceHash():(stdgo.AnyInterface, stdgo.GoUIntptr) -> stdgo.GoUIntptr return (_0, _1) -> stdgo._internal.runtime.Runtime_efacehash.efaceHash(_0, _1);
private function set_efaceHash(v:(stdgo.AnyInterface, stdgo.GoUIntptr) -> stdgo.GoUIntptr):(stdgo.AnyInterface, stdgo.GoUIntptr) -> stdgo.GoUIntptr {
        stdgo._internal.runtime.Runtime_efacehash.efaceHash = v;
        return v;
    }
var ifaceHash(get, set) : (stdgo.AnyInterface, stdgo.GoUIntptr) -> stdgo.GoUIntptr;
private function get_ifaceHash():(stdgo.AnyInterface, stdgo.GoUIntptr) -> stdgo.GoUIntptr return (_0, _1) -> stdgo._internal.runtime.Runtime_ifacehash.ifaceHash(_0, _1);
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
var open(get, set) : (stdgo.Pointer<std.UInt>, StdTypes.Int, StdTypes.Int) -> StdTypes.Int;
private function get_open():(stdgo.Pointer<std.UInt>, StdTypes.Int, StdTypes.Int) -> StdTypes.Int return (_0, _1, _2) -> stdgo._internal.runtime.Runtime_open.open(_0, _1, _2);
private function set_open(v:(stdgo.Pointer<std.UInt>, StdTypes.Int, StdTypes.Int) -> StdTypes.Int):(stdgo.Pointer<std.UInt>, StdTypes.Int, StdTypes.Int) -> StdTypes.Int {
        stdgo._internal.runtime.Runtime_open.open = v;
        return v;
    }
var close(get, set) : StdTypes.Int -> StdTypes.Int;
private function get_close():StdTypes.Int -> StdTypes.Int return _0 -> stdgo._internal.runtime.Runtime_close.close(_0);
private function set_close(v:StdTypes.Int -> StdTypes.Int):StdTypes.Int -> StdTypes.Int {
        stdgo._internal.runtime.Runtime_close.close = v;
        return v;
    }
var read(get, set) : (StdTypes.Int, stdgo._internal.unsafe.Unsafe.UnsafePointer, StdTypes.Int) -> StdTypes.Int;
private function get_read():(StdTypes.Int, stdgo._internal.unsafe.Unsafe.UnsafePointer, StdTypes.Int) -> StdTypes.Int return (_0, _1, _2) -> stdgo._internal.runtime.Runtime_read.read(_0, _1, _2);
private function set_read(v:(StdTypes.Int, stdgo._internal.unsafe.Unsafe.UnsafePointer, StdTypes.Int) -> StdTypes.Int):(StdTypes.Int, stdgo._internal.unsafe.Unsafe.UnsafePointer, StdTypes.Int) -> StdTypes.Int {
        stdgo._internal.runtime.Runtime_read.read = v;
        return v;
    }
var write(get, set) : (stdgo.GoUIntptr, stdgo._internal.unsafe.Unsafe.UnsafePointer, StdTypes.Int) -> StdTypes.Int;
private function get_write():(stdgo.GoUIntptr, stdgo._internal.unsafe.Unsafe.UnsafePointer, StdTypes.Int) -> StdTypes.Int return (_0, _1, _2) -> stdgo._internal.runtime.Runtime_write.write(_0, _1, _2);
private function set_write(v:(stdgo.GoUIntptr, stdgo._internal.unsafe.Unsafe.UnsafePointer, StdTypes.Int) -> StdTypes.Int):(stdgo.GoUIntptr, stdgo._internal.unsafe.Unsafe.UnsafePointer, StdTypes.Int) -> StdTypes.Int {
        stdgo._internal.runtime.Runtime_write.write = v;
        return v;
    }
var forceGCPeriod(get, set) : stdgo.Pointer<haxe.Int64>;
private function get_forceGCPeriod():stdgo.Pointer<haxe.Int64> return stdgo._internal.runtime.Runtime_forcegcperiod.forceGCPeriod;
private function set_forceGCPeriod(v:stdgo.Pointer<haxe.Int64>):stdgo.Pointer<haxe.Int64> {
        stdgo._internal.runtime.Runtime_forcegcperiod.forceGCPeriod = v;
        return v;
    }
var readUnaligned32(get, set) : stdgo._internal.unsafe.Unsafe.UnsafePointer -> std.UInt;
private function get_readUnaligned32():stdgo._internal.unsafe.Unsafe.UnsafePointer -> std.UInt return _0 -> stdgo._internal.runtime.Runtime_readunaligned32.readUnaligned32(_0);
private function set_readUnaligned32(v:stdgo._internal.unsafe.Unsafe.UnsafePointer -> std.UInt):stdgo._internal.unsafe.Unsafe.UnsafePointer -> std.UInt {
        stdgo._internal.runtime.Runtime_readunaligned32.readUnaligned32 = v;
        return v;
    }
var readUnaligned64(get, set) : stdgo._internal.unsafe.Unsafe.UnsafePointer -> haxe.UInt64;
private function get_readUnaligned64():stdgo._internal.unsafe.Unsafe.UnsafePointer -> haxe.UInt64 return _0 -> stdgo._internal.runtime.Runtime_readunaligned64.readUnaligned64(_0);
private function set_readUnaligned64(v:stdgo._internal.unsafe.Unsafe.UnsafePointer -> haxe.UInt64):stdgo._internal.unsafe.Unsafe.UnsafePointer -> haxe.UInt64 {
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
private function set_baseChunkIdx(v:ChunkIdx):ChunkIdx {
        stdgo._internal.runtime.Runtime_basechunkidx.baseChunkIdx = v;
        return v;
    }
var semacquire(get, set) : stdgo.Pointer<std.UInt> -> Void;
private function get_semacquire():stdgo.Pointer<std.UInt> -> Void return _0 -> stdgo._internal.runtime.Runtime_semacquire.semacquire(_0);
private function set_semacquire(v:stdgo.Pointer<std.UInt> -> Void):stdgo.Pointer<std.UInt> -> Void {
        stdgo._internal.runtime.Runtime_semacquire.semacquire = v;
        return v;
    }
var semrelease1(get, set) : (stdgo.Pointer<std.UInt>, Bool, StdTypes.Int) -> Void;
private function get_semrelease1():(stdgo.Pointer<std.UInt>, Bool, StdTypes.Int) -> Void return (_0, _1, _2) -> stdgo._internal.runtime.Runtime_semrelease1.semrelease1(_0, _1, _2);
private function set_semrelease1(v:(stdgo.Pointer<std.UInt>, Bool, StdTypes.Int) -> Void):(stdgo.Pointer<std.UInt>, Bool, StdTypes.Int) -> Void {
        stdgo._internal.runtime.Runtime_semrelease1.semrelease1 = v;
        return v;
    }
var timeHistogramMetricsBuckets(get, set) : () -> Array<StdTypes.Float>;
private function get_timeHistogramMetricsBuckets():() -> Array<StdTypes.Float> return () -> stdgo._internal.runtime.Runtime_timehistogrammetricsbuckets.timeHistogramMetricsBuckets();
private function set_timeHistogramMetricsBuckets(v:() -> Array<StdTypes.Float>):() -> Array<StdTypes.Float> {
        stdgo._internal.runtime.Runtime_timehistogrammetricsbuckets.timeHistogramMetricsBuckets = v;
        return v;
    }
var gCTestMoveStackOnNextCall(get, set) : () -> Void;
private function get_gCTestMoveStackOnNextCall():() -> Void return () -> stdgo._internal.runtime.Runtime_gctestmovestackonnextcall.gCTestMoveStackOnNextCall();
private function set_gCTestMoveStackOnNextCall(v:() -> Void):() -> Void {
        stdgo._internal.runtime.Runtime_gctestmovestackonnextcall.gCTestMoveStackOnNextCall = v;
        return v;
    }
var timediv(get, set) : (haxe.Int64, StdTypes.Int, stdgo.Pointer<StdTypes.Int>) -> StdTypes.Int;
private function get_timediv():(haxe.Int64, StdTypes.Int, stdgo.Pointer<StdTypes.Int>) -> StdTypes.Int return (_0, _1, _2) -> stdgo._internal.runtime.Runtime_timediv.timediv(_0, _1, _2);
private function set_timediv(v:(haxe.Int64, StdTypes.Int, stdgo.Pointer<StdTypes.Int>) -> StdTypes.Int):(haxe.Int64, StdTypes.Int, stdgo.Pointer<StdTypes.Int>) -> StdTypes.Int {
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
private function get_alignUp():(stdgo.GoUIntptr, stdgo.GoUIntptr) -> stdgo.GoUIntptr return (_0, _1) -> stdgo._internal.runtime.Runtime_alignup.alignUp(_0, _1);
private function set_alignUp(v:(stdgo.GoUIntptr, stdgo.GoUIntptr) -> stdgo.GoUIntptr):(stdgo.GoUIntptr, stdgo.GoUIntptr) -> stdgo.GoUIntptr {
        stdgo._internal.runtime.Runtime_alignup.alignUp = v;
        return v;
    }
var isPinned(get, set) : stdgo._internal.unsafe.Unsafe.UnsafePointer -> Bool;
private function get_isPinned():stdgo._internal.unsafe.Unsafe.UnsafePointer -> Bool return _0 -> stdgo._internal.runtime.Runtime_ispinned.isPinned(_0);
private function set_isPinned(v:stdgo._internal.unsafe.Unsafe.UnsafePointer -> Bool):stdgo._internal.unsafe.Unsafe.UnsafePointer -> Bool {
        stdgo._internal.runtime.Runtime_ispinned.isPinned = v;
        return v;
    }
var getPinCounter(get, set) : stdgo._internal.unsafe.Unsafe.UnsafePointer -> stdgo.Pointer<stdgo.GoUIntptr>;
private function get_getPinCounter():stdgo._internal.unsafe.Unsafe.UnsafePointer -> stdgo.Pointer<stdgo.GoUIntptr> return _0 -> stdgo._internal.runtime.Runtime_getpincounter.getPinCounter(_0);
private function set_getPinCounter(v:stdgo._internal.unsafe.Unsafe.UnsafePointer -> stdgo.Pointer<stdgo.GoUIntptr>):stdgo._internal.unsafe.Unsafe.UnsafePointer -> stdgo.Pointer<stdgo.GoUIntptr> {
        stdgo._internal.runtime.Runtime_getpincounter.getPinCounter = v;
        return v;
    }
class Error_static_extension {
    static public function runtimeError(t:stdgo._internal.runtime.Runtime_error.Error):Void {
        stdgo._internal.runtime.Runtime_error_static_extension.Error_static_extension.runtimeError(t);
    }
}
@:interface @:forward abstract Error(stdgo._internal.runtime.Runtime_error.Error) from stdgo._internal.runtime.Runtime_error.Error to stdgo._internal.runtime.Runtime_error.Error {
    @:from
    static function fromHaxeInterface(x:{ function runtimeError():Void; }):Error {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Error = { runtimeError : () -> x.runtimeError(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T_stringer_static_extension {
    static public function string(t:stdgo._internal.runtime.Runtime_t_stringer.T_stringer):String {
        return stdgo._internal.runtime.Runtime_t_stringer_static_extension.T_stringer_static_extension.string(t);
    }
}
@:interface @:dox(hide) @:forward abstract T_stringer(stdgo._internal.runtime.Runtime_t_stringer.T_stringer) from stdgo._internal.runtime.Runtime_t_stringer.T_stringer to stdgo._internal.runtime.Runtime_t_stringer.T_stringer {
    @:from
    static function fromHaxeInterface(x:{ function string():String; }):T_stringer {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_stringer = { string : () -> x.string(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class TestingT_static_extension {
    static public function tempDir(t:stdgo._internal.runtime.Runtime_testingt.TestingT):String {
        return stdgo._internal.runtime.Runtime_testingt_static_extension.TestingT_static_extension.tempDir(t);
    }
    static public function skipped(t:stdgo._internal.runtime.Runtime_testingt.TestingT):Bool {
        return stdgo._internal.runtime.Runtime_testingt_static_extension.TestingT_static_extension.skipped(t);
    }
    static public function skipf(t:stdgo._internal.runtime.Runtime_testingt.TestingT, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _format = (_format : stdgo.GoString);
        stdgo._internal.runtime.Runtime_testingt_static_extension.TestingT_static_extension.skipf(t, _format, ...[for (i in _args) i]);
    }
    static public function skipNow(t:stdgo._internal.runtime.Runtime_testingt.TestingT):Void {
        stdgo._internal.runtime.Runtime_testingt_static_extension.TestingT_static_extension.skipNow(t);
    }
    static public function skip(t:stdgo._internal.runtime.Runtime_testingt.TestingT, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.runtime.Runtime_testingt_static_extension.TestingT_static_extension.skip(t, ...[for (i in _args) i]);
    }
    static public function setenv(t:stdgo._internal.runtime.Runtime_testingt.TestingT, _key:String, _value:String):Void {
        final _key = (_key : stdgo.GoString);
        final _value = (_value : stdgo.GoString);
        stdgo._internal.runtime.Runtime_testingt_static_extension.TestingT_static_extension.setenv(t, _key, _value);
    }
    static public function name(t:stdgo._internal.runtime.Runtime_testingt.TestingT):String {
        return stdgo._internal.runtime.Runtime_testingt_static_extension.TestingT_static_extension.name(t);
    }
    static public function logf(t:stdgo._internal.runtime.Runtime_testingt.TestingT, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _format = (_format : stdgo.GoString);
        stdgo._internal.runtime.Runtime_testingt_static_extension.TestingT_static_extension.logf(t, _format, ...[for (i in _args) i]);
    }
    static public function log(t:stdgo._internal.runtime.Runtime_testingt.TestingT, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.runtime.Runtime_testingt_static_extension.TestingT_static_extension.log(t, ...[for (i in _args) i]);
    }
    static public function helper(t:stdgo._internal.runtime.Runtime_testingt.TestingT):Void {
        stdgo._internal.runtime.Runtime_testingt_static_extension.TestingT_static_extension.helper(t);
    }
    static public function fatalf(t:stdgo._internal.runtime.Runtime_testingt.TestingT, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _format = (_format : stdgo.GoString);
        stdgo._internal.runtime.Runtime_testingt_static_extension.TestingT_static_extension.fatalf(t, _format, ...[for (i in _args) i]);
    }
    static public function fatal(t:stdgo._internal.runtime.Runtime_testingt.TestingT, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.runtime.Runtime_testingt_static_extension.TestingT_static_extension.fatal(t, ...[for (i in _args) i]);
    }
    static public function failed(t:stdgo._internal.runtime.Runtime_testingt.TestingT):Bool {
        return stdgo._internal.runtime.Runtime_testingt_static_extension.TestingT_static_extension.failed(t);
    }
    static public function failNow(t:stdgo._internal.runtime.Runtime_testingt.TestingT):Void {
        stdgo._internal.runtime.Runtime_testingt_static_extension.TestingT_static_extension.failNow(t);
    }
    static public function fail(t:stdgo._internal.runtime.Runtime_testingt.TestingT):Void {
        stdgo._internal.runtime.Runtime_testingt_static_extension.TestingT_static_extension.fail(t);
    }
    static public function errorf(t:stdgo._internal.runtime.Runtime_testingt.TestingT, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _format = (_format : stdgo.GoString);
        stdgo._internal.runtime.Runtime_testingt_static_extension.TestingT_static_extension.errorf(t, _format, ...[for (i in _args) i]);
    }
    static public function error(t:stdgo._internal.runtime.Runtime_testingt.TestingT, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.runtime.Runtime_testingt_static_extension.TestingT_static_extension.error(t, ...[for (i in _args) i]);
    }
    static public function cleanup(t:stdgo._internal.runtime.Runtime_testingt.TestingT, _0:() -> Void):Void {
        final _0 = _0;
        stdgo._internal.runtime.Runtime_testingt_static_extension.TestingT_static_extension.cleanup(t, _0);
    }
}
@:interface @:forward abstract TestingT(stdgo._internal.runtime.Runtime_testingt.TestingT) from stdgo._internal.runtime.Runtime_testingt.TestingT to stdgo._internal.runtime.Runtime_testingt.TestingT {
    @:from
    static function fromHaxeInterface(x:{ function cleanup(_0:() -> Void):Void; function error(_args:haxe.Rest<stdgo.AnyInterface>):Void; function errorf(_format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void; function fail():Void; function failNow():Void; function failed():Bool; function fatal(_args:haxe.Rest<stdgo.AnyInterface>):Void; function fatalf(_format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void; function helper():Void; function log(_args:haxe.Rest<stdgo.AnyInterface>):Void; function logf(_format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void; function name():String; function setenv(_key:String, _value:String):Void; function skip(_args:haxe.Rest<stdgo.AnyInterface>):Void; function skipNow():Void; function skipf(_format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void; function skipped():Bool; function tempDir():String; }):TestingT {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:TestingT = { cleanup : _0 -> x.cleanup(() -> _0()), error : _0 -> x.error(_0), errorf : (_0, _1) -> x.errorf(_0, _1), fail : () -> x.fail(), failNow : () -> x.failNow(), failed : () -> x.failed(), fatal : _0 -> x.fatal(_0), fatalf : (_0, _1) -> x.fatalf(_0, _1), helper : () -> x.helper(), log : _0 -> x.log(_0), logf : (_0, _1) -> x.logf(_0, _1), name : () -> x.name(), setenv : (_0, _1) -> x.setenv(_0, _1), skip : _0 -> x.skip(_0), skipNow : () -> x.skipNow(), skipf : (_0, _1) -> x.skipf(_0, _1), skipped : () -> x.skipped(), tempDir : () -> x.tempDir(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T_floaty_static_extension {

}
@:interface @:dox(hide) @:forward abstract T_floaty(stdgo._internal.runtime.Runtime_t_floaty.T_floaty) from stdgo._internal.runtime.Runtime_t_floaty.T_floaty to stdgo._internal.runtime.Runtime_t_floaty.T_floaty {
    @:from
    static function fromHaxeInterface(x:{ }):T_floaty {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_floaty = { __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:structInit @:using(stdgo.runtime.Runtime.T_userArena_static_extension) @:dox(hide) abstract T_userArena(stdgo._internal.runtime.Runtime_t_userarena.T_userArena) from stdgo._internal.runtime.Runtime_t_userarena.T_userArena to stdgo._internal.runtime.Runtime_t_userarena.T_userArena {
    public function new() this = new stdgo._internal.runtime.Runtime_t_userarena.T_userArena();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_liveUserArenaChunk_static_extension) @:dox(hide) abstract T_liveUserArenaChunk(stdgo._internal.runtime.Runtime_t_liveuserarenachunk.T_liveUserArenaChunk) from stdgo._internal.runtime.Runtime_t_liveuserarenachunk.T_liveUserArenaChunk to stdgo._internal.runtime.Runtime_t_liveuserarenachunk.T_liveUserArenaChunk {
    public function new() this = new stdgo._internal.runtime.Runtime_t_liveuserarenachunk.T_liveUserArenaChunk();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_argset_static_extension) @:dox(hide) abstract T_argset(stdgo._internal.runtime.Runtime_t_argset.T_argset) from stdgo._internal.runtime.Runtime_t_argset.T_argset to stdgo._internal.runtime.Runtime_t_argset.T_argset {
    public function new() this = new stdgo._internal.runtime.Runtime_t_argset.T_argset();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_hchan_static_extension) @:dox(hide) abstract T_hchan(stdgo._internal.runtime.Runtime_t_hchan.T_hchan) from stdgo._internal.runtime.Runtime_t_hchan.T_hchan to stdgo._internal.runtime.Runtime_t_hchan.T_hchan {
    public function new() this = new stdgo._internal.runtime.Runtime_t_hchan.T_hchan();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_waitq_static_extension) @:dox(hide) abstract T_waitq(stdgo._internal.runtime.Runtime_t_waitq.T_waitq) from stdgo._internal.runtime.Runtime_t_waitq.T_waitq to stdgo._internal.runtime.Runtime_t_waitq.T_waitq {
    public function new() this = new stdgo._internal.runtime.Runtime_t_waitq.T_waitq();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_cpuProfile_static_extension) @:dox(hide) abstract T_cpuProfile(stdgo._internal.runtime.Runtime_t_cpuprofile.T_cpuProfile) from stdgo._internal.runtime.Runtime_t_cpuprofile.T_cpuProfile to stdgo._internal.runtime.Runtime_t_cpuprofile.T_cpuProfile {
    public function new() this = new stdgo._internal.runtime.Runtime_t_cpuprofile.T_cpuProfile();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_dlogger_static_extension) @:dox(hide) abstract T_dlogger(stdgo._internal.runtime.Runtime_t_dlogger.T_dlogger) from stdgo._internal.runtime.Runtime_t_dlogger.T_dlogger to stdgo._internal.runtime.Runtime_t_dlogger.T_dlogger {
    public function new() this = new stdgo._internal.runtime.Runtime_t_dlogger.T_dlogger();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_debugLogWriter_static_extension) @:dox(hide) abstract T_debugLogWriter(stdgo._internal.runtime.Runtime_t_debuglogwriter.T_debugLogWriter) from stdgo._internal.runtime.Runtime_t_debuglogwriter.T_debugLogWriter to stdgo._internal.runtime.Runtime_t_debuglogwriter.T_debugLogWriter {
    public function new() this = new stdgo._internal.runtime.Runtime_t_debuglogwriter.T_debugLogWriter();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_debugLogBuf_static_extension) @:dox(hide) abstract T_debugLogBuf(stdgo._internal.runtime.Runtime_t_debuglogbuf.T_debugLogBuf) from stdgo._internal.runtime.Runtime_t_debuglogbuf.T_debugLogBuf to stdgo._internal.runtime.Runtime_t_debuglogbuf.T_debugLogBuf {
    public function new() this = new stdgo._internal.runtime.Runtime_t_debuglogbuf.T_debugLogBuf();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_debugLogReader_static_extension) @:dox(hide) abstract T_debugLogReader(stdgo._internal.runtime.Runtime_t_debuglogreader.T_debugLogReader) from stdgo._internal.runtime.Runtime_t_debuglogreader.T_debugLogReader to stdgo._internal.runtime.Runtime_t_debuglogreader.T_debugLogReader {
    public function new() this = new stdgo._internal.runtime.Runtime_t_debuglogreader.T_debugLogReader();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_dlogPerM_static_extension) @:dox(hide) abstract T_dlogPerM(stdgo._internal.runtime.Runtime_t_dlogperm.T_dlogPerM) from stdgo._internal.runtime.Runtime_t_dlogperm.T_dlogPerM to stdgo._internal.runtime.Runtime_t_dlogperm.T_dlogPerM {
    public function new() this = new stdgo._internal.runtime.Runtime_t_dlogperm.T_dlogPerM();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.TypeAssertionError_static_extension) abstract TypeAssertionError(stdgo._internal.runtime.Runtime_typeassertionerror.TypeAssertionError) from stdgo._internal.runtime.Runtime_typeassertionerror.TypeAssertionError to stdgo._internal.runtime.Runtime_typeassertionerror.TypeAssertionError {
    public function new() this = new stdgo._internal.runtime.Runtime_typeassertionerror.TypeAssertionError();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_errorAddressString_static_extension) @:dox(hide) abstract T_errorAddressString(stdgo._internal.runtime.Runtime_t_erroraddressstring.T_errorAddressString) from stdgo._internal.runtime.Runtime_t_erroraddressstring.T_errorAddressString to stdgo._internal.runtime.Runtime_t_erroraddressstring.T_errorAddressString {
    public function new() this = new stdgo._internal.runtime.Runtime_t_erroraddressstring.T_errorAddressString();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_boundsError_static_extension) @:dox(hide) abstract T_boundsError(stdgo._internal.runtime.Runtime_t_boundserror.T_boundsError) from stdgo._internal.runtime.Runtime_t_boundserror.T_boundsError to stdgo._internal.runtime.Runtime_t_boundserror.T_boundsError {
    public function new() this = new stdgo._internal.runtime.Runtime_t_boundserror.T_boundsError();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_exitHook_static_extension) @:dox(hide) abstract T_exitHook(stdgo._internal.runtime.Runtime_t_exithook.T_exitHook) from stdgo._internal.runtime.Runtime_t_exithook.T_exitHook to stdgo._internal.runtime.Runtime_t_exithook.T_exitHook {
    public function new() this = new stdgo._internal.runtime.Runtime_t_exithook.T_exitHook();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.LFNode_static_extension) abstract LFNode(stdgo._internal.runtime.Runtime_lfnode.LFNode) from stdgo._internal.runtime.Runtime_lfnode.LFNode to stdgo._internal.runtime.Runtime_lfnode.LFNode {
    public var next(get, set) : haxe.UInt64;
    function get_next():haxe.UInt64 return this.next;
    function set_next(v:haxe.UInt64):haxe.UInt64 {
        this.next = (v : stdgo.GoUInt64);
        return v;
    }
    public var pushcnt(get, set) : stdgo.GoUIntptr;
    function get_pushcnt():stdgo.GoUIntptr return this.pushcnt;
    function set_pushcnt(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this.pushcnt = (v : stdgo.GoUIntptr);
        return v;
    }
    public function new(?next:haxe.UInt64, ?pushcnt:stdgo.GoUIntptr) this = new stdgo._internal.runtime.Runtime_lfnode.LFNode((next : stdgo.GoUInt64), (pushcnt : stdgo.GoUIntptr));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_blockWrapper_static_extension) @:dox(hide) abstract T_blockWrapper(stdgo._internal.runtime.Runtime_t_blockwrapper.T_blockWrapper) from stdgo._internal.runtime.Runtime_t_blockwrapper.T_blockWrapper to stdgo._internal.runtime.Runtime_t_blockwrapper.T_blockWrapper {
    public function new() this = new stdgo._internal.runtime.Runtime_t_blockwrapper.T_blockWrapper();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_arrayBlockWrapper_static_extension) @:dox(hide) abstract T_arrayBlockWrapper(stdgo._internal.runtime.Runtime_t_arrayblockwrapper.T_arrayBlockWrapper) from stdgo._internal.runtime.Runtime_t_arrayblockwrapper.T_arrayBlockWrapper to stdgo._internal.runtime.Runtime_t_arrayblockwrapper.T_arrayBlockWrapper {
    public function new() this = new stdgo._internal.runtime.Runtime_t_arrayblockwrapper.T_arrayBlockWrapper();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_arrayLargeBlockWrapper_static_extension) @:dox(hide) abstract T_arrayLargeBlockWrapper(stdgo._internal.runtime.Runtime_t_arraylargeblockwrapper.T_arrayLargeBlockWrapper) from stdgo._internal.runtime.Runtime_t_arraylargeblockwrapper.T_arrayLargeBlockWrapper to stdgo._internal.runtime.Runtime_t_arraylargeblockwrapper.T_arrayLargeBlockWrapper {
    public function new() this = new stdgo._internal.runtime.Runtime_t_arraylargeblockwrapper.T_arrayLargeBlockWrapper();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.RWMutex_static_extension) abstract RWMutex(stdgo._internal.runtime.Runtime_rwmutex.RWMutex) from stdgo._internal.runtime.Runtime_rwmutex.RWMutex to stdgo._internal.runtime.Runtime_rwmutex.RWMutex {
    public function new() this = new stdgo._internal.runtime.Runtime_rwmutex.RWMutex();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.AddrRange_static_extension) abstract AddrRange(stdgo._internal.runtime.Runtime_addrrange.AddrRange) from stdgo._internal.runtime.Runtime_addrrange.AddrRange to stdgo._internal.runtime.Runtime_addrrange.AddrRange {
    public function new() this = new stdgo._internal.runtime.Runtime_addrrange.AddrRange();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.AddrRanges_static_extension) abstract AddrRanges(stdgo._internal.runtime.Runtime_addrranges.AddrRanges) from stdgo._internal.runtime.Runtime_addrranges.AddrRanges to stdgo._internal.runtime.Runtime_addrranges.AddrRanges {
    public function new() this = new stdgo._internal.runtime.Runtime_addrranges.AddrRanges();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.BitRange_static_extension) abstract BitRange(stdgo._internal.runtime.Runtime_bitrange.BitRange) from stdgo._internal.runtime.Runtime_bitrange.BitRange to stdgo._internal.runtime.Runtime_bitrange.BitRange {
    public var i(get, set) : std.UInt;
    function get_i():std.UInt return this.i;
    function set_i(v:std.UInt):std.UInt {
        this.i = (v : stdgo.GoUInt);
        return v;
    }
    public var n(get, set) : std.UInt;
    function get_n():std.UInt return this.n;
    function set_n(v:std.UInt):std.UInt {
        this.n = (v : stdgo.GoUInt);
        return v;
    }
    public function new(?i:std.UInt, ?n:std.UInt) this = new stdgo._internal.runtime.Runtime_bitrange.BitRange((i : stdgo.GoUInt), (n : stdgo.GoUInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.BitsMismatch_static_extension) abstract BitsMismatch(stdgo._internal.runtime.Runtime_bitsmismatch.BitsMismatch) from stdgo._internal.runtime.Runtime_bitsmismatch.BitsMismatch to stdgo._internal.runtime.Runtime_bitsmismatch.BitsMismatch {
    public var base(get, set) : stdgo.GoUIntptr;
    function get_base():stdgo.GoUIntptr return this.base;
    function set_base(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this.base = (v : stdgo.GoUIntptr);
        return v;
    }
    public var got(get, set) : haxe.UInt64;
    function get_got():haxe.UInt64 return this.got;
    function set_got(v:haxe.UInt64):haxe.UInt64 {
        this.got = (v : stdgo.GoUInt64);
        return v;
    }
    public var want(get, set) : haxe.UInt64;
    function get_want():haxe.UInt64 return this.want;
    function set_want(v:haxe.UInt64):haxe.UInt64 {
        this.want = (v : stdgo.GoUInt64);
        return v;
    }
    public function new(?base:stdgo.GoUIntptr, ?got:haxe.UInt64, ?want:haxe.UInt64) this = new stdgo._internal.runtime.Runtime_bitsmismatch.BitsMismatch((base : stdgo.GoUIntptr), (got : stdgo.GoUInt64), (want : stdgo.GoUInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.SemTable_static_extension) abstract SemTable(stdgo._internal.runtime.Runtime_semtable.SemTable) from stdgo._internal.runtime.Runtime_semtable.SemTable to stdgo._internal.runtime.Runtime_semtable.SemTable {
    public function new() this = new stdgo._internal.runtime.Runtime_semtable.SemTable();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.GCController_static_extension) abstract GCController(stdgo._internal.runtime.Runtime_gccontroller.GCController) from stdgo._internal.runtime.Runtime_gccontroller.GCController to stdgo._internal.runtime.Runtime_gccontroller.GCController {
    public function new() this = new stdgo._internal.runtime.Runtime_gccontroller.GCController();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.GCControllerReviseDelta_static_extension) abstract GCControllerReviseDelta(stdgo._internal.runtime.Runtime_gccontrollerrevisedelta.GCControllerReviseDelta) from stdgo._internal.runtime.Runtime_gccontrollerrevisedelta.GCControllerReviseDelta to stdgo._internal.runtime.Runtime_gccontrollerrevisedelta.GCControllerReviseDelta {
    public var heapLive(get, set) : haxe.Int64;
    function get_heapLive():haxe.Int64 return this.heapLive;
    function set_heapLive(v:haxe.Int64):haxe.Int64 {
        this.heapLive = (v : stdgo.GoInt64);
        return v;
    }
    public var heapScan(get, set) : haxe.Int64;
    function get_heapScan():haxe.Int64 return this.heapScan;
    function set_heapScan(v:haxe.Int64):haxe.Int64 {
        this.heapScan = (v : stdgo.GoInt64);
        return v;
    }
    public var heapScanWork(get, set) : haxe.Int64;
    function get_heapScanWork():haxe.Int64 return this.heapScanWork;
    function set_heapScanWork(v:haxe.Int64):haxe.Int64 {
        this.heapScanWork = (v : stdgo.GoInt64);
        return v;
    }
    public var stackScanWork(get, set) : haxe.Int64;
    function get_stackScanWork():haxe.Int64 return this.stackScanWork;
    function set_stackScanWork(v:haxe.Int64):haxe.Int64 {
        this.stackScanWork = (v : stdgo.GoInt64);
        return v;
    }
    public var globalsScanWork(get, set) : haxe.Int64;
    function get_globalsScanWork():haxe.Int64 return this.globalsScanWork;
    function set_globalsScanWork(v:haxe.Int64):haxe.Int64 {
        this.globalsScanWork = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?heapLive:haxe.Int64, ?heapScan:haxe.Int64, ?heapScanWork:haxe.Int64, ?stackScanWork:haxe.Int64, ?globalsScanWork:haxe.Int64) this = new stdgo._internal.runtime.Runtime_gccontrollerrevisedelta.GCControllerReviseDelta((heapLive : stdgo.GoInt64), (heapScan : stdgo.GoInt64), (heapScanWork : stdgo.GoInt64), (stackScanWork : stdgo.GoInt64), (globalsScanWork : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.PIController_static_extension) abstract PIController(stdgo._internal.runtime.Runtime_picontroller.PIController) from stdgo._internal.runtime.Runtime_picontroller.PIController to stdgo._internal.runtime.Runtime_picontroller.PIController {
    public function new() this = new stdgo._internal.runtime.Runtime_picontroller.PIController();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.GCCPULimiter_static_extension) abstract GCCPULimiter(stdgo._internal.runtime.Runtime_gccpulimiter.GCCPULimiter) from stdgo._internal.runtime.Runtime_gccpulimiter.GCCPULimiter to stdgo._internal.runtime.Runtime_gccpulimiter.GCCPULimiter {
    public function new() this = new stdgo._internal.runtime.Runtime_gccpulimiter.GCCPULimiter();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.Scavenger_static_extension) abstract Scavenger(stdgo._internal.runtime.Runtime_scavenger.Scavenger) from stdgo._internal.runtime.Runtime_scavenger.Scavenger to stdgo._internal.runtime.Runtime_scavenger.Scavenger {
    public var sleep(get, set) : haxe.Int64 -> haxe.Int64;
    function get_sleep():haxe.Int64 -> haxe.Int64 return _0 -> this.sleep(_0);
    function set_sleep(v:haxe.Int64 -> haxe.Int64):haxe.Int64 -> haxe.Int64 {
        this.sleep = v;
        return v;
    }
    public var scavenge(get, set) : stdgo.GoUIntptr -> stdgo.Tuple<stdgo.GoUIntptr, haxe.Int64>;
    function get_scavenge():stdgo.GoUIntptr -> stdgo.Tuple<stdgo.GoUIntptr, haxe.Int64> return _0 -> this.scavenge(_0);
    function set_scavenge(v:stdgo.GoUIntptr -> stdgo.Tuple<stdgo.GoUIntptr, haxe.Int64>):stdgo.GoUIntptr -> stdgo.Tuple<stdgo.GoUIntptr, haxe.Int64> {
        this.scavenge = v;
        return v;
    }
    public var shouldStop(get, set) : () -> Bool;
    function get_shouldStop():() -> Bool return () -> this.shouldStop();
    function set_shouldStop(v:() -> Bool):() -> Bool {
        this.shouldStop = v;
        return v;
    }
    public var goMaxProcs(get, set) : () -> StdTypes.Int;
    function get_goMaxProcs():() -> StdTypes.Int return () -> this.goMaxProcs();
    function set_goMaxProcs(v:() -> StdTypes.Int):() -> StdTypes.Int {
        this.goMaxProcs = v;
        return v;
    }
    public function new(?sleep:haxe.Int64 -> haxe.Int64, ?scavenge:stdgo.GoUIntptr -> stdgo.Tuple<stdgo.GoUIntptr, haxe.Int64>, ?shouldStop:() -> Bool, ?goMaxProcs:() -> StdTypes.Int) this = new stdgo._internal.runtime.Runtime_scavenger.Scavenger(sleep, scavenge, shouldStop, goMaxProcs);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.ScavengeIndex_static_extension) abstract ScavengeIndex(stdgo._internal.runtime.Runtime_scavengeindex.ScavengeIndex) from stdgo._internal.runtime.Runtime_scavengeindex.ScavengeIndex to stdgo._internal.runtime.Runtime_scavengeindex.ScavengeIndex {
    public function new() this = new stdgo._internal.runtime.Runtime_scavengeindex.ScavengeIndex();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.UserArena_static_extension) abstract UserArena(stdgo._internal.runtime.Runtime_userarena.UserArena) from stdgo._internal.runtime.Runtime_userarena.UserArena to stdgo._internal.runtime.Runtime_userarena.UserArena {
    public function new() this = new stdgo._internal.runtime.Runtime_userarena.UserArena();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_typeCacheBucket_static_extension) @:dox(hide) abstract T_typeCacheBucket(stdgo._internal.runtime.Runtime_t_typecachebucket.T_typeCacheBucket) from stdgo._internal.runtime.Runtime_t_typecachebucket.T_typeCacheBucket to stdgo._internal.runtime.Runtime_t_typecachebucket.T_typeCacheBucket {
    public function new() this = new stdgo._internal.runtime.Runtime_t_typecachebucket.T_typeCacheBucket();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_childInfo_static_extension) @:dox(hide) abstract T_childInfo(stdgo._internal.runtime.Runtime_t_childinfo.T_childInfo) from stdgo._internal.runtime.Runtime_t_childinfo.T_childInfo to stdgo._internal.runtime.Runtime_t_childinfo.T_childInfo {
    public function new() this = new stdgo._internal.runtime.Runtime_t_childinfo.T_childInfo();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_timeHistogram_static_extension) @:dox(hide) abstract T_timeHistogram(stdgo._internal.runtime.Runtime_t_timehistogram.T_timeHistogram) from stdgo._internal.runtime.Runtime_t_timehistogram.T_timeHistogram to stdgo._internal.runtime.Runtime_t_timehistogram.T_timeHistogram {
    public function new() this = new stdgo._internal.runtime.Runtime_t_timehistogram.T_timeHistogram();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_itabTableType_static_extension) @:dox(hide) abstract T_itabTableType(stdgo._internal.runtime.Runtime_t_itabtabletype.T_itabTableType) from stdgo._internal.runtime.Runtime_t_itabtabletype.T_itabTableType to stdgo._internal.runtime.Runtime_t_itabtabletype.T_itabTableType {
    public function new() this = new stdgo._internal.runtime.Runtime_t_itabtabletype.T_itabTableType();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_noteWithTimeout_static_extension) @:dox(hide) abstract T_noteWithTimeout(stdgo._internal.runtime.Runtime_t_notewithtimeout.T_noteWithTimeout) from stdgo._internal.runtime.Runtime_t_notewithtimeout.T_noteWithTimeout to stdgo._internal.runtime.Runtime_t_notewithtimeout.T_noteWithTimeout {
    public function new() this = new stdgo._internal.runtime.Runtime_t_notewithtimeout.T_noteWithTimeout();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_event_static_extension) @:dox(hide) abstract T_event(stdgo._internal.runtime.Runtime_t_event.T_event) from stdgo._internal.runtime.Runtime_t_event.T_event to stdgo._internal.runtime.Runtime_t_event.T_event {
    public function new() this = new stdgo._internal.runtime.Runtime_t_event.T_event();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_timeoutEvent_static_extension) @:dox(hide) abstract T_timeoutEvent(stdgo._internal.runtime.Runtime_t_timeoutevent.T_timeoutEvent) from stdgo._internal.runtime.Runtime_t_timeoutevent.T_timeoutEvent to stdgo._internal.runtime.Runtime_t_timeoutevent.T_timeoutEvent {
    public function new() this = new stdgo._internal.runtime.Runtime_t_timeoutevent.T_timeoutEvent();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_lockRankStruct_static_extension) @:dox(hide) abstract T_lockRankStruct(stdgo._internal.runtime.Runtime_t_lockrankstruct.T_lockRankStruct) from stdgo._internal.runtime.Runtime_t_lockrankstruct.T_lockRankStruct to stdgo._internal.runtime.Runtime_t_lockrankstruct.T_lockRankStruct {
    public function new() this = new stdgo._internal.runtime.Runtime_t_lockrankstruct.T_lockRankStruct();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_persistentAlloc_static_extension) @:dox(hide) abstract T_persistentAlloc(stdgo._internal.runtime.Runtime_t_persistentalloc.T_persistentAlloc) from stdgo._internal.runtime.Runtime_t_persistentalloc.T_persistentAlloc to stdgo._internal.runtime.Runtime_t_persistentalloc.T_persistentAlloc {
    public function new() this = new stdgo._internal.runtime.Runtime_t_persistentalloc.T_persistentAlloc();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_linearAlloc_static_extension) @:dox(hide) abstract T_linearAlloc(stdgo._internal.runtime.Runtime_t_linearalloc.T_linearAlloc) from stdgo._internal.runtime.Runtime_t_linearalloc.T_linearAlloc to stdgo._internal.runtime.Runtime_t_linearalloc.T_linearAlloc {
    public function new() this = new stdgo._internal.runtime.Runtime_t_linearalloc.T_linearAlloc();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_notInHeap_static_extension) @:dox(hide) abstract T_notInHeap(stdgo._internal.runtime.Runtime_t_notinheap.T_notInHeap) from stdgo._internal.runtime.Runtime_t_notinheap.T_notInHeap to stdgo._internal.runtime.Runtime_t_notinheap.T_notInHeap {
    public function new() this = new stdgo._internal.runtime.Runtime_t_notinheap.T_notInHeap();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_hmap_static_extension) @:dox(hide) abstract T_hmap(stdgo._internal.runtime.Runtime_t_hmap.T_hmap) from stdgo._internal.runtime.Runtime_t_hmap.T_hmap to stdgo._internal.runtime.Runtime_t_hmap.T_hmap {
    public var b(get, set) : std.UInt;
    function get_b():std.UInt return this.b;
    function set_b(v:std.UInt):std.UInt {
        this.b = (v : stdgo.GoUInt8);
        return v;
    }
    public function new(?b:std.UInt) this = new stdgo._internal.runtime.Runtime_t_hmap.T_hmap((b : stdgo.GoUInt8));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_mapextra_static_extension) @:dox(hide) abstract T_mapextra(stdgo._internal.runtime.Runtime_t_mapextra.T_mapextra) from stdgo._internal.runtime.Runtime_t_mapextra.T_mapextra to stdgo._internal.runtime.Runtime_t_mapextra.T_mapextra {
    public function new() this = new stdgo._internal.runtime.Runtime_t_mapextra.T_mapextra();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_bmap_static_extension) @:dox(hide) abstract T_bmap(stdgo._internal.runtime.Runtime_t_bmap.T_bmap) from stdgo._internal.runtime.Runtime_t_bmap.T_bmap to stdgo._internal.runtime.Runtime_t_bmap.T_bmap {
    public function new() this = new stdgo._internal.runtime.Runtime_t_bmap.T_bmap();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_hiter_static_extension) @:dox(hide) abstract T_hiter(stdgo._internal.runtime.Runtime_t_hiter.T_hiter) from stdgo._internal.runtime.Runtime_t_hiter.T_hiter to stdgo._internal.runtime.Runtime_t_hiter.T_hiter {
    public var b(get, set) : std.UInt;
    function get_b():std.UInt return this.b;
    function set_b(v:std.UInt):std.UInt {
        this.b = (v : stdgo.GoUInt8);
        return v;
    }
    public function new(?b:std.UInt) this = new stdgo._internal.runtime.Runtime_t_hiter.T_hiter((b : stdgo.GoUInt8));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_evacDst_static_extension) @:dox(hide) abstract T_evacDst(stdgo._internal.runtime.Runtime_t_evacdst.T_evacDst) from stdgo._internal.runtime.Runtime_t_evacdst.T_evacDst to stdgo._internal.runtime.Runtime_t_evacdst.T_evacDst {
    public function new() this = new stdgo._internal.runtime.Runtime_t_evacdst.T_evacDst();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_markBits_static_extension) @:dox(hide) abstract T_markBits(stdgo._internal.runtime.Runtime_t_markbits.T_markBits) from stdgo._internal.runtime.Runtime_t_markbits.T_markBits to stdgo._internal.runtime.Runtime_t_markbits.T_markBits {
    public function new() this = new stdgo._internal.runtime.Runtime_t_markbits.T_markBits();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_heapBits_static_extension) @:dox(hide) abstract T_heapBits(stdgo._internal.runtime.Runtime_t_heapbits.T_heapBits) from stdgo._internal.runtime.Runtime_t_heapbits.T_heapBits to stdgo._internal.runtime.Runtime_t_heapbits.T_heapBits {
    public function new() this = new stdgo._internal.runtime.Runtime_t_heapbits.T_heapBits();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_writeHeapBits_static_extension) @:dox(hide) abstract T_writeHeapBits(stdgo._internal.runtime.Runtime_t_writeheapbits.T_writeHeapBits) from stdgo._internal.runtime.Runtime_t_writeheapbits.T_writeHeapBits to stdgo._internal.runtime.Runtime_t_writeheapbits.T_writeHeapBits {
    public function new() this = new stdgo._internal.runtime.Runtime_t_writeheapbits.T_writeHeapBits();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_mcache_static_extension) @:dox(hide) abstract T_mcache(stdgo._internal.runtime.Runtime_t_mcache.T_mcache) from stdgo._internal.runtime.Runtime_t_mcache.T_mcache to stdgo._internal.runtime.Runtime_t_mcache.T_mcache {
    public function new() this = new stdgo._internal.runtime.Runtime_t_mcache.T_mcache();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_gclink_static_extension) @:dox(hide) abstract T_gclink(stdgo._internal.runtime.Runtime_t_gclink.T_gclink) from stdgo._internal.runtime.Runtime_t_gclink.T_gclink to stdgo._internal.runtime.Runtime_t_gclink.T_gclink {
    public function new() this = new stdgo._internal.runtime.Runtime_t_gclink.T_gclink();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_stackfreelist_static_extension) @:dox(hide) abstract T_stackfreelist(stdgo._internal.runtime.Runtime_t_stackfreelist.T_stackfreelist) from stdgo._internal.runtime.Runtime_t_stackfreelist.T_stackfreelist to stdgo._internal.runtime.Runtime_t_stackfreelist.T_stackfreelist {
    public function new() this = new stdgo._internal.runtime.Runtime_t_stackfreelist.T_stackfreelist();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_mcentral_static_extension) @:dox(hide) abstract T_mcentral(stdgo._internal.runtime.Runtime_t_mcentral.T_mcentral) from stdgo._internal.runtime.Runtime_t_mcentral.T_mcentral to stdgo._internal.runtime.Runtime_t_mcentral.T_mcentral {
    public function new() this = new stdgo._internal.runtime.Runtime_t_mcentral.T_mcentral();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_checkmarksMap_static_extension) @:dox(hide) abstract T_checkmarksMap(stdgo._internal.runtime.Runtime_t_checkmarksmap.T_checkmarksMap) from stdgo._internal.runtime.Runtime_t_checkmarksmap.T_checkmarksMap to stdgo._internal.runtime.Runtime_t_checkmarksmap.T_checkmarksMap {
    public function new() this = new stdgo._internal.runtime.Runtime_t_checkmarksmap.T_checkmarksMap();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_memHdr_static_extension) @:dox(hide) abstract T_memHdr(stdgo._internal.runtime.Runtime_t_memhdr.T_memHdr) from stdgo._internal.runtime.Runtime_t_memhdr.T_memHdr to stdgo._internal.runtime.Runtime_t_memhdr.T_memHdr {
    public function new() this = new stdgo._internal.runtime.Runtime_t_memhdr.T_memHdr();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_metricData_static_extension) @:dox(hide) abstract T_metricData(stdgo._internal.runtime.Runtime_t_metricdata.T_metricData) from stdgo._internal.runtime.Runtime_t_metricdata.T_metricData to stdgo._internal.runtime.Runtime_t_metricdata.T_metricData {
    public function new() this = new stdgo._internal.runtime.Runtime_t_metricdata.T_metricData();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_heapStatsAggregate_static_extension) @:dox(hide) abstract T_heapStatsAggregate(stdgo._internal.runtime.Runtime_t_heapstatsaggregate.T_heapStatsAggregate) from stdgo._internal.runtime.Runtime_t_heapstatsaggregate.T_heapStatsAggregate to stdgo._internal.runtime.Runtime_t_heapstatsaggregate.T_heapStatsAggregate {
    public function new() this = new stdgo._internal.runtime.Runtime_t_heapstatsaggregate.T_heapStatsAggregate();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_sysStatsAggregate_static_extension) @:dox(hide) abstract T_sysStatsAggregate(stdgo._internal.runtime.Runtime_t_sysstatsaggregate.T_sysStatsAggregate) from stdgo._internal.runtime.Runtime_t_sysstatsaggregate.T_sysStatsAggregate to stdgo._internal.runtime.Runtime_t_sysstatsaggregate.T_sysStatsAggregate {
    public function new() this = new stdgo._internal.runtime.Runtime_t_sysstatsaggregate.T_sysStatsAggregate();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_cpuStatsAggregate_static_extension) @:dox(hide) abstract T_cpuStatsAggregate(stdgo._internal.runtime.Runtime_t_cpustatsaggregate.T_cpuStatsAggregate) from stdgo._internal.runtime.Runtime_t_cpustatsaggregate.T_cpuStatsAggregate to stdgo._internal.runtime.Runtime_t_cpustatsaggregate.T_cpuStatsAggregate {
    public function new() this = new stdgo._internal.runtime.Runtime_t_cpustatsaggregate.T_cpuStatsAggregate();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_gcStatsAggregate_static_extension) @:dox(hide) abstract T_gcStatsAggregate(stdgo._internal.runtime.Runtime_t_gcstatsaggregate.T_gcStatsAggregate) from stdgo._internal.runtime.Runtime_t_gcstatsaggregate.T_gcStatsAggregate to stdgo._internal.runtime.Runtime_t_gcstatsaggregate.T_gcStatsAggregate {
    public function new() this = new stdgo._internal.runtime.Runtime_t_gcstatsaggregate.T_gcStatsAggregate();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_statAggregate_static_extension) @:dox(hide) abstract T_statAggregate(stdgo._internal.runtime.Runtime_t_stataggregate.T_statAggregate) from stdgo._internal.runtime.Runtime_t_stataggregate.T_statAggregate to stdgo._internal.runtime.Runtime_t_stataggregate.T_statAggregate {
    public function new() this = new stdgo._internal.runtime.Runtime_t_stataggregate.T_statAggregate();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_metricSample_static_extension) @:dox(hide) abstract T_metricSample(stdgo._internal.runtime.Runtime_t_metricsample.T_metricSample) from stdgo._internal.runtime.Runtime_t_metricsample.T_metricSample to stdgo._internal.runtime.Runtime_t_metricsample.T_metricSample {
    public function new() this = new stdgo._internal.runtime.Runtime_t_metricsample.T_metricSample();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_metricValue_static_extension) @:dox(hide) abstract T_metricValue(stdgo._internal.runtime.Runtime_t_metricvalue.T_metricValue) from stdgo._internal.runtime.Runtime_t_metricvalue.T_metricValue to stdgo._internal.runtime.Runtime_t_metricvalue.T_metricValue {
    public function new() this = new stdgo._internal.runtime.Runtime_t_metricvalue.T_metricValue();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_metricFloat64Histogram_static_extension) @:dox(hide) abstract T_metricFloat64Histogram(stdgo._internal.runtime.Runtime_t_metricfloat64histogram.T_metricFloat64Histogram) from stdgo._internal.runtime.Runtime_t_metricfloat64histogram.T_metricFloat64Histogram to stdgo._internal.runtime.Runtime_t_metricfloat64histogram.T_metricFloat64Histogram {
    public function new() this = new stdgo._internal.runtime.Runtime_t_metricfloat64histogram.T_metricFloat64Histogram();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_metricName_static_extension) @:dox(hide) abstract T_metricName(stdgo._internal.runtime.Runtime_t_metricname.T_metricName) from stdgo._internal.runtime.Runtime_t_metricname.T_metricName to stdgo._internal.runtime.Runtime_t_metricname.T_metricName {
    public function new() this = new stdgo._internal.runtime.Runtime_t_metricname.T_metricName();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_finblock_static_extension) @:dox(hide) abstract T_finblock(stdgo._internal.runtime.Runtime_t_finblock.T_finblock) from stdgo._internal.runtime.Runtime_t_finblock.T_finblock to stdgo._internal.runtime.Runtime_t_finblock.T_finblock {
    public function new() this = new stdgo._internal.runtime.Runtime_t_finblock.T_finblock();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_finalizer_static_extension) @:dox(hide) abstract T_finalizer(stdgo._internal.runtime.Runtime_t_finalizer.T_finalizer) from stdgo._internal.runtime.Runtime_t_finalizer.T_finalizer to stdgo._internal.runtime.Runtime_t_finalizer.T_finalizer {
    public function new() this = new stdgo._internal.runtime.Runtime_t_finalizer.T_finalizer();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_fixalloc_static_extension) @:dox(hide) abstract T_fixalloc(stdgo._internal.runtime.Runtime_t_fixalloc.T_fixalloc) from stdgo._internal.runtime.Runtime_t_fixalloc.T_fixalloc to stdgo._internal.runtime.Runtime_t_fixalloc.T_fixalloc {
    public function new() this = new stdgo._internal.runtime.Runtime_t_fixalloc.T_fixalloc();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_mlink_static_extension) @:dox(hide) abstract T_mlink(stdgo._internal.runtime.Runtime_t_mlink.T_mlink) from stdgo._internal.runtime.Runtime_t_mlink.T_mlink to stdgo._internal.runtime.Runtime_t_mlink.T_mlink {
    public function new() this = new stdgo._internal.runtime.Runtime_t_mlink.T_mlink();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_workType_static_extension) @:dox(hide) abstract T_workType(stdgo._internal.runtime.Runtime_t_worktype.T_workType) from stdgo._internal.runtime.Runtime_t_worktype.T_workType to stdgo._internal.runtime.Runtime_t_worktype.T_workType {
    public function new() this = new stdgo._internal.runtime.Runtime_t_worktype.T_workType();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_gcTrigger_static_extension) @:dox(hide) abstract T_gcTrigger(stdgo._internal.runtime.Runtime_t_gctrigger.T_gcTrigger) from stdgo._internal.runtime.Runtime_t_gctrigger.T_gcTrigger to stdgo._internal.runtime.Runtime_t_gctrigger.T_gcTrigger {
    public function new() this = new stdgo._internal.runtime.Runtime_t_gctrigger.T_gcTrigger();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_gcBgMarkWorkerNode_static_extension) @:dox(hide) abstract T_gcBgMarkWorkerNode(stdgo._internal.runtime.Runtime_t_gcbgmarkworkernode.T_gcBgMarkWorkerNode) from stdgo._internal.runtime.Runtime_t_gcbgmarkworkernode.T_gcBgMarkWorkerNode to stdgo._internal.runtime.Runtime_t_gcbgmarkworkernode.T_gcBgMarkWorkerNode {
    public function new() this = new stdgo._internal.runtime.Runtime_t_gcbgmarkworkernode.T_gcBgMarkWorkerNode();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_gcCPULimiterState_static_extension) @:dox(hide) abstract T_gcCPULimiterState(stdgo._internal.runtime.Runtime_t_gccpulimiterstate.T_gcCPULimiterState) from stdgo._internal.runtime.Runtime_t_gccpulimiterstate.T_gcCPULimiterState to stdgo._internal.runtime.Runtime_t_gccpulimiterstate.T_gcCPULimiterState {
    public function new() this = new stdgo._internal.runtime.Runtime_t_gccpulimiterstate.T_gcCPULimiterState();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_limiterEvent_static_extension) @:dox(hide) abstract T_limiterEvent(stdgo._internal.runtime.Runtime_t_limiterevent.T_limiterEvent) from stdgo._internal.runtime.Runtime_t_limiterevent.T_limiterEvent to stdgo._internal.runtime.Runtime_t_limiterevent.T_limiterEvent {
    public function new() this = new stdgo._internal.runtime.Runtime_t_limiterevent.T_limiterEvent();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_gcControllerState_static_extension) @:dox(hide) abstract T_gcControllerState(stdgo._internal.runtime.Runtime_t_gccontrollerstate.T_gcControllerState) from stdgo._internal.runtime.Runtime_t_gccontrollerstate.T_gcControllerState to stdgo._internal.runtime.Runtime_t_gccontrollerstate.T_gcControllerState {
    public function new() this = new stdgo._internal.runtime.Runtime_t_gccontrollerstate.T_gcControllerState();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_scavengerState_static_extension) @:dox(hide) abstract T_scavengerState(stdgo._internal.runtime.Runtime_t_scavengerstate.T_scavengerState) from stdgo._internal.runtime.Runtime_t_scavengerstate.T_scavengerState to stdgo._internal.runtime.Runtime_t_scavengerstate.T_scavengerState {
    public function new() this = new stdgo._internal.runtime.Runtime_t_scavengerstate.T_scavengerState();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_scavengeIndex_static_extension) @:dox(hide) abstract T_scavengeIndex(stdgo._internal.runtime.Runtime_t_scavengeindex.T_scavengeIndex) from stdgo._internal.runtime.Runtime_t_scavengeindex.T_scavengeIndex to stdgo._internal.runtime.Runtime_t_scavengeindex.T_scavengeIndex {
    public function new() this = new stdgo._internal.runtime.Runtime_t_scavengeindex.T_scavengeIndex();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_atomicScavChunkData_static_extension) @:dox(hide) abstract T_atomicScavChunkData(stdgo._internal.runtime.Runtime_t_atomicscavchunkdata.T_atomicScavChunkData) from stdgo._internal.runtime.Runtime_t_atomicscavchunkdata.T_atomicScavChunkData to stdgo._internal.runtime.Runtime_t_atomicscavchunkdata.T_atomicScavChunkData {
    public function new() this = new stdgo._internal.runtime.Runtime_t_atomicscavchunkdata.T_atomicScavChunkData();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_scavChunkData_static_extension) @:dox(hide) abstract T_scavChunkData(stdgo._internal.runtime.Runtime_t_scavchunkdata.T_scavChunkData) from stdgo._internal.runtime.Runtime_t_scavchunkdata.T_scavChunkData to stdgo._internal.runtime.Runtime_t_scavchunkdata.T_scavChunkData {
    public function new() this = new stdgo._internal.runtime.Runtime_t_scavchunkdata.T_scavChunkData();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_piController_static_extension) @:dox(hide) abstract T_piController(stdgo._internal.runtime.Runtime_t_picontroller.T_piController) from stdgo._internal.runtime.Runtime_t_picontroller.T_piController to stdgo._internal.runtime.Runtime_t_picontroller.T_piController {
    public function new() this = new stdgo._internal.runtime.Runtime_t_picontroller.T_piController();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_stackWorkBuf_static_extension) @:dox(hide) abstract T_stackWorkBuf(stdgo._internal.runtime.Runtime_t_stackworkbuf.T_stackWorkBuf) from stdgo._internal.runtime.Runtime_t_stackworkbuf.T_stackWorkBuf to stdgo._internal.runtime.Runtime_t_stackworkbuf.T_stackWorkBuf {
    public function new() this = new stdgo._internal.runtime.Runtime_t_stackworkbuf.T_stackWorkBuf();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_stackWorkBufHdr_static_extension) @:dox(hide) abstract T_stackWorkBufHdr(stdgo._internal.runtime.Runtime_t_stackworkbufhdr.T_stackWorkBufHdr) from stdgo._internal.runtime.Runtime_t_stackworkbufhdr.T_stackWorkBufHdr to stdgo._internal.runtime.Runtime_t_stackworkbufhdr.T_stackWorkBufHdr {
    public function new() this = new stdgo._internal.runtime.Runtime_t_stackworkbufhdr.T_stackWorkBufHdr();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_stackObjectBuf_static_extension) @:dox(hide) abstract T_stackObjectBuf(stdgo._internal.runtime.Runtime_t_stackobjectbuf.T_stackObjectBuf) from stdgo._internal.runtime.Runtime_t_stackobjectbuf.T_stackObjectBuf to stdgo._internal.runtime.Runtime_t_stackobjectbuf.T_stackObjectBuf {
    public function new() this = new stdgo._internal.runtime.Runtime_t_stackobjectbuf.T_stackObjectBuf();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_stackObjectBufHdr_static_extension) @:dox(hide) abstract T_stackObjectBufHdr(stdgo._internal.runtime.Runtime_t_stackobjectbufhdr.T_stackObjectBufHdr) from stdgo._internal.runtime.Runtime_t_stackobjectbufhdr.T_stackObjectBufHdr to stdgo._internal.runtime.Runtime_t_stackobjectbufhdr.T_stackObjectBufHdr {
    public function new() this = new stdgo._internal.runtime.Runtime_t_stackobjectbufhdr.T_stackObjectBufHdr();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_stackObject_static_extension) @:dox(hide) abstract T_stackObject(stdgo._internal.runtime.Runtime_t_stackobject.T_stackObject) from stdgo._internal.runtime.Runtime_t_stackobject.T_stackObject to stdgo._internal.runtime.Runtime_t_stackobject.T_stackObject {
    public function new() this = new stdgo._internal.runtime.Runtime_t_stackobject.T_stackObject();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_stackScanState_static_extension) @:dox(hide) abstract T_stackScanState(stdgo._internal.runtime.Runtime_t_stackscanstate.T_stackScanState) from stdgo._internal.runtime.Runtime_t_stackscanstate.T_stackScanState to stdgo._internal.runtime.Runtime_t_stackscanstate.T_stackScanState {
    public function new() this = new stdgo._internal.runtime.Runtime_t_stackscanstate.T_stackScanState();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_sweepdata_static_extension) @:dox(hide) abstract T_sweepdata(stdgo._internal.runtime.Runtime_t_sweepdata.T_sweepdata) from stdgo._internal.runtime.Runtime_t_sweepdata.T_sweepdata to stdgo._internal.runtime.Runtime_t_sweepdata.T_sweepdata {
    public function new() this = new stdgo._internal.runtime.Runtime_t_sweepdata.T_sweepdata();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_activeSweep_static_extension) @:dox(hide) abstract T_activeSweep(stdgo._internal.runtime.Runtime_t_activesweep.T_activeSweep) from stdgo._internal.runtime.Runtime_t_activesweep.T_activeSweep to stdgo._internal.runtime.Runtime_t_activesweep.T_activeSweep {
    public function new() this = new stdgo._internal.runtime.Runtime_t_activesweep.T_activeSweep();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_sweepLocker_static_extension) @:dox(hide) abstract T_sweepLocker(stdgo._internal.runtime.Runtime_t_sweeplocker.T_sweepLocker) from stdgo._internal.runtime.Runtime_t_sweeplocker.T_sweepLocker to stdgo._internal.runtime.Runtime_t_sweeplocker.T_sweepLocker {
    public function new() this = new stdgo._internal.runtime.Runtime_t_sweeplocker.T_sweepLocker();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_sweepLocked_static_extension) @:dox(hide) abstract T_sweepLocked(stdgo._internal.runtime.Runtime_t_sweeplocked.T_sweepLocked) from stdgo._internal.runtime.Runtime_t_sweeplocked.T_sweepLocked to stdgo._internal.runtime.Runtime_t_sweeplocked.T_sweepLocked {
    public function new() this = new stdgo._internal.runtime.Runtime_t_sweeplocked.T_sweepLocked();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_gcWork_static_extension) @:dox(hide) abstract T_gcWork(stdgo._internal.runtime.Runtime_t_gcwork.T_gcWork) from stdgo._internal.runtime.Runtime_t_gcwork.T_gcWork to stdgo._internal.runtime.Runtime_t_gcwork.T_gcWork {
    public function new() this = new stdgo._internal.runtime.Runtime_t_gcwork.T_gcWork();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_workbufhdr_static_extension) @:dox(hide) abstract T_workbufhdr(stdgo._internal.runtime.Runtime_t_workbufhdr.T_workbufhdr) from stdgo._internal.runtime.Runtime_t_workbufhdr.T_workbufhdr to stdgo._internal.runtime.Runtime_t_workbufhdr.T_workbufhdr {
    public function new() this = new stdgo._internal.runtime.Runtime_t_workbufhdr.T_workbufhdr();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_workbuf_static_extension) @:dox(hide) abstract T_workbuf(stdgo._internal.runtime.Runtime_t_workbuf.T_workbuf) from stdgo._internal.runtime.Runtime_t_workbuf.T_workbuf to stdgo._internal.runtime.Runtime_t_workbuf.T_workbuf {
    public function new() this = new stdgo._internal.runtime.Runtime_t_workbuf.T_workbuf();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_mheap_static_extension) @:dox(hide) abstract T_mheap(stdgo._internal.runtime.Runtime_t_mheap.T_mheap) from stdgo._internal.runtime.Runtime_t_mheap.T_mheap to stdgo._internal.runtime.Runtime_t_mheap.T_mheap {
    public function new() this = new stdgo._internal.runtime.Runtime_t_mheap.T_mheap();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_heapArena_static_extension) @:dox(hide) abstract T_heapArena(stdgo._internal.runtime.Runtime_t_heaparena.T_heapArena) from stdgo._internal.runtime.Runtime_t_heaparena.T_heapArena to stdgo._internal.runtime.Runtime_t_heaparena.T_heapArena {
    public function new() this = new stdgo._internal.runtime.Runtime_t_heaparena.T_heapArena();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_arenaHint_static_extension) @:dox(hide) abstract T_arenaHint(stdgo._internal.runtime.Runtime_t_arenahint.T_arenaHint) from stdgo._internal.runtime.Runtime_t_arenahint.T_arenaHint to stdgo._internal.runtime.Runtime_t_arenahint.T_arenaHint {
    public function new() this = new stdgo._internal.runtime.Runtime_t_arenahint.T_arenaHint();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_mSpanStateBox_static_extension) @:dox(hide) abstract T_mSpanStateBox(stdgo._internal.runtime.Runtime_t_mspanstatebox.T_mSpanStateBox) from stdgo._internal.runtime.Runtime_t_mspanstatebox.T_mSpanStateBox to stdgo._internal.runtime.Runtime_t_mspanstatebox.T_mSpanStateBox {
    public function new() this = new stdgo._internal.runtime.Runtime_t_mspanstatebox.T_mSpanStateBox();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_mSpanList_static_extension) @:dox(hide) abstract T_mSpanList(stdgo._internal.runtime.Runtime_t_mspanlist.T_mSpanList) from stdgo._internal.runtime.Runtime_t_mspanlist.T_mSpanList to stdgo._internal.runtime.Runtime_t_mspanlist.T_mSpanList {
    public function new() this = new stdgo._internal.runtime.Runtime_t_mspanlist.T_mSpanList();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_mspan_static_extension) @:dox(hide) abstract T_mspan(stdgo._internal.runtime.Runtime_t_mspan.T_mspan) from stdgo._internal.runtime.Runtime_t_mspan.T_mspan to stdgo._internal.runtime.Runtime_t_mspan.T_mspan {
    public function new() this = new stdgo._internal.runtime.Runtime_t_mspan.T_mspan();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_special_static_extension) @:dox(hide) abstract T_special(stdgo._internal.runtime.Runtime_t_special.T_special) from stdgo._internal.runtime.Runtime_t_special.T_special to stdgo._internal.runtime.Runtime_t_special.T_special {
    public function new() this = new stdgo._internal.runtime.Runtime_t_special.T_special();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_specialfinalizer_static_extension) @:dox(hide) abstract T_specialfinalizer(stdgo._internal.runtime.Runtime_t_specialfinalizer.T_specialfinalizer) from stdgo._internal.runtime.Runtime_t_specialfinalizer.T_specialfinalizer to stdgo._internal.runtime.Runtime_t_specialfinalizer.T_specialfinalizer {
    public function new() this = new stdgo._internal.runtime.Runtime_t_specialfinalizer.T_specialfinalizer();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_specialprofile_static_extension) @:dox(hide) abstract T_specialprofile(stdgo._internal.runtime.Runtime_t_specialprofile.T_specialprofile) from stdgo._internal.runtime.Runtime_t_specialprofile.T_specialprofile to stdgo._internal.runtime.Runtime_t_specialprofile.T_specialprofile {
    public function new() this = new stdgo._internal.runtime.Runtime_t_specialprofile.T_specialprofile();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_specialReachable_static_extension) @:dox(hide) abstract T_specialReachable(stdgo._internal.runtime.Runtime_t_specialreachable.T_specialReachable) from stdgo._internal.runtime.Runtime_t_specialreachable.T_specialReachable to stdgo._internal.runtime.Runtime_t_specialreachable.T_specialReachable {
    public function new() this = new stdgo._internal.runtime.Runtime_t_specialreachable.T_specialReachable();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_specialPinCounter_static_extension) @:dox(hide) abstract T_specialPinCounter(stdgo._internal.runtime.Runtime_t_specialpincounter.T_specialPinCounter) from stdgo._internal.runtime.Runtime_t_specialpincounter.T_specialPinCounter to stdgo._internal.runtime.Runtime_t_specialpincounter.T_specialPinCounter {
    public function new() this = new stdgo._internal.runtime.Runtime_t_specialpincounter.T_specialPinCounter();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_specialsIter_static_extension) @:dox(hide) abstract T_specialsIter(stdgo._internal.runtime.Runtime_t_specialsiter.T_specialsIter) from stdgo._internal.runtime.Runtime_t_specialsiter.T_specialsIter to stdgo._internal.runtime.Runtime_t_specialsiter.T_specialsIter {
    public function new() this = new stdgo._internal.runtime.Runtime_t_specialsiter.T_specialsIter();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_gcBits_static_extension) @:dox(hide) abstract T_gcBits(stdgo._internal.runtime.Runtime_t_gcbits.T_gcBits) from stdgo._internal.runtime.Runtime_t_gcbits.T_gcBits to stdgo._internal.runtime.Runtime_t_gcbits.T_gcBits {
    public function new() this = new stdgo._internal.runtime.Runtime_t_gcbits.T_gcBits();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_gcBitsHeader_static_extension) @:dox(hide) abstract T_gcBitsHeader(stdgo._internal.runtime.Runtime_t_gcbitsheader.T_gcBitsHeader) from stdgo._internal.runtime.Runtime_t_gcbitsheader.T_gcBitsHeader to stdgo._internal.runtime.Runtime_t_gcbitsheader.T_gcBitsHeader {
    public function new() this = new stdgo._internal.runtime.Runtime_t_gcbitsheader.T_gcBitsHeader();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_gcBitsArena_static_extension) @:dox(hide) abstract T_gcBitsArena(stdgo._internal.runtime.Runtime_t_gcbitsarena.T_gcBitsArena) from stdgo._internal.runtime.Runtime_t_gcbitsarena.T_gcBitsArena to stdgo._internal.runtime.Runtime_t_gcbitsarena.T_gcBitsArena {
    public function new() this = new stdgo._internal.runtime.Runtime_t_gcbitsarena.T_gcBitsArena();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_pageAlloc_static_extension) @:dox(hide) abstract T_pageAlloc(stdgo._internal.runtime.Runtime_t_pagealloc.T_pageAlloc) from stdgo._internal.runtime.Runtime_t_pagealloc.T_pageAlloc to stdgo._internal.runtime.Runtime_t_pagealloc.T_pageAlloc {
    public function new() this = new stdgo._internal.runtime.Runtime_t_pagealloc.T_pageAlloc();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_pageCache_static_extension) @:dox(hide) abstract T_pageCache(stdgo._internal.runtime.Runtime_t_pagecache.T_pageCache) from stdgo._internal.runtime.Runtime_t_pagecache.T_pageCache to stdgo._internal.runtime.Runtime_t_pagecache.T_pageCache {
    public function new() this = new stdgo._internal.runtime.Runtime_t_pagecache.T_pageCache();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_pallocData_static_extension) @:dox(hide) abstract T_pallocData(stdgo._internal.runtime.Runtime_t_pallocdata.T_pallocData) from stdgo._internal.runtime.Runtime_t_pallocdata.T_pallocData to stdgo._internal.runtime.Runtime_t_pallocdata.T_pallocData {
    public function new() this = new stdgo._internal.runtime.Runtime_t_pallocdata.T_pallocData();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_bucket_static_extension) @:dox(hide) abstract T_bucket(stdgo._internal.runtime.Runtime_t_bucket.T_bucket) from stdgo._internal.runtime.Runtime_t_bucket.T_bucket to stdgo._internal.runtime.Runtime_t_bucket.T_bucket {
    public function new() this = new stdgo._internal.runtime.Runtime_t_bucket.T_bucket();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_memRecord_static_extension) @:dox(hide) abstract T_memRecord(stdgo._internal.runtime.Runtime_t_memrecord.T_memRecord) from stdgo._internal.runtime.Runtime_t_memrecord.T_memRecord to stdgo._internal.runtime.Runtime_t_memrecord.T_memRecord {
    public function new() this = new stdgo._internal.runtime.Runtime_t_memrecord.T_memRecord();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_memRecordCycle_static_extension) @:dox(hide) abstract T_memRecordCycle(stdgo._internal.runtime.Runtime_t_memrecordcycle.T_memRecordCycle) from stdgo._internal.runtime.Runtime_t_memrecordcycle.T_memRecordCycle to stdgo._internal.runtime.Runtime_t_memrecordcycle.T_memRecordCycle {
    public function new() this = new stdgo._internal.runtime.Runtime_t_memrecordcycle.T_memRecordCycle();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_blockRecord_static_extension) @:dox(hide) abstract T_blockRecord(stdgo._internal.runtime.Runtime_t_blockrecord.T_blockRecord) from stdgo._internal.runtime.Runtime_t_blockrecord.T_blockRecord to stdgo._internal.runtime.Runtime_t_blockrecord.T_blockRecord {
    public function new() this = new stdgo._internal.runtime.Runtime_t_blockrecord.T_blockRecord();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_mProfCycleHolder_static_extension) @:dox(hide) abstract T_mProfCycleHolder(stdgo._internal.runtime.Runtime_t_mprofcycleholder.T_mProfCycleHolder) from stdgo._internal.runtime.Runtime_t_mprofcycleholder.T_mProfCycleHolder to stdgo._internal.runtime.Runtime_t_mprofcycleholder.T_mProfCycleHolder {
    public function new() this = new stdgo._internal.runtime.Runtime_t_mprofcycleholder.T_mProfCycleHolder();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.StackRecord_static_extension) abstract StackRecord(stdgo._internal.runtime.Runtime_stackrecord.StackRecord) from stdgo._internal.runtime.Runtime_stackrecord.StackRecord to stdgo._internal.runtime.Runtime_stackrecord.StackRecord {
    public var stack0(get, set) : haxe.ds.Vector<stdgo.GoUIntptr>;
    function get_stack0():haxe.ds.Vector<stdgo.GoUIntptr> return haxe.ds.Vector.fromArrayCopy([for (i in this.stack0) i]);
    function set_stack0(v:haxe.ds.Vector<stdgo.GoUIntptr>):haxe.ds.Vector<stdgo.GoUIntptr> {
        this.stack0 = ([for (i in v) (i : stdgo.GoUIntptr)] : stdgo.GoArray<stdgo.GoUIntptr>);
        return v;
    }
    public function new(?stack0:haxe.ds.Vector<stdgo.GoUIntptr>) this = new stdgo._internal.runtime.Runtime_stackrecord.StackRecord(([for (i in stack0) (i : stdgo.GoUIntptr)] : stdgo.GoArray<stdgo.GoUIntptr>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.MemProfileRecord_static_extension) abstract MemProfileRecord(stdgo._internal.runtime.Runtime_memprofilerecord.MemProfileRecord) from stdgo._internal.runtime.Runtime_memprofilerecord.MemProfileRecord to stdgo._internal.runtime.Runtime_memprofilerecord.MemProfileRecord {
    public var allocBytes(get, set) : haxe.Int64;
    function get_allocBytes():haxe.Int64 return this.allocBytes;
    function set_allocBytes(v:haxe.Int64):haxe.Int64 {
        this.allocBytes = (v : stdgo.GoInt64);
        return v;
    }
    public var freeBytes(get, set) : haxe.Int64;
    function get_freeBytes():haxe.Int64 return this.freeBytes;
    function set_freeBytes(v:haxe.Int64):haxe.Int64 {
        this.freeBytes = (v : stdgo.GoInt64);
        return v;
    }
    public var allocObjects(get, set) : haxe.Int64;
    function get_allocObjects():haxe.Int64 return this.allocObjects;
    function set_allocObjects(v:haxe.Int64):haxe.Int64 {
        this.allocObjects = (v : stdgo.GoInt64);
        return v;
    }
    public var freeObjects(get, set) : haxe.Int64;
    function get_freeObjects():haxe.Int64 return this.freeObjects;
    function set_freeObjects(v:haxe.Int64):haxe.Int64 {
        this.freeObjects = (v : stdgo.GoInt64);
        return v;
    }
    public var stack0(get, set) : haxe.ds.Vector<stdgo.GoUIntptr>;
    function get_stack0():haxe.ds.Vector<stdgo.GoUIntptr> return haxe.ds.Vector.fromArrayCopy([for (i in this.stack0) i]);
    function set_stack0(v:haxe.ds.Vector<stdgo.GoUIntptr>):haxe.ds.Vector<stdgo.GoUIntptr> {
        this.stack0 = ([for (i in v) (i : stdgo.GoUIntptr)] : stdgo.GoArray<stdgo.GoUIntptr>);
        return v;
    }
    public function new(?allocBytes:haxe.Int64, ?freeBytes:haxe.Int64, ?allocObjects:haxe.Int64, ?freeObjects:haxe.Int64, ?stack0:haxe.ds.Vector<stdgo.GoUIntptr>) this = new stdgo._internal.runtime.Runtime_memprofilerecord.MemProfileRecord((allocBytes : stdgo.GoInt64), (freeBytes : stdgo.GoInt64), (allocObjects : stdgo.GoInt64), (freeObjects : stdgo.GoInt64), ([for (i in stack0) (i : stdgo.GoUIntptr)] : stdgo.GoArray<stdgo.GoUIntptr>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.BlockProfileRecord_static_extension) abstract BlockProfileRecord(stdgo._internal.runtime.Runtime_blockprofilerecord.BlockProfileRecord) from stdgo._internal.runtime.Runtime_blockprofilerecord.BlockProfileRecord to stdgo._internal.runtime.Runtime_blockprofilerecord.BlockProfileRecord {
    public var count(get, set) : haxe.Int64;
    function get_count():haxe.Int64 return this.count;
    function set_count(v:haxe.Int64):haxe.Int64 {
        this.count = (v : stdgo.GoInt64);
        return v;
    }
    public var cycles(get, set) : haxe.Int64;
    function get_cycles():haxe.Int64 return this.cycles;
    function set_cycles(v:haxe.Int64):haxe.Int64 {
        this.cycles = (v : stdgo.GoInt64);
        return v;
    }
    public var stackRecord(get, set) : StackRecord;
    function get_stackRecord():StackRecord return this.stackRecord;
    function set_stackRecord(v:StackRecord):StackRecord {
        this.stackRecord = v;
        return v;
    }
    public function new(?count:haxe.Int64, ?cycles:haxe.Int64, ?stackRecord:StackRecord) this = new stdgo._internal.runtime.Runtime_blockprofilerecord.BlockProfileRecord((count : stdgo.GoInt64), (cycles : stdgo.GoInt64), stackRecord);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_addrRange_static_extension) @:dox(hide) abstract T_addrRange(stdgo._internal.runtime.Runtime_t_addrrange.T_addrRange) from stdgo._internal.runtime.Runtime_t_addrrange.T_addrRange to stdgo._internal.runtime.Runtime_t_addrrange.T_addrRange {
    public function new() this = new stdgo._internal.runtime.Runtime_t_addrrange.T_addrRange();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_offAddr_static_extension) @:dox(hide) abstract T_offAddr(stdgo._internal.runtime.Runtime_t_offaddr.T_offAddr) from stdgo._internal.runtime.Runtime_t_offaddr.T_offAddr to stdgo._internal.runtime.Runtime_t_offaddr.T_offAddr {
    public function new() this = new stdgo._internal.runtime.Runtime_t_offaddr.T_offAddr();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_atomicOffAddr_static_extension) @:dox(hide) abstract T_atomicOffAddr(stdgo._internal.runtime.Runtime_t_atomicoffaddr.T_atomicOffAddr) from stdgo._internal.runtime.Runtime_t_atomicoffaddr.T_atomicOffAddr to stdgo._internal.runtime.Runtime_t_atomicoffaddr.T_atomicOffAddr {
    public function new() this = new stdgo._internal.runtime.Runtime_t_atomicoffaddr.T_atomicOffAddr();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_addrRanges_static_extension) @:dox(hide) abstract T_addrRanges(stdgo._internal.runtime.Runtime_t_addrranges.T_addrRanges) from stdgo._internal.runtime.Runtime_t_addrranges.T_addrRanges to stdgo._internal.runtime.Runtime_t_addrranges.T_addrRanges {
    public function new() this = new stdgo._internal.runtime.Runtime_t_addrranges.T_addrRanges();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_spanSet_static_extension) @:dox(hide) abstract T_spanSet(stdgo._internal.runtime.Runtime_t_spanset.T_spanSet) from stdgo._internal.runtime.Runtime_t_spanset.T_spanSet to stdgo._internal.runtime.Runtime_t_spanset.T_spanSet {
    public function new() this = new stdgo._internal.runtime.Runtime_t_spanset.T_spanSet();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_spanSetBlock_static_extension) @:dox(hide) abstract T_spanSetBlock(stdgo._internal.runtime.Runtime_t_spansetblock.T_spanSetBlock) from stdgo._internal.runtime.Runtime_t_spansetblock.T_spanSetBlock to stdgo._internal.runtime.Runtime_t_spansetblock.T_spanSetBlock {
    public function new() this = new stdgo._internal.runtime.Runtime_t_spansetblock.T_spanSetBlock();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_atomicSpanSetSpinePointer_static_extension) @:dox(hide) abstract T_atomicSpanSetSpinePointer(stdgo._internal.runtime.Runtime_t_atomicspansetspinepointer.T_atomicSpanSetSpinePointer) from stdgo._internal.runtime.Runtime_t_atomicspansetspinepointer.T_atomicSpanSetSpinePointer to stdgo._internal.runtime.Runtime_t_atomicspansetspinepointer.T_atomicSpanSetSpinePointer {
    public function new() this = new stdgo._internal.runtime.Runtime_t_atomicspansetspinepointer.T_atomicSpanSetSpinePointer();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_spanSetSpinePointer_static_extension) @:dox(hide) abstract T_spanSetSpinePointer(stdgo._internal.runtime.Runtime_t_spansetspinepointer.T_spanSetSpinePointer) from stdgo._internal.runtime.Runtime_t_spansetspinepointer.T_spanSetSpinePointer to stdgo._internal.runtime.Runtime_t_spansetspinepointer.T_spanSetSpinePointer {
    public function new() this = new stdgo._internal.runtime.Runtime_t_spansetspinepointer.T_spanSetSpinePointer();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_spanSetBlockAlloc_static_extension) @:dox(hide) abstract T_spanSetBlockAlloc(stdgo._internal.runtime.Runtime_t_spansetblockalloc.T_spanSetBlockAlloc) from stdgo._internal.runtime.Runtime_t_spansetblockalloc.T_spanSetBlockAlloc to stdgo._internal.runtime.Runtime_t_spansetblockalloc.T_spanSetBlockAlloc {
    public function new() this = new stdgo._internal.runtime.Runtime_t_spansetblockalloc.T_spanSetBlockAlloc();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_atomicHeadTailIndex_static_extension) @:dox(hide) abstract T_atomicHeadTailIndex(stdgo._internal.runtime.Runtime_t_atomicheadtailindex.T_atomicHeadTailIndex) from stdgo._internal.runtime.Runtime_t_atomicheadtailindex.T_atomicHeadTailIndex to stdgo._internal.runtime.Runtime_t_atomicheadtailindex.T_atomicHeadTailIndex {
    public function new() this = new stdgo._internal.runtime.Runtime_t_atomicheadtailindex.T_atomicHeadTailIndex();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_atomicMSpanPointer_static_extension) @:dox(hide) abstract T_atomicMSpanPointer(stdgo._internal.runtime.Runtime_t_atomicmspanpointer.T_atomicMSpanPointer) from stdgo._internal.runtime.Runtime_t_atomicmspanpointer.T_atomicMSpanPointer to stdgo._internal.runtime.Runtime_t_atomicmspanpointer.T_atomicMSpanPointer {
    public function new() this = new stdgo._internal.runtime.Runtime_t_atomicmspanpointer.T_atomicMSpanPointer();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_mstats_static_extension) @:dox(hide) abstract T_mstats(stdgo._internal.runtime.Runtime_t_mstats.T_mstats) from stdgo._internal.runtime.Runtime_t_mstats.T_mstats to stdgo._internal.runtime.Runtime_t_mstats.T_mstats {
    public function new() this = new stdgo._internal.runtime.Runtime_t_mstats.T_mstats();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.MemStats_static_extension) abstract MemStats(stdgo._internal.runtime.Runtime_memstats.MemStats) from stdgo._internal.runtime.Runtime_memstats.MemStats to stdgo._internal.runtime.Runtime_memstats.MemStats {
    public var alloc(get, set) : haxe.UInt64;
    function get_alloc():haxe.UInt64 return this.alloc;
    function set_alloc(v:haxe.UInt64):haxe.UInt64 {
        this.alloc = (v : stdgo.GoUInt64);
        return v;
    }
    public var totalAlloc(get, set) : haxe.UInt64;
    function get_totalAlloc():haxe.UInt64 return this.totalAlloc;
    function set_totalAlloc(v:haxe.UInt64):haxe.UInt64 {
        this.totalAlloc = (v : stdgo.GoUInt64);
        return v;
    }
    public var sys(get, set) : haxe.UInt64;
    function get_sys():haxe.UInt64 return this.sys;
    function set_sys(v:haxe.UInt64):haxe.UInt64 {
        this.sys = (v : stdgo.GoUInt64);
        return v;
    }
    public var lookups(get, set) : haxe.UInt64;
    function get_lookups():haxe.UInt64 return this.lookups;
    function set_lookups(v:haxe.UInt64):haxe.UInt64 {
        this.lookups = (v : stdgo.GoUInt64);
        return v;
    }
    public var mallocs(get, set) : haxe.UInt64;
    function get_mallocs():haxe.UInt64 return this.mallocs;
    function set_mallocs(v:haxe.UInt64):haxe.UInt64 {
        this.mallocs = (v : stdgo.GoUInt64);
        return v;
    }
    public var frees(get, set) : haxe.UInt64;
    function get_frees():haxe.UInt64 return this.frees;
    function set_frees(v:haxe.UInt64):haxe.UInt64 {
        this.frees = (v : stdgo.GoUInt64);
        return v;
    }
    public var heapAlloc(get, set) : haxe.UInt64;
    function get_heapAlloc():haxe.UInt64 return this.heapAlloc;
    function set_heapAlloc(v:haxe.UInt64):haxe.UInt64 {
        this.heapAlloc = (v : stdgo.GoUInt64);
        return v;
    }
    public var heapSys(get, set) : haxe.UInt64;
    function get_heapSys():haxe.UInt64 return this.heapSys;
    function set_heapSys(v:haxe.UInt64):haxe.UInt64 {
        this.heapSys = (v : stdgo.GoUInt64);
        return v;
    }
    public var heapIdle(get, set) : haxe.UInt64;
    function get_heapIdle():haxe.UInt64 return this.heapIdle;
    function set_heapIdle(v:haxe.UInt64):haxe.UInt64 {
        this.heapIdle = (v : stdgo.GoUInt64);
        return v;
    }
    public var heapInuse(get, set) : haxe.UInt64;
    function get_heapInuse():haxe.UInt64 return this.heapInuse;
    function set_heapInuse(v:haxe.UInt64):haxe.UInt64 {
        this.heapInuse = (v : stdgo.GoUInt64);
        return v;
    }
    public var heapReleased(get, set) : haxe.UInt64;
    function get_heapReleased():haxe.UInt64 return this.heapReleased;
    function set_heapReleased(v:haxe.UInt64):haxe.UInt64 {
        this.heapReleased = (v : stdgo.GoUInt64);
        return v;
    }
    public var heapObjects(get, set) : haxe.UInt64;
    function get_heapObjects():haxe.UInt64 return this.heapObjects;
    function set_heapObjects(v:haxe.UInt64):haxe.UInt64 {
        this.heapObjects = (v : stdgo.GoUInt64);
        return v;
    }
    public var stackInuse(get, set) : haxe.UInt64;
    function get_stackInuse():haxe.UInt64 return this.stackInuse;
    function set_stackInuse(v:haxe.UInt64):haxe.UInt64 {
        this.stackInuse = (v : stdgo.GoUInt64);
        return v;
    }
    public var stackSys(get, set) : haxe.UInt64;
    function get_stackSys():haxe.UInt64 return this.stackSys;
    function set_stackSys(v:haxe.UInt64):haxe.UInt64 {
        this.stackSys = (v : stdgo.GoUInt64);
        return v;
    }
    public var mSpanInuse(get, set) : haxe.UInt64;
    function get_mSpanInuse():haxe.UInt64 return this.mSpanInuse;
    function set_mSpanInuse(v:haxe.UInt64):haxe.UInt64 {
        this.mSpanInuse = (v : stdgo.GoUInt64);
        return v;
    }
    public var mSpanSys(get, set) : haxe.UInt64;
    function get_mSpanSys():haxe.UInt64 return this.mSpanSys;
    function set_mSpanSys(v:haxe.UInt64):haxe.UInt64 {
        this.mSpanSys = (v : stdgo.GoUInt64);
        return v;
    }
    public var mCacheInuse(get, set) : haxe.UInt64;
    function get_mCacheInuse():haxe.UInt64 return this.mCacheInuse;
    function set_mCacheInuse(v:haxe.UInt64):haxe.UInt64 {
        this.mCacheInuse = (v : stdgo.GoUInt64);
        return v;
    }
    public var mCacheSys(get, set) : haxe.UInt64;
    function get_mCacheSys():haxe.UInt64 return this.mCacheSys;
    function set_mCacheSys(v:haxe.UInt64):haxe.UInt64 {
        this.mCacheSys = (v : stdgo.GoUInt64);
        return v;
    }
    public var buckHashSys(get, set) : haxe.UInt64;
    function get_buckHashSys():haxe.UInt64 return this.buckHashSys;
    function set_buckHashSys(v:haxe.UInt64):haxe.UInt64 {
        this.buckHashSys = (v : stdgo.GoUInt64);
        return v;
    }
    public var gCSys(get, set) : haxe.UInt64;
    function get_gCSys():haxe.UInt64 return this.gCSys;
    function set_gCSys(v:haxe.UInt64):haxe.UInt64 {
        this.gCSys = (v : stdgo.GoUInt64);
        return v;
    }
    public var otherSys(get, set) : haxe.UInt64;
    function get_otherSys():haxe.UInt64 return this.otherSys;
    function set_otherSys(v:haxe.UInt64):haxe.UInt64 {
        this.otherSys = (v : stdgo.GoUInt64);
        return v;
    }
    public var nextGC(get, set) : haxe.UInt64;
    function get_nextGC():haxe.UInt64 return this.nextGC;
    function set_nextGC(v:haxe.UInt64):haxe.UInt64 {
        this.nextGC = (v : stdgo.GoUInt64);
        return v;
    }
    public var lastGC(get, set) : haxe.UInt64;
    function get_lastGC():haxe.UInt64 return this.lastGC;
    function set_lastGC(v:haxe.UInt64):haxe.UInt64 {
        this.lastGC = (v : stdgo.GoUInt64);
        return v;
    }
    public var pauseTotalNs(get, set) : haxe.UInt64;
    function get_pauseTotalNs():haxe.UInt64 return this.pauseTotalNs;
    function set_pauseTotalNs(v:haxe.UInt64):haxe.UInt64 {
        this.pauseTotalNs = (v : stdgo.GoUInt64);
        return v;
    }
    public var pauseNs(get, set) : haxe.ds.Vector<haxe.UInt64>;
    function get_pauseNs():haxe.ds.Vector<haxe.UInt64> return haxe.ds.Vector.fromArrayCopy([for (i in this.pauseNs) i]);
    function set_pauseNs(v:haxe.ds.Vector<haxe.UInt64>):haxe.ds.Vector<haxe.UInt64> {
        this.pauseNs = ([for (i in v) (i : stdgo.GoUInt64)] : stdgo.GoArray<stdgo.GoUInt64>);
        return v;
    }
    public var pauseEnd(get, set) : haxe.ds.Vector<haxe.UInt64>;
    function get_pauseEnd():haxe.ds.Vector<haxe.UInt64> return haxe.ds.Vector.fromArrayCopy([for (i in this.pauseEnd) i]);
    function set_pauseEnd(v:haxe.ds.Vector<haxe.UInt64>):haxe.ds.Vector<haxe.UInt64> {
        this.pauseEnd = ([for (i in v) (i : stdgo.GoUInt64)] : stdgo.GoArray<stdgo.GoUInt64>);
        return v;
    }
    public var numGC(get, set) : std.UInt;
    function get_numGC():std.UInt return this.numGC;
    function set_numGC(v:std.UInt):std.UInt {
        this.numGC = (v : stdgo.GoUInt32);
        return v;
    }
    public var numForcedGC(get, set) : std.UInt;
    function get_numForcedGC():std.UInt return this.numForcedGC;
    function set_numForcedGC(v:std.UInt):std.UInt {
        this.numForcedGC = (v : stdgo.GoUInt32);
        return v;
    }
    public var gCCPUFraction(get, set) : StdTypes.Float;
    function get_gCCPUFraction():StdTypes.Float return this.gCCPUFraction;
    function set_gCCPUFraction(v:StdTypes.Float):StdTypes.Float {
        this.gCCPUFraction = (v : stdgo.GoFloat64);
        return v;
    }
    public var enableGC(get, set) : Bool;
    function get_enableGC():Bool return this.enableGC;
    function set_enableGC(v:Bool):Bool {
        this.enableGC = v;
        return v;
    }
    public var debugGC(get, set) : Bool;
    function get_debugGC():Bool return this.debugGC;
    function set_debugGC(v:Bool):Bool {
        this.debugGC = v;
        return v;
    }
    public var bySize(get, set) : haxe.ds.Vector<{ var size : std.UInt; var mallocs : haxe.UInt64; var frees : haxe.UInt64; }>;
    function get_bySize():haxe.ds.Vector<{ var size : std.UInt; var mallocs : haxe.UInt64; var frees : haxe.UInt64; }> return haxe.ds.Vector.fromArrayCopy([for (i in this.bySize) {
        final obj = i;
        { size : obj.size, mallocs : obj.mallocs, frees : obj.frees };
    }]);
    function set_bySize(v:haxe.ds.Vector<{ var size : std.UInt; var mallocs : haxe.UInt64; var frees : haxe.UInt64; }>):haxe.ds.Vector<{ var size : std.UInt; var mallocs : haxe.UInt64; var frees : haxe.UInt64; }> {
        this.bySize = ([for (i in v) {
            final obj = i;
            { size : (obj.size : stdgo.GoUInt32), mallocs : (obj.mallocs : stdgo.GoUInt64), frees : (obj.frees : stdgo.GoUInt64) };
        }] : stdgo.GoArray<{ var size : stdgo.GoUInt32; var mallocs : stdgo.GoUInt64; var frees : stdgo.GoUInt64; }>);
        return v;
    }
    public function new(?alloc:haxe.UInt64, ?totalAlloc:haxe.UInt64, ?sys:haxe.UInt64, ?lookups:haxe.UInt64, ?mallocs:haxe.UInt64, ?frees:haxe.UInt64, ?heapAlloc:haxe.UInt64, ?heapSys:haxe.UInt64, ?heapIdle:haxe.UInt64, ?heapInuse:haxe.UInt64, ?heapReleased:haxe.UInt64, ?heapObjects:haxe.UInt64, ?stackInuse:haxe.UInt64, ?stackSys:haxe.UInt64, ?mSpanInuse:haxe.UInt64, ?mSpanSys:haxe.UInt64, ?mCacheInuse:haxe.UInt64, ?mCacheSys:haxe.UInt64, ?buckHashSys:haxe.UInt64, ?gCSys:haxe.UInt64, ?otherSys:haxe.UInt64, ?nextGC:haxe.UInt64, ?lastGC:haxe.UInt64, ?pauseTotalNs:haxe.UInt64, ?pauseNs:haxe.ds.Vector<haxe.UInt64>, ?pauseEnd:haxe.ds.Vector<haxe.UInt64>, ?numGC:std.UInt, ?numForcedGC:std.UInt, ?gCCPUFraction:StdTypes.Float, ?enableGC:Bool, ?debugGC:Bool, ?bySize:haxe.ds.Vector<{ var size : std.UInt; var mallocs : haxe.UInt64; var frees : haxe.UInt64; }>) this = new stdgo._internal.runtime.Runtime_memstats.MemStats(
(alloc : stdgo.GoUInt64),
(totalAlloc : stdgo.GoUInt64),
(sys : stdgo.GoUInt64),
(lookups : stdgo.GoUInt64),
(mallocs : stdgo.GoUInt64),
(frees : stdgo.GoUInt64),
(heapAlloc : stdgo.GoUInt64),
(heapSys : stdgo.GoUInt64),
(heapIdle : stdgo.GoUInt64),
(heapInuse : stdgo.GoUInt64),
(heapReleased : stdgo.GoUInt64),
(heapObjects : stdgo.GoUInt64),
(stackInuse : stdgo.GoUInt64),
(stackSys : stdgo.GoUInt64),
(mSpanInuse : stdgo.GoUInt64),
(mSpanSys : stdgo.GoUInt64),
(mCacheInuse : stdgo.GoUInt64),
(mCacheSys : stdgo.GoUInt64),
(buckHashSys : stdgo.GoUInt64),
(gCSys : stdgo.GoUInt64),
(otherSys : stdgo.GoUInt64),
(nextGC : stdgo.GoUInt64),
(lastGC : stdgo.GoUInt64),
(pauseTotalNs : stdgo.GoUInt64),
([for (i in pauseNs) (i : stdgo.GoUInt64)] : stdgo.GoArray<stdgo.GoUInt64>),
([for (i in pauseEnd) (i : stdgo.GoUInt64)] : stdgo.GoArray<stdgo.GoUInt64>),
(numGC : stdgo.GoUInt32),
(numForcedGC : stdgo.GoUInt32),
(gCCPUFraction : stdgo.GoFloat64),
enableGC,
debugGC,
([for (i in bySize) {
        final obj = i;
        { size : (obj.size : stdgo.GoUInt32), mallocs : (obj.mallocs : stdgo.GoUInt64), frees : (obj.frees : stdgo.GoUInt64) };
    }] : stdgo.GoArray<{ var size : stdgo.GoUInt32; var mallocs : stdgo.GoUInt64; var frees : stdgo.GoUInt64; }>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_heapStatsDelta_static_extension) @:dox(hide) abstract T_heapStatsDelta(stdgo._internal.runtime.Runtime_t_heapstatsdelta.T_heapStatsDelta) from stdgo._internal.runtime.Runtime_t_heapstatsdelta.T_heapStatsDelta to stdgo._internal.runtime.Runtime_t_heapstatsdelta.T_heapStatsDelta {
    public function new() this = new stdgo._internal.runtime.Runtime_t_heapstatsdelta.T_heapStatsDelta();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_consistentHeapStats_static_extension) @:dox(hide) abstract T_consistentHeapStats(stdgo._internal.runtime.Runtime_t_consistentheapstats.T_consistentHeapStats) from stdgo._internal.runtime.Runtime_t_consistentheapstats.T_consistentHeapStats to stdgo._internal.runtime.Runtime_t_consistentheapstats.T_consistentHeapStats {
    public function new() this = new stdgo._internal.runtime.Runtime_t_consistentheapstats.T_consistentHeapStats();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_cpuStats_static_extension) @:dox(hide) abstract T_cpuStats(stdgo._internal.runtime.Runtime_t_cpustats.T_cpuStats) from stdgo._internal.runtime.Runtime_t_cpustats.T_cpuStats to stdgo._internal.runtime.Runtime_t_cpustats.T_cpuStats {
    public function new() this = new stdgo._internal.runtime.Runtime_t_cpustats.T_cpuStats();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_wbBuf_static_extension) @:dox(hide) abstract T_wbBuf(stdgo._internal.runtime.Runtime_t_wbbuf.T_wbBuf) from stdgo._internal.runtime.Runtime_t_wbbuf.T_wbBuf to stdgo._internal.runtime.Runtime_t_wbbuf.T_wbBuf {
    public function new() this = new stdgo._internal.runtime.Runtime_t_wbbuf.T_wbBuf();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_pollDesc_static_extension) @:dox(hide) abstract T_pollDesc(stdgo._internal.runtime.Runtime_t_polldesc.T_pollDesc) from stdgo._internal.runtime.Runtime_t_polldesc.T_pollDesc to stdgo._internal.runtime.Runtime_t_polldesc.T_pollDesc {
    public function new() this = new stdgo._internal.runtime.Runtime_t_polldesc.T_pollDesc();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_pollCache_static_extension) @:dox(hide) abstract T_pollCache(stdgo._internal.runtime.Runtime_t_pollcache.T_pollCache) from stdgo._internal.runtime.Runtime_t_pollcache.T_pollCache to stdgo._internal.runtime.Runtime_t_pollcache.T_pollCache {
    public function new() this = new stdgo._internal.runtime.Runtime_t_pollcache.T_pollCache();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_mOS_static_extension) @:dox(hide) abstract T_mOS(stdgo._internal.runtime.Runtime_t_mos.T_mOS) from stdgo._internal.runtime.Runtime_t_mos.T_mOS to stdgo._internal.runtime.Runtime_t_mos.T_mOS {
    public function new() this = new stdgo._internal.runtime.Runtime_t_mos.T_mOS();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_sigset_static_extension) @:dox(hide) abstract T_sigset(stdgo._internal.runtime.Runtime_t_sigset.T_sigset) from stdgo._internal.runtime.Runtime_t_sigset.T_sigset to stdgo._internal.runtime.Runtime_t_sigset.T_sigset {
    public function new() this = new stdgo._internal.runtime.Runtime_t_sigset.T_sigset();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_gsignalStack_static_extension) @:dox(hide) abstract T_gsignalStack(stdgo._internal.runtime.Runtime_t_gsignalstack.T_gsignalStack) from stdgo._internal.runtime.Runtime_t_gsignalstack.T_gsignalStack to stdgo._internal.runtime.Runtime_t_gsignalstack.T_gsignalStack {
    public function new() this = new stdgo._internal.runtime.Runtime_t_gsignalstack.T_gsignalStack();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_pageTraceBuf_static_extension) @:dox(hide) abstract T_pageTraceBuf(stdgo._internal.runtime.Runtime_t_pagetracebuf.T_pageTraceBuf) from stdgo._internal.runtime.Runtime_t_pagetracebuf.T_pageTraceBuf to stdgo._internal.runtime.Runtime_t_pagetracebuf.T_pageTraceBuf {
    public function new() this = new stdgo._internal.runtime.Runtime_t_pagetracebuf.T_pageTraceBuf();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.PanicNilError_static_extension) abstract PanicNilError(stdgo._internal.runtime.Runtime_panicnilerror.PanicNilError) from stdgo._internal.runtime.Runtime_panicnilerror.PanicNilError to stdgo._internal.runtime.Runtime_panicnilerror.PanicNilError {
    public function new() this = new stdgo._internal.runtime.Runtime_panicnilerror.PanicNilError();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.Pinner_static_extension) abstract Pinner(stdgo._internal.runtime.Runtime_pinner.Pinner) from stdgo._internal.runtime.Runtime_pinner.Pinner to stdgo._internal.runtime.Runtime_pinner.Pinner {
    public function new() this = new stdgo._internal.runtime.Runtime_pinner.Pinner();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_pinner_static_extension) @:dox(hide) abstract T_pinner(stdgo._internal.runtime.Runtime_t_pinner.T_pinner) from stdgo._internal.runtime.Runtime_t_pinner.T_pinner to stdgo._internal.runtime.Runtime_t_pinner.T_pinner {
    public function new() this = new stdgo._internal.runtime.Runtime_t_pinner.T_pinner();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_pinState_static_extension) @:dox(hide) abstract T_pinState(stdgo._internal.runtime.Runtime_t_pinstate.T_pinState) from stdgo._internal.runtime.Runtime_t_pinstate.T_pinState to stdgo._internal.runtime.Runtime_t_pinstate.T_pinState {
    public function new() this = new stdgo._internal.runtime.Runtime_t_pinstate.T_pinState();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_ptabEntry_static_extension) @:dox(hide) abstract T_ptabEntry(stdgo._internal.runtime.Runtime_t_ptabentry.T_ptabEntry) from stdgo._internal.runtime.Runtime_t_ptabentry.T_ptabEntry to stdgo._internal.runtime.Runtime_t_ptabentry.T_ptabEntry {
    public function new() this = new stdgo._internal.runtime.Runtime_t_ptabentry.T_ptabEntry();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_suspendGState_static_extension) @:dox(hide) abstract T_suspendGState(stdgo._internal.runtime.Runtime_t_suspendgstate.T_suspendGState) from stdgo._internal.runtime.Runtime_t_suspendgstate.T_suspendGState to stdgo._internal.runtime.Runtime_t_suspendgstate.T_suspendGState {
    public function new() this = new stdgo._internal.runtime.Runtime_t_suspendgstate.T_suspendGState();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_cgothreadstart_static_extension) @:dox(hide) abstract T_cgothreadstart(stdgo._internal.runtime.Runtime_t_cgothreadstart.T_cgothreadstart) from stdgo._internal.runtime.Runtime_t_cgothreadstart.T_cgothreadstart to stdgo._internal.runtime.Runtime_t_cgothreadstart.T_cgothreadstart {
    public function new() this = new stdgo._internal.runtime.Runtime_t_cgothreadstart.T_cgothreadstart();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_sysmontick_static_extension) @:dox(hide) abstract T_sysmontick(stdgo._internal.runtime.Runtime_t_sysmontick.T_sysmontick) from stdgo._internal.runtime.Runtime_t_sysmontick.T_sysmontick to stdgo._internal.runtime.Runtime_t_sysmontick.T_sysmontick {
    public function new() this = new stdgo._internal.runtime.Runtime_t_sysmontick.T_sysmontick();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_gQueue_static_extension) @:dox(hide) abstract T_gQueue(stdgo._internal.runtime.Runtime_t_gqueue.T_gQueue) from stdgo._internal.runtime.Runtime_t_gqueue.T_gQueue to stdgo._internal.runtime.Runtime_t_gqueue.T_gQueue {
    public function new() this = new stdgo._internal.runtime.Runtime_t_gqueue.T_gQueue();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_gList_static_extension) @:dox(hide) abstract T_gList(stdgo._internal.runtime.Runtime_t_glist.T_gList) from stdgo._internal.runtime.Runtime_t_glist.T_gList to stdgo._internal.runtime.Runtime_t_glist.T_gList {
    public function new() this = new stdgo._internal.runtime.Runtime_t_glist.T_gList();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_randomOrder_static_extension) @:dox(hide) abstract T_randomOrder(stdgo._internal.runtime.Runtime_t_randomorder.T_randomOrder) from stdgo._internal.runtime.Runtime_t_randomorder.T_randomOrder to stdgo._internal.runtime.Runtime_t_randomorder.T_randomOrder {
    public function new() this = new stdgo._internal.runtime.Runtime_t_randomorder.T_randomOrder();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_randomEnum_static_extension) @:dox(hide) abstract T_randomEnum(stdgo._internal.runtime.Runtime_t_randomenum.T_randomEnum) from stdgo._internal.runtime.Runtime_t_randomenum.T_randomEnum to stdgo._internal.runtime.Runtime_t_randomenum.T_randomEnum {
    public function new() this = new stdgo._internal.runtime.Runtime_t_randomenum.T_randomEnum();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_initTask_static_extension) @:dox(hide) abstract T_initTask(stdgo._internal.runtime.Runtime_t_inittask.T_initTask) from stdgo._internal.runtime.Runtime_t_inittask.T_initTask to stdgo._internal.runtime.Runtime_t_inittask.T_initTask {
    public function new() this = new stdgo._internal.runtime.Runtime_t_inittask.T_initTask();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_tracestat_static_extension) @:dox(hide) abstract T_tracestat(stdgo._internal.runtime.Runtime_t_tracestat.T_tracestat) from stdgo._internal.runtime.Runtime_t_tracestat.T_tracestat to stdgo._internal.runtime.Runtime_t_tracestat.T_tracestat {
    public function new() this = new stdgo._internal.runtime.Runtime_t_tracestat.T_tracestat();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_profBuf_static_extension) @:dox(hide) abstract T_profBuf(stdgo._internal.runtime.Runtime_t_profbuf.T_profBuf) from stdgo._internal.runtime.Runtime_t_profbuf.T_profBuf to stdgo._internal.runtime.Runtime_t_profbuf.T_profBuf {
    public function new() this = new stdgo._internal.runtime.Runtime_t_profbuf.T_profBuf();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_ticksType_static_extension) @:dox(hide) abstract T_ticksType(stdgo._internal.runtime.Runtime_t_tickstype.T_ticksType) from stdgo._internal.runtime.Runtime_t_tickstype.T_ticksType to stdgo._internal.runtime.Runtime_t_tickstype.T_ticksType {
    public function new() this = new stdgo._internal.runtime.Runtime_t_tickstype.T_ticksType();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_godebugInc_static_extension) @:dox(hide) abstract T_godebugInc(stdgo._internal.runtime.Runtime_t_godebuginc.T_godebugInc) from stdgo._internal.runtime.Runtime_t_godebuginc.T_godebugInc to stdgo._internal.runtime.Runtime_t_godebuginc.T_godebugInc {
    public function new() this = new stdgo._internal.runtime.Runtime_t_godebuginc.T_godebugInc();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_dbgVar_static_extension) @:dox(hide) abstract T_dbgVar(stdgo._internal.runtime.Runtime_t_dbgvar.T_dbgVar) from stdgo._internal.runtime.Runtime_t_dbgvar.T_dbgVar to stdgo._internal.runtime.Runtime_t_dbgvar.T_dbgVar {
    public function new() this = new stdgo._internal.runtime.Runtime_t_dbgvar.T_dbgVar();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_mutex_static_extension) @:dox(hide) abstract T_mutex(stdgo._internal.runtime.Runtime_t_mutex.T_mutex) from stdgo._internal.runtime.Runtime_t_mutex.T_mutex to stdgo._internal.runtime.Runtime_t_mutex.T_mutex {
    public function new() this = new stdgo._internal.runtime.Runtime_t_mutex.T_mutex();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_note_static_extension) @:dox(hide) abstract T_note(stdgo._internal.runtime.Runtime_t_note.T_note) from stdgo._internal.runtime.Runtime_t_note.T_note to stdgo._internal.runtime.Runtime_t_note.T_note {
    public function new() this = new stdgo._internal.runtime.Runtime_t_note.T_note();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_funcval_static_extension) @:dox(hide) abstract T_funcval(stdgo._internal.runtime.Runtime_t_funcval.T_funcval) from stdgo._internal.runtime.Runtime_t_funcval.T_funcval to stdgo._internal.runtime.Runtime_t_funcval.T_funcval {
    public function new() this = new stdgo._internal.runtime.Runtime_t_funcval.T_funcval();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_iface_static_extension) @:dox(hide) abstract T_iface(stdgo._internal.runtime.Runtime_t_iface.T_iface) from stdgo._internal.runtime.Runtime_t_iface.T_iface to stdgo._internal.runtime.Runtime_t_iface.T_iface {
    public function new() this = new stdgo._internal.runtime.Runtime_t_iface.T_iface();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_eface_static_extension) @:dox(hide) abstract T_eface(stdgo._internal.runtime.Runtime_t_eface.T_eface) from stdgo._internal.runtime.Runtime_t_eface.T_eface to stdgo._internal.runtime.Runtime_t_eface.T_eface {
    public function new() this = new stdgo._internal.runtime.Runtime_t_eface.T_eface();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_gobuf_static_extension) @:dox(hide) abstract T_gobuf(stdgo._internal.runtime.Runtime_t_gobuf.T_gobuf) from stdgo._internal.runtime.Runtime_t_gobuf.T_gobuf to stdgo._internal.runtime.Runtime_t_gobuf.T_gobuf {
    public function new() this = new stdgo._internal.runtime.Runtime_t_gobuf.T_gobuf();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_sudog_static_extension) @:dox(hide) abstract T_sudog(stdgo._internal.runtime.Runtime_t_sudog.T_sudog) from stdgo._internal.runtime.Runtime_t_sudog.T_sudog to stdgo._internal.runtime.Runtime_t_sudog.T_sudog {
    public function new() this = new stdgo._internal.runtime.Runtime_t_sudog.T_sudog();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_libcall_static_extension) @:dox(hide) abstract T_libcall(stdgo._internal.runtime.Runtime_t_libcall.T_libcall) from stdgo._internal.runtime.Runtime_t_libcall.T_libcall to stdgo._internal.runtime.Runtime_t_libcall.T_libcall {
    public function new() this = new stdgo._internal.runtime.Runtime_t_libcall.T_libcall();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_stack_static_extension) @:dox(hide) abstract T_stack(stdgo._internal.runtime.Runtime_t_stack.T_stack) from stdgo._internal.runtime.Runtime_t_stack.T_stack to stdgo._internal.runtime.Runtime_t_stack.T_stack {
    public function new() this = new stdgo._internal.runtime.Runtime_t_stack.T_stack();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_heldLockInfo_static_extension) @:dox(hide) abstract T_heldLockInfo(stdgo._internal.runtime.Runtime_t_heldlockinfo.T_heldLockInfo) from stdgo._internal.runtime.Runtime_t_heldlockinfo.T_heldLockInfo to stdgo._internal.runtime.Runtime_t_heldlockinfo.T_heldLockInfo {
    public function new() this = new stdgo._internal.runtime.Runtime_t_heldlockinfo.T_heldLockInfo();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_g_static_extension) @:dox(hide) abstract T_g(stdgo._internal.runtime.Runtime_t_g.T_g) from stdgo._internal.runtime.Runtime_t_g.T_g to stdgo._internal.runtime.Runtime_t_g.T_g {
    public function new() this = new stdgo._internal.runtime.Runtime_t_g.T_g();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_m_static_extension) @:dox(hide) abstract T_m(stdgo._internal.runtime.Runtime_t_m.T_m) from stdgo._internal.runtime.Runtime_t_m.T_m to stdgo._internal.runtime.Runtime_t_m.T_m {
    public function new() this = new stdgo._internal.runtime.Runtime_t_m.T_m();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_p_static_extension) @:dox(hide) abstract T_p(stdgo._internal.runtime.Runtime_t_p.T_p) from stdgo._internal.runtime.Runtime_t_p.T_p to stdgo._internal.runtime.Runtime_t_p.T_p {
    public function new() this = new stdgo._internal.runtime.Runtime_t_p.T_p();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_schedt_static_extension) @:dox(hide) abstract T_schedt(stdgo._internal.runtime.Runtime_t_schedt.T_schedt) from stdgo._internal.runtime.Runtime_t_schedt.T_schedt to stdgo._internal.runtime.Runtime_t_schedt.T_schedt {
    public function new() this = new stdgo._internal.runtime.Runtime_t_schedt.T_schedt();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T__func_static_extension) @:dox(hide) abstract T__func(stdgo._internal.runtime.Runtime_t__func.T__func) from stdgo._internal.runtime.Runtime_t__func.T__func to stdgo._internal.runtime.Runtime_t__func.T__func {
    public var notInHeap(get, set) : stdgo._internal.runtime.internal.sys.Sys_notinheap.NotInHeap;
    function get_notInHeap():stdgo._internal.runtime.internal.sys.Sys_notinheap.NotInHeap return this.notInHeap;
    function set_notInHeap(v:stdgo._internal.runtime.internal.sys.Sys_notinheap.NotInHeap):stdgo._internal.runtime.internal.sys.Sys_notinheap.NotInHeap {
        this.notInHeap = v;
        return v;
    }
    public function new(?notInHeap:stdgo._internal.runtime.internal.sys.Sys_notinheap.NotInHeap) this = new stdgo._internal.runtime.Runtime_t__func.T__func(notInHeap);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_funcinl_static_extension) @:dox(hide) abstract T_funcinl(stdgo._internal.runtime.Runtime_t_funcinl.T_funcinl) from stdgo._internal.runtime.Runtime_t_funcinl.T_funcinl to stdgo._internal.runtime.Runtime_t_funcinl.T_funcinl {
    public function new() this = new stdgo._internal.runtime.Runtime_t_funcinl.T_funcinl();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_itab_static_extension) @:dox(hide) abstract T_itab(stdgo._internal.runtime.Runtime_t_itab.T_itab) from stdgo._internal.runtime.Runtime_t_itab.T_itab to stdgo._internal.runtime.Runtime_t_itab.T_itab {
    public function new() this = new stdgo._internal.runtime.Runtime_t_itab.T_itab();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_lfnode_static_extension) @:dox(hide) abstract T_lfnode(stdgo._internal.runtime.Runtime_t_lfnode.T_lfnode) from stdgo._internal.runtime.Runtime_t_lfnode.T_lfnode to stdgo._internal.runtime.Runtime_t_lfnode.T_lfnode {
    public function new() this = new stdgo._internal.runtime.Runtime_t_lfnode.T_lfnode();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_forcegcstate_static_extension) @:dox(hide) abstract T_forcegcstate(stdgo._internal.runtime.Runtime_t_forcegcstate.T_forcegcstate) from stdgo._internal.runtime.Runtime_t_forcegcstate.T_forcegcstate to stdgo._internal.runtime.Runtime_t_forcegcstate.T_forcegcstate {
    public function new() this = new stdgo._internal.runtime.Runtime_t_forcegcstate.T_forcegcstate();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T__defer_static_extension) @:dox(hide) abstract T__defer(stdgo._internal.runtime.Runtime_t__defer.T__defer) from stdgo._internal.runtime.Runtime_t__defer.T__defer to stdgo._internal.runtime.Runtime_t__defer.T__defer {
    public function new() this = new stdgo._internal.runtime.Runtime_t__defer.T__defer();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T__panic_static_extension) @:dox(hide) abstract T__panic(stdgo._internal.runtime.Runtime_t__panic.T__panic) from stdgo._internal.runtime.Runtime_t__panic.T__panic to stdgo._internal.runtime.Runtime_t__panic.T__panic {
    public function new() this = new stdgo._internal.runtime.Runtime_t__panic.T__panic();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_ancestorInfo_static_extension) @:dox(hide) abstract T_ancestorInfo(stdgo._internal.runtime.Runtime_t_ancestorinfo.T_ancestorInfo) from stdgo._internal.runtime.Runtime_t_ancestorinfo.T_ancestorInfo to stdgo._internal.runtime.Runtime_t_ancestorinfo.T_ancestorInfo {
    public function new() this = new stdgo._internal.runtime.Runtime_t_ancestorinfo.T_ancestorInfo();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_rwmutex_static_extension) @:dox(hide) abstract T_rwmutex(stdgo._internal.runtime.Runtime_t_rwmutex.T_rwmutex) from stdgo._internal.runtime.Runtime_t_rwmutex.T_rwmutex to stdgo._internal.runtime.Runtime_t_rwmutex.T_rwmutex {
    public function new() this = new stdgo._internal.runtime.Runtime_t_rwmutex.T_rwmutex();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_scase_static_extension) @:dox(hide) abstract T_scase(stdgo._internal.runtime.Runtime_t_scase.T_scase) from stdgo._internal.runtime.Runtime_t_scase.T_scase to stdgo._internal.runtime.Runtime_t_scase.T_scase {
    public function new() this = new stdgo._internal.runtime.Runtime_t_scase.T_scase();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_runtimeSelect_static_extension) @:dox(hide) abstract T_runtimeSelect(stdgo._internal.runtime.Runtime_t_runtimeselect.T_runtimeSelect) from stdgo._internal.runtime.Runtime_t_runtimeselect.T_runtimeSelect to stdgo._internal.runtime.Runtime_t_runtimeselect.T_runtimeSelect {
    public function new() this = new stdgo._internal.runtime.Runtime_t_runtimeselect.T_runtimeSelect();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_semaRoot_static_extension) @:dox(hide) abstract T_semaRoot(stdgo._internal.runtime.Runtime_t_semaroot.T_semaRoot) from stdgo._internal.runtime.Runtime_t_semaroot.T_semaRoot to stdgo._internal.runtime.Runtime_t_semaroot.T_semaRoot {
    public function new() this = new stdgo._internal.runtime.Runtime_t_semaroot.T_semaRoot();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_notifyList_static_extension) @:dox(hide) abstract T_notifyList(stdgo._internal.runtime.Runtime_t_notifylist.T_notifyList) from stdgo._internal.runtime.Runtime_t_notifylist.T_notifyList to stdgo._internal.runtime.Runtime_t_notifylist.T_notifyList {
    public function new() this = new stdgo._internal.runtime.Runtime_t_notifylist.T_notifyList();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_slice_static_extension) @:dox(hide) abstract T_slice(stdgo._internal.runtime.Runtime_t_slice.T_slice) from stdgo._internal.runtime.Runtime_t_slice.T_slice to stdgo._internal.runtime.Runtime_t_slice.T_slice {
    public function new() this = new stdgo._internal.runtime.Runtime_t_slice.T_slice();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_notInHeapSlice_static_extension) @:dox(hide) abstract T_notInHeapSlice(stdgo._internal.runtime.Runtime_t_notinheapslice.T_notInHeapSlice) from stdgo._internal.runtime.Runtime_t_notinheapslice.T_notInHeapSlice to stdgo._internal.runtime.Runtime_t_notinheapslice.T_notInHeapSlice {
    public function new() this = new stdgo._internal.runtime.Runtime_t_notinheapslice.T_notInHeapSlice();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_stackpoolItem_static_extension) @:dox(hide) abstract T_stackpoolItem(stdgo._internal.runtime.Runtime_t_stackpoolitem.T_stackpoolItem) from stdgo._internal.runtime.Runtime_t_stackpoolitem.T_stackpoolItem to stdgo._internal.runtime.Runtime_t_stackpoolitem.T_stackpoolItem {
    public function new() this = new stdgo._internal.runtime.Runtime_t_stackpoolitem.T_stackpoolItem();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_adjustinfo_static_extension) @:dox(hide) abstract T_adjustinfo(stdgo._internal.runtime.Runtime_t_adjustinfo.T_adjustinfo) from stdgo._internal.runtime.Runtime_t_adjustinfo.T_adjustinfo to stdgo._internal.runtime.Runtime_t_adjustinfo.T_adjustinfo {
    public function new() this = new stdgo._internal.runtime.Runtime_t_adjustinfo.T_adjustinfo();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_bitvector_static_extension) @:dox(hide) abstract T_bitvector(stdgo._internal.runtime.Runtime_t_bitvector.T_bitvector) from stdgo._internal.runtime.Runtime_t_bitvector.T_bitvector to stdgo._internal.runtime.Runtime_t_bitvector.T_bitvector {
    public function new() this = new stdgo._internal.runtime.Runtime_t_bitvector.T_bitvector();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_stackObjectRecord_static_extension) @:dox(hide) abstract T_stackObjectRecord(stdgo._internal.runtime.Runtime_t_stackobjectrecord.T_stackObjectRecord) from stdgo._internal.runtime.Runtime_t_stackobjectrecord.T_stackObjectRecord to stdgo._internal.runtime.Runtime_t_stackobjectrecord.T_stackObjectRecord {
    public function new() this = new stdgo._internal.runtime.Runtime_t_stackobjectrecord.T_stackObjectRecord();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_stkframe_static_extension) @:dox(hide) abstract T_stkframe(stdgo._internal.runtime.Runtime_t_stkframe.T_stkframe) from stdgo._internal.runtime.Runtime_t_stkframe.T_stkframe to stdgo._internal.runtime.Runtime_t_stkframe.T_stkframe {
    public function new() this = new stdgo._internal.runtime.Runtime_t_stkframe.T_stkframe();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_reflectMethodValue_static_extension) @:dox(hide) abstract T_reflectMethodValue(stdgo._internal.runtime.Runtime_t_reflectmethodvalue.T_reflectMethodValue) from stdgo._internal.runtime.Runtime_t_reflectmethodvalue.T_reflectMethodValue to stdgo._internal.runtime.Runtime_t_reflectmethodvalue.T_reflectMethodValue {
    public function new() this = new stdgo._internal.runtime.Runtime_t_reflectmethodvalue.T_reflectMethodValue();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_stringStruct_static_extension) @:dox(hide) abstract T_stringStruct(stdgo._internal.runtime.Runtime_t_stringstruct.T_stringStruct) from stdgo._internal.runtime.Runtime_t_stringstruct.T_stringStruct to stdgo._internal.runtime.Runtime_t_stringstruct.T_stringStruct {
    public function new() this = new stdgo._internal.runtime.Runtime_t_stringstruct.T_stringStruct();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_stringStructDWARF_static_extension) @:dox(hide) abstract T_stringStructDWARF(stdgo._internal.runtime.Runtime_t_stringstructdwarf.T_stringStructDWARF) from stdgo._internal.runtime.Runtime_t_stringstructdwarf.T_stringStructDWARF to stdgo._internal.runtime.Runtime_t_stringstructdwarf.T_stringStructDWARF {
    public function new() this = new stdgo._internal.runtime.Runtime_t_stringstructdwarf.T_stringStructDWARF();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_neverCallThisFunction_static_extension) @:dox(hide) abstract T_neverCallThisFunction(stdgo._internal.runtime.Runtime_t_nevercallthisfunction.T_neverCallThisFunction) from stdgo._internal.runtime.Runtime_t_nevercallthisfunction.T_neverCallThisFunction to stdgo._internal.runtime.Runtime_t_nevercallthisfunction.T_neverCallThisFunction {
    public function new() this = new stdgo._internal.runtime.Runtime_t_nevercallthisfunction.T_neverCallThisFunction();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.Frames_static_extension) abstract Frames(stdgo._internal.runtime.Runtime_frames.Frames) from stdgo._internal.runtime.Runtime_frames.Frames to stdgo._internal.runtime.Runtime_frames.Frames {
    public function new() this = new stdgo._internal.runtime.Runtime_frames.Frames();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.Frame_static_extension) abstract Frame(stdgo._internal.runtime.Runtime_frame.Frame) from stdgo._internal.runtime.Runtime_frame.Frame to stdgo._internal.runtime.Runtime_frame.Frame {
    public var pC(get, set) : stdgo.GoUIntptr;
    function get_pC():stdgo.GoUIntptr return this.pC;
    function set_pC(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this.pC = (v : stdgo.GoUIntptr);
        return v;
    }
    public var func(get, set) : Func;
    function get_func():Func return this.func;
    function set_func(v:Func):Func {
        this.func = (v : stdgo.Ref<stdgo._internal.runtime.Runtime_func.Func>);
        return v;
    }
    public var function_(get, set) : String;
    function get_function_():String return this.function_;
    function set_function_(v:String):String {
        this.function_ = (v : stdgo.GoString);
        return v;
    }
    public var file(get, set) : String;
    function get_file():String return this.file;
    function set_file(v:String):String {
        this.file = (v : stdgo.GoString);
        return v;
    }
    public var line(get, set) : StdTypes.Int;
    function get_line():StdTypes.Int return this.line;
    function set_line(v:StdTypes.Int):StdTypes.Int {
        this.line = (v : stdgo.GoInt);
        return v;
    }
    public var entry(get, set) : stdgo.GoUIntptr;
    function get_entry():stdgo.GoUIntptr return this.entry;
    function set_entry(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this.entry = (v : stdgo.GoUIntptr);
        return v;
    }
    public function new(?pC:stdgo.GoUIntptr, ?func:Func, ?function_:String, ?file:String, ?line:StdTypes.Int, ?entry:stdgo.GoUIntptr) this = new stdgo._internal.runtime.Runtime_frame.Frame((pC : stdgo.GoUIntptr), (func : stdgo.Ref<stdgo._internal.runtime.Runtime_func.Func>), (function_ : stdgo.GoString), (file : stdgo.GoString), (line : stdgo.GoInt), (entry : stdgo.GoUIntptr));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.Func_static_extension) abstract Func(stdgo._internal.runtime.Runtime_func.Func) from stdgo._internal.runtime.Runtime_func.Func to stdgo._internal.runtime.Runtime_func.Func {
    public function new() this = new stdgo._internal.runtime.Runtime_func.Func();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_pcHeader_static_extension) @:dox(hide) abstract T_pcHeader(stdgo._internal.runtime.Runtime_t_pcheader.T_pcHeader) from stdgo._internal.runtime.Runtime_t_pcheader.T_pcHeader to stdgo._internal.runtime.Runtime_t_pcheader.T_pcHeader {
    public function new() this = new stdgo._internal.runtime.Runtime_t_pcheader.T_pcHeader();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_moduledata_static_extension) @:dox(hide) abstract T_moduledata(stdgo._internal.runtime.Runtime_t_moduledata.T_moduledata) from stdgo._internal.runtime.Runtime_t_moduledata.T_moduledata to stdgo._internal.runtime.Runtime_t_moduledata.T_moduledata {
    public var notInHeap(get, set) : stdgo._internal.runtime.internal.sys.Sys_notinheap.NotInHeap;
    function get_notInHeap():stdgo._internal.runtime.internal.sys.Sys_notinheap.NotInHeap return this.notInHeap;
    function set_notInHeap(v:stdgo._internal.runtime.internal.sys.Sys_notinheap.NotInHeap):stdgo._internal.runtime.internal.sys.Sys_notinheap.NotInHeap {
        this.notInHeap = v;
        return v;
    }
    public function new(?notInHeap:stdgo._internal.runtime.internal.sys.Sys_notinheap.NotInHeap) this = new stdgo._internal.runtime.Runtime_t_moduledata.T_moduledata(notInHeap);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_modulehash_static_extension) @:dox(hide) abstract T_modulehash(stdgo._internal.runtime.Runtime_t_modulehash.T_modulehash) from stdgo._internal.runtime.Runtime_t_modulehash.T_modulehash to stdgo._internal.runtime.Runtime_t_modulehash.T_modulehash {
    public function new() this = new stdgo._internal.runtime.Runtime_t_modulehash.T_modulehash();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_functab_static_extension) @:dox(hide) abstract T_functab(stdgo._internal.runtime.Runtime_t_functab.T_functab) from stdgo._internal.runtime.Runtime_t_functab.T_functab to stdgo._internal.runtime.Runtime_t_functab.T_functab {
    public function new() this = new stdgo._internal.runtime.Runtime_t_functab.T_functab();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_textsect_static_extension) @:dox(hide) abstract T_textsect(stdgo._internal.runtime.Runtime_t_textsect.T_textsect) from stdgo._internal.runtime.Runtime_t_textsect.T_textsect to stdgo._internal.runtime.Runtime_t_textsect.T_textsect {
    public function new() this = new stdgo._internal.runtime.Runtime_t_textsect.T_textsect();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_findfuncbucket_static_extension) @:dox(hide) abstract T_findfuncbucket(stdgo._internal.runtime.Runtime_t_findfuncbucket.T_findfuncbucket) from stdgo._internal.runtime.Runtime_t_findfuncbucket.T_findfuncbucket to stdgo._internal.runtime.Runtime_t_findfuncbucket.T_findfuncbucket {
    public function new() this = new stdgo._internal.runtime.Runtime_t_findfuncbucket.T_findfuncbucket();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_funcInfo_static_extension) @:dox(hide) abstract T_funcInfo(stdgo._internal.runtime.Runtime_t_funcinfo.T_funcInfo) from stdgo._internal.runtime.Runtime_t_funcinfo.T_funcInfo to stdgo._internal.runtime.Runtime_t_funcinfo.T_funcInfo {
    public function new() this = new stdgo._internal.runtime.Runtime_t_funcinfo.T_funcInfo();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_srcFunc_static_extension) @:dox(hide) abstract T_srcFunc(stdgo._internal.runtime.Runtime_t_srcfunc.T_srcFunc) from stdgo._internal.runtime.Runtime_t_srcfunc.T_srcFunc to stdgo._internal.runtime.Runtime_t_srcfunc.T_srcFunc {
    public function new() this = new stdgo._internal.runtime.Runtime_t_srcfunc.T_srcFunc();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_pcvalueCache_static_extension) @:dox(hide) abstract T_pcvalueCache(stdgo._internal.runtime.Runtime_t_pcvaluecache.T_pcvalueCache) from stdgo._internal.runtime.Runtime_t_pcvaluecache.T_pcvalueCache to stdgo._internal.runtime.Runtime_t_pcvaluecache.T_pcvalueCache {
    public function new() this = new stdgo._internal.runtime.Runtime_t_pcvaluecache.T_pcvalueCache();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_pcvalueCacheEnt_static_extension) @:dox(hide) abstract T_pcvalueCacheEnt(stdgo._internal.runtime.Runtime_t_pcvaluecacheent.T_pcvalueCacheEnt) from stdgo._internal.runtime.Runtime_t_pcvaluecacheent.T_pcvalueCacheEnt to stdgo._internal.runtime.Runtime_t_pcvaluecacheent.T_pcvalueCacheEnt {
    public function new() this = new stdgo._internal.runtime.Runtime_t_pcvaluecacheent.T_pcvalueCacheEnt();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_stackmap_static_extension) @:dox(hide) abstract T_stackmap(stdgo._internal.runtime.Runtime_t_stackmap.T_stackmap) from stdgo._internal.runtime.Runtime_t_stackmap.T_stackmap to stdgo._internal.runtime.Runtime_t_stackmap.T_stackmap {
    public function new() this = new stdgo._internal.runtime.Runtime_t_stackmap.T_stackmap();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_inlinedCall_static_extension) @:dox(hide) abstract T_inlinedCall(stdgo._internal.runtime.Runtime_t_inlinedcall.T_inlinedCall) from stdgo._internal.runtime.Runtime_t_inlinedcall.T_inlinedCall to stdgo._internal.runtime.Runtime_t_inlinedcall.T_inlinedCall {
    public function new() this = new stdgo._internal.runtime.Runtime_t_inlinedcall.T_inlinedCall();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_inlineUnwinder_static_extension) @:dox(hide) abstract T_inlineUnwinder(stdgo._internal.runtime.Runtime_t_inlineunwinder.T_inlineUnwinder) from stdgo._internal.runtime.Runtime_t_inlineunwinder.T_inlineUnwinder to stdgo._internal.runtime.Runtime_t_inlineunwinder.T_inlineUnwinder {
    public function new() this = new stdgo._internal.runtime.Runtime_t_inlineunwinder.T_inlineUnwinder();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_inlineFrame_static_extension) @:dox(hide) abstract T_inlineFrame(stdgo._internal.runtime.Runtime_t_inlineframe.T_inlineFrame) from stdgo._internal.runtime.Runtime_t_inlineframe.T_inlineFrame to stdgo._internal.runtime.Runtime_t_inlineframe.T_inlineFrame {
    public function new() this = new stdgo._internal.runtime.Runtime_t_inlineframe.T_inlineFrame();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_m0Stack_static_extension) @:dox(hide) abstract T_m0Stack(stdgo._internal.runtime.Runtime_t_m0stack.T_m0Stack) from stdgo._internal.runtime.Runtime_t_m0stack.T_m0Stack to stdgo._internal.runtime.Runtime_t_m0stack.T_m0Stack {
    public function new() this = new stdgo._internal.runtime.Runtime_t_m0stack.T_m0Stack();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_timer_static_extension) @:dox(hide) abstract T_timer(stdgo._internal.runtime.Runtime_t_timer.T_timer) from stdgo._internal.runtime.Runtime_t_timer.T_timer to stdgo._internal.runtime.Runtime_t_timer.T_timer {
    public function new() this = new stdgo._internal.runtime.Runtime_t_timer.T_timer();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_gTraceState_static_extension) @:dox(hide) abstract T_gTraceState(stdgo._internal.runtime.Runtime_t_gtracestate.T_gTraceState) from stdgo._internal.runtime.Runtime_t_gtracestate.T_gTraceState to stdgo._internal.runtime.Runtime_t_gtracestate.T_gTraceState {
    public function new() this = new stdgo._internal.runtime.Runtime_t_gtracestate.T_gTraceState();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_mTraceState_static_extension) @:dox(hide) abstract T_mTraceState(stdgo._internal.runtime.Runtime_t_mtracestate.T_mTraceState) from stdgo._internal.runtime.Runtime_t_mtracestate.T_mTraceState to stdgo._internal.runtime.Runtime_t_mtracestate.T_mTraceState {
    public function new() this = new stdgo._internal.runtime.Runtime_t_mtracestate.T_mTraceState();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_pTraceState_static_extension) @:dox(hide) abstract T_pTraceState(stdgo._internal.runtime.Runtime_t_ptracestate.T_pTraceState) from stdgo._internal.runtime.Runtime_t_ptracestate.T_pTraceState to stdgo._internal.runtime.Runtime_t_ptracestate.T_pTraceState {
    public function new() this = new stdgo._internal.runtime.Runtime_t_ptracestate.T_pTraceState();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_traceBufHeader_static_extension) @:dox(hide) abstract T_traceBufHeader(stdgo._internal.runtime.Runtime_t_tracebufheader.T_traceBufHeader) from stdgo._internal.runtime.Runtime_t_tracebufheader.T_traceBufHeader to stdgo._internal.runtime.Runtime_t_tracebufheader.T_traceBufHeader {
    public function new() this = new stdgo._internal.runtime.Runtime_t_tracebufheader.T_traceBufHeader();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_traceBuf_static_extension) @:dox(hide) abstract T_traceBuf(stdgo._internal.runtime.Runtime_t_tracebuf.T_traceBuf) from stdgo._internal.runtime.Runtime_t_tracebuf.T_traceBuf to stdgo._internal.runtime.Runtime_t_tracebuf.T_traceBuf {
    public function new() this = new stdgo._internal.runtime.Runtime_t_tracebuf.T_traceBuf();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_traceStackTable_static_extension) @:dox(hide) abstract T_traceStackTable(stdgo._internal.runtime.Runtime_t_tracestacktable.T_traceStackTable) from stdgo._internal.runtime.Runtime_t_tracestacktable.T_traceStackTable to stdgo._internal.runtime.Runtime_t_tracestacktable.T_traceStackTable {
    public function new() this = new stdgo._internal.runtime.Runtime_t_tracestacktable.T_traceStackTable();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_traceStack_static_extension) @:dox(hide) abstract T_traceStack(stdgo._internal.runtime.Runtime_t_tracestack.T_traceStack) from stdgo._internal.runtime.Runtime_t_tracestack.T_traceStack to stdgo._internal.runtime.Runtime_t_tracestack.T_traceStack {
    public function new() this = new stdgo._internal.runtime.Runtime_t_tracestack.T_traceStack();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_traceFrame_static_extension) @:dox(hide) abstract T_traceFrame(stdgo._internal.runtime.Runtime_t_traceframe.T_traceFrame) from stdgo._internal.runtime.Runtime_t_traceframe.T_traceFrame to stdgo._internal.runtime.Runtime_t_traceframe.T_traceFrame {
    public var pC(get, set) : stdgo.GoUIntptr;
    function get_pC():stdgo.GoUIntptr return this.pC;
    function set_pC(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this.pC = (v : stdgo.GoUIntptr);
        return v;
    }
    public function new(?pC:stdgo.GoUIntptr) this = new stdgo._internal.runtime.Runtime_t_traceframe.T_traceFrame((pC : stdgo.GoUIntptr));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_traceAlloc_static_extension) @:dox(hide) abstract T_traceAlloc(stdgo._internal.runtime.Runtime_t_tracealloc.T_traceAlloc) from stdgo._internal.runtime.Runtime_t_tracealloc.T_traceAlloc to stdgo._internal.runtime.Runtime_t_tracealloc.T_traceAlloc {
    public function new() this = new stdgo._internal.runtime.Runtime_t_tracealloc.T_traceAlloc();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_traceAllocBlock_static_extension) @:dox(hide) abstract T_traceAllocBlock(stdgo._internal.runtime.Runtime_t_traceallocblock.T_traceAllocBlock) from stdgo._internal.runtime.Runtime_t_traceallocblock.T_traceAllocBlock to stdgo._internal.runtime.Runtime_t_traceallocblock.T_traceAllocBlock {
    public function new() this = new stdgo._internal.runtime.Runtime_t_traceallocblock.T_traceAllocBlock();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_unwinder_static_extension) @:dox(hide) abstract T_unwinder(stdgo._internal.runtime.Runtime_t_unwinder.T_unwinder) from stdgo._internal.runtime.Runtime_t_unwinder.T_unwinder to stdgo._internal.runtime.Runtime_t_unwinder.T_unwinder {
    public function new() this = new stdgo._internal.runtime.Runtime_t_unwinder.T_unwinder();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_cgoTracebackArg_static_extension) @:dox(hide) abstract T_cgoTracebackArg(stdgo._internal.runtime.Runtime_t_cgotracebackarg.T_cgoTracebackArg) from stdgo._internal.runtime.Runtime_t_cgotracebackarg.T_cgoTracebackArg to stdgo._internal.runtime.Runtime_t_cgotracebackarg.T_cgoTracebackArg {
    public function new() this = new stdgo._internal.runtime.Runtime_t_cgotracebackarg.T_cgoTracebackArg();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_cgoContextArg_static_extension) @:dox(hide) abstract T_cgoContextArg(stdgo._internal.runtime.Runtime_t_cgocontextarg.T_cgoContextArg) from stdgo._internal.runtime.Runtime_t_cgocontextarg.T_cgoContextArg to stdgo._internal.runtime.Runtime_t_cgocontextarg.T_cgoContextArg {
    public function new() this = new stdgo._internal.runtime.Runtime_t_cgocontextarg.T_cgoContextArg();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_cgoSymbolizerArg_static_extension) @:dox(hide) abstract T_cgoSymbolizerArg(stdgo._internal.runtime.Runtime_t_cgosymbolizerarg.T_cgoSymbolizerArg) from stdgo._internal.runtime.Runtime_t_cgosymbolizerarg.T_cgoSymbolizerArg to stdgo._internal.runtime.Runtime_t_cgosymbolizerarg.T_cgoSymbolizerArg {
    public function new() this = new stdgo._internal.runtime.Runtime_t_cgosymbolizerarg.T_cgoSymbolizerArg();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T_rtype_static_extension) @:dox(hide) abstract T_rtype(stdgo._internal.runtime.Runtime_t_rtype.T_rtype) from stdgo._internal.runtime.Runtime_t_rtype.T_rtype to stdgo._internal.runtime.Runtime_t_rtype.T_rtype {
    public var type(get, set) : stdgo._internal.internal.abi.Abi_type_.Type_;
    function get_type():stdgo._internal.internal.abi.Abi_type_.Type_ return this.type;
    function set_type(v:stdgo._internal.internal.abi.Abi_type_.Type_):stdgo._internal.internal.abi.Abi_type_.Type_ {
        this.type = (v : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>);
        return v;
    }
    public function new(?type:stdgo._internal.internal.abi.Abi_type_.Type_) this = new stdgo._internal.runtime.Runtime_t_rtype.T_rtype((type : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.T__typePair_static_extension) @:dox(hide) abstract T__typePair(stdgo._internal.runtime.Runtime_t__typepair.T__typePair) from stdgo._internal.runtime.Runtime_t__typepair.T__typePair to stdgo._internal.runtime.Runtime_t__typepair.T__typePair {
    public function new() this = new stdgo._internal.runtime.Runtime_t__typepair.T__typePair();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T__struct_0Pointer = stdgo._internal.runtime.Runtime_t__struct_0pointer.T__struct_0Pointer;
@:dox(hide) class T__struct_0_static_extension {

}
@:dox(hide) typedef T__struct_0 = stdgo._internal.runtime.Runtime_t__struct_0.T__struct_0;
@:dox(hide) typedef T__struct_1Pointer = stdgo._internal.runtime.Runtime_t__struct_1pointer.T__struct_1Pointer;
@:dox(hide) class T__struct_1_static_extension {

}
@:dox(hide) typedef T__struct_1 = stdgo._internal.runtime.Runtime_t__struct_1.T__struct_1;
@:dox(hide) typedef T_cgoCallers = stdgo._internal.runtime.Runtime_t_cgocallers.T_cgoCallers;
@:dox(hide) typedef T_errorString = stdgo._internal.runtime.Runtime_t_errorstring.T_errorString;
@:dox(hide) typedef T_plainError = stdgo._internal.runtime.Runtime_t_plainerror.T_plainError;
@:dox(hide) typedef T_boundsErrorCode = stdgo._internal.runtime.Runtime_t_boundserrorcode.T_boundsErrorCode;
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
@:dox(hide) typedef T_uint16InterfacePtr = stdgo._internal.runtime.Runtime_t_uint16interfaceptr.T_uint16InterfacePtr;
@:dox(hide) typedef T_uint32InterfacePtr = stdgo._internal.runtime.Runtime_t_uint32interfaceptr.T_uint32InterfacePtr;
@:dox(hide) typedef T_uint64InterfacePtr = stdgo._internal.runtime.Runtime_t_uint64interfaceptr.T_uint64InterfacePtr;
@:dox(hide) typedef T_stringInterfacePtr = stdgo._internal.runtime.Runtime_t_stringinterfaceptr.T_stringInterfacePtr;
@:dox(hide) typedef T_sliceInterfacePtr = stdgo._internal.runtime.Runtime_t_sliceinterfaceptr.T_sliceInterfacePtr;
@:dox(hide) typedef T_lfstack = stdgo._internal.runtime.Runtime_t_lfstack.T_lfstack;
@:dox(hide) typedef T_lockRank = stdgo._internal.runtime.Runtime_t_lockrank.T_lockRank;
@:dox(hide) typedef T_gclinkptr = stdgo._internal.runtime.Runtime_t_gclinkptr.T_gclinkptr;
@:dox(hide) typedef T_memHdrPtr = stdgo._internal.runtime.Runtime_t_memhdrptr.T_memHdrPtr;
@:dox(hide) typedef T_metricReader = stdgo._internal.runtime.Runtime_t_metricreader.T_metricReader;
@:dox(hide) typedef T_statDep = stdgo._internal.runtime.Runtime_t_statdep.T_statDep;
@:dox(hide) typedef T_statDepSet = stdgo._internal.runtime.Runtime_t_statdepset.T_statDepSet;
@:dox(hide) typedef T_metricKind = stdgo._internal.runtime.Runtime_t_metrickind.T_metricKind;
@:dox(hide) typedef T_gcMarkWorkerMode = stdgo._internal.runtime.Runtime_t_gcmarkworkermode.T_gcMarkWorkerMode;
@:dox(hide) typedef T_gcMode = stdgo._internal.runtime.Runtime_t_gcmode.T_gcMode;
@:dox(hide) typedef T_gcTriggerKind = stdgo._internal.runtime.Runtime_t_gctriggerkind.T_gcTriggerKind;
@:dox(hide) typedef T_limiterEventType = stdgo._internal.runtime.Runtime_t_limitereventtype.T_limiterEventType;
@:dox(hide) typedef T_limiterEventStamp = stdgo._internal.runtime.Runtime_t_limitereventstamp.T_limiterEventStamp;
@:dox(hide) typedef T_gcDrainFlags = stdgo._internal.runtime.Runtime_t_gcdrainflags.T_gcDrainFlags;
@:dox(hide) typedef T_scavChunkFlags = stdgo._internal.runtime.Runtime_t_scavchunkflags.T_scavChunkFlags;
@:dox(hide) typedef T_sweepClass = stdgo._internal.runtime.Runtime_t_sweepclass.T_sweepClass;
@:dox(hide) typedef T_mSpanState = stdgo._internal.runtime.Runtime_t_mspanstate.T_mSpanState;
@:dox(hide) typedef T_spanClass = stdgo._internal.runtime.Runtime_t_spanclass.T_spanClass;
@:dox(hide) typedef T_arenaIdx = stdgo._internal.runtime.Runtime_t_arenaidx.T_arenaIdx;
@:dox(hide) typedef T_spanAllocType = stdgo._internal.runtime.Runtime_t_spanalloctype.T_spanAllocType;
@:dox(hide) typedef T_chunkIdx = stdgo._internal.runtime.Runtime_t_chunkidx.T_chunkIdx;
@:dox(hide) typedef T_pallocSum = stdgo._internal.runtime.Runtime_t_pallocsum.T_pallocSum;
@:dox(hide) typedef T_pageBits = stdgo._internal.runtime.Runtime_t_pagebits.T_pageBits;
@:dox(hide) typedef T_pallocBits = stdgo._internal.runtime.Runtime_t_pallocbits.T_pallocBits;
@:dox(hide) typedef T_bucketType = stdgo._internal.runtime.Runtime_t_buckettype.T_bucketType;
@:dox(hide) typedef T_buckhashArray = stdgo._internal.runtime.Runtime_t_buckhasharray.T_buckhashArray;
@:dox(hide) typedef T_goroutineProfileState = stdgo._internal.runtime.Runtime_t_goroutineprofilestate.T_goroutineProfileState;
@:dox(hide) typedef T_goroutineProfileStateHolder = stdgo._internal.runtime.Runtime_t_goroutineprofilestateholder.T_goroutineProfileStateHolder;
@:dox(hide) typedef T_headTailIndex = stdgo._internal.runtime.Runtime_t_headtailindex.T_headTailIndex;
@:dox(hide) typedef T_sysMemStat = stdgo._internal.runtime.Runtime_t_sysmemstat.T_sysMemStat;
@:dox(hide) typedef T_pollInfo = stdgo._internal.runtime.Runtime_t_pollinfo.T_pollInfo;
@:dox(hide) typedef T_throwType = stdgo._internal.runtime.Runtime_t_throwtype.T_throwType;
@:dox(hide) typedef T_pinnerBits = stdgo._internal.runtime.Runtime_t_pinnerbits.T_pinnerBits;
@:dox(hide) typedef T_hex = stdgo._internal.runtime.Runtime_t_hex.T_hex;
@:dox(hide) typedef T_stwReason = stdgo._internal.runtime.Runtime_t_stwreason.T_stwReason;
@:dox(hide) typedef T_pMask = stdgo._internal.runtime.Runtime_t_pmask.T_pMask;
@:dox(hide) typedef T_profAtomic = stdgo._internal.runtime.Runtime_t_profatomic.T_profAtomic;
@:dox(hide) typedef T_profIndex = stdgo._internal.runtime.Runtime_t_profindex.T_profIndex;
@:dox(hide) typedef T_profBufReadMode = stdgo._internal.runtime.Runtime_t_profbufreadmode.T_profBufReadMode;
@:dox(hide) typedef T_guintptr = stdgo._internal.runtime.Runtime_t_guintptr.T_guintptr;
@:dox(hide) typedef T_puintptr = stdgo._internal.runtime.Runtime_t_puintptr.T_puintptr;
@:dox(hide) typedef T_muintptr = stdgo._internal.runtime.Runtime_t_muintptr.T_muintptr;
@:dox(hide) typedef T_waitReason = stdgo._internal.runtime.Runtime_t_waitreason.T_waitReason;
@:dox(hide) typedef T_selectDir = stdgo._internal.runtime.Runtime_t_selectdir.T_selectDir;
@:dox(hide) typedef T_semTable = stdgo._internal.runtime.Runtime_t_semtable.T_semTable;
@:dox(hide) typedef T_semaProfileFlags = stdgo._internal.runtime.Runtime_t_semaprofileflags.T_semaProfileFlags;
@:dox(hide) typedef T_tmpBuf = stdgo._internal.runtime.Runtime_t_tmpbuf.T_tmpBuf;
@:dox(hide) typedef T_taggedPointer = stdgo._internal.runtime.Runtime_t_taggedpointer.T_taggedPointer;
@:dox(hide) typedef T_traceBlockReason = stdgo._internal.runtime.Runtime_t_traceblockreason.T_traceBlockReason;
@:dox(hide) typedef T_traceBufPtr = stdgo._internal.runtime.Runtime_t_tracebufptr.T_traceBufPtr;
@:dox(hide) typedef T_traceStackPtr = stdgo._internal.runtime.Runtime_t_tracestackptr.T_traceStackPtr;
@:dox(hide) typedef T_traceAllocBlockPtr = stdgo._internal.runtime.Runtime_t_traceallocblockptr.T_traceAllocBlockPtr;
@:dox(hide) typedef T_traceTime = stdgo._internal.runtime.Runtime_t_tracetime.T_traceTime;
@:dox(hide) typedef T_unwindFlags = stdgo._internal.runtime.Runtime_t_unwindflags.T_unwindFlags;
@:dox(hide) typedef T_nameOff = stdgo._internal.runtime.Runtime_t_nameoff.T_nameOff;
@:dox(hide) typedef T_typeOff = stdgo._internal.runtime.Runtime_t_typeoff.T_typeOff;
@:dox(hide) typedef T_textOff = stdgo._internal.runtime.Runtime_t_textoff.T_textOff;
@:dox(hide) typedef T__type = stdgo._internal.runtime.Runtime_t__type.T__type;
@:dox(hide) typedef T_uncommontype = stdgo._internal.runtime.Runtime_t_uncommontype.T_uncommontype;
@:dox(hide) typedef T_interfacetype = stdgo._internal.runtime.Runtime_t_interfacetype.T_interfacetype;
@:dox(hide) typedef T_maptype = stdgo._internal.runtime.Runtime_t_maptype.T_maptype;
@:dox(hide) typedef T_arraytype = stdgo._internal.runtime.Runtime_t_arraytype.T_arraytype;
@:dox(hide) typedef T_chantype = stdgo._internal.runtime.Runtime_t_chantype.T_chantype;
@:dox(hide) typedef T_slicetype = stdgo._internal.runtime.Runtime_t_slicetype.T_slicetype;
@:dox(hide) typedef T_functype = stdgo._internal.runtime.Runtime_t_functype.T_functype;
@:dox(hide) typedef T_ptrtype = stdgo._internal.runtime.Runtime_t_ptrtype.T_ptrtype;
@:dox(hide) typedef T_name = stdgo._internal.runtime.Runtime_t_name.T_name;
@:dox(hide) typedef T_structtype = stdgo._internal.runtime.Runtime_t_structtype.T_structtype;
@:dox(hide) typedef T_userArenaPointer = stdgo._internal.runtime.Runtime_t_userarenapointer.T_userArenaPointer;
@:dox(hide) class T_userArena_static_extension {

}
@:dox(hide) typedef T_liveUserArenaChunkPointer = stdgo._internal.runtime.Runtime_t_liveuserarenachunkpointer.T_liveUserArenaChunkPointer;
@:dox(hide) class T_liveUserArenaChunk_static_extension {
    public static function _userArenaNextFree(__self__:stdgo._internal.runtime.Runtime_t_liveuserarenachunk.T_liveUserArenaChunk, _0:stdgo._internal.internal.abi.Abi_type_.Type_, _1:StdTypes.Int):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>);
        final _1 = (_1 : stdgo.GoInt);
        return stdgo._internal.runtime.Runtime_t_liveuserarenachunk_static_extension.T_liveUserArenaChunk_static_extension._userArenaNextFree(__self__, _0, _1);
    }
    public static function _specialFindSplicePoint(__self__:stdgo._internal.runtime.Runtime_t_liveuserarenachunk.T_liveUserArenaChunk, _0:stdgo.GoUIntptr, _1:std.UInt):stdgo.Tuple<T_special, Bool> {
        final _0 = (_0 : stdgo.GoUIntptr);
        final _1 = (_1 : stdgo.GoUInt8);
        return {
            final obj = stdgo._internal.runtime.Runtime_t_liveuserarenachunk_static_extension.T_liveUserArenaChunk_static_extension._specialFindSplicePoint(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _setUserArenaChunkToFault(__self__:stdgo._internal.runtime.Runtime_t_liveuserarenachunk.T_liveUserArenaChunk):Void {
        stdgo._internal.runtime.Runtime_t_liveuserarenachunk_static_extension.T_liveUserArenaChunk_static_extension._setUserArenaChunkToFault(__self__);
    }
    public static function _setPinnerBits(__self__:stdgo._internal.runtime.Runtime_t_liveuserarenachunk.T_liveUserArenaChunk, _0:T_pinnerBits):Void {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.runtime.Runtime_t_pinnerbits.T_pinnerBits>);
        stdgo._internal.runtime.Runtime_t_liveuserarenachunk_static_extension.T_liveUserArenaChunk_static_extension._setPinnerBits(__self__, _0);
    }
    public static function _reportZombies(__self__:stdgo._internal.runtime.Runtime_t_liveuserarenachunk.T_liveUserArenaChunk):Void {
        stdgo._internal.runtime.Runtime_t_liveuserarenachunk_static_extension.T_liveUserArenaChunk_static_extension._reportZombies(__self__);
    }
    public static function _refreshPinnerBits(__self__:stdgo._internal.runtime.Runtime_t_liveuserarenachunk.T_liveUserArenaChunk):Void {
        stdgo._internal.runtime.Runtime_t_liveuserarenachunk_static_extension.T_liveUserArenaChunk_static_extension._refreshPinnerBits(__self__);
    }
    public static function _refillAllocCache(__self__:stdgo._internal.runtime.Runtime_t_liveuserarenachunk.T_liveUserArenaChunk, _0:stdgo.GoUIntptr):Void {
        final _0 = (_0 : stdgo.GoUIntptr);
        stdgo._internal.runtime.Runtime_t_liveuserarenachunk_static_extension.T_liveUserArenaChunk_static_extension._refillAllocCache(__self__, _0);
    }
    public static function _pinnerBitSize(__self__:stdgo._internal.runtime.Runtime_t_liveuserarenachunk.T_liveUserArenaChunk):stdgo.GoUIntptr {
        return stdgo._internal.runtime.Runtime_t_liveuserarenachunk_static_extension.T_liveUserArenaChunk_static_extension._pinnerBitSize(__self__);
    }
    public static function _objIndex(__self__:stdgo._internal.runtime.Runtime_t_liveuserarenachunk.T_liveUserArenaChunk, _0:stdgo.GoUIntptr):stdgo.GoUIntptr {
        final _0 = (_0 : stdgo.GoUIntptr);
        return stdgo._internal.runtime.Runtime_t_liveuserarenachunk_static_extension.T_liveUserArenaChunk_static_extension._objIndex(__self__, _0);
    }
    public static function _nextFreeIndex(__self__:stdgo._internal.runtime.Runtime_t_liveuserarenachunk.T_liveUserArenaChunk):stdgo.GoUIntptr {
        return stdgo._internal.runtime.Runtime_t_liveuserarenachunk_static_extension.T_liveUserArenaChunk_static_extension._nextFreeIndex(__self__);
    }
    public static function _newPinnerBits(__self__:stdgo._internal.runtime.Runtime_t_liveuserarenachunk.T_liveUserArenaChunk):T_pinnerBits {
        return stdgo._internal.runtime.Runtime_t_liveuserarenachunk_static_extension.T_liveUserArenaChunk_static_extension._newPinnerBits(__self__);
    }
    public static function _markBitsForIndex(__self__:stdgo._internal.runtime.Runtime_t_liveuserarenachunk.T_liveUserArenaChunk, _0:stdgo.GoUIntptr):T_markBits {
        final _0 = (_0 : stdgo.GoUIntptr);
        return stdgo._internal.runtime.Runtime_t_liveuserarenachunk_static_extension.T_liveUserArenaChunk_static_extension._markBitsForIndex(__self__, _0);
    }
    public static function _markBitsForBase(__self__:stdgo._internal.runtime.Runtime_t_liveuserarenachunk.T_liveUserArenaChunk):T_markBits {
        return stdgo._internal.runtime.Runtime_t_liveuserarenachunk_static_extension.T_liveUserArenaChunk_static_extension._markBitsForBase(__self__);
    }
    public static function _layout(__self__:stdgo._internal.runtime.Runtime_t_liveuserarenachunk.T_liveUserArenaChunk):stdgo.Tuple.Tuple3<stdgo.GoUIntptr, stdgo.GoUIntptr, stdgo.GoUIntptr> {
        return {
            final obj = stdgo._internal.runtime.Runtime_t_liveuserarenachunk_static_extension.T_liveUserArenaChunk_static_extension._layout(__self__);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    public static function _isUnusedUserArenaChunk(__self__:stdgo._internal.runtime.Runtime_t_liveuserarenachunk.T_liveUserArenaChunk):Bool {
        return stdgo._internal.runtime.Runtime_t_liveuserarenachunk_static_extension.T_liveUserArenaChunk_static_extension._isUnusedUserArenaChunk(__self__);
    }
    public static function _isFree(__self__:stdgo._internal.runtime.Runtime_t_liveuserarenachunk.T_liveUserArenaChunk, _0:stdgo.GoUIntptr):Bool {
        final _0 = (_0 : stdgo.GoUIntptr);
        return stdgo._internal.runtime.Runtime_t_liveuserarenachunk_static_extension.T_liveUserArenaChunk_static_extension._isFree(__self__, _0);
    }
    public static function _initHeapBits(__self__:stdgo._internal.runtime.Runtime_t_liveuserarenachunk.T_liveUserArenaChunk, _0:Bool):Void {
        stdgo._internal.runtime.Runtime_t_liveuserarenachunk_static_extension.T_liveUserArenaChunk_static_extension._initHeapBits(__self__, _0);
    }
    public static function _init(__self__:stdgo._internal.runtime.Runtime_t_liveuserarenachunk.T_liveUserArenaChunk, _0:stdgo.GoUIntptr, _1:stdgo.GoUIntptr):Void {
        final _0 = (_0 : stdgo.GoUIntptr);
        final _1 = (_1 : stdgo.GoUIntptr);
        stdgo._internal.runtime.Runtime_t_liveuserarenachunk_static_extension.T_liveUserArenaChunk_static_extension._init(__self__, _0, _1);
    }
    public static function _incPinCounter(__self__:stdgo._internal.runtime.Runtime_t_liveuserarenachunk.T_liveUserArenaChunk, _0:stdgo.GoUIntptr):Void {
        final _0 = (_0 : stdgo.GoUIntptr);
        stdgo._internal.runtime.Runtime_t_liveuserarenachunk_static_extension.T_liveUserArenaChunk_static_extension._incPinCounter(__self__, _0);
    }
    public static function _inList(__self__:stdgo._internal.runtime.Runtime_t_liveuserarenachunk.T_liveUserArenaChunk):Bool {
        return stdgo._internal.runtime.Runtime_t_liveuserarenachunk_static_extension.T_liveUserArenaChunk_static_extension._inList(__self__);
    }
    public static function _getPinnerBits(__self__:stdgo._internal.runtime.Runtime_t_liveuserarenachunk.T_liveUserArenaChunk):T_pinnerBits {
        return stdgo._internal.runtime.Runtime_t_liveuserarenachunk_static_extension.T_liveUserArenaChunk_static_extension._getPinnerBits(__self__);
    }
    public static function _ensureSwept(__self__:stdgo._internal.runtime.Runtime_t_liveuserarenachunk.T_liveUserArenaChunk):Void {
        stdgo._internal.runtime.Runtime_t_liveuserarenachunk_static_extension.T_liveUserArenaChunk_static_extension._ensureSwept(__self__);
    }
    public static function _divideByElemSize(__self__:stdgo._internal.runtime.Runtime_t_liveuserarenachunk.T_liveUserArenaChunk, _0:stdgo.GoUIntptr):stdgo.GoUIntptr {
        final _0 = (_0 : stdgo.GoUIntptr);
        return stdgo._internal.runtime.Runtime_t_liveuserarenachunk_static_extension.T_liveUserArenaChunk_static_extension._divideByElemSize(__self__, _0);
    }
    public static function _decPinCounter(__self__:stdgo._internal.runtime.Runtime_t_liveuserarenachunk.T_liveUserArenaChunk, _0:stdgo.GoUIntptr):Bool {
        final _0 = (_0 : stdgo.GoUIntptr);
        return stdgo._internal.runtime.Runtime_t_liveuserarenachunk_static_extension.T_liveUserArenaChunk_static_extension._decPinCounter(__self__, _0);
    }
    public static function _countAlloc(__self__:stdgo._internal.runtime.Runtime_t_liveuserarenachunk.T_liveUserArenaChunk):StdTypes.Int {
        return stdgo._internal.runtime.Runtime_t_liveuserarenachunk_static_extension.T_liveUserArenaChunk_static_extension._countAlloc(__self__);
    }
    public static function _base(__self__:stdgo._internal.runtime.Runtime_t_liveuserarenachunk.T_liveUserArenaChunk):stdgo.GoUIntptr {
        return stdgo._internal.runtime.Runtime_t_liveuserarenachunk_static_extension.T_liveUserArenaChunk_static_extension._base(__self__);
    }
    public static function _allocBitsForIndex(__self__:stdgo._internal.runtime.Runtime_t_liveuserarenachunk.T_liveUserArenaChunk, _0:stdgo.GoUIntptr):T_markBits {
        final _0 = (_0 : stdgo.GoUIntptr);
        return stdgo._internal.runtime.Runtime_t_liveuserarenachunk_static_extension.T_liveUserArenaChunk_static_extension._allocBitsForIndex(__self__, _0);
    }
}
@:dox(hide) typedef T_argsetPointer = stdgo._internal.runtime.Runtime_t_argsetpointer.T_argsetPointer;
@:dox(hide) class T_argset_static_extension {

}
@:dox(hide) typedef T_hchanPointer = stdgo._internal.runtime.Runtime_t_hchanpointer.T_hchanPointer;
@:dox(hide) class T_hchan_static_extension {

}
@:dox(hide) typedef T_waitqPointer = stdgo._internal.runtime.Runtime_t_waitqpointer.T_waitqPointer;
@:dox(hide) class T_waitq_static_extension {

}
@:dox(hide) typedef T_cpuProfilePointer = stdgo._internal.runtime.Runtime_t_cpuprofilepointer.T_cpuProfilePointer;
@:dox(hide) class T_cpuProfile_static_extension {

}
@:dox(hide) typedef T_dloggerPointer = stdgo._internal.runtime.Runtime_t_dloggerpointer.T_dloggerPointer;
@:dox(hide) class T_dlogger_static_extension {
    static public function pC(_l:T_dlogger, _x:stdgo.GoUIntptr):T_dlogger {
        final _l = (_l : stdgo.Ref<stdgo._internal.runtime.Runtime_t_dlogger.T_dlogger>);
        final _x = (_x : stdgo.GoUIntptr);
        return stdgo._internal.runtime.Runtime_t_dlogger_static_extension.T_dlogger_static_extension.pC(_l, _x);
    }
    static public function s(_l:T_dlogger, _x:String):T_dlogger {
        final _l = (_l : stdgo.Ref<stdgo._internal.runtime.Runtime_t_dlogger.T_dlogger>);
        final _x = (_x : stdgo.GoString);
        return stdgo._internal.runtime.Runtime_t_dlogger_static_extension.T_dlogger_static_extension.s(_l, _x);
    }
    static public function p(_l:T_dlogger, _x:stdgo.AnyInterface):T_dlogger {
        final _l = (_l : stdgo.Ref<stdgo._internal.runtime.Runtime_t_dlogger.T_dlogger>);
        final _x = (_x : stdgo.AnyInterface);
        return stdgo._internal.runtime.Runtime_t_dlogger_static_extension.T_dlogger_static_extension.p(_l, _x);
    }
    static public function hex(_l:T_dlogger, _x:haxe.UInt64):T_dlogger {
        final _l = (_l : stdgo.Ref<stdgo._internal.runtime.Runtime_t_dlogger.T_dlogger>);
        final _x = (_x : stdgo.GoUInt64);
        return stdgo._internal.runtime.Runtime_t_dlogger_static_extension.T_dlogger_static_extension.hex(_l, _x);
    }
    static public function u64(_l:T_dlogger, _x:haxe.UInt64):T_dlogger {
        final _l = (_l : stdgo.Ref<stdgo._internal.runtime.Runtime_t_dlogger.T_dlogger>);
        final _x = (_x : stdgo.GoUInt64);
        return stdgo._internal.runtime.Runtime_t_dlogger_static_extension.T_dlogger_static_extension.u64(_l, _x);
    }
    static public function i16(_l:T_dlogger, _x:StdTypes.Int):T_dlogger {
        final _l = (_l : stdgo.Ref<stdgo._internal.runtime.Runtime_t_dlogger.T_dlogger>);
        final _x = (_x : stdgo.GoInt16);
        return stdgo._internal.runtime.Runtime_t_dlogger_static_extension.T_dlogger_static_extension.i16(_l, _x);
    }
    static public function i(_l:T_dlogger, _x:StdTypes.Int):T_dlogger {
        final _l = (_l : stdgo.Ref<stdgo._internal.runtime.Runtime_t_dlogger.T_dlogger>);
        final _x = (_x : stdgo.GoInt);
        return stdgo._internal.runtime.Runtime_t_dlogger_static_extension.T_dlogger_static_extension.i(_l, _x);
    }
    static public function b(_l:T_dlogger, _x:Bool):T_dlogger {
        final _l = (_l : stdgo.Ref<stdgo._internal.runtime.Runtime_t_dlogger.T_dlogger>);
        return stdgo._internal.runtime.Runtime_t_dlogger_static_extension.T_dlogger_static_extension.b(_l, _x);
    }
    static public function end(_l:T_dlogger):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.runtime.Runtime_t_dlogger.T_dlogger>);
        stdgo._internal.runtime.Runtime_t_dlogger_static_extension.T_dlogger_static_extension.end(_l);
    }
}
@:dox(hide) typedef T_debugLogWriterPointer = stdgo._internal.runtime.Runtime_t_debuglogwriterpointer.T_debugLogWriterPointer;
@:dox(hide) class T_debugLogWriter_static_extension {

}
@:dox(hide) typedef T_debugLogBufPointer = stdgo._internal.runtime.Runtime_t_debuglogbufpointer.T_debugLogBufPointer;
@:dox(hide) class T_debugLogBuf_static_extension {

}
@:dox(hide) typedef T_debugLogReaderPointer = stdgo._internal.runtime.Runtime_t_debuglogreaderpointer.T_debugLogReaderPointer;
@:dox(hide) class T_debugLogReader_static_extension {

}
@:dox(hide) typedef T_dlogPerMPointer = stdgo._internal.runtime.Runtime_t_dlogpermpointer.T_dlogPerMPointer;
@:dox(hide) class T_dlogPerM_static_extension {

}
typedef TypeAssertionErrorPointer = stdgo._internal.runtime.Runtime_typeassertionerrorpointer.TypeAssertionErrorPointer;
class TypeAssertionError_static_extension {
    static public function error(_e:TypeAssertionError):String {
        final _e = (_e : stdgo.Ref<stdgo._internal.runtime.Runtime_typeassertionerror.TypeAssertionError>);
        return stdgo._internal.runtime.Runtime_typeassertionerror_static_extension.TypeAssertionError_static_extension.error(_e);
    }
    static public function runtimeError(_:TypeAssertionError):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.runtime.Runtime_typeassertionerror.TypeAssertionError>);
        stdgo._internal.runtime.Runtime_typeassertionerror_static_extension.TypeAssertionError_static_extension.runtimeError(_);
    }
}
@:dox(hide) typedef T_errorAddressStringPointer = stdgo._internal.runtime.Runtime_t_erroraddressstringpointer.T_errorAddressStringPointer;
@:dox(hide) class T_errorAddressString_static_extension {
    static public function addr(_e:T_errorAddressString):stdgo.GoUIntptr {
        return stdgo._internal.runtime.Runtime_t_erroraddressstring_static_extension.T_errorAddressString_static_extension.addr(_e);
    }
    static public function error(_e:T_errorAddressString):String {
        return stdgo._internal.runtime.Runtime_t_erroraddressstring_static_extension.T_errorAddressString_static_extension.error(_e);
    }
    static public function runtimeError(_e:T_errorAddressString):Void {
        stdgo._internal.runtime.Runtime_t_erroraddressstring_static_extension.T_errorAddressString_static_extension.runtimeError(_e);
    }
}
@:dox(hide) typedef T_boundsErrorPointer = stdgo._internal.runtime.Runtime_t_boundserrorpointer.T_boundsErrorPointer;
@:dox(hide) class T_boundsError_static_extension {
    static public function error(_e:T_boundsError):String {
        return stdgo._internal.runtime.Runtime_t_boundserror_static_extension.T_boundsError_static_extension.error(_e);
    }
    static public function runtimeError(_e:T_boundsError):Void {
        stdgo._internal.runtime.Runtime_t_boundserror_static_extension.T_boundsError_static_extension.runtimeError(_e);
    }
}
@:dox(hide) typedef T_exitHookPointer = stdgo._internal.runtime.Runtime_t_exithookpointer.T_exitHookPointer;
@:dox(hide) class T_exitHook_static_extension {

}
typedef LFNodePointer = stdgo._internal.runtime.Runtime_lfnodepointer.LFNodePointer;
class LFNode_static_extension {

}
@:dox(hide) typedef T_blockWrapperPointer = stdgo._internal.runtime.Runtime_t_blockwrapperpointer.T_blockWrapperPointer<T_>;
@:dox(hide) class T_blockWrapper_static_extension {

}
@:dox(hide) typedef T_arrayBlockWrapperPointer = stdgo._internal.runtime.Runtime_t_arrayblockwrapperpointer.T_arrayBlockWrapperPointer<T_>;
@:dox(hide) class T_arrayBlockWrapper_static_extension {

}
@:dox(hide) typedef T_arrayLargeBlockWrapperPointer = stdgo._internal.runtime.Runtime_t_arraylargeblockwrapperpointer.T_arrayLargeBlockWrapperPointer<T_>;
@:dox(hide) class T_arrayLargeBlockWrapper_static_extension {

}
typedef RWMutexPointer = stdgo._internal.runtime.Runtime_rwmutexpointer.RWMutexPointer;
class RWMutex_static_extension {
    static public function unlock(_rw:RWMutex):Void {
        final _rw = (_rw : stdgo.Ref<stdgo._internal.runtime.Runtime_rwmutex.RWMutex>);
        stdgo._internal.runtime.Runtime_rwmutex_static_extension.RWMutex_static_extension.unlock(_rw);
    }
    static public function lock(_rw:RWMutex):Void {
        final _rw = (_rw : stdgo.Ref<stdgo._internal.runtime.Runtime_rwmutex.RWMutex>);
        stdgo._internal.runtime.Runtime_rwmutex_static_extension.RWMutex_static_extension.lock(_rw);
    }
    static public function rUnlock(_rw:RWMutex):Void {
        final _rw = (_rw : stdgo.Ref<stdgo._internal.runtime.Runtime_rwmutex.RWMutex>);
        stdgo._internal.runtime.Runtime_rwmutex_static_extension.RWMutex_static_extension.rUnlock(_rw);
    }
    static public function rLock(_rw:RWMutex):Void {
        final _rw = (_rw : stdgo.Ref<stdgo._internal.runtime.Runtime_rwmutex.RWMutex>);
        stdgo._internal.runtime.Runtime_rwmutex_static_extension.RWMutex_static_extension.rLock(_rw);
    }
}
typedef AddrRangePointer = stdgo._internal.runtime.Runtime_addrrangepointer.AddrRangePointer;
class AddrRange_static_extension {
    static public function size(_a:AddrRange):stdgo.GoUIntptr {
        return stdgo._internal.runtime.Runtime_addrrange_static_extension.AddrRange_static_extension.size(_a);
    }
    static public function equals(_a:AddrRange, _b:AddrRange):Bool {
        return stdgo._internal.runtime.Runtime_addrrange_static_extension.AddrRange_static_extension.equals(_a, _b);
    }
    static public function limit(_a:AddrRange):stdgo.GoUIntptr {
        return stdgo._internal.runtime.Runtime_addrrange_static_extension.AddrRange_static_extension.limit(_a);
    }
    static public function base(_a:AddrRange):stdgo.GoUIntptr {
        return stdgo._internal.runtime.Runtime_addrrange_static_extension.AddrRange_static_extension.base(_a);
    }
    public static function _takeFromFront(__self__:stdgo._internal.runtime.Runtime_addrrange.AddrRange, _0:stdgo.GoUIntptr, _1:std.UInt):stdgo.Tuple<stdgo.GoUIntptr, Bool> {
        final _0 = (_0 : stdgo.GoUIntptr);
        final _1 = (_1 : stdgo.GoUInt8);
        return {
            final obj = stdgo._internal.runtime.Runtime_addrrange_static_extension.AddrRange_static_extension._takeFromFront(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _takeFromBack(__self__:stdgo._internal.runtime.Runtime_addrrange.AddrRange, _0:stdgo.GoUIntptr, _1:std.UInt):stdgo.Tuple<stdgo.GoUIntptr, Bool> {
        final _0 = (_0 : stdgo.GoUIntptr);
        final _1 = (_1 : stdgo.GoUInt8);
        return {
            final obj = stdgo._internal.runtime.Runtime_addrrange_static_extension.AddrRange_static_extension._takeFromBack(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _subtract(__self__:stdgo._internal.runtime.Runtime_addrrange.AddrRange, _0:T_addrRange):T_addrRange {
        return stdgo._internal.runtime.Runtime_addrrange_static_extension.AddrRange_static_extension._subtract(__self__, _0);
    }
    public static function _size(__self__:stdgo._internal.runtime.Runtime_addrrange.AddrRange):stdgo.GoUIntptr {
        return stdgo._internal.runtime.Runtime_addrrange_static_extension.AddrRange_static_extension._size(__self__);
    }
    public static function _removeGreaterEqual(__self__:stdgo._internal.runtime.Runtime_addrrange.AddrRange, _0:stdgo.GoUIntptr):T_addrRange {
        final _0 = (_0 : stdgo.GoUIntptr);
        return stdgo._internal.runtime.Runtime_addrrange_static_extension.AddrRange_static_extension._removeGreaterEqual(__self__, _0);
    }
    public static function _contains(__self__:stdgo._internal.runtime.Runtime_addrrange.AddrRange, _0:stdgo.GoUIntptr):Bool {
        final _0 = (_0 : stdgo.GoUIntptr);
        return stdgo._internal.runtime.Runtime_addrrange_static_extension.AddrRange_static_extension._contains(__self__, _0);
    }
}
typedef AddrRangesPointer = stdgo._internal.runtime.Runtime_addrrangespointer.AddrRangesPointer;
class AddrRanges_static_extension {
    static public function totalBytes(_a:AddrRanges):stdgo.GoUIntptr {
        final _a = (_a : stdgo.Ref<stdgo._internal.runtime.Runtime_addrranges.AddrRanges>);
        return stdgo._internal.runtime.Runtime_addrranges_static_extension.AddrRanges_static_extension.totalBytes(_a);
    }
    static public function add(_a:AddrRanges, _r:AddrRange):Void {
        final _a = (_a : stdgo.Ref<stdgo._internal.runtime.Runtime_addrranges.AddrRanges>);
        stdgo._internal.runtime.Runtime_addrranges_static_extension.AddrRanges_static_extension.add(_a, _r);
    }
    static public function findSucc(_a:AddrRanges, _base:stdgo.GoUIntptr):StdTypes.Int {
        final _a = (_a : stdgo.Ref<stdgo._internal.runtime.Runtime_addrranges.AddrRanges>);
        final _base = (_base : stdgo.GoUIntptr);
        return stdgo._internal.runtime.Runtime_addrranges_static_extension.AddrRanges_static_extension.findSucc(_a, _base);
    }
    static public function ranges(_a:AddrRanges):Array<AddrRange> {
        final _a = (_a : stdgo.Ref<stdgo._internal.runtime.Runtime_addrranges.AddrRanges>);
        return [for (i in stdgo._internal.runtime.Runtime_addrranges_static_extension.AddrRanges_static_extension.ranges(_a)) i];
    }
    public static function _removeLast(__self__:stdgo._internal.runtime.Runtime_addrranges.AddrRanges, _0:stdgo.GoUIntptr):T_addrRange {
        final _0 = (_0 : stdgo.GoUIntptr);
        return stdgo._internal.runtime.Runtime_addrranges_static_extension.AddrRanges_static_extension._removeLast(__self__, _0);
    }
    public static function _removeGreaterEqual(__self__:stdgo._internal.runtime.Runtime_addrranges.AddrRanges, _0:stdgo.GoUIntptr):Void {
        final _0 = (_0 : stdgo.GoUIntptr);
        stdgo._internal.runtime.Runtime_addrranges_static_extension.AddrRanges_static_extension._removeGreaterEqual(__self__, _0);
    }
    public static function _init(__self__:stdgo._internal.runtime.Runtime_addrranges.AddrRanges, _0:stdgo.Pointer<T_sysMemStat>):Void {
        stdgo._internal.runtime.Runtime_addrranges_static_extension.AddrRanges_static_extension._init(__self__, _0);
    }
    public static function _findSucc(__self__:stdgo._internal.runtime.Runtime_addrranges.AddrRanges, _0:stdgo.GoUIntptr):StdTypes.Int {
        final _0 = (_0 : stdgo.GoUIntptr);
        return stdgo._internal.runtime.Runtime_addrranges_static_extension.AddrRanges_static_extension._findSucc(__self__, _0);
    }
    public static function _findAddrGreaterEqual(__self__:stdgo._internal.runtime.Runtime_addrranges.AddrRanges, _0:stdgo.GoUIntptr):stdgo.Tuple<stdgo.GoUIntptr, Bool> {
        final _0 = (_0 : stdgo.GoUIntptr);
        return {
            final obj = stdgo._internal.runtime.Runtime_addrranges_static_extension.AddrRanges_static_extension._findAddrGreaterEqual(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _contains(__self__:stdgo._internal.runtime.Runtime_addrranges.AddrRanges, _0:stdgo.GoUIntptr):Bool {
        final _0 = (_0 : stdgo.GoUIntptr);
        return stdgo._internal.runtime.Runtime_addrranges_static_extension.AddrRanges_static_extension._contains(__self__, _0);
    }
    public static function _cloneInto(__self__:stdgo._internal.runtime.Runtime_addrranges.AddrRanges, _0:T_addrRanges):Void {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.runtime.Runtime_t_addrranges.T_addrRanges>);
        stdgo._internal.runtime.Runtime_addrranges_static_extension.AddrRanges_static_extension._cloneInto(__self__, _0);
    }
    public static function _add(__self__:stdgo._internal.runtime.Runtime_addrranges.AddrRanges, _0:T_addrRange):Void {
        stdgo._internal.runtime.Runtime_addrranges_static_extension.AddrRanges_static_extension._add(__self__, _0);
    }
}
typedef BitRangePointer = stdgo._internal.runtime.Runtime_bitrangepointer.BitRangePointer;
class BitRange_static_extension {

}
typedef BitsMismatchPointer = stdgo._internal.runtime.Runtime_bitsmismatchpointer.BitsMismatchPointer;
class BitsMismatch_static_extension {

}
typedef SemTablePointer = stdgo._internal.runtime.Runtime_semtablepointer.SemTablePointer;
class SemTable_static_extension {
    static public function dequeue(_t:SemTable, _addr:stdgo.Pointer<std.UInt>):Bool {
        final _t = (_t : stdgo.Ref<stdgo._internal.runtime.Runtime_semtable.SemTable>);
        return stdgo._internal.runtime.Runtime_semtable_static_extension.SemTable_static_extension.dequeue(_t, _addr);
    }
    static public function enqueue(_t:SemTable, _addr:stdgo.Pointer<std.UInt>):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.runtime.Runtime_semtable.SemTable>);
        stdgo._internal.runtime.Runtime_semtable_static_extension.SemTable_static_extension.enqueue(_t, _addr);
    }
    public static function _rootFor(__self__:stdgo._internal.runtime.Runtime_semtable.SemTable, _0:stdgo.Pointer<std.UInt>):T_semaRoot {
        return stdgo._internal.runtime.Runtime_semtable_static_extension.SemTable_static_extension._rootFor(__self__, _0);
    }
}
typedef GCControllerPointer = stdgo._internal.runtime.Runtime_gccontrollerpointer.GCControllerPointer;
class GCController_static_extension {
    static public function setMaxIdleMarkWorkers(_c:GCController, _max:StdTypes.Int):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.runtime.Runtime_gccontroller.GCController>);
        final _max = (_max : stdgo.GoInt32);
        stdgo._internal.runtime.Runtime_gccontroller_static_extension.GCController_static_extension.setMaxIdleMarkWorkers(_c, _max);
    }
    static public function removeIdleMarkWorker(_c:GCController):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.runtime.Runtime_gccontroller.GCController>);
        stdgo._internal.runtime.Runtime_gccontroller_static_extension.GCController_static_extension.removeIdleMarkWorker(_c);
    }
    static public function needIdleMarkWorker(_c:GCController):Bool {
        final _c = (_c : stdgo.Ref<stdgo._internal.runtime.Runtime_gccontroller.GCController>);
        return stdgo._internal.runtime.Runtime_gccontroller_static_extension.GCController_static_extension.needIdleMarkWorker(_c);
    }
    static public function addIdleMarkWorker(_c:GCController):Bool {
        final _c = (_c : stdgo.Ref<stdgo._internal.runtime.Runtime_gccontroller.GCController>);
        return stdgo._internal.runtime.Runtime_gccontroller_static_extension.GCController_static_extension.addIdleMarkWorker(_c);
    }
    static public function endCycle(_c:GCController, _bytesMarked:haxe.UInt64, _assistTime:haxe.Int64, _elapsed:haxe.Int64, _gomaxprocs:StdTypes.Int):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.runtime.Runtime_gccontroller.GCController>);
        final _bytesMarked = (_bytesMarked : stdgo.GoUInt64);
        final _assistTime = (_assistTime : stdgo.GoInt64);
        final _elapsed = (_elapsed : stdgo.GoInt64);
        final _gomaxprocs = (_gomaxprocs : stdgo.GoInt);
        stdgo._internal.runtime.Runtime_gccontroller_static_extension.GCController_static_extension.endCycle(_c, _bytesMarked, _assistTime, _elapsed, _gomaxprocs);
    }
    static public function revise(_c:GCController, _d:GCControllerReviseDelta):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.runtime.Runtime_gccontroller.GCController>);
        stdgo._internal.runtime.Runtime_gccontroller_static_extension.GCController_static_extension.revise(_c, _d);
    }
    static public function triggered(_c:GCController):haxe.UInt64 {
        final _c = (_c : stdgo.Ref<stdgo._internal.runtime.Runtime_gccontroller.GCController>);
        return stdgo._internal.runtime.Runtime_gccontroller_static_extension.GCController_static_extension.triggered(_c);
    }
    static public function heapMarked(_c:GCController):haxe.UInt64 {
        final _c = (_c : stdgo.Ref<stdgo._internal.runtime.Runtime_gccontroller.GCController>);
        return stdgo._internal.runtime.Runtime_gccontroller_static_extension.GCController_static_extension.heapMarked(_c);
    }
    static public function heapLive(_c:GCController):haxe.UInt64 {
        final _c = (_c : stdgo.Ref<stdgo._internal.runtime.Runtime_gccontroller.GCController>);
        return stdgo._internal.runtime.Runtime_gccontroller_static_extension.GCController_static_extension.heapLive(_c);
    }
    static public function heapGoal(_c:GCController):haxe.UInt64 {
        final _c = (_c : stdgo.Ref<stdgo._internal.runtime.Runtime_gccontroller.GCController>);
        return stdgo._internal.runtime.Runtime_gccontroller_static_extension.GCController_static_extension.heapGoal(_c);
    }
    static public function assistWorkPerByte(_c:GCController):StdTypes.Float {
        final _c = (_c : stdgo.Ref<stdgo._internal.runtime.Runtime_gccontroller.GCController>);
        return stdgo._internal.runtime.Runtime_gccontroller_static_extension.GCController_static_extension.assistWorkPerByte(_c);
    }
    static public function startCycle(_c:GCController, _stackSize:haxe.UInt64, _globalsSize:haxe.UInt64, _scannableFrac:StdTypes.Float, _gomaxprocs:StdTypes.Int):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.runtime.Runtime_gccontroller.GCController>);
        final _stackSize = (_stackSize : stdgo.GoUInt64);
        final _globalsSize = (_globalsSize : stdgo.GoUInt64);
        final _scannableFrac = (_scannableFrac : stdgo.GoFloat64);
        final _gomaxprocs = (_gomaxprocs : stdgo.GoInt);
        stdgo._internal.runtime.Runtime_gccontroller_static_extension.GCController_static_extension.startCycle(_c, _stackSize, _globalsSize, _scannableFrac, _gomaxprocs);
    }
    public static function _update(__self__:stdgo._internal.runtime.Runtime_gccontroller.GCController, _0:haxe.Int64, _1:haxe.Int64):Void {
        final _0 = (_0 : stdgo.GoInt64);
        final _1 = (_1 : stdgo.GoInt64);
        stdgo._internal.runtime.Runtime_gccontroller_static_extension.GCController_static_extension._update(__self__, _0, _1);
    }
    public static function _trigger(__self__:stdgo._internal.runtime.Runtime_gccontroller.GCController):stdgo.Tuple<haxe.UInt64, haxe.UInt64> {
        return {
            final obj = stdgo._internal.runtime.Runtime_gccontroller_static_extension.GCController_static_extension._trigger(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _startCycle(__self__:stdgo._internal.runtime.Runtime_gccontroller.GCController, _0:haxe.Int64, _1:StdTypes.Int, _2:T_gcTrigger):Void {
        final _0 = (_0 : stdgo.GoInt64);
        final _1 = (_1 : stdgo.GoInt);
        stdgo._internal.runtime.Runtime_gccontroller_static_extension.GCController_static_extension._startCycle(__self__, _0, _1, _2);
    }
    public static function _setMemoryLimit(__self__:stdgo._internal.runtime.Runtime_gccontroller.GCController, _0:haxe.Int64):haxe.Int64 {
        final _0 = (_0 : stdgo.GoInt64);
        return stdgo._internal.runtime.Runtime_gccontroller_static_extension.GCController_static_extension._setMemoryLimit(__self__, _0);
    }
    public static function _setMaxIdleMarkWorkers(__self__:stdgo._internal.runtime.Runtime_gccontroller.GCController, _0:StdTypes.Int):Void {
        final _0 = (_0 : stdgo.GoInt32);
        stdgo._internal.runtime.Runtime_gccontroller_static_extension.GCController_static_extension._setMaxIdleMarkWorkers(__self__, _0);
    }
    public static function _setGCPercent(__self__:stdgo._internal.runtime.Runtime_gccontroller.GCController, _0:StdTypes.Int):StdTypes.Int {
        final _0 = (_0 : stdgo.GoInt32);
        return stdgo._internal.runtime.Runtime_gccontroller_static_extension.GCController_static_extension._setGCPercent(__self__, _0);
    }
    public static function _revise(__self__:stdgo._internal.runtime.Runtime_gccontroller.GCController):Void {
        stdgo._internal.runtime.Runtime_gccontroller_static_extension.GCController_static_extension._revise(__self__);
    }
    public static function _resetLive(__self__:stdgo._internal.runtime.Runtime_gccontroller.GCController, _0:haxe.UInt64):Void {
        final _0 = (_0 : stdgo.GoUInt64);
        stdgo._internal.runtime.Runtime_gccontroller_static_extension.GCController_static_extension._resetLive(__self__, _0);
    }
    public static function _removeIdleMarkWorker(__self__:stdgo._internal.runtime.Runtime_gccontroller.GCController):Void {
        stdgo._internal.runtime.Runtime_gccontroller_static_extension.GCController_static_extension._removeIdleMarkWorker(__self__);
    }
    public static function _needIdleMarkWorker(__self__:stdgo._internal.runtime.Runtime_gccontroller.GCController):Bool {
        return stdgo._internal.runtime.Runtime_gccontroller_static_extension.GCController_static_extension._needIdleMarkWorker(__self__);
    }
    public static function _memoryLimitHeapGoal(__self__:stdgo._internal.runtime.Runtime_gccontroller.GCController):haxe.UInt64 {
        return stdgo._internal.runtime.Runtime_gccontroller_static_extension.GCController_static_extension._memoryLimitHeapGoal(__self__);
    }
    public static function _markWorkerStop(__self__:stdgo._internal.runtime.Runtime_gccontroller.GCController, _0:T_gcMarkWorkerMode, _1:haxe.Int64):Void {
        final _1 = (_1 : stdgo.GoInt64);
        stdgo._internal.runtime.Runtime_gccontroller_static_extension.GCController_static_extension._markWorkerStop(__self__, _0, _1);
    }
    public static function _init(__self__:stdgo._internal.runtime.Runtime_gccontroller.GCController, _0:StdTypes.Int, _1:haxe.Int64):Void {
        final _0 = (_0 : stdgo.GoInt32);
        final _1 = (_1 : stdgo.GoInt64);
        stdgo._internal.runtime.Runtime_gccontroller_static_extension.GCController_static_extension._init(__self__, _0, _1);
    }
    public static function _heapGoalInternal(__self__:stdgo._internal.runtime.Runtime_gccontroller.GCController):stdgo.Tuple<haxe.UInt64, haxe.UInt64> {
        return {
            final obj = stdgo._internal.runtime.Runtime_gccontroller_static_extension.GCController_static_extension._heapGoalInternal(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _heapGoal(__self__:stdgo._internal.runtime.Runtime_gccontroller.GCController):haxe.UInt64 {
        return stdgo._internal.runtime.Runtime_gccontroller_static_extension.GCController_static_extension._heapGoal(__self__);
    }
    public static function _findRunnableGCWorker(__self__:stdgo._internal.runtime.Runtime_gccontroller.GCController, _0:T_p, _1:haxe.Int64):stdgo.Tuple<T_g, haxe.Int64> {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.runtime.Runtime_t_p.T_p>);
        final _1 = (_1 : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.runtime.Runtime_gccontroller_static_extension.GCController_static_extension._findRunnableGCWorker(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _enlistWorker(__self__:stdgo._internal.runtime.Runtime_gccontroller.GCController):Void {
        stdgo._internal.runtime.Runtime_gccontroller_static_extension.GCController_static_extension._enlistWorker(__self__);
    }
    public static function _endCycle(__self__:stdgo._internal.runtime.Runtime_gccontroller.GCController, _0:haxe.Int64, _1:StdTypes.Int, _2:Bool):Void {
        final _0 = (_0 : stdgo.GoInt64);
        final _1 = (_1 : stdgo.GoInt);
        stdgo._internal.runtime.Runtime_gccontroller_static_extension.GCController_static_extension._endCycle(__self__, _0, _1, _2);
    }
    public static function _commit(__self__:stdgo._internal.runtime.Runtime_gccontroller.GCController, _0:Bool):Void {
        stdgo._internal.runtime.Runtime_gccontroller_static_extension.GCController_static_extension._commit(__self__, _0);
    }
    public static function _addScannableStack(__self__:stdgo._internal.runtime.Runtime_gccontroller.GCController, _0:T_p, _1:haxe.Int64):Void {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.runtime.Runtime_t_p.T_p>);
        final _1 = (_1 : stdgo.GoInt64);
        stdgo._internal.runtime.Runtime_gccontroller_static_extension.GCController_static_extension._addScannableStack(__self__, _0, _1);
    }
    public static function _addIdleMarkWorker(__self__:stdgo._internal.runtime.Runtime_gccontroller.GCController):Bool {
        return stdgo._internal.runtime.Runtime_gccontroller_static_extension.GCController_static_extension._addIdleMarkWorker(__self__);
    }
    public static function _addGlobals(__self__:stdgo._internal.runtime.Runtime_gccontroller.GCController, _0:haxe.Int64):Void {
        final _0 = (_0 : stdgo.GoInt64);
        stdgo._internal.runtime.Runtime_gccontroller_static_extension.GCController_static_extension._addGlobals(__self__, _0);
    }
}
typedef GCControllerReviseDeltaPointer = stdgo._internal.runtime.Runtime_gccontrollerrevisedeltapointer.GCControllerReviseDeltaPointer;
class GCControllerReviseDelta_static_extension {

}
typedef PIControllerPointer = stdgo._internal.runtime.Runtime_picontrollerpointer.PIControllerPointer;
class PIController_static_extension {
    static public function next(_c:PIController, _input:StdTypes.Float, _setpoint:StdTypes.Float, _period:StdTypes.Float):stdgo.Tuple<StdTypes.Float, Bool> {
        final _c = (_c : stdgo.Ref<stdgo._internal.runtime.Runtime_picontroller.PIController>);
        final _input = (_input : stdgo.GoFloat64);
        final _setpoint = (_setpoint : stdgo.GoFloat64);
        final _period = (_period : stdgo.GoFloat64);
        return {
            final obj = stdgo._internal.runtime.Runtime_picontroller_static_extension.PIController_static_extension.next(_c, _input, _setpoint, _period);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _reset(__self__:stdgo._internal.runtime.Runtime_picontroller.PIController):Void {
        stdgo._internal.runtime.Runtime_picontroller_static_extension.PIController_static_extension._reset(__self__);
    }
    public static function _next(__self__:stdgo._internal.runtime.Runtime_picontroller.PIController, _0:StdTypes.Float, _1:StdTypes.Float, _2:StdTypes.Float):stdgo.Tuple<StdTypes.Float, Bool> {
        final _0 = (_0 : stdgo.GoFloat64);
        final _1 = (_1 : stdgo.GoFloat64);
        final _2 = (_2 : stdgo.GoFloat64);
        return {
            final obj = stdgo._internal.runtime.Runtime_picontroller_static_extension.PIController_static_extension._next(__self__, _0, _1, _2);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef GCCPULimiterPointer = stdgo._internal.runtime.Runtime_gccpulimiterpointer.GCCPULimiterPointer;
class GCCPULimiter_static_extension {
    static public function resetCapacity(_l:GCCPULimiter, _now:haxe.Int64, _nprocs:StdTypes.Int):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.runtime.Runtime_gccpulimiter.GCCPULimiter>);
        final _now = (_now : stdgo.GoInt64);
        final _nprocs = (_nprocs : stdgo.GoInt32);
        stdgo._internal.runtime.Runtime_gccpulimiter_static_extension.GCCPULimiter_static_extension.resetCapacity(_l, _now, _nprocs);
    }
    static public function addAssistTime(_l:GCCPULimiter, _t:haxe.Int64):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.runtime.Runtime_gccpulimiter.GCCPULimiter>);
        final _t = (_t : stdgo.GoInt64);
        stdgo._internal.runtime.Runtime_gccpulimiter_static_extension.GCCPULimiter_static_extension.addAssistTime(_l, _t);
    }
    static public function update(_l:GCCPULimiter, _now:haxe.Int64):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.runtime.Runtime_gccpulimiter.GCCPULimiter>);
        final _now = (_now : stdgo.GoInt64);
        stdgo._internal.runtime.Runtime_gccpulimiter_static_extension.GCCPULimiter_static_extension.update(_l, _now);
    }
    static public function finishGCTransition(_l:GCCPULimiter, _now:haxe.Int64):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.runtime.Runtime_gccpulimiter.GCCPULimiter>);
        final _now = (_now : stdgo.GoInt64);
        stdgo._internal.runtime.Runtime_gccpulimiter_static_extension.GCCPULimiter_static_extension.finishGCTransition(_l, _now);
    }
    static public function startGCTransition(_l:GCCPULimiter, _enableGC:Bool, _now:haxe.Int64):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.runtime.Runtime_gccpulimiter.GCCPULimiter>);
        final _now = (_now : stdgo.GoInt64);
        stdgo._internal.runtime.Runtime_gccpulimiter_static_extension.GCCPULimiter_static_extension.startGCTransition(_l, _enableGC, _now);
    }
    static public function needUpdate(_l:GCCPULimiter, _now:haxe.Int64):Bool {
        final _l = (_l : stdgo.Ref<stdgo._internal.runtime.Runtime_gccpulimiter.GCCPULimiter>);
        final _now = (_now : stdgo.GoInt64);
        return stdgo._internal.runtime.Runtime_gccpulimiter_static_extension.GCCPULimiter_static_extension.needUpdate(_l, _now);
    }
    static public function limiting(_l:GCCPULimiter):Bool {
        final _l = (_l : stdgo.Ref<stdgo._internal.runtime.Runtime_gccpulimiter.GCCPULimiter>);
        return stdgo._internal.runtime.Runtime_gccpulimiter_static_extension.GCCPULimiter_static_extension.limiting(_l);
    }
    static public function overflow(_l:GCCPULimiter):haxe.UInt64 {
        final _l = (_l : stdgo.Ref<stdgo._internal.runtime.Runtime_gccpulimiter.GCCPULimiter>);
        return stdgo._internal.runtime.Runtime_gccpulimiter_static_extension.GCCPULimiter_static_extension.overflow(_l);
    }
    static public function capacity_(_l:GCCPULimiter):haxe.UInt64 {
        final _l = (_l : stdgo.Ref<stdgo._internal.runtime.Runtime_gccpulimiter.GCCPULimiter>);
        return stdgo._internal.runtime.Runtime_gccpulimiter_static_extension.GCCPULimiter_static_extension.capacity_(_l);
    }
    static public function fill(_l:GCCPULimiter):haxe.UInt64 {
        final _l = (_l : stdgo.Ref<stdgo._internal.runtime.Runtime_gccpulimiter.GCCPULimiter>);
        return stdgo._internal.runtime.Runtime_gccpulimiter_static_extension.GCCPULimiter_static_extension.fill(_l);
    }
}
typedef ScavengerPointer = stdgo._internal.runtime.Runtime_scavengerpointer.ScavengerPointer;
class Scavenger_static_extension {
    static public function stop(_s:Scavenger):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.runtime.Runtime_scavenger.Scavenger>);
        stdgo._internal.runtime.Runtime_scavenger_static_extension.Scavenger_static_extension.stop(_s);
    }
    static public function wake(_s:Scavenger):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.runtime.Runtime_scavenger.Scavenger>);
        stdgo._internal.runtime.Runtime_scavenger_static_extension.Scavenger_static_extension.wake(_s);
    }
    static public function released(_s:Scavenger):stdgo.GoUIntptr {
        final _s = (_s : stdgo.Ref<stdgo._internal.runtime.Runtime_scavenger.Scavenger>);
        return stdgo._internal.runtime.Runtime_scavenger_static_extension.Scavenger_static_extension.released(_s);
    }
    static public function blockUntilParked(_s:Scavenger, _timeout:haxe.Int64):Bool {
        final _s = (_s : stdgo.Ref<stdgo._internal.runtime.Runtime_scavenger.Scavenger>);
        final _timeout = (_timeout : stdgo.GoInt64);
        return stdgo._internal.runtime.Runtime_scavenger_static_extension.Scavenger_static_extension.blockUntilParked(_s, _timeout);
    }
    static public function start(_s:Scavenger):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.runtime.Runtime_scavenger.Scavenger>);
        stdgo._internal.runtime.Runtime_scavenger_static_extension.Scavenger_static_extension.start(_s);
    }
}
typedef ScavengeIndexPointer = stdgo._internal.runtime.Runtime_scavengeindexpointer.ScavengeIndexPointer;
class ScavengeIndex_static_extension {
    static public function setNoHugePage(_s:ScavengeIndex, _ci:ChunkIdx):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.runtime.Runtime_scavengeindex.ScavengeIndex>);
        stdgo._internal.runtime.Runtime_scavengeindex_static_extension.ScavengeIndex_static_extension.setNoHugePage(_s, _ci);
    }
    static public function setEmpty(_s:ScavengeIndex, _ci:ChunkIdx):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.runtime.Runtime_scavengeindex.ScavengeIndex>);
        stdgo._internal.runtime.Runtime_scavengeindex_static_extension.ScavengeIndex_static_extension.setEmpty(_s, _ci);
    }
    static public function nextGen(_s:ScavengeIndex):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.runtime.Runtime_scavengeindex.ScavengeIndex>);
        stdgo._internal.runtime.Runtime_scavengeindex_static_extension.ScavengeIndex_static_extension.nextGen(_s);
    }
    static public function resetSearchAddrs(_s:ScavengeIndex):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.runtime.Runtime_scavengeindex.ScavengeIndex>);
        stdgo._internal.runtime.Runtime_scavengeindex_static_extension.ScavengeIndex_static_extension.resetSearchAddrs(_s);
    }
    static public function freeRange(_s:ScavengeIndex, _base:stdgo.GoUIntptr, _limit:stdgo.GoUIntptr):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.runtime.Runtime_scavengeindex.ScavengeIndex>);
        final _base = (_base : stdgo.GoUIntptr);
        final _limit = (_limit : stdgo.GoUIntptr);
        stdgo._internal.runtime.Runtime_scavengeindex_static_extension.ScavengeIndex_static_extension.freeRange(_s, _base, _limit);
    }
    static public function allocRange(_s:ScavengeIndex, _base:stdgo.GoUIntptr, _limit:stdgo.GoUIntptr):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.runtime.Runtime_scavengeindex.ScavengeIndex>);
        final _base = (_base : stdgo.GoUIntptr);
        final _limit = (_limit : stdgo.GoUIntptr);
        stdgo._internal.runtime.Runtime_scavengeindex_static_extension.ScavengeIndex_static_extension.allocRange(_s, _base, _limit);
    }
    static public function find(_s:ScavengeIndex, _force:Bool):stdgo.Tuple<ChunkIdx, std.UInt> {
        final _s = (_s : stdgo.Ref<stdgo._internal.runtime.Runtime_scavengeindex.ScavengeIndex>);
        return {
            final obj = stdgo._internal.runtime.Runtime_scavengeindex_static_extension.ScavengeIndex_static_extension.find(_s, _force);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef UserArenaPointer = stdgo._internal.runtime.Runtime_userarenapointer.UserArenaPointer;
class UserArena_static_extension {
    static public function free(_a:UserArena):Void {
        final _a = (_a : stdgo.Ref<stdgo._internal.runtime.Runtime_userarena.UserArena>);
        stdgo._internal.runtime.Runtime_userarena_static_extension.UserArena_static_extension.free(_a);
    }
    static public function slice(_a:UserArena, _sl:stdgo.AnyInterface, _cap:StdTypes.Int):Void {
        final _a = (_a : stdgo.Ref<stdgo._internal.runtime.Runtime_userarena.UserArena>);
        final _sl = (_sl : stdgo.AnyInterface);
        final _cap = (_cap : stdgo.GoInt);
        stdgo._internal.runtime.Runtime_userarena_static_extension.UserArena_static_extension.slice(_a, _sl, _cap);
    }
    static public function new_(_a:UserArena, _out:stdgo.AnyInterface):Void {
        final _a = (_a : stdgo.Ref<stdgo._internal.runtime.Runtime_userarena.UserArena>);
        final _out = (_out : stdgo.Ref<stdgo.AnyInterface>);
        stdgo._internal.runtime.Runtime_userarena_static_extension.UserArena_static_extension.new_(_a, _out);
    }
}
@:dox(hide) typedef T_typeCacheBucketPointer = stdgo._internal.runtime.Runtime_t_typecachebucketpointer.T_typeCacheBucketPointer;
@:dox(hide) class T_typeCacheBucket_static_extension {

}
@:dox(hide) typedef T_childInfoPointer = stdgo._internal.runtime.Runtime_t_childinfopointer.T_childInfoPointer;
@:dox(hide) class T_childInfo_static_extension {

}
@:dox(hide) typedef T_timeHistogramPointer = stdgo._internal.runtime.Runtime_t_timehistogrampointer.T_timeHistogramPointer;
@:dox(hide) class T_timeHistogram_static_extension {

}
@:dox(hide) typedef T_itabTableTypePointer = stdgo._internal.runtime.Runtime_t_itabtabletypepointer.T_itabTableTypePointer;
@:dox(hide) class T_itabTableType_static_extension {

}
@:dox(hide) typedef T_noteWithTimeoutPointer = stdgo._internal.runtime.Runtime_t_notewithtimeoutpointer.T_noteWithTimeoutPointer;
@:dox(hide) class T_noteWithTimeout_static_extension {

}
@:dox(hide) typedef T_eventPointer = stdgo._internal.runtime.Runtime_t_eventpointer.T_eventPointer;
@:dox(hide) class T_event_static_extension {

}
@:dox(hide) typedef T_timeoutEventPointer = stdgo._internal.runtime.Runtime_t_timeouteventpointer.T_timeoutEventPointer;
@:dox(hide) class T_timeoutEvent_static_extension {

}
@:dox(hide) typedef T_lockRankStructPointer = stdgo._internal.runtime.Runtime_t_lockrankstructpointer.T_lockRankStructPointer;
@:dox(hide) class T_lockRankStruct_static_extension {

}
@:dox(hide) typedef T_persistentAllocPointer = stdgo._internal.runtime.Runtime_t_persistentallocpointer.T_persistentAllocPointer;
@:dox(hide) class T_persistentAlloc_static_extension {

}
@:dox(hide) typedef T_linearAllocPointer = stdgo._internal.runtime.Runtime_t_linearallocpointer.T_linearAllocPointer;
@:dox(hide) class T_linearAlloc_static_extension {

}
@:dox(hide) typedef T_notInHeapPointer = stdgo._internal.runtime.Runtime_t_notinheappointer.T_notInHeapPointer;
@:dox(hide) class T_notInHeap_static_extension {

}
@:dox(hide) typedef T_hmapPointer = stdgo._internal.runtime.Runtime_t_hmappointer.T_hmapPointer;
@:dox(hide) class T_hmap_static_extension {

}
@:dox(hide) typedef T_mapextraPointer = stdgo._internal.runtime.Runtime_t_mapextrapointer.T_mapextraPointer;
@:dox(hide) class T_mapextra_static_extension {

}
@:dox(hide) typedef T_bmapPointer = stdgo._internal.runtime.Runtime_t_bmappointer.T_bmapPointer;
@:dox(hide) class T_bmap_static_extension {

}
@:dox(hide) typedef T_hiterPointer = stdgo._internal.runtime.Runtime_t_hiterpointer.T_hiterPointer;
@:dox(hide) class T_hiter_static_extension {

}
@:dox(hide) typedef T_evacDstPointer = stdgo._internal.runtime.Runtime_t_evacdstpointer.T_evacDstPointer;
@:dox(hide) class T_evacDst_static_extension {

}
@:dox(hide) typedef T_markBitsPointer = stdgo._internal.runtime.Runtime_t_markbitspointer.T_markBitsPointer;
@:dox(hide) class T_markBits_static_extension {

}
@:dox(hide) typedef T_heapBitsPointer = stdgo._internal.runtime.Runtime_t_heapbitspointer.T_heapBitsPointer;
@:dox(hide) class T_heapBits_static_extension {

}
@:dox(hide) typedef T_writeHeapBitsPointer = stdgo._internal.runtime.Runtime_t_writeheapbitspointer.T_writeHeapBitsPointer;
@:dox(hide) class T_writeHeapBits_static_extension {

}
@:dox(hide) typedef T_mcachePointer = stdgo._internal.runtime.Runtime_t_mcachepointer.T_mcachePointer;
@:dox(hide) class T_mcache_static_extension {

}
@:dox(hide) typedef T_gclinkPointer = stdgo._internal.runtime.Runtime_t_gclinkpointer.T_gclinkPointer;
@:dox(hide) class T_gclink_static_extension {

}
@:dox(hide) typedef T_stackfreelistPointer = stdgo._internal.runtime.Runtime_t_stackfreelistpointer.T_stackfreelistPointer;
@:dox(hide) class T_stackfreelist_static_extension {

}
@:dox(hide) typedef T_mcentralPointer = stdgo._internal.runtime.Runtime_t_mcentralpointer.T_mcentralPointer;
@:dox(hide) class T_mcentral_static_extension {

}
@:dox(hide) typedef T_checkmarksMapPointer = stdgo._internal.runtime.Runtime_t_checkmarksmappointer.T_checkmarksMapPointer;
@:dox(hide) class T_checkmarksMap_static_extension {

}
@:dox(hide) typedef T_memHdrPointer = stdgo._internal.runtime.Runtime_t_memhdrpointer.T_memHdrPointer;
@:dox(hide) class T_memHdr_static_extension {

}
@:dox(hide) typedef T_metricDataPointer = stdgo._internal.runtime.Runtime_t_metricdatapointer.T_metricDataPointer;
@:dox(hide) class T_metricData_static_extension {

}
@:dox(hide) typedef T_heapStatsAggregatePointer = stdgo._internal.runtime.Runtime_t_heapstatsaggregatepointer.T_heapStatsAggregatePointer;
@:dox(hide) class T_heapStatsAggregate_static_extension {
    public static function _merge(__self__:stdgo._internal.runtime.Runtime_t_heapstatsaggregate.T_heapStatsAggregate, _0:T_heapStatsDelta):Void {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.runtime.Runtime_t_heapstatsdelta.T_heapStatsDelta>);
        stdgo._internal.runtime.Runtime_t_heapstatsaggregate_static_extension.T_heapStatsAggregate_static_extension._merge(__self__, _0);
    }
}
@:dox(hide) typedef T_sysStatsAggregatePointer = stdgo._internal.runtime.Runtime_t_sysstatsaggregatepointer.T_sysStatsAggregatePointer;
@:dox(hide) class T_sysStatsAggregate_static_extension {

}
@:dox(hide) typedef T_cpuStatsAggregatePointer = stdgo._internal.runtime.Runtime_t_cpustatsaggregatepointer.T_cpuStatsAggregatePointer;
@:dox(hide) class T_cpuStatsAggregate_static_extension {
    public static function _accumulate(__self__:stdgo._internal.runtime.Runtime_t_cpustatsaggregate.T_cpuStatsAggregate, _0:haxe.Int64, _1:Bool):Void {
        final _0 = (_0 : stdgo.GoInt64);
        stdgo._internal.runtime.Runtime_t_cpustatsaggregate_static_extension.T_cpuStatsAggregate_static_extension._accumulate(__self__, _0, _1);
    }
}
@:dox(hide) typedef T_gcStatsAggregatePointer = stdgo._internal.runtime.Runtime_t_gcstatsaggregatepointer.T_gcStatsAggregatePointer;
@:dox(hide) class T_gcStatsAggregate_static_extension {

}
@:dox(hide) typedef T_statAggregatePointer = stdgo._internal.runtime.Runtime_t_stataggregatepointer.T_statAggregatePointer;
@:dox(hide) class T_statAggregate_static_extension {

}
@:dox(hide) typedef T_metricSamplePointer = stdgo._internal.runtime.Runtime_t_metricsamplepointer.T_metricSamplePointer;
@:dox(hide) class T_metricSample_static_extension {

}
@:dox(hide) typedef T_metricValuePointer = stdgo._internal.runtime.Runtime_t_metricvaluepointer.T_metricValuePointer;
@:dox(hide) class T_metricValue_static_extension {

}
@:dox(hide) typedef T_metricFloat64HistogramPointer = stdgo._internal.runtime.Runtime_t_metricfloat64histogrampointer.T_metricFloat64HistogramPointer;
@:dox(hide) class T_metricFloat64Histogram_static_extension {

}
@:dox(hide) typedef T_metricNamePointer = stdgo._internal.runtime.Runtime_t_metricnamepointer.T_metricNamePointer;
@:dox(hide) class T_metricName_static_extension {

}
@:dox(hide) typedef T_finblockPointer = stdgo._internal.runtime.Runtime_t_finblockpointer.T_finblockPointer;
@:dox(hide) class T_finblock_static_extension {

}
@:dox(hide) typedef T_finalizerPointer = stdgo._internal.runtime.Runtime_t_finalizerpointer.T_finalizerPointer;
@:dox(hide) class T_finalizer_static_extension {

}
@:dox(hide) typedef T_fixallocPointer = stdgo._internal.runtime.Runtime_t_fixallocpointer.T_fixallocPointer;
@:dox(hide) class T_fixalloc_static_extension {

}
@:dox(hide) typedef T_mlinkPointer = stdgo._internal.runtime.Runtime_t_mlinkpointer.T_mlinkPointer;
@:dox(hide) class T_mlink_static_extension {

}
@:dox(hide) typedef T_workTypePointer = stdgo._internal.runtime.Runtime_t_worktypepointer.T_workTypePointer;
@:dox(hide) class T_workType_static_extension {

}
@:dox(hide) typedef T_gcTriggerPointer = stdgo._internal.runtime.Runtime_t_gctriggerpointer.T_gcTriggerPointer;
@:dox(hide) class T_gcTrigger_static_extension {

}
@:dox(hide) typedef T_gcBgMarkWorkerNodePointer = stdgo._internal.runtime.Runtime_t_gcbgmarkworkernodepointer.T_gcBgMarkWorkerNodePointer;
@:dox(hide) class T_gcBgMarkWorkerNode_static_extension {

}
@:dox(hide) typedef T_gcCPULimiterStatePointer = stdgo._internal.runtime.Runtime_t_gccpulimiterstatepointer.T_gcCPULimiterStatePointer;
@:dox(hide) class T_gcCPULimiterState_static_extension {

}
@:dox(hide) typedef T_limiterEventPointer = stdgo._internal.runtime.Runtime_t_limitereventpointer.T_limiterEventPointer;
@:dox(hide) class T_limiterEvent_static_extension {

}
@:dox(hide) typedef T_gcControllerStatePointer = stdgo._internal.runtime.Runtime_t_gccontrollerstatepointer.T_gcControllerStatePointer;
@:dox(hide) class T_gcControllerState_static_extension {

}
@:dox(hide) typedef T_scavengerStatePointer = stdgo._internal.runtime.Runtime_t_scavengerstatepointer.T_scavengerStatePointer;
@:dox(hide) class T_scavengerState_static_extension {

}
@:dox(hide) typedef T_scavengeIndexPointer = stdgo._internal.runtime.Runtime_t_scavengeindexpointer.T_scavengeIndexPointer;
@:dox(hide) class T_scavengeIndex_static_extension {

}
@:dox(hide) typedef T_atomicScavChunkDataPointer = stdgo._internal.runtime.Runtime_t_atomicscavchunkdatapointer.T_atomicScavChunkDataPointer;
@:dox(hide) class T_atomicScavChunkData_static_extension {

}
@:dox(hide) typedef T_scavChunkDataPointer = stdgo._internal.runtime.Runtime_t_scavchunkdatapointer.T_scavChunkDataPointer;
@:dox(hide) class T_scavChunkData_static_extension {

}
@:dox(hide) typedef T_piControllerPointer = stdgo._internal.runtime.Runtime_t_picontrollerpointer.T_piControllerPointer;
@:dox(hide) class T_piController_static_extension {

}
@:dox(hide) typedef T_stackWorkBufPointer = stdgo._internal.runtime.Runtime_t_stackworkbufpointer.T_stackWorkBufPointer;
@:dox(hide) class T_stackWorkBuf_static_extension {

}
@:dox(hide) typedef T_stackWorkBufHdrPointer = stdgo._internal.runtime.Runtime_t_stackworkbufhdrpointer.T_stackWorkBufHdrPointer;
@:dox(hide) class T_stackWorkBufHdr_static_extension {

}
@:dox(hide) typedef T_stackObjectBufPointer = stdgo._internal.runtime.Runtime_t_stackobjectbufpointer.T_stackObjectBufPointer;
@:dox(hide) class T_stackObjectBuf_static_extension {

}
@:dox(hide) typedef T_stackObjectBufHdrPointer = stdgo._internal.runtime.Runtime_t_stackobjectbufhdrpointer.T_stackObjectBufHdrPointer;
@:dox(hide) class T_stackObjectBufHdr_static_extension {

}
@:dox(hide) typedef T_stackObjectPointer = stdgo._internal.runtime.Runtime_t_stackobjectpointer.T_stackObjectPointer;
@:dox(hide) class T_stackObject_static_extension {

}
@:dox(hide) typedef T_stackScanStatePointer = stdgo._internal.runtime.Runtime_t_stackscanstatepointer.T_stackScanStatePointer;
@:dox(hide) class T_stackScanState_static_extension {

}
@:dox(hide) typedef T_sweepdataPointer = stdgo._internal.runtime.Runtime_t_sweepdatapointer.T_sweepdataPointer;
@:dox(hide) class T_sweepdata_static_extension {

}
@:dox(hide) typedef T_activeSweepPointer = stdgo._internal.runtime.Runtime_t_activesweeppointer.T_activeSweepPointer;
@:dox(hide) class T_activeSweep_static_extension {

}
@:dox(hide) typedef T_sweepLockerPointer = stdgo._internal.runtime.Runtime_t_sweeplockerpointer.T_sweepLockerPointer;
@:dox(hide) class T_sweepLocker_static_extension {

}
@:dox(hide) typedef T_sweepLockedPointer = stdgo._internal.runtime.Runtime_t_sweeplockedpointer.T_sweepLockedPointer;
@:dox(hide) class T_sweepLocked_static_extension {
    public static function _userArenaNextFree(__self__:stdgo._internal.runtime.Runtime_t_sweeplocked.T_sweepLocked, _0:stdgo._internal.internal.abi.Abi_type_.Type_, _1:StdTypes.Int):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>);
        final _1 = (_1 : stdgo.GoInt);
        return stdgo._internal.runtime.Runtime_t_sweeplocked_static_extension.T_sweepLocked_static_extension._userArenaNextFree(__self__, _0, _1);
    }
    public static function _specialFindSplicePoint(__self__:stdgo._internal.runtime.Runtime_t_sweeplocked.T_sweepLocked, _0:stdgo.GoUIntptr, _1:std.UInt):stdgo.Tuple<T_special, Bool> {
        final _0 = (_0 : stdgo.GoUIntptr);
        final _1 = (_1 : stdgo.GoUInt8);
        return {
            final obj = stdgo._internal.runtime.Runtime_t_sweeplocked_static_extension.T_sweepLocked_static_extension._specialFindSplicePoint(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _setUserArenaChunkToFault(__self__:stdgo._internal.runtime.Runtime_t_sweeplocked.T_sweepLocked):Void {
        stdgo._internal.runtime.Runtime_t_sweeplocked_static_extension.T_sweepLocked_static_extension._setUserArenaChunkToFault(__self__);
    }
    public static function _setPinnerBits(__self__:stdgo._internal.runtime.Runtime_t_sweeplocked.T_sweepLocked, _0:T_pinnerBits):Void {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.runtime.Runtime_t_pinnerbits.T_pinnerBits>);
        stdgo._internal.runtime.Runtime_t_sweeplocked_static_extension.T_sweepLocked_static_extension._setPinnerBits(__self__, _0);
    }
    public static function _reportZombies(__self__:stdgo._internal.runtime.Runtime_t_sweeplocked.T_sweepLocked):Void {
        stdgo._internal.runtime.Runtime_t_sweeplocked_static_extension.T_sweepLocked_static_extension._reportZombies(__self__);
    }
    public static function _refreshPinnerBits(__self__:stdgo._internal.runtime.Runtime_t_sweeplocked.T_sweepLocked):Void {
        stdgo._internal.runtime.Runtime_t_sweeplocked_static_extension.T_sweepLocked_static_extension._refreshPinnerBits(__self__);
    }
    public static function _refillAllocCache(__self__:stdgo._internal.runtime.Runtime_t_sweeplocked.T_sweepLocked, _0:stdgo.GoUIntptr):Void {
        final _0 = (_0 : stdgo.GoUIntptr);
        stdgo._internal.runtime.Runtime_t_sweeplocked_static_extension.T_sweepLocked_static_extension._refillAllocCache(__self__, _0);
    }
    public static function _pinnerBitSize(__self__:stdgo._internal.runtime.Runtime_t_sweeplocked.T_sweepLocked):stdgo.GoUIntptr {
        return stdgo._internal.runtime.Runtime_t_sweeplocked_static_extension.T_sweepLocked_static_extension._pinnerBitSize(__self__);
    }
    public static function _objIndex(__self__:stdgo._internal.runtime.Runtime_t_sweeplocked.T_sweepLocked, _0:stdgo.GoUIntptr):stdgo.GoUIntptr {
        final _0 = (_0 : stdgo.GoUIntptr);
        return stdgo._internal.runtime.Runtime_t_sweeplocked_static_extension.T_sweepLocked_static_extension._objIndex(__self__, _0);
    }
    public static function _nextFreeIndex(__self__:stdgo._internal.runtime.Runtime_t_sweeplocked.T_sweepLocked):stdgo.GoUIntptr {
        return stdgo._internal.runtime.Runtime_t_sweeplocked_static_extension.T_sweepLocked_static_extension._nextFreeIndex(__self__);
    }
    public static function _newPinnerBits(__self__:stdgo._internal.runtime.Runtime_t_sweeplocked.T_sweepLocked):T_pinnerBits {
        return stdgo._internal.runtime.Runtime_t_sweeplocked_static_extension.T_sweepLocked_static_extension._newPinnerBits(__self__);
    }
    public static function _markBitsForIndex(__self__:stdgo._internal.runtime.Runtime_t_sweeplocked.T_sweepLocked, _0:stdgo.GoUIntptr):T_markBits {
        final _0 = (_0 : stdgo.GoUIntptr);
        return stdgo._internal.runtime.Runtime_t_sweeplocked_static_extension.T_sweepLocked_static_extension._markBitsForIndex(__self__, _0);
    }
    public static function _markBitsForBase(__self__:stdgo._internal.runtime.Runtime_t_sweeplocked.T_sweepLocked):T_markBits {
        return stdgo._internal.runtime.Runtime_t_sweeplocked_static_extension.T_sweepLocked_static_extension._markBitsForBase(__self__);
    }
    public static function _layout(__self__:stdgo._internal.runtime.Runtime_t_sweeplocked.T_sweepLocked):stdgo.Tuple.Tuple3<stdgo.GoUIntptr, stdgo.GoUIntptr, stdgo.GoUIntptr> {
        return {
            final obj = stdgo._internal.runtime.Runtime_t_sweeplocked_static_extension.T_sweepLocked_static_extension._layout(__self__);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    public static function _isUnusedUserArenaChunk(__self__:stdgo._internal.runtime.Runtime_t_sweeplocked.T_sweepLocked):Bool {
        return stdgo._internal.runtime.Runtime_t_sweeplocked_static_extension.T_sweepLocked_static_extension._isUnusedUserArenaChunk(__self__);
    }
    public static function _isFree(__self__:stdgo._internal.runtime.Runtime_t_sweeplocked.T_sweepLocked, _0:stdgo.GoUIntptr):Bool {
        final _0 = (_0 : stdgo.GoUIntptr);
        return stdgo._internal.runtime.Runtime_t_sweeplocked_static_extension.T_sweepLocked_static_extension._isFree(__self__, _0);
    }
    public static function _initHeapBits(__self__:stdgo._internal.runtime.Runtime_t_sweeplocked.T_sweepLocked, _0:Bool):Void {
        stdgo._internal.runtime.Runtime_t_sweeplocked_static_extension.T_sweepLocked_static_extension._initHeapBits(__self__, _0);
    }
    public static function _init(__self__:stdgo._internal.runtime.Runtime_t_sweeplocked.T_sweepLocked, _0:stdgo.GoUIntptr, _1:stdgo.GoUIntptr):Void {
        final _0 = (_0 : stdgo.GoUIntptr);
        final _1 = (_1 : stdgo.GoUIntptr);
        stdgo._internal.runtime.Runtime_t_sweeplocked_static_extension.T_sweepLocked_static_extension._init(__self__, _0, _1);
    }
    public static function _incPinCounter(__self__:stdgo._internal.runtime.Runtime_t_sweeplocked.T_sweepLocked, _0:stdgo.GoUIntptr):Void {
        final _0 = (_0 : stdgo.GoUIntptr);
        stdgo._internal.runtime.Runtime_t_sweeplocked_static_extension.T_sweepLocked_static_extension._incPinCounter(__self__, _0);
    }
    public static function _inList(__self__:stdgo._internal.runtime.Runtime_t_sweeplocked.T_sweepLocked):Bool {
        return stdgo._internal.runtime.Runtime_t_sweeplocked_static_extension.T_sweepLocked_static_extension._inList(__self__);
    }
    public static function _getPinnerBits(__self__:stdgo._internal.runtime.Runtime_t_sweeplocked.T_sweepLocked):T_pinnerBits {
        return stdgo._internal.runtime.Runtime_t_sweeplocked_static_extension.T_sweepLocked_static_extension._getPinnerBits(__self__);
    }
    public static function _ensureSwept(__self__:stdgo._internal.runtime.Runtime_t_sweeplocked.T_sweepLocked):Void {
        stdgo._internal.runtime.Runtime_t_sweeplocked_static_extension.T_sweepLocked_static_extension._ensureSwept(__self__);
    }
    public static function _divideByElemSize(__self__:stdgo._internal.runtime.Runtime_t_sweeplocked.T_sweepLocked, _0:stdgo.GoUIntptr):stdgo.GoUIntptr {
        final _0 = (_0 : stdgo.GoUIntptr);
        return stdgo._internal.runtime.Runtime_t_sweeplocked_static_extension.T_sweepLocked_static_extension._divideByElemSize(__self__, _0);
    }
    public static function _decPinCounter(__self__:stdgo._internal.runtime.Runtime_t_sweeplocked.T_sweepLocked, _0:stdgo.GoUIntptr):Bool {
        final _0 = (_0 : stdgo.GoUIntptr);
        return stdgo._internal.runtime.Runtime_t_sweeplocked_static_extension.T_sweepLocked_static_extension._decPinCounter(__self__, _0);
    }
    public static function _countAlloc(__self__:stdgo._internal.runtime.Runtime_t_sweeplocked.T_sweepLocked):StdTypes.Int {
        return stdgo._internal.runtime.Runtime_t_sweeplocked_static_extension.T_sweepLocked_static_extension._countAlloc(__self__);
    }
    public static function _base(__self__:stdgo._internal.runtime.Runtime_t_sweeplocked.T_sweepLocked):stdgo.GoUIntptr {
        return stdgo._internal.runtime.Runtime_t_sweeplocked_static_extension.T_sweepLocked_static_extension._base(__self__);
    }
    public static function _allocBitsForIndex(__self__:stdgo._internal.runtime.Runtime_t_sweeplocked.T_sweepLocked, _0:stdgo.GoUIntptr):T_markBits {
        final _0 = (_0 : stdgo.GoUIntptr);
        return stdgo._internal.runtime.Runtime_t_sweeplocked_static_extension.T_sweepLocked_static_extension._allocBitsForIndex(__self__, _0);
    }
}
@:dox(hide) typedef T_gcWorkPointer = stdgo._internal.runtime.Runtime_t_gcworkpointer.T_gcWorkPointer;
@:dox(hide) class T_gcWork_static_extension {

}
@:dox(hide) typedef T_workbufhdrPointer = stdgo._internal.runtime.Runtime_t_workbufhdrpointer.T_workbufhdrPointer;
@:dox(hide) class T_workbufhdr_static_extension {

}
@:dox(hide) typedef T_workbufPointer = stdgo._internal.runtime.Runtime_t_workbufpointer.T_workbufPointer;
@:dox(hide) class T_workbuf_static_extension {

}
@:dox(hide) typedef T_mheapPointer = stdgo._internal.runtime.Runtime_t_mheappointer.T_mheapPointer;
@:dox(hide) class T_mheap_static_extension {

}
@:dox(hide) typedef T_heapArenaPointer = stdgo._internal.runtime.Runtime_t_heaparenapointer.T_heapArenaPointer;
@:dox(hide) class T_heapArena_static_extension {

}
@:dox(hide) typedef T_arenaHintPointer = stdgo._internal.runtime.Runtime_t_arenahintpointer.T_arenaHintPointer;
@:dox(hide) class T_arenaHint_static_extension {

}
@:dox(hide) typedef T_mSpanStateBoxPointer = stdgo._internal.runtime.Runtime_t_mspanstateboxpointer.T_mSpanStateBoxPointer;
@:dox(hide) class T_mSpanStateBox_static_extension {

}
@:dox(hide) typedef T_mSpanListPointer = stdgo._internal.runtime.Runtime_t_mspanlistpointer.T_mSpanListPointer;
@:dox(hide) class T_mSpanList_static_extension {

}
@:dox(hide) typedef T_mspanPointer = stdgo._internal.runtime.Runtime_t_mspanpointer.T_mspanPointer;
@:dox(hide) class T_mspan_static_extension {

}
@:dox(hide) typedef T_specialPointer = stdgo._internal.runtime.Runtime_t_specialpointer.T_specialPointer;
@:dox(hide) class T_special_static_extension {

}
@:dox(hide) typedef T_specialfinalizerPointer = stdgo._internal.runtime.Runtime_t_specialfinalizerpointer.T_specialfinalizerPointer;
@:dox(hide) class T_specialfinalizer_static_extension {

}
@:dox(hide) typedef T_specialprofilePointer = stdgo._internal.runtime.Runtime_t_specialprofilepointer.T_specialprofilePointer;
@:dox(hide) class T_specialprofile_static_extension {

}
@:dox(hide) typedef T_specialReachablePointer = stdgo._internal.runtime.Runtime_t_specialreachablepointer.T_specialReachablePointer;
@:dox(hide) class T_specialReachable_static_extension {

}
@:dox(hide) typedef T_specialPinCounterPointer = stdgo._internal.runtime.Runtime_t_specialpincounterpointer.T_specialPinCounterPointer;
@:dox(hide) class T_specialPinCounter_static_extension {

}
@:dox(hide) typedef T_specialsIterPointer = stdgo._internal.runtime.Runtime_t_specialsiterpointer.T_specialsIterPointer;
@:dox(hide) class T_specialsIter_static_extension {

}
@:dox(hide) typedef T_gcBitsPointer = stdgo._internal.runtime.Runtime_t_gcbitspointer.T_gcBitsPointer;
@:dox(hide) class T_gcBits_static_extension {

}
@:dox(hide) typedef T_gcBitsHeaderPointer = stdgo._internal.runtime.Runtime_t_gcbitsheaderpointer.T_gcBitsHeaderPointer;
@:dox(hide) class T_gcBitsHeader_static_extension {

}
@:dox(hide) typedef T_gcBitsArenaPointer = stdgo._internal.runtime.Runtime_t_gcbitsarenapointer.T_gcBitsArenaPointer;
@:dox(hide) class T_gcBitsArena_static_extension {

}
@:dox(hide) typedef T_pageAllocPointer = stdgo._internal.runtime.Runtime_t_pageallocpointer.T_pageAllocPointer;
@:dox(hide) class T_pageAlloc_static_extension {

}
@:dox(hide) typedef T_pageCachePointer = stdgo._internal.runtime.Runtime_t_pagecachepointer.T_pageCachePointer;
@:dox(hide) class T_pageCache_static_extension {

}
@:dox(hide) typedef T_pallocDataPointer = stdgo._internal.runtime.Runtime_t_pallocdatapointer.T_pallocDataPointer;
@:dox(hide) class T_pallocData_static_extension {
    public static function _summarize(__self__:stdgo._internal.runtime.Runtime_t_pallocdata.T_pallocData):T_pallocSum {
        return stdgo._internal.runtime.Runtime_t_pallocdata_static_extension.T_pallocData_static_extension._summarize(__self__);
    }
    public static function _pages64(__self__:stdgo._internal.runtime.Runtime_t_pallocdata.T_pallocData, _0:std.UInt):haxe.UInt64 {
        final _0 = (_0 : stdgo.GoUInt);
        return stdgo._internal.runtime.Runtime_t_pallocdata_static_extension.T_pallocData_static_extension._pages64(__self__, _0);
    }
    public static function _freeAll(__self__:stdgo._internal.runtime.Runtime_t_pallocdata.T_pallocData):Void {
        stdgo._internal.runtime.Runtime_t_pallocdata_static_extension.T_pallocData_static_extension._freeAll(__self__);
    }
    public static function _free1(__self__:stdgo._internal.runtime.Runtime_t_pallocdata.T_pallocData, _0:std.UInt):Void {
        final _0 = (_0 : stdgo.GoUInt);
        stdgo._internal.runtime.Runtime_t_pallocdata_static_extension.T_pallocData_static_extension._free1(__self__, _0);
    }
    public static function _free(__self__:stdgo._internal.runtime.Runtime_t_pallocdata.T_pallocData, _0:std.UInt, _1:std.UInt):Void {
        final _0 = (_0 : stdgo.GoUInt);
        final _1 = (_1 : stdgo.GoUInt);
        stdgo._internal.runtime.Runtime_t_pallocdata_static_extension.T_pallocData_static_extension._free(__self__, _0, _1);
    }
    public static function _findSmallN(__self__:stdgo._internal.runtime.Runtime_t_pallocdata.T_pallocData, _0:stdgo.GoUIntptr, _1:std.UInt):stdgo.Tuple<std.UInt, std.UInt> {
        final _0 = (_0 : stdgo.GoUIntptr);
        final _1 = (_1 : stdgo.GoUInt);
        return {
            final obj = stdgo._internal.runtime.Runtime_t_pallocdata_static_extension.T_pallocData_static_extension._findSmallN(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _findLargeN(__self__:stdgo._internal.runtime.Runtime_t_pallocdata.T_pallocData, _0:stdgo.GoUIntptr, _1:std.UInt):stdgo.Tuple<std.UInt, std.UInt> {
        final _0 = (_0 : stdgo.GoUIntptr);
        final _1 = (_1 : stdgo.GoUInt);
        return {
            final obj = stdgo._internal.runtime.Runtime_t_pallocdata_static_extension.T_pallocData_static_extension._findLargeN(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _find1(__self__:stdgo._internal.runtime.Runtime_t_pallocdata.T_pallocData, _0:std.UInt):std.UInt {
        final _0 = (_0 : stdgo.GoUInt);
        return stdgo._internal.runtime.Runtime_t_pallocdata_static_extension.T_pallocData_static_extension._find1(__self__, _0);
    }
    public static function _find(__self__:stdgo._internal.runtime.Runtime_t_pallocdata.T_pallocData, _0:stdgo.GoUIntptr, _1:std.UInt):stdgo.Tuple<std.UInt, std.UInt> {
        final _0 = (_0 : stdgo.GoUIntptr);
        final _1 = (_1 : stdgo.GoUInt);
        return {
            final obj = stdgo._internal.runtime.Runtime_t_pallocdata_static_extension.T_pallocData_static_extension._find(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _allocPages64(__self__:stdgo._internal.runtime.Runtime_t_pallocdata.T_pallocData, _0:std.UInt, _1:haxe.UInt64):Void {
        final _0 = (_0 : stdgo.GoUInt);
        final _1 = (_1 : stdgo.GoUInt64);
        stdgo._internal.runtime.Runtime_t_pallocdata_static_extension.T_pallocData_static_extension._allocPages64(__self__, _0, _1);
    }
}
@:dox(hide) typedef T_bucketPointer = stdgo._internal.runtime.Runtime_t_bucketpointer.T_bucketPointer;
@:dox(hide) class T_bucket_static_extension {

}
@:dox(hide) typedef T_memRecordPointer = stdgo._internal.runtime.Runtime_t_memrecordpointer.T_memRecordPointer;
@:dox(hide) class T_memRecord_static_extension {

}
@:dox(hide) typedef T_memRecordCyclePointer = stdgo._internal.runtime.Runtime_t_memrecordcyclepointer.T_memRecordCyclePointer;
@:dox(hide) class T_memRecordCycle_static_extension {

}
@:dox(hide) typedef T_blockRecordPointer = stdgo._internal.runtime.Runtime_t_blockrecordpointer.T_blockRecordPointer;
@:dox(hide) class T_blockRecord_static_extension {

}
@:dox(hide) typedef T_mProfCycleHolderPointer = stdgo._internal.runtime.Runtime_t_mprofcycleholderpointer.T_mProfCycleHolderPointer;
@:dox(hide) class T_mProfCycleHolder_static_extension {

}
typedef StackRecordPointer = stdgo._internal.runtime.Runtime_stackrecordpointer.StackRecordPointer;
class StackRecord_static_extension {
    static public function stack(_r:StackRecord):Array<stdgo.GoUIntptr> {
        final _r = (_r : stdgo.Ref<stdgo._internal.runtime.Runtime_stackrecord.StackRecord>);
        return [for (i in stdgo._internal.runtime.Runtime_stackrecord_static_extension.StackRecord_static_extension.stack(_r)) i];
    }
}
typedef MemProfileRecordPointer = stdgo._internal.runtime.Runtime_memprofilerecordpointer.MemProfileRecordPointer;
class MemProfileRecord_static_extension {
    static public function stack(_r:MemProfileRecord):Array<stdgo.GoUIntptr> {
        final _r = (_r : stdgo.Ref<stdgo._internal.runtime.Runtime_memprofilerecord.MemProfileRecord>);
        return [for (i in stdgo._internal.runtime.Runtime_memprofilerecord_static_extension.MemProfileRecord_static_extension.stack(_r)) i];
    }
    static public function inUseObjects(_r:MemProfileRecord):haxe.Int64 {
        final _r = (_r : stdgo.Ref<stdgo._internal.runtime.Runtime_memprofilerecord.MemProfileRecord>);
        return stdgo._internal.runtime.Runtime_memprofilerecord_static_extension.MemProfileRecord_static_extension.inUseObjects(_r);
    }
    static public function inUseBytes(_r:MemProfileRecord):haxe.Int64 {
        final _r = (_r : stdgo.Ref<stdgo._internal.runtime.Runtime_memprofilerecord.MemProfileRecord>);
        return stdgo._internal.runtime.Runtime_memprofilerecord_static_extension.MemProfileRecord_static_extension.inUseBytes(_r);
    }
}
typedef BlockProfileRecordPointer = stdgo._internal.runtime.Runtime_blockprofilerecordpointer.BlockProfileRecordPointer;
class BlockProfileRecord_static_extension {
    public static function stack(__self__:stdgo._internal.runtime.Runtime_blockprofilerecord.BlockProfileRecord):Array<stdgo.GoUIntptr> {
        return [for (i in stdgo._internal.runtime.Runtime_blockprofilerecord_static_extension.BlockProfileRecord_static_extension.stack(__self__)) i];
    }
}
@:dox(hide) typedef T_addrRangePointer = stdgo._internal.runtime.Runtime_t_addrrangepointer.T_addrRangePointer;
@:dox(hide) class T_addrRange_static_extension {

}
@:dox(hide) typedef T_offAddrPointer = stdgo._internal.runtime.Runtime_t_offaddrpointer.T_offAddrPointer;
@:dox(hide) class T_offAddr_static_extension {

}
@:dox(hide) typedef T_atomicOffAddrPointer = stdgo._internal.runtime.Runtime_t_atomicoffaddrpointer.T_atomicOffAddrPointer;
@:dox(hide) class T_atomicOffAddr_static_extension {
    static public function load(_b:T_atomicOffAddr):stdgo.Tuple<stdgo.GoUIntptr, Bool> {
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.Runtime_t_atomicoffaddr.T_atomicOffAddr>);
        return {
            final obj = stdgo._internal.runtime.Runtime_t_atomicoffaddr_static_extension.T_atomicOffAddr_static_extension.load(_b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function storeMarked(_b:T_atomicOffAddr, _addr:stdgo.GoUIntptr):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.Runtime_t_atomicoffaddr.T_atomicOffAddr>);
        final _addr = (_addr : stdgo.GoUIntptr);
        stdgo._internal.runtime.Runtime_t_atomicoffaddr_static_extension.T_atomicOffAddr_static_extension.storeMarked(_b, _addr);
    }
    static public function storeUnmark(_b:T_atomicOffAddr, _markedAddr:stdgo.GoUIntptr, _newAddr:stdgo.GoUIntptr):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.Runtime_t_atomicoffaddr.T_atomicOffAddr>);
        final _markedAddr = (_markedAddr : stdgo.GoUIntptr);
        final _newAddr = (_newAddr : stdgo.GoUIntptr);
        stdgo._internal.runtime.Runtime_t_atomicoffaddr_static_extension.T_atomicOffAddr_static_extension.storeUnmark(_b, _markedAddr, _newAddr);
    }
    static public function storeMin(_b:T_atomicOffAddr, _addr:stdgo.GoUIntptr):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.Runtime_t_atomicoffaddr.T_atomicOffAddr>);
        final _addr = (_addr : stdgo.GoUIntptr);
        stdgo._internal.runtime.Runtime_t_atomicoffaddr_static_extension.T_atomicOffAddr_static_extension.storeMin(_b, _addr);
    }
    static public function clear(_b:T_atomicOffAddr):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.Runtime_t_atomicoffaddr.T_atomicOffAddr>);
        stdgo._internal.runtime.Runtime_t_atomicoffaddr_static_extension.T_atomicOffAddr_static_extension.clear(_b);
    }
}
@:dox(hide) typedef T_addrRangesPointer = stdgo._internal.runtime.Runtime_t_addrrangespointer.T_addrRangesPointer;
@:dox(hide) class T_addrRanges_static_extension {

}
@:dox(hide) typedef T_spanSetPointer = stdgo._internal.runtime.Runtime_t_spansetpointer.T_spanSetPointer;
@:dox(hide) class T_spanSet_static_extension {

}
@:dox(hide) typedef T_spanSetBlockPointer = stdgo._internal.runtime.Runtime_t_spansetblockpointer.T_spanSetBlockPointer;
@:dox(hide) class T_spanSetBlock_static_extension {

}
@:dox(hide) typedef T_atomicSpanSetSpinePointerPointer = stdgo._internal.runtime.Runtime_t_atomicspansetspinepointerpointer.T_atomicSpanSetSpinePointerPointer;
@:dox(hide) class T_atomicSpanSetSpinePointer_static_extension {
    static public function storeNoWB(_s:T_atomicSpanSetSpinePointer, _p:T_spanSetSpinePointer):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.runtime.Runtime_t_atomicspansetspinepointer.T_atomicSpanSetSpinePointer>);
        stdgo._internal.runtime.Runtime_t_atomicspansetspinepointer_static_extension.T_atomicSpanSetSpinePointer_static_extension.storeNoWB(_s, _p);
    }
    static public function load(_s:T_atomicSpanSetSpinePointer):T_spanSetSpinePointer {
        final _s = (_s : stdgo.Ref<stdgo._internal.runtime.Runtime_t_atomicspansetspinepointer.T_atomicSpanSetSpinePointer>);
        return stdgo._internal.runtime.Runtime_t_atomicspansetspinepointer_static_extension.T_atomicSpanSetSpinePointer_static_extension.load(_s);
    }
}
@:dox(hide) typedef T_spanSetSpinePointerPointer = stdgo._internal.runtime.Runtime_t_spansetspinepointerpointer.T_spanSetSpinePointerPointer;
@:dox(hide) class T_spanSetSpinePointer_static_extension {

}
@:dox(hide) typedef T_spanSetBlockAllocPointer = stdgo._internal.runtime.Runtime_t_spansetblockallocpointer.T_spanSetBlockAllocPointer;
@:dox(hide) class T_spanSetBlockAlloc_static_extension {

}
@:dox(hide) typedef T_atomicHeadTailIndexPointer = stdgo._internal.runtime.Runtime_t_atomicheadtailindexpointer.T_atomicHeadTailIndexPointer;
@:dox(hide) class T_atomicHeadTailIndex_static_extension {

}
@:dox(hide) typedef T_atomicMSpanPointerPointer = stdgo._internal.runtime.Runtime_t_atomicmspanpointerpointer.T_atomicMSpanPointerPointer;
@:dox(hide) class T_atomicMSpanPointer_static_extension {
    static public function storeNoWB(_p:T_atomicMSpanPointer, _s:T_mspan):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.runtime.Runtime_t_atomicmspanpointer.T_atomicMSpanPointer>);
        final _s = (_s : stdgo.Ref<stdgo._internal.runtime.Runtime_t_mspan.T_mspan>);
        stdgo._internal.runtime.Runtime_t_atomicmspanpointer_static_extension.T_atomicMSpanPointer_static_extension.storeNoWB(_p, _s);
    }
    static public function load(_p:T_atomicMSpanPointer):T_mspan {
        final _p = (_p : stdgo.Ref<stdgo._internal.runtime.Runtime_t_atomicmspanpointer.T_atomicMSpanPointer>);
        return stdgo._internal.runtime.Runtime_t_atomicmspanpointer_static_extension.T_atomicMSpanPointer_static_extension.load(_p);
    }
}
@:dox(hide) typedef T_mstatsPointer = stdgo._internal.runtime.Runtime_t_mstatspointer.T_mstatsPointer;
@:dox(hide) class T_mstats_static_extension {

}
typedef MemStatsPointer = stdgo._internal.runtime.Runtime_memstatspointer.MemStatsPointer;
class MemStats_static_extension {

}
@:dox(hide) typedef T_heapStatsDeltaPointer = stdgo._internal.runtime.Runtime_t_heapstatsdeltapointer.T_heapStatsDeltaPointer;
@:dox(hide) class T_heapStatsDelta_static_extension {

}
@:dox(hide) typedef T_consistentHeapStatsPointer = stdgo._internal.runtime.Runtime_t_consistentheapstatspointer.T_consistentHeapStatsPointer;
@:dox(hide) class T_consistentHeapStats_static_extension {

}
@:dox(hide) typedef T_cpuStatsPointer = stdgo._internal.runtime.Runtime_t_cpustatspointer.T_cpuStatsPointer;
@:dox(hide) class T_cpuStats_static_extension {

}
@:dox(hide) typedef T_wbBufPointer = stdgo._internal.runtime.Runtime_t_wbbufpointer.T_wbBufPointer;
@:dox(hide) class T_wbBuf_static_extension {

}
@:dox(hide) typedef T_pollDescPointer = stdgo._internal.runtime.Runtime_t_polldescpointer.T_pollDescPointer;
@:dox(hide) class T_pollDesc_static_extension {

}
@:dox(hide) typedef T_pollCachePointer = stdgo._internal.runtime.Runtime_t_pollcachepointer.T_pollCachePointer;
@:dox(hide) class T_pollCache_static_extension {

}
@:dox(hide) typedef T_mOSPointer = stdgo._internal.runtime.Runtime_t_mospointer.T_mOSPointer;
@:dox(hide) class T_mOS_static_extension {

}
@:dox(hide) typedef T_sigsetPointer = stdgo._internal.runtime.Runtime_t_sigsetpointer.T_sigsetPointer;
@:dox(hide) class T_sigset_static_extension {

}
@:dox(hide) typedef T_gsignalStackPointer = stdgo._internal.runtime.Runtime_t_gsignalstackpointer.T_gsignalStackPointer;
@:dox(hide) class T_gsignalStack_static_extension {

}
@:dox(hide) typedef T_pageTraceBufPointer = stdgo._internal.runtime.Runtime_t_pagetracebufpointer.T_pageTraceBufPointer;
@:dox(hide) class T_pageTraceBuf_static_extension {

}
typedef PanicNilErrorPointer = stdgo._internal.runtime.Runtime_panicnilerrorpointer.PanicNilErrorPointer;
class PanicNilError_static_extension {
    static public function runtimeError(_:PanicNilError):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.runtime.Runtime_panicnilerror.PanicNilError>);
        stdgo._internal.runtime.Runtime_panicnilerror_static_extension.PanicNilError_static_extension.runtimeError(_);
    }
    static public function error(_:PanicNilError):String {
        final _ = (_ : stdgo.Ref<stdgo._internal.runtime.Runtime_panicnilerror.PanicNilError>);
        return stdgo._internal.runtime.Runtime_panicnilerror_static_extension.PanicNilError_static_extension.error(_);
    }
}
typedef PinnerPointer = stdgo._internal.runtime.Runtime_pinnerpointer.PinnerPointer;
class Pinner_static_extension {
    static public function unpin(_p:Pinner):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.runtime.Runtime_pinner.Pinner>);
        stdgo._internal.runtime.Runtime_pinner_static_extension.Pinner_static_extension.unpin(_p);
    }
    static public function pin(_p:Pinner, _pointer:stdgo.AnyInterface):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.runtime.Runtime_pinner.Pinner>);
        final _pointer = (_pointer : stdgo.AnyInterface);
        stdgo._internal.runtime.Runtime_pinner_static_extension.Pinner_static_extension.pin(_p, _pointer);
    }
    public static function _unpin(__self__:stdgo._internal.runtime.Runtime_pinner.Pinner):Void {
        stdgo._internal.runtime.Runtime_pinner_static_extension.Pinner_static_extension._unpin(__self__);
    }
}
@:dox(hide) typedef T_pinnerPointer = stdgo._internal.runtime.Runtime_t_pinnerpointer.T_pinnerPointer;
@:dox(hide) class T_pinner_static_extension {

}
@:dox(hide) typedef T_pinStatePointer = stdgo._internal.runtime.Runtime_t_pinstatepointer.T_pinStatePointer;
@:dox(hide) class T_pinState_static_extension {

}
@:dox(hide) typedef T_ptabEntryPointer = stdgo._internal.runtime.Runtime_t_ptabentrypointer.T_ptabEntryPointer;
@:dox(hide) class T_ptabEntry_static_extension {

}
@:dox(hide) typedef T_suspendGStatePointer = stdgo._internal.runtime.Runtime_t_suspendgstatepointer.T_suspendGStatePointer;
@:dox(hide) class T_suspendGState_static_extension {

}
@:dox(hide) typedef T_cgothreadstartPointer = stdgo._internal.runtime.Runtime_t_cgothreadstartpointer.T_cgothreadstartPointer;
@:dox(hide) class T_cgothreadstart_static_extension {

}
@:dox(hide) typedef T_sysmontickPointer = stdgo._internal.runtime.Runtime_t_sysmontickpointer.T_sysmontickPointer;
@:dox(hide) class T_sysmontick_static_extension {

}
@:dox(hide) typedef T_gQueuePointer = stdgo._internal.runtime.Runtime_t_gqueuepointer.T_gQueuePointer;
@:dox(hide) class T_gQueue_static_extension {

}
@:dox(hide) typedef T_gListPointer = stdgo._internal.runtime.Runtime_t_glistpointer.T_gListPointer;
@:dox(hide) class T_gList_static_extension {

}
@:dox(hide) typedef T_randomOrderPointer = stdgo._internal.runtime.Runtime_t_randomorderpointer.T_randomOrderPointer;
@:dox(hide) class T_randomOrder_static_extension {

}
@:dox(hide) typedef T_randomEnumPointer = stdgo._internal.runtime.Runtime_t_randomenumpointer.T_randomEnumPointer;
@:dox(hide) class T_randomEnum_static_extension {

}
@:dox(hide) typedef T_initTaskPointer = stdgo._internal.runtime.Runtime_t_inittaskpointer.T_initTaskPointer;
@:dox(hide) class T_initTask_static_extension {

}
@:dox(hide) typedef T_tracestatPointer = stdgo._internal.runtime.Runtime_t_tracestatpointer.T_tracestatPointer;
@:dox(hide) class T_tracestat_static_extension {

}
@:dox(hide) typedef T_profBufPointer = stdgo._internal.runtime.Runtime_t_profbufpointer.T_profBufPointer;
@:dox(hide) class T_profBuf_static_extension {

}
@:dox(hide) typedef T_ticksTypePointer = stdgo._internal.runtime.Runtime_t_tickstypepointer.T_ticksTypePointer;
@:dox(hide) class T_ticksType_static_extension {

}
@:dox(hide) typedef T_godebugIncPointer = stdgo._internal.runtime.Runtime_t_godebugincpointer.T_godebugIncPointer;
@:dox(hide) class T_godebugInc_static_extension {
    static public function incNonDefault(_g:T_godebugInc):Void {
        final _g = (_g : stdgo.Ref<stdgo._internal.runtime.Runtime_t_godebuginc.T_godebugInc>);
        stdgo._internal.runtime.Runtime_t_godebuginc_static_extension.T_godebugInc_static_extension.incNonDefault(_g);
    }
}
@:dox(hide) typedef T_dbgVarPointer = stdgo._internal.runtime.Runtime_t_dbgvarpointer.T_dbgVarPointer;
@:dox(hide) class T_dbgVar_static_extension {

}
@:dox(hide) typedef T_mutexPointer = stdgo._internal.runtime.Runtime_t_mutexpointer.T_mutexPointer;
@:dox(hide) class T_mutex_static_extension {

}
@:dox(hide) typedef T_notePointer = stdgo._internal.runtime.Runtime_t_notepointer.T_notePointer;
@:dox(hide) class T_note_static_extension {

}
@:dox(hide) typedef T_funcvalPointer = stdgo._internal.runtime.Runtime_t_funcvalpointer.T_funcvalPointer;
@:dox(hide) class T_funcval_static_extension {

}
@:dox(hide) typedef T_ifacePointer = stdgo._internal.runtime.Runtime_t_ifacepointer.T_ifacePointer;
@:dox(hide) class T_iface_static_extension {

}
@:dox(hide) typedef T_efacePointer = stdgo._internal.runtime.Runtime_t_efacepointer.T_efacePointer;
@:dox(hide) class T_eface_static_extension {

}
@:dox(hide) typedef T_gobufPointer = stdgo._internal.runtime.Runtime_t_gobufpointer.T_gobufPointer;
@:dox(hide) class T_gobuf_static_extension {

}
@:dox(hide) typedef T_sudogPointer = stdgo._internal.runtime.Runtime_t_sudogpointer.T_sudogPointer;
@:dox(hide) class T_sudog_static_extension {

}
@:dox(hide) typedef T_libcallPointer = stdgo._internal.runtime.Runtime_t_libcallpointer.T_libcallPointer;
@:dox(hide) class T_libcall_static_extension {

}
@:dox(hide) typedef T_stackPointer = stdgo._internal.runtime.Runtime_t_stackpointer.T_stackPointer;
@:dox(hide) class T_stack_static_extension {

}
@:dox(hide) typedef T_heldLockInfoPointer = stdgo._internal.runtime.Runtime_t_heldlockinfopointer.T_heldLockInfoPointer;
@:dox(hide) class T_heldLockInfo_static_extension {

}
@:dox(hide) typedef T_gPointer = stdgo._internal.runtime.Runtime_t_gpointer.T_gPointer;
@:dox(hide) class T_g_static_extension {

}
@:dox(hide) typedef T_mPointer = stdgo._internal.runtime.Runtime_t_mpointer.T_mPointer;
@:dox(hide) class T_m_static_extension {

}
@:dox(hide) typedef T_pPointer = stdgo._internal.runtime.Runtime_t_ppointer.T_pPointer;
@:dox(hide) class T_p_static_extension {

}
@:dox(hide) typedef T_schedtPointer = stdgo._internal.runtime.Runtime_t_schedtpointer.T_schedtPointer;
@:dox(hide) class T_schedt_static_extension {

}
@:dox(hide) typedef T__funcPointer = stdgo._internal.runtime.Runtime_t__funcpointer.T__funcPointer;
@:dox(hide) class T__func_static_extension {

}
@:dox(hide) typedef T_funcinlPointer = stdgo._internal.runtime.Runtime_t_funcinlpointer.T_funcinlPointer;
@:dox(hide) class T_funcinl_static_extension {

}
@:dox(hide) typedef T_itabPointer = stdgo._internal.runtime.Runtime_t_itabpointer.T_itabPointer;
@:dox(hide) class T_itab_static_extension {

}
@:dox(hide) typedef T_lfnodePointer = stdgo._internal.runtime.Runtime_t_lfnodepointer.T_lfnodePointer;
@:dox(hide) class T_lfnode_static_extension {

}
@:dox(hide) typedef T_forcegcstatePointer = stdgo._internal.runtime.Runtime_t_forcegcstatepointer.T_forcegcstatePointer;
@:dox(hide) class T_forcegcstate_static_extension {

}
@:dox(hide) typedef T__deferPointer = stdgo._internal.runtime.Runtime_t__deferpointer.T__deferPointer;
@:dox(hide) class T__defer_static_extension {

}
@:dox(hide) typedef T__panicPointer = stdgo._internal.runtime.Runtime_t__panicpointer.T__panicPointer;
@:dox(hide) class T__panic_static_extension {

}
@:dox(hide) typedef T_ancestorInfoPointer = stdgo._internal.runtime.Runtime_t_ancestorinfopointer.T_ancestorInfoPointer;
@:dox(hide) class T_ancestorInfo_static_extension {

}
@:dox(hide) typedef T_rwmutexPointer = stdgo._internal.runtime.Runtime_t_rwmutexpointer.T_rwmutexPointer;
@:dox(hide) class T_rwmutex_static_extension {

}
@:dox(hide) typedef T_scasePointer = stdgo._internal.runtime.Runtime_t_scasepointer.T_scasePointer;
@:dox(hide) class T_scase_static_extension {

}
@:dox(hide) typedef T_runtimeSelectPointer = stdgo._internal.runtime.Runtime_t_runtimeselectpointer.T_runtimeSelectPointer;
@:dox(hide) class T_runtimeSelect_static_extension {

}
@:dox(hide) typedef T_semaRootPointer = stdgo._internal.runtime.Runtime_t_semarootpointer.T_semaRootPointer;
@:dox(hide) class T_semaRoot_static_extension {

}
@:dox(hide) typedef T_notifyListPointer = stdgo._internal.runtime.Runtime_t_notifylistpointer.T_notifyListPointer;
@:dox(hide) class T_notifyList_static_extension {

}
@:dox(hide) typedef T_slicePointer = stdgo._internal.runtime.Runtime_t_slicepointer.T_slicePointer;
@:dox(hide) class T_slice_static_extension {

}
@:dox(hide) typedef T_notInHeapSlicePointer = stdgo._internal.runtime.Runtime_t_notinheapslicepointer.T_notInHeapSlicePointer;
@:dox(hide) class T_notInHeapSlice_static_extension {

}
@:dox(hide) typedef T_stackpoolItemPointer = stdgo._internal.runtime.Runtime_t_stackpoolitempointer.T_stackpoolItemPointer;
@:dox(hide) class T_stackpoolItem_static_extension {

}
@:dox(hide) typedef T_adjustinfoPointer = stdgo._internal.runtime.Runtime_t_adjustinfopointer.T_adjustinfoPointer;
@:dox(hide) class T_adjustinfo_static_extension {

}
@:dox(hide) typedef T_bitvectorPointer = stdgo._internal.runtime.Runtime_t_bitvectorpointer.T_bitvectorPointer;
@:dox(hide) class T_bitvector_static_extension {

}
@:dox(hide) typedef T_stackObjectRecordPointer = stdgo._internal.runtime.Runtime_t_stackobjectrecordpointer.T_stackObjectRecordPointer;
@:dox(hide) class T_stackObjectRecord_static_extension {

}
@:dox(hide) typedef T_stkframePointer = stdgo._internal.runtime.Runtime_t_stkframepointer.T_stkframePointer;
@:dox(hide) class T_stkframe_static_extension {

}
@:dox(hide) typedef T_reflectMethodValuePointer = stdgo._internal.runtime.Runtime_t_reflectmethodvaluepointer.T_reflectMethodValuePointer;
@:dox(hide) class T_reflectMethodValue_static_extension {

}
@:dox(hide) typedef T_stringStructPointer = stdgo._internal.runtime.Runtime_t_stringstructpointer.T_stringStructPointer;
@:dox(hide) class T_stringStruct_static_extension {

}
@:dox(hide) typedef T_stringStructDWARFPointer = stdgo._internal.runtime.Runtime_t_stringstructdwarfpointer.T_stringStructDWARFPointer;
@:dox(hide) class T_stringStructDWARF_static_extension {

}
@:dox(hide) typedef T_neverCallThisFunctionPointer = stdgo._internal.runtime.Runtime_t_nevercallthisfunctionpointer.T_neverCallThisFunctionPointer;
@:dox(hide) class T_neverCallThisFunction_static_extension {

}
typedef FramesPointer = stdgo._internal.runtime.Runtime_framespointer.FramesPointer;
class Frames_static_extension {
    static public function next(_ci:Frames):stdgo.Tuple<Frame, Bool> {
        final _ci = (_ci : stdgo.Ref<stdgo._internal.runtime.Runtime_frames.Frames>);
        return {
            final obj = stdgo._internal.runtime.Runtime_frames_static_extension.Frames_static_extension.next(_ci);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef FramePointer = stdgo._internal.runtime.Runtime_framepointer.FramePointer;
class Frame_static_extension {

}
typedef FuncPointer = stdgo._internal.runtime.Runtime_funcpointer.FuncPointer;
class Func_static_extension {
    static public function fileLine(_f:Func, _pc:stdgo.GoUIntptr):stdgo.Tuple<String, StdTypes.Int> {
        final _f = (_f : stdgo.Ref<stdgo._internal.runtime.Runtime_func.Func>);
        final _pc = (_pc : stdgo.GoUIntptr);
        return {
            final obj = stdgo._internal.runtime.Runtime_func_static_extension.Func_static_extension.fileLine(_f, _pc);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function entry(_f:Func):stdgo.GoUIntptr {
        final _f = (_f : stdgo.Ref<stdgo._internal.runtime.Runtime_func.Func>);
        return stdgo._internal.runtime.Runtime_func_static_extension.Func_static_extension.entry(_f);
    }
    static public function name(_f:Func):String {
        final _f = (_f : stdgo.Ref<stdgo._internal.runtime.Runtime_func.Func>);
        return stdgo._internal.runtime.Runtime_func_static_extension.Func_static_extension.name(_f);
    }
}
@:dox(hide) typedef T_pcHeaderPointer = stdgo._internal.runtime.Runtime_t_pcheaderpointer.T_pcHeaderPointer;
@:dox(hide) class T_pcHeader_static_extension {

}
@:dox(hide) typedef T_moduledataPointer = stdgo._internal.runtime.Runtime_t_moduledatapointer.T_moduledataPointer;
@:dox(hide) class T_moduledata_static_extension {

}
@:dox(hide) typedef T_modulehashPointer = stdgo._internal.runtime.Runtime_t_modulehashpointer.T_modulehashPointer;
@:dox(hide) class T_modulehash_static_extension {

}
@:dox(hide) typedef T_functabPointer = stdgo._internal.runtime.Runtime_t_functabpointer.T_functabPointer;
@:dox(hide) class T_functab_static_extension {

}
@:dox(hide) typedef T_textsectPointer = stdgo._internal.runtime.Runtime_t_textsectpointer.T_textsectPointer;
@:dox(hide) class T_textsect_static_extension {

}
@:dox(hide) typedef T_findfuncbucketPointer = stdgo._internal.runtime.Runtime_t_findfuncbucketpointer.T_findfuncbucketPointer;
@:dox(hide) class T_findfuncbucket_static_extension {

}
@:dox(hide) typedef T_funcInfoPointer = stdgo._internal.runtime.Runtime_t_funcinfopointer.T_funcInfoPointer;
@:dox(hide) class T_funcInfo_static_extension {
    public static function _isInlined(__self__:stdgo._internal.runtime.Runtime_t_funcinfo.T_funcInfo):Bool {
        return stdgo._internal.runtime.Runtime_t_funcinfo_static_extension.T_funcInfo_static_extension._isInlined(__self__);
    }
    public static function _funcInfo(__self__:stdgo._internal.runtime.Runtime_t_funcinfo.T_funcInfo):T_funcInfo {
        return stdgo._internal.runtime.Runtime_t_funcinfo_static_extension.T_funcInfo_static_extension._funcInfo(__self__);
    }
}
@:dox(hide) typedef T_srcFuncPointer = stdgo._internal.runtime.Runtime_t_srcfuncpointer.T_srcFuncPointer;
@:dox(hide) class T_srcFunc_static_extension {

}
@:dox(hide) typedef T_pcvalueCachePointer = stdgo._internal.runtime.Runtime_t_pcvaluecachepointer.T_pcvalueCachePointer;
@:dox(hide) class T_pcvalueCache_static_extension {

}
@:dox(hide) typedef T_pcvalueCacheEntPointer = stdgo._internal.runtime.Runtime_t_pcvaluecacheentpointer.T_pcvalueCacheEntPointer;
@:dox(hide) class T_pcvalueCacheEnt_static_extension {

}
@:dox(hide) typedef T_stackmapPointer = stdgo._internal.runtime.Runtime_t_stackmappointer.T_stackmapPointer;
@:dox(hide) class T_stackmap_static_extension {

}
@:dox(hide) typedef T_inlinedCallPointer = stdgo._internal.runtime.Runtime_t_inlinedcallpointer.T_inlinedCallPointer;
@:dox(hide) class T_inlinedCall_static_extension {

}
@:dox(hide) typedef T_inlineUnwinderPointer = stdgo._internal.runtime.Runtime_t_inlineunwinderpointer.T_inlineUnwinderPointer;
@:dox(hide) class T_inlineUnwinder_static_extension {

}
@:dox(hide) typedef T_inlineFramePointer = stdgo._internal.runtime.Runtime_t_inlineframepointer.T_inlineFramePointer;
@:dox(hide) class T_inlineFrame_static_extension {

}
@:dox(hide) typedef T_m0StackPointer = stdgo._internal.runtime.Runtime_t_m0stackpointer.T_m0StackPointer;
@:dox(hide) class T_m0Stack_static_extension {

}
@:dox(hide) typedef T_timerPointer = stdgo._internal.runtime.Runtime_t_timerpointer.T_timerPointer;
@:dox(hide) class T_timer_static_extension {

}
@:dox(hide) typedef T_gTraceStatePointer = stdgo._internal.runtime.Runtime_t_gtracestatepointer.T_gTraceStatePointer;
@:dox(hide) class T_gTraceState_static_extension {

}
@:dox(hide) typedef T_mTraceStatePointer = stdgo._internal.runtime.Runtime_t_mtracestatepointer.T_mTraceStatePointer;
@:dox(hide) class T_mTraceState_static_extension {

}
@:dox(hide) typedef T_pTraceStatePointer = stdgo._internal.runtime.Runtime_t_ptracestatepointer.T_pTraceStatePointer;
@:dox(hide) class T_pTraceState_static_extension {

}
@:dox(hide) typedef T_traceBufHeaderPointer = stdgo._internal.runtime.Runtime_t_tracebufheaderpointer.T_traceBufHeaderPointer;
@:dox(hide) class T_traceBufHeader_static_extension {

}
@:dox(hide) typedef T_traceBufPointer = stdgo._internal.runtime.Runtime_t_tracebufpointer.T_traceBufPointer;
@:dox(hide) class T_traceBuf_static_extension {

}
@:dox(hide) typedef T_traceStackTablePointer = stdgo._internal.runtime.Runtime_t_tracestacktablepointer.T_traceStackTablePointer;
@:dox(hide) class T_traceStackTable_static_extension {

}
@:dox(hide) typedef T_traceStackPointer = stdgo._internal.runtime.Runtime_t_tracestackpointer.T_traceStackPointer;
@:dox(hide) class T_traceStack_static_extension {

}
@:dox(hide) typedef T_traceFramePointer = stdgo._internal.runtime.Runtime_t_traceframepointer.T_traceFramePointer;
@:dox(hide) class T_traceFrame_static_extension {

}
@:dox(hide) typedef T_traceAllocPointer = stdgo._internal.runtime.Runtime_t_traceallocpointer.T_traceAllocPointer;
@:dox(hide) class T_traceAlloc_static_extension {

}
@:dox(hide) typedef T_traceAllocBlockPointer = stdgo._internal.runtime.Runtime_t_traceallocblockpointer.T_traceAllocBlockPointer;
@:dox(hide) class T_traceAllocBlock_static_extension {

}
@:dox(hide) typedef T_unwinderPointer = stdgo._internal.runtime.Runtime_t_unwinderpointer.T_unwinderPointer;
@:dox(hide) class T_unwinder_static_extension {

}
@:dox(hide) typedef T_cgoTracebackArgPointer = stdgo._internal.runtime.Runtime_t_cgotracebackargpointer.T_cgoTracebackArgPointer;
@:dox(hide) class T_cgoTracebackArg_static_extension {

}
@:dox(hide) typedef T_cgoContextArgPointer = stdgo._internal.runtime.Runtime_t_cgocontextargpointer.T_cgoContextArgPointer;
@:dox(hide) class T_cgoContextArg_static_extension {

}
@:dox(hide) typedef T_cgoSymbolizerArgPointer = stdgo._internal.runtime.Runtime_t_cgosymbolizerargpointer.T_cgoSymbolizerArgPointer;
@:dox(hide) class T_cgoSymbolizerArg_static_extension {

}
@:dox(hide) typedef T_rtypePointer = stdgo._internal.runtime.Runtime_t_rtypepointer.T_rtypePointer;
@:dox(hide) class T_rtype_static_extension {
    public static function uncommon(__self__:stdgo._internal.runtime.Runtime_t_rtype.T_rtype):stdgo._internal.internal.abi.Abi_uncommontype.UncommonType {
        return stdgo._internal.runtime.Runtime_t_rtype_static_extension.T_rtype_static_extension.uncommon(__self__);
    }
    public static function structType(__self__:stdgo._internal.runtime.Runtime_t_rtype.T_rtype):stdgo._internal.internal.abi.Abi_structtype.StructType {
        return stdgo._internal.runtime.Runtime_t_rtype_static_extension.T_rtype_static_extension.structType(__self__);
    }
    public static function size(__self__:stdgo._internal.runtime.Runtime_t_rtype.T_rtype):stdgo.GoUIntptr {
        return stdgo._internal.runtime.Runtime_t_rtype_static_extension.T_rtype_static_extension.size(__self__);
    }
    public static function pointers(__self__:stdgo._internal.runtime.Runtime_t_rtype.T_rtype):Bool {
        return stdgo._internal.runtime.Runtime_t_rtype_static_extension.T_rtype_static_extension.pointers(__self__);
    }
    public static function numMethod(__self__:stdgo._internal.runtime.Runtime_t_rtype.T_rtype):StdTypes.Int {
        return stdgo._internal.runtime.Runtime_t_rtype_static_extension.T_rtype_static_extension.numMethod(__self__);
    }
    public static function mapType(__self__:stdgo._internal.runtime.Runtime_t_rtype.T_rtype):stdgo._internal.internal.abi.Abi_maptype.MapType {
        return stdgo._internal.runtime.Runtime_t_rtype_static_extension.T_rtype_static_extension.mapType(__self__);
    }
    public static function len(__self__:stdgo._internal.runtime.Runtime_t_rtype.T_rtype):StdTypes.Int {
        return stdgo._internal.runtime.Runtime_t_rtype_static_extension.T_rtype_static_extension.len(__self__);
    }
    public static function kind(__self__:stdgo._internal.runtime.Runtime_t_rtype.T_rtype):stdgo._internal.internal.abi.Abi_kind.Kind {
        return stdgo._internal.runtime.Runtime_t_rtype_static_extension.T_rtype_static_extension.kind(__self__);
    }
    public static function key(__self__:stdgo._internal.runtime.Runtime_t_rtype.T_rtype):stdgo._internal.internal.abi.Abi_type_.Type_ {
        return stdgo._internal.runtime.Runtime_t_rtype_static_extension.T_rtype_static_extension.key(__self__);
    }
    public static function isDirectIface(__self__:stdgo._internal.runtime.Runtime_t_rtype.T_rtype):Bool {
        return stdgo._internal.runtime.Runtime_t_rtype_static_extension.T_rtype_static_extension.isDirectIface(__self__);
    }
    public static function interfaceType(__self__:stdgo._internal.runtime.Runtime_t_rtype.T_rtype):stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType {
        return stdgo._internal.runtime.Runtime_t_rtype_static_extension.T_rtype_static_extension.interfaceType(__self__);
    }
    public static function ifaceIndir(__self__:stdgo._internal.runtime.Runtime_t_rtype.T_rtype):Bool {
        return stdgo._internal.runtime.Runtime_t_rtype_static_extension.T_rtype_static_extension.ifaceIndir(__self__);
    }
    public static function hasName(__self__:stdgo._internal.runtime.Runtime_t_rtype.T_rtype):Bool {
        return stdgo._internal.runtime.Runtime_t_rtype_static_extension.T_rtype_static_extension.hasName(__self__);
    }
    public static function gcSlice(__self__:stdgo._internal.runtime.Runtime_t_rtype.T_rtype, _0:stdgo.GoUIntptr, _1:stdgo.GoUIntptr):Array<std.UInt> {
        final _0 = (_0 : stdgo.GoUIntptr);
        final _1 = (_1 : stdgo.GoUIntptr);
        return [for (i in stdgo._internal.runtime.Runtime_t_rtype_static_extension.T_rtype_static_extension.gcSlice(__self__, _0, _1)) i];
    }
    public static function funcType(__self__:stdgo._internal.runtime.Runtime_t_rtype.T_rtype):stdgo._internal.internal.abi.Abi_functype.FuncType {
        return stdgo._internal.runtime.Runtime_t_rtype_static_extension.T_rtype_static_extension.funcType(__self__);
    }
    public static function fieldAlign(__self__:stdgo._internal.runtime.Runtime_t_rtype.T_rtype):StdTypes.Int {
        return stdgo._internal.runtime.Runtime_t_rtype_static_extension.T_rtype_static_extension.fieldAlign(__self__);
    }
    public static function exportedMethods(__self__:stdgo._internal.runtime.Runtime_t_rtype.T_rtype):Array<stdgo._internal.internal.abi.Abi_method.Method> {
        return [for (i in stdgo._internal.runtime.Runtime_t_rtype_static_extension.T_rtype_static_extension.exportedMethods(__self__)) i];
    }
    public static function elem(__self__:stdgo._internal.runtime.Runtime_t_rtype.T_rtype):stdgo._internal.internal.abi.Abi_type_.Type_ {
        return stdgo._internal.runtime.Runtime_t_rtype_static_extension.T_rtype_static_extension.elem(__self__);
    }
    public static function common(__self__:stdgo._internal.runtime.Runtime_t_rtype.T_rtype):stdgo._internal.internal.abi.Abi_type_.Type_ {
        return stdgo._internal.runtime.Runtime_t_rtype_static_extension.T_rtype_static_extension.common(__self__);
    }
    public static function chanDir(__self__:stdgo._internal.runtime.Runtime_t_rtype.T_rtype):stdgo._internal.internal.abi.Abi_chandir.ChanDir {
        return stdgo._internal.runtime.Runtime_t_rtype_static_extension.T_rtype_static_extension.chanDir(__self__);
    }
    public static function arrayType(__self__:stdgo._internal.runtime.Runtime_t_rtype.T_rtype):stdgo._internal.internal.abi.Abi_arraytype.ArrayType {
        return stdgo._internal.runtime.Runtime_t_rtype_static_extension.T_rtype_static_extension.arrayType(__self__);
    }
    public static function align(__self__:stdgo._internal.runtime.Runtime_t_rtype.T_rtype):StdTypes.Int {
        return stdgo._internal.runtime.Runtime_t_rtype_static_extension.T_rtype_static_extension.align(__self__);
    }
}
@:dox(hide) typedef T__typePairPointer = stdgo._internal.runtime.Runtime_t__typepairpointer.T__typePairPointer;
@:dox(hide) class T__typePair_static_extension {

}
@:dox(hide) typedef T__struct_0PointerPointer = stdgo._internal.runtime.Runtime_t__struct_0pointerpointer.T__struct_0PointerPointer;
@:dox(hide) class T__struct_0Pointer_static_extension {

}
@:dox(hide) typedef T__struct_1PointerPointer = stdgo._internal.runtime.Runtime_t__struct_1pointerpointer.T__struct_1PointerPointer;
@:dox(hide) class T__struct_1Pointer_static_extension {

}
@:dox(hide) typedef T_cgoCallersPointer = stdgo._internal.runtime.Runtime_t_cgocallerspointer.T_cgoCallersPointer;
@:dox(hide) class T_cgoCallers_static_extension {

}
@:dox(hide) typedef T_errorStringPointer = stdgo._internal.runtime.Runtime_t_errorstringpointer.T_errorStringPointer;
@:dox(hide) class T_errorString_static_extension {
    static public function error(_e:T_errorString):String {
        return stdgo._internal.runtime.Runtime_t_errorstring_static_extension.T_errorString_static_extension.error(_e);
    }
    static public function runtimeError(_e:T_errorString):Void {
        stdgo._internal.runtime.Runtime_t_errorstring_static_extension.T_errorString_static_extension.runtimeError(_e);
    }
}
@:dox(hide) typedef T_plainErrorPointer = stdgo._internal.runtime.Runtime_t_plainerrorpointer.T_plainErrorPointer;
@:dox(hide) class T_plainError_static_extension {
    static public function error(_e:T_plainError):String {
        return stdgo._internal.runtime.Runtime_t_plainerror_static_extension.T_plainError_static_extension.error(_e);
    }
    static public function runtimeError(_e:T_plainError):Void {
        stdgo._internal.runtime.Runtime_t_plainerror_static_extension.T_plainError_static_extension.runtimeError(_e);
    }
}
@:dox(hide) typedef T_boundsErrorCodePointer = stdgo._internal.runtime.Runtime_t_boundserrorcodepointer.T_boundsErrorCodePointer;
@:dox(hide) class T_boundsErrorCode_static_extension {

}
typedef LockRankPointer = stdgo._internal.runtime.Runtime_lockrankpointer.LockRankPointer;
class LockRank_static_extension {
    static public function string(_l:LockRank):String {
        return stdgo._internal.runtime.Runtime_lockrank_static_extension.LockRank_static_extension.string(_l);
    }
}
typedef ProfBufPointer = stdgo._internal.runtime.Runtime_profbufpointer.ProfBufPointer;
class ProfBuf_static_extension {
    static public function close(_p:ProfBuf):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.runtime.Runtime_profbuf.ProfBuf>);
        stdgo._internal.runtime.Runtime_profbuf_static_extension.ProfBuf_static_extension.close(_p);
    }
    static public function read(_p:ProfBuf, _mode:T_profBufReadMode):stdgo.Tuple.Tuple3<Array<haxe.UInt64>, Array<stdgo._internal.unsafe.Unsafe.UnsafePointer>, Bool> {
        final _p = (_p : stdgo.Ref<stdgo._internal.runtime.Runtime_profbuf.ProfBuf>);
        return {
            final obj = stdgo._internal.runtime.Runtime_profbuf_static_extension.ProfBuf_static_extension.read(_p, _mode);
            { _0 : [for (i in obj._0) i], _1 : [for (i in obj._1) i], _2 : obj._2 };
        };
    }
    static public function write(_p:ProfBuf, _tag:stdgo.Pointer<stdgo._internal.unsafe.Unsafe.UnsafePointer>, _now:haxe.Int64, _hdr:Array<haxe.UInt64>, _stk:Array<stdgo.GoUIntptr>):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.runtime.Runtime_profbuf.ProfBuf>);
        final _now = (_now : stdgo.GoInt64);
        final _hdr = ([for (i in _hdr) (i : stdgo.GoUInt64)] : stdgo.Slice<stdgo.GoUInt64>);
        final _stk = ([for (i in _stk) (i : stdgo.GoUIntptr)] : stdgo.Slice<stdgo.GoUIntptr>);
        stdgo._internal.runtime.Runtime_profbuf_static_extension.ProfBuf_static_extension.write(_p, _tag, _now, _hdr, _stk);
    }
}
typedef GPointer = stdgo._internal.runtime.Runtime_gpointer.GPointer;
class G_static_extension {

}
typedef SudogPointer = stdgo._internal.runtime.Runtime_sudogpointer.SudogPointer;
class Sudog_static_extension {

}
typedef PallocSumPointer = stdgo._internal.runtime.Runtime_pallocsumpointer.PallocSumPointer;
class PallocSum_static_extension {
    static public function end(_m:PallocSum):std.UInt {
        return stdgo._internal.runtime.Runtime_pallocsum_static_extension.PallocSum_static_extension.end(_m);
    }
    static public function max(_m:PallocSum):std.UInt {
        return stdgo._internal.runtime.Runtime_pallocsum_static_extension.PallocSum_static_extension.max(_m);
    }
    static public function start(_m:PallocSum):std.UInt {
        return stdgo._internal.runtime.Runtime_pallocsum_static_extension.PallocSum_static_extension.start(_m);
    }
}
typedef PallocBitsPointer = stdgo._internal.runtime.Runtime_pallocbitspointer.PallocBitsPointer;
class PallocBits_static_extension {
    static public function popcntRange(_b:PallocBits, _i:std.UInt, _n:std.UInt):std.UInt {
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.Runtime_pallocbits.PallocBits>);
        final _i = (_i : stdgo.GoUInt);
        final _n = (_n : stdgo.GoUInt);
        return stdgo._internal.runtime.Runtime_pallocbits_static_extension.PallocBits_static_extension.popcntRange(_b, _i, _n);
    }
    static public function summarize(_b:PallocBits):PallocSum {
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.Runtime_pallocbits.PallocBits>);
        return stdgo._internal.runtime.Runtime_pallocbits_static_extension.PallocBits_static_extension.summarize(_b);
    }
    static public function free(_b:PallocBits, _i:std.UInt, _n:std.UInt):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.Runtime_pallocbits.PallocBits>);
        final _i = (_i : stdgo.GoUInt);
        final _n = (_n : stdgo.GoUInt);
        stdgo._internal.runtime.Runtime_pallocbits_static_extension.PallocBits_static_extension.free(_b, _i, _n);
    }
    static public function allocRange(_b:PallocBits, _i:std.UInt, _n:std.UInt):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.Runtime_pallocbits.PallocBits>);
        final _i = (_i : stdgo.GoUInt);
        final _n = (_n : stdgo.GoUInt);
        stdgo._internal.runtime.Runtime_pallocbits_static_extension.PallocBits_static_extension.allocRange(_b, _i, _n);
    }
    static public function find(_b:PallocBits, _npages:stdgo.GoUIntptr, _searchIdx:std.UInt):stdgo.Tuple<std.UInt, std.UInt> {
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.Runtime_pallocbits.PallocBits>);
        final _npages = (_npages : stdgo.GoUIntptr);
        final _searchIdx = (_searchIdx : stdgo.GoUInt);
        return {
            final obj = stdgo._internal.runtime.Runtime_pallocbits_static_extension.PallocBits_static_extension.find(_b, _npages, _searchIdx);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef PallocDataPointer = stdgo._internal.runtime.Runtime_pallocdatapointer.PallocDataPointer;
class PallocData_static_extension {
    static public function scavenged(_d:PallocData):PallocBits {
        final _d = (_d : stdgo.Ref<stdgo._internal.runtime.Runtime_pallocdata.PallocData>);
        return stdgo._internal.runtime.Runtime_pallocdata_static_extension.PallocData_static_extension.scavenged(_d);
    }
    static public function pallocBits(_d:PallocData):PallocBits {
        final _d = (_d : stdgo.Ref<stdgo._internal.runtime.Runtime_pallocdata.PallocData>);
        return stdgo._internal.runtime.Runtime_pallocdata_static_extension.PallocData_static_extension.pallocBits(_d);
    }
    static public function scavengedSetRange(_d:PallocData, _i:std.UInt, _n:std.UInt):Void {
        final _d = (_d : stdgo.Ref<stdgo._internal.runtime.Runtime_pallocdata.PallocData>);
        final _i = (_i : stdgo.GoUInt);
        final _n = (_n : stdgo.GoUInt);
        stdgo._internal.runtime.Runtime_pallocdata_static_extension.PallocData_static_extension.scavengedSetRange(_d, _i, _n);
    }
    static public function allocRange(_d:PallocData, _i:std.UInt, _n:std.UInt):Void {
        final _d = (_d : stdgo.Ref<stdgo._internal.runtime.Runtime_pallocdata.PallocData>);
        final _i = (_i : stdgo.GoUInt);
        final _n = (_n : stdgo.GoUInt);
        stdgo._internal.runtime.Runtime_pallocdata_static_extension.PallocData_static_extension.allocRange(_d, _i, _n);
    }
    static public function findScavengeCandidate(_d:PallocData, _searchIdx:std.UInt, _min:stdgo.GoUIntptr, _max:stdgo.GoUIntptr):stdgo.Tuple<std.UInt, std.UInt> {
        final _d = (_d : stdgo.Ref<stdgo._internal.runtime.Runtime_pallocdata.PallocData>);
        final _searchIdx = (_searchIdx : stdgo.GoUInt);
        final _min = (_min : stdgo.GoUIntptr);
        final _max = (_max : stdgo.GoUIntptr);
        return {
            final obj = stdgo._internal.runtime.Runtime_pallocdata_static_extension.PallocData_static_extension.findScavengeCandidate(_d, _searchIdx, _min, _max);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef PageCachePointer = stdgo._internal.runtime.Runtime_pagecachepointer.PageCachePointer;
class PageCache_static_extension {
    static public function flush(_c:PageCache, _s:PageAlloc):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.runtime.Runtime_pagecache.PageCache>);
        final _s = (_s : stdgo.Ref<stdgo._internal.runtime.Runtime_pagealloc.PageAlloc>);
        stdgo._internal.runtime.Runtime_pagecache_static_extension.PageCache_static_extension.flush(_c, _s);
    }
    static public function alloc(_c:PageCache, _npages:stdgo.GoUIntptr):stdgo.Tuple<stdgo.GoUIntptr, stdgo.GoUIntptr> {
        final _c = (_c : stdgo.Ref<stdgo._internal.runtime.Runtime_pagecache.PageCache>);
        final _npages = (_npages : stdgo.GoUIntptr);
        return {
            final obj = stdgo._internal.runtime.Runtime_pagecache_static_extension.PageCache_static_extension.alloc(_c, _npages);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function scav(_c:PageCache):haxe.UInt64 {
        final _c = (_c : stdgo.Ref<stdgo._internal.runtime.Runtime_pagecache.PageCache>);
        return stdgo._internal.runtime.Runtime_pagecache_static_extension.PageCache_static_extension.scav(_c);
    }
    static public function cache(_c:PageCache):haxe.UInt64 {
        final _c = (_c : stdgo.Ref<stdgo._internal.runtime.Runtime_pagecache.PageCache>);
        return stdgo._internal.runtime.Runtime_pagecache_static_extension.PageCache_static_extension.cache(_c);
    }
    static public function base(_c:PageCache):stdgo.GoUIntptr {
        final _c = (_c : stdgo.Ref<stdgo._internal.runtime.Runtime_pagecache.PageCache>);
        return stdgo._internal.runtime.Runtime_pagecache_static_extension.PageCache_static_extension.base(_c);
    }
    static public function empty(_c:PageCache):Bool {
        final _c = (_c : stdgo.Ref<stdgo._internal.runtime.Runtime_pagecache.PageCache>);
        return stdgo._internal.runtime.Runtime_pagecache_static_extension.PageCache_static_extension.empty(_c);
    }
}
typedef ChunkIdxPointer = stdgo._internal.runtime.Runtime_chunkidxpointer.ChunkIdxPointer;
class ChunkIdx_static_extension {

}
typedef PageAllocPointer = stdgo._internal.runtime.Runtime_pageallocpointer.PageAllocPointer;
class PageAlloc_static_extension {
    static public function pallocData(_p:PageAlloc, _i:ChunkIdx):PallocData {
        final _p = (_p : stdgo.Ref<stdgo._internal.runtime.Runtime_pagealloc.PageAlloc>);
        return stdgo._internal.runtime.Runtime_pagealloc_static_extension.PageAlloc_static_extension.pallocData(_p, _i);
    }
    static public function inUse(_p:PageAlloc):Array<AddrRange> {
        final _p = (_p : stdgo.Ref<stdgo._internal.runtime.Runtime_pagealloc.PageAlloc>);
        return [for (i in stdgo._internal.runtime.Runtime_pagealloc_static_extension.PageAlloc_static_extension.inUse(_p)) i];
    }
    static public function scavenge(_p:PageAlloc, _nbytes:stdgo.GoUIntptr):stdgo.GoUIntptr {
        final _p = (_p : stdgo.Ref<stdgo._internal.runtime.Runtime_pagealloc.PageAlloc>);
        final _nbytes = (_nbytes : stdgo.GoUIntptr);
        return stdgo._internal.runtime.Runtime_pagealloc_static_extension.PageAlloc_static_extension.scavenge(_p, _nbytes);
    }
    static public function bounds(_p:PageAlloc):stdgo.Tuple<ChunkIdx, ChunkIdx> {
        final _p = (_p : stdgo.Ref<stdgo._internal.runtime.Runtime_pagealloc.PageAlloc>);
        return {
            final obj = stdgo._internal.runtime.Runtime_pagealloc_static_extension.PageAlloc_static_extension.bounds(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function free(_p:PageAlloc, _base:stdgo.GoUIntptr, _npages:stdgo.GoUIntptr):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.runtime.Runtime_pagealloc.PageAlloc>);
        final _base = (_base : stdgo.GoUIntptr);
        final _npages = (_npages : stdgo.GoUIntptr);
        stdgo._internal.runtime.Runtime_pagealloc_static_extension.PageAlloc_static_extension.free(_p, _base, _npages);
    }
    static public function allocToCache(_p:PageAlloc):PageCache {
        final _p = (_p : stdgo.Ref<stdgo._internal.runtime.Runtime_pagealloc.PageAlloc>);
        return stdgo._internal.runtime.Runtime_pagealloc_static_extension.PageAlloc_static_extension.allocToCache(_p);
    }
    static public function alloc(_p:PageAlloc, _npages:stdgo.GoUIntptr):stdgo.Tuple<stdgo.GoUIntptr, stdgo.GoUIntptr> {
        final _p = (_p : stdgo.Ref<stdgo._internal.runtime.Runtime_pagealloc.PageAlloc>);
        final _npages = (_npages : stdgo.GoUIntptr);
        return {
            final obj = stdgo._internal.runtime.Runtime_pagealloc_static_extension.PageAlloc_static_extension.alloc(_p, _npages);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef MSpanPointer = stdgo._internal.runtime.Runtime_mspanpointer.MSpanPointer;
class MSpan_static_extension {

}
typedef TimeHistogramPointer = stdgo._internal.runtime.Runtime_timehistogrampointer.TimeHistogramPointer;
class TimeHistogram_static_extension {
    static public function record(_th:TimeHistogram, _duration:haxe.Int64):Void {
        final _th = (_th : stdgo.Ref<stdgo._internal.runtime.Runtime_timehistogram.TimeHistogram>);
        final _duration = (_duration : stdgo.GoInt64);
        stdgo._internal.runtime.Runtime_timehistogram_static_extension.TimeHistogram_static_extension.record(_th, _duration);
    }
    static public function count(_th:TimeHistogram, _bucket:StdTypes.Int, _subBucket:StdTypes.Int):stdgo.Tuple<haxe.UInt64, Bool> {
        final _th = (_th : stdgo.Ref<stdgo._internal.runtime.Runtime_timehistogram.TimeHistogram>);
        final _bucket = (_bucket : stdgo.GoInt);
        final _subBucket = (_subBucket : stdgo.GoInt);
        return {
            final obj = stdgo._internal.runtime.Runtime_timehistogram_static_extension.TimeHistogram_static_extension.count(_th, _bucket, _subBucket);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_uint16InterfacePtrPointer = stdgo._internal.runtime.Runtime_t_uint16interfaceptrpointer.T_uint16InterfacePtrPointer;
@:dox(hide) class T_uint16InterfacePtr_static_extension {

}
@:dox(hide) typedef T_uint32InterfacePtrPointer = stdgo._internal.runtime.Runtime_t_uint32interfaceptrpointer.T_uint32InterfacePtrPointer;
@:dox(hide) class T_uint32InterfacePtr_static_extension {

}
@:dox(hide) typedef T_uint64InterfacePtrPointer = stdgo._internal.runtime.Runtime_t_uint64interfaceptrpointer.T_uint64InterfacePtrPointer;
@:dox(hide) class T_uint64InterfacePtr_static_extension {

}
@:dox(hide) typedef T_stringInterfacePtrPointer = stdgo._internal.runtime.Runtime_t_stringinterfaceptrpointer.T_stringInterfacePtrPointer;
@:dox(hide) class T_stringInterfacePtr_static_extension {

}
@:dox(hide) typedef T_sliceInterfacePtrPointer = stdgo._internal.runtime.Runtime_t_sliceinterfaceptrpointer.T_sliceInterfacePtrPointer;
@:dox(hide) class T_sliceInterfacePtr_static_extension {

}
@:dox(hide) typedef T_lfstackPointer = stdgo._internal.runtime.Runtime_t_lfstackpointer.T_lfstackPointer;
@:dox(hide) class T_lfstack_static_extension {

}
@:dox(hide) typedef T_lockRankPointer = stdgo._internal.runtime.Runtime_t_lockrankpointer.T_lockRankPointer;
@:dox(hide) class T_lockRank_static_extension {
    static public function string(_rank:T_lockRank):String {
        return stdgo._internal.runtime.Runtime_t_lockrank_static_extension.T_lockRank_static_extension.string(_rank);
    }
}
@:dox(hide) typedef T_gclinkptrPointer = stdgo._internal.runtime.Runtime_t_gclinkptrpointer.T_gclinkptrPointer;
@:dox(hide) class T_gclinkptr_static_extension {

}
@:dox(hide) typedef T_memHdrPtrPointer = stdgo._internal.runtime.Runtime_t_memhdrptrpointer.T_memHdrPtrPointer;
@:dox(hide) class T_memHdrPtr_static_extension {

}
@:dox(hide) typedef T_metricReaderPointer = stdgo._internal.runtime.Runtime_t_metricreaderpointer.T_metricReaderPointer;
@:dox(hide) class T_metricReader_static_extension {

}
@:dox(hide) typedef T_statDepPointer = stdgo._internal.runtime.Runtime_t_statdeppointer.T_statDepPointer;
@:dox(hide) class T_statDep_static_extension {

}
@:dox(hide) typedef T_statDepSetPointer = stdgo._internal.runtime.Runtime_t_statdepsetpointer.T_statDepSetPointer;
@:dox(hide) class T_statDepSet_static_extension {

}
@:dox(hide) typedef T_metricKindPointer = stdgo._internal.runtime.Runtime_t_metrickindpointer.T_metricKindPointer;
@:dox(hide) class T_metricKind_static_extension {

}
@:dox(hide) typedef T_gcMarkWorkerModePointer = stdgo._internal.runtime.Runtime_t_gcmarkworkermodepointer.T_gcMarkWorkerModePointer;
@:dox(hide) class T_gcMarkWorkerMode_static_extension {

}
@:dox(hide) typedef T_gcModePointer = stdgo._internal.runtime.Runtime_t_gcmodepointer.T_gcModePointer;
@:dox(hide) class T_gcMode_static_extension {

}
@:dox(hide) typedef T_gcTriggerKindPointer = stdgo._internal.runtime.Runtime_t_gctriggerkindpointer.T_gcTriggerKindPointer;
@:dox(hide) class T_gcTriggerKind_static_extension {

}
@:dox(hide) typedef T_limiterEventTypePointer = stdgo._internal.runtime.Runtime_t_limitereventtypepointer.T_limiterEventTypePointer;
@:dox(hide) class T_limiterEventType_static_extension {

}
@:dox(hide) typedef T_limiterEventStampPointer = stdgo._internal.runtime.Runtime_t_limitereventstamppointer.T_limiterEventStampPointer;
@:dox(hide) class T_limiterEventStamp_static_extension {

}
@:dox(hide) typedef T_gcDrainFlagsPointer = stdgo._internal.runtime.Runtime_t_gcdrainflagspointer.T_gcDrainFlagsPointer;
@:dox(hide) class T_gcDrainFlags_static_extension {

}
@:dox(hide) typedef T_scavChunkFlagsPointer = stdgo._internal.runtime.Runtime_t_scavchunkflagspointer.T_scavChunkFlagsPointer;
@:dox(hide) class T_scavChunkFlags_static_extension {

}
@:dox(hide) typedef T_sweepClassPointer = stdgo._internal.runtime.Runtime_t_sweepclasspointer.T_sweepClassPointer;
@:dox(hide) class T_sweepClass_static_extension {

}
@:dox(hide) typedef T_mSpanStatePointer = stdgo._internal.runtime.Runtime_t_mspanstatepointer.T_mSpanStatePointer;
@:dox(hide) class T_mSpanState_static_extension {

}
@:dox(hide) typedef T_spanClassPointer = stdgo._internal.runtime.Runtime_t_spanclasspointer.T_spanClassPointer;
@:dox(hide) class T_spanClass_static_extension {

}
@:dox(hide) typedef T_arenaIdxPointer = stdgo._internal.runtime.Runtime_t_arenaidxpointer.T_arenaIdxPointer;
@:dox(hide) class T_arenaIdx_static_extension {

}
@:dox(hide) typedef T_spanAllocTypePointer = stdgo._internal.runtime.Runtime_t_spanalloctypepointer.T_spanAllocTypePointer;
@:dox(hide) class T_spanAllocType_static_extension {

}
@:dox(hide) typedef T_chunkIdxPointer = stdgo._internal.runtime.Runtime_t_chunkidxpointer.T_chunkIdxPointer;
@:dox(hide) class T_chunkIdx_static_extension {

}
@:dox(hide) typedef T_pallocSumPointer = stdgo._internal.runtime.Runtime_t_pallocsumpointer.T_pallocSumPointer;
@:dox(hide) class T_pallocSum_static_extension {

}
@:dox(hide) typedef T_pageBitsPointer = stdgo._internal.runtime.Runtime_t_pagebitspointer.T_pageBitsPointer;
@:dox(hide) class T_pageBits_static_extension {

}
@:dox(hide) typedef T_pallocBitsPointer = stdgo._internal.runtime.Runtime_t_pallocbitspointer.T_pallocBitsPointer;
@:dox(hide) class T_pallocBits_static_extension {

}
@:dox(hide) typedef T_bucketTypePointer = stdgo._internal.runtime.Runtime_t_buckettypepointer.T_bucketTypePointer;
@:dox(hide) class T_bucketType_static_extension {

}
@:dox(hide) typedef T_buckhashArrayPointer = stdgo._internal.runtime.Runtime_t_buckhasharraypointer.T_buckhashArrayPointer;
@:dox(hide) class T_buckhashArray_static_extension {

}
@:dox(hide) typedef T_goroutineProfileStatePointer = stdgo._internal.runtime.Runtime_t_goroutineprofilestatepointer.T_goroutineProfileStatePointer;
@:dox(hide) class T_goroutineProfileState_static_extension {

}
@:dox(hide) typedef T_goroutineProfileStateHolderPointer = stdgo._internal.runtime.Runtime_t_goroutineprofilestateholderpointer.T_goroutineProfileStateHolderPointer;
@:dox(hide) class T_goroutineProfileStateHolder_static_extension {
    static public function compareAndSwap(_p:T_goroutineProfileStateHolder, _old:T_goroutineProfileState, _new_:T_goroutineProfileState):Bool {
        final _p = (_p : stdgo.Ref<stdgo._internal.runtime.Runtime_t_goroutineprofilestateholder.T_goroutineProfileStateHolder>);
        return stdgo._internal.runtime.Runtime_t_goroutineprofilestateholder_static_extension.T_goroutineProfileStateHolder_static_extension.compareAndSwap(_p, _old, _new_);
    }
    static public function store(_p:T_goroutineProfileStateHolder, _value:T_goroutineProfileState):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.runtime.Runtime_t_goroutineprofilestateholder.T_goroutineProfileStateHolder>);
        stdgo._internal.runtime.Runtime_t_goroutineprofilestateholder_static_extension.T_goroutineProfileStateHolder_static_extension.store(_p, _value);
    }
    static public function load(_p:T_goroutineProfileStateHolder):T_goroutineProfileState {
        final _p = (_p : stdgo.Ref<stdgo._internal.runtime.Runtime_t_goroutineprofilestateholder.T_goroutineProfileStateHolder>);
        return stdgo._internal.runtime.Runtime_t_goroutineprofilestateholder_static_extension.T_goroutineProfileStateHolder_static_extension.load(_p);
    }
}
@:dox(hide) typedef T_headTailIndexPointer = stdgo._internal.runtime.Runtime_t_headtailindexpointer.T_headTailIndexPointer;
@:dox(hide) class T_headTailIndex_static_extension {

}
@:dox(hide) typedef T_sysMemStatPointer = stdgo._internal.runtime.Runtime_t_sysmemstatpointer.T_sysMemStatPointer;
@:dox(hide) class T_sysMemStat_static_extension {

}
@:dox(hide) typedef T_pollInfoPointer = stdgo._internal.runtime.Runtime_t_pollinfopointer.T_pollInfoPointer;
@:dox(hide) class T_pollInfo_static_extension {

}
@:dox(hide) typedef T_throwTypePointer = stdgo._internal.runtime.Runtime_t_throwtypepointer.T_throwTypePointer;
@:dox(hide) class T_throwType_static_extension {

}
@:dox(hide) typedef T_pinnerBitsPointer = stdgo._internal.runtime.Runtime_t_pinnerbitspointer.T_pinnerBitsPointer;
@:dox(hide) class T_pinnerBits_static_extension {

}
@:dox(hide) typedef T_hexPointer = stdgo._internal.runtime.Runtime_t_hexpointer.T_hexPointer;
@:dox(hide) class T_hex_static_extension {

}
@:dox(hide) typedef T_stwReasonPointer = stdgo._internal.runtime.Runtime_t_stwreasonpointer.T_stwReasonPointer;
@:dox(hide) class T_stwReason_static_extension {
    static public function string(_r:T_stwReason):String {
        return stdgo._internal.runtime.Runtime_t_stwreason_static_extension.T_stwReason_static_extension.string(_r);
    }
}
@:dox(hide) typedef T_pMaskPointer = stdgo._internal.runtime.Runtime_t_pmaskpointer.T_pMaskPointer;
@:dox(hide) class T_pMask_static_extension {

}
@:dox(hide) typedef T_profAtomicPointer = stdgo._internal.runtime.Runtime_t_profatomicpointer.T_profAtomicPointer;
@:dox(hide) class T_profAtomic_static_extension {

}
@:dox(hide) typedef T_profIndexPointer = stdgo._internal.runtime.Runtime_t_profindexpointer.T_profIndexPointer;
@:dox(hide) class T_profIndex_static_extension {

}
@:dox(hide) typedef T_profBufReadModePointer = stdgo._internal.runtime.Runtime_t_profbufreadmodepointer.T_profBufReadModePointer;
@:dox(hide) class T_profBufReadMode_static_extension {

}
@:dox(hide) typedef T_guintptrPointer = stdgo._internal.runtime.Runtime_t_guintptrpointer.T_guintptrPointer;
@:dox(hide) class T_guintptr_static_extension {

}
@:dox(hide) typedef T_puintptrPointer = stdgo._internal.runtime.Runtime_t_puintptrpointer.T_puintptrPointer;
@:dox(hide) class T_puintptr_static_extension {

}
@:dox(hide) typedef T_muintptrPointer = stdgo._internal.runtime.Runtime_t_muintptrpointer.T_muintptrPointer;
@:dox(hide) class T_muintptr_static_extension {

}
@:dox(hide) typedef T_waitReasonPointer = stdgo._internal.runtime.Runtime_t_waitreasonpointer.T_waitReasonPointer;
@:dox(hide) class T_waitReason_static_extension {
    static public function string(_w:T_waitReason):String {
        return stdgo._internal.runtime.Runtime_t_waitreason_static_extension.T_waitReason_static_extension.string(_w);
    }
}
@:dox(hide) typedef T_selectDirPointer = stdgo._internal.runtime.Runtime_t_selectdirpointer.T_selectDirPointer;
@:dox(hide) class T_selectDir_static_extension {

}
@:dox(hide) typedef T_semTablePointer = stdgo._internal.runtime.Runtime_t_semtablepointer.T_semTablePointer;
@:dox(hide) class T_semTable_static_extension {

}
@:dox(hide) typedef T_semaProfileFlagsPointer = stdgo._internal.runtime.Runtime_t_semaprofileflagspointer.T_semaProfileFlagsPointer;
@:dox(hide) class T_semaProfileFlags_static_extension {

}
@:dox(hide) typedef T_tmpBufPointer = stdgo._internal.runtime.Runtime_t_tmpbufpointer.T_tmpBufPointer;
@:dox(hide) class T_tmpBuf_static_extension {

}
@:dox(hide) typedef T_taggedPointerPointer = stdgo._internal.runtime.Runtime_t_taggedpointerpointer.T_taggedPointerPointer;
@:dox(hide) class T_taggedPointer_static_extension {

}
@:dox(hide) typedef T_traceBlockReasonPointer = stdgo._internal.runtime.Runtime_t_traceblockreasonpointer.T_traceBlockReasonPointer;
@:dox(hide) class T_traceBlockReason_static_extension {

}
@:dox(hide) typedef T_traceBufPtrPointer = stdgo._internal.runtime.Runtime_t_tracebufptrpointer.T_traceBufPtrPointer;
@:dox(hide) class T_traceBufPtr_static_extension {

}
@:dox(hide) typedef T_traceStackPtrPointer = stdgo._internal.runtime.Runtime_t_tracestackptrpointer.T_traceStackPtrPointer;
@:dox(hide) class T_traceStackPtr_static_extension {

}
@:dox(hide) typedef T_traceAllocBlockPtrPointer = stdgo._internal.runtime.Runtime_t_traceallocblockptrpointer.T_traceAllocBlockPtrPointer;
@:dox(hide) class T_traceAllocBlockPtr_static_extension {

}
@:dox(hide) typedef T_traceTimePointer = stdgo._internal.runtime.Runtime_t_tracetimepointer.T_traceTimePointer;
@:dox(hide) class T_traceTime_static_extension {

}
@:dox(hide) typedef T_unwindFlagsPointer = stdgo._internal.runtime.Runtime_t_unwindflagspointer.T_unwindFlagsPointer;
@:dox(hide) class T_unwindFlags_static_extension {

}
@:dox(hide) typedef T_nameOffPointer = stdgo._internal.runtime.Runtime_t_nameoffpointer.T_nameOffPointer;
@:dox(hide) class T_nameOff_static_extension {

}
@:dox(hide) typedef T_typeOffPointer = stdgo._internal.runtime.Runtime_t_typeoffpointer.T_typeOffPointer;
@:dox(hide) class T_typeOff_static_extension {

}
@:dox(hide) typedef T_textOffPointer = stdgo._internal.runtime.Runtime_t_textoffpointer.T_textOffPointer;
@:dox(hide) class T_textOff_static_extension {

}
@:dox(hide) typedef T__typePointer = stdgo._internal.runtime.Runtime_t__typepointer.T__typePointer;
@:dox(hide) class T__type_static_extension {

}
@:dox(hide) typedef T_uncommontypePointer = stdgo._internal.runtime.Runtime_t_uncommontypepointer.T_uncommontypePointer;
@:dox(hide) class T_uncommontype_static_extension {

}
@:dox(hide) typedef T_interfacetypePointer = stdgo._internal.runtime.Runtime_t_interfacetypepointer.T_interfacetypePointer;
@:dox(hide) class T_interfacetype_static_extension {

}
@:dox(hide) typedef T_maptypePointer = stdgo._internal.runtime.Runtime_t_maptypepointer.T_maptypePointer;
@:dox(hide) class T_maptype_static_extension {

}
@:dox(hide) typedef T_arraytypePointer = stdgo._internal.runtime.Runtime_t_arraytypepointer.T_arraytypePointer;
@:dox(hide) class T_arraytype_static_extension {

}
@:dox(hide) typedef T_chantypePointer = stdgo._internal.runtime.Runtime_t_chantypepointer.T_chantypePointer;
@:dox(hide) class T_chantype_static_extension {

}
@:dox(hide) typedef T_slicetypePointer = stdgo._internal.runtime.Runtime_t_slicetypepointer.T_slicetypePointer;
@:dox(hide) class T_slicetype_static_extension {

}
@:dox(hide) typedef T_functypePointer = stdgo._internal.runtime.Runtime_t_functypepointer.T_functypePointer;
@:dox(hide) class T_functype_static_extension {

}
@:dox(hide) typedef T_ptrtypePointer = stdgo._internal.runtime.Runtime_t_ptrtypepointer.T_ptrtypePointer;
@:dox(hide) class T_ptrtype_static_extension {

}
@:dox(hide) typedef T_namePointer = stdgo._internal.runtime.Runtime_t_namepointer.T_namePointer;
@:dox(hide) class T_name_static_extension {

}
@:dox(hide) typedef T_structtypePointer = stdgo._internal.runtime.Runtime_t_structtypepointer.T_structtypePointer;
@:dox(hide) class T_structtype_static_extension {

}
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
    static public inline function setCPUProfileRate(_hz:StdTypes.Int):Void {
        final _hz = (_hz : stdgo.GoInt);
        stdgo._internal.runtime.Runtime_setcpuprofilerate.setCPUProfileRate(_hz);
    }
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
    static public inline function cPUProfile():Array<std.UInt> {
        return [for (i in stdgo._internal.runtime.Runtime_cpuprofile.cPUProfile()) i];
    }
    /**
        * GOMAXPROCS sets the maximum number of CPUs that can be executing
        * simultaneously and returns the previous setting. It defaults to
        * the value of runtime.NumCPU. If n < 1, it does not change the current setting.
        * This call will go away when the scheduler improves.
    **/
    static public inline function gOMAXPROCS(_n:StdTypes.Int):StdTypes.Int {
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.runtime.Runtime_gomaxprocs.gOMAXPROCS(_n);
    }
    /**
        * NumCPU returns the number of logical CPUs usable by the current process.
        * 
        * The set of available CPUs is checked by querying the operating system
        * at process startup. Changes to operating system CPU allocation after
        * process startup are not reflected.
    **/
    static public inline function numCPU():StdTypes.Int {
        return stdgo._internal.runtime.Runtime_numcpu.numCPU();
    }
    /**
        * NumCgoCall returns the number of cgo calls made by the current process.
    **/
    static public inline function numCgoCall():haxe.Int64 {
        return stdgo._internal.runtime.Runtime_numcgocall.numCgoCall();
    }
    /**
        * NumGoroutine returns the number of goroutines that currently exist.
    **/
    static public inline function numGoroutine():StdTypes.Int {
        return stdgo._internal.runtime.Runtime_numgoroutine.numGoroutine();
    }
    static public inline function dumpDebugLog():String {
        return stdgo._internal.runtime.Runtime_dumpdebuglog.dumpDebugLog();
    }
    static public inline function resetDebugLog():Void {
        stdgo._internal.runtime.Runtime_resetdebuglog.resetDebugLog();
    }
    static public inline function lFStackPush(_head:stdgo.Pointer<haxe.UInt64>, _node:LFNode):Void {
        final _node = (_node : stdgo.Ref<stdgo._internal.runtime.Runtime_lfnode.LFNode>);
        stdgo._internal.runtime.Runtime_lfstackpush.lFStackPush(_head, _node);
    }
    static public inline function lFStackPop(_head:stdgo.Pointer<haxe.UInt64>):LFNode {
        return stdgo._internal.runtime.Runtime_lfstackpop.lFStackPop(_head);
    }
    static public inline function lFNodeValidate(_node:LFNode):Void {
        final _node = (_node : stdgo.Ref<stdgo._internal.runtime.Runtime_lfnode.LFNode>);
        stdgo._internal.runtime.Runtime_lfnodevalidate.lFNodeValidate(_node);
    }
    static public inline function netpoll(_delta:haxe.Int64):Void {
        final _delta = (_delta : stdgo.GoInt64);
        stdgo._internal.runtime.Runtime_netpoll.netpoll(_delta);
    }
    static public inline function gCMask(_x:stdgo.AnyInterface):Array<std.UInt> {
        final _x = (_x : stdgo.AnyInterface);
        return [for (i in stdgo._internal.runtime.Runtime_gcmask.gCMask(_x)) i];
    }
    static public inline function runSchedLocalQueueTest():Void {
        stdgo._internal.runtime.Runtime_runschedlocalqueuetest.runSchedLocalQueueTest();
    }
    static public inline function runSchedLocalQueueStealTest():Void {
        stdgo._internal.runtime.Runtime_runschedlocalqueuestealtest.runSchedLocalQueueStealTest();
    }
    static public inline function runSchedLocalQueueEmptyTest(_iters:StdTypes.Int):Void {
        final _iters = (_iters : stdgo.GoInt);
        stdgo._internal.runtime.Runtime_runschedlocalqueueemptytest.runSchedLocalQueueEmptyTest(_iters);
    }
    static public inline function memclrBytes(_b:Array<std.UInt>):Void {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.runtime.Runtime_memclrbytes.memclrBytes(_b);
    }
    /**
        * entry point for testing
    **/
    static public inline function gostringW(_w:Array<std.UInt>):String {
        final _w = ([for (i in _w) (i : stdgo.GoUInt16)] : stdgo.Slice<stdgo.GoUInt16>);
        return stdgo._internal.runtime.Runtime_gostringw.gostringW(_w);
    }
    static public inline function envs():Array<String> {
        return [for (i in stdgo._internal.runtime.Runtime_envs.envs()) i];
    }
    static public inline function setEnvs(_e:Array<String>):Void {
        final _e = ([for (i in _e) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        stdgo._internal.runtime.Runtime_setenvs.setEnvs(_e);
    }
    static public inline function benchSetType(_n:StdTypes.Int, _resetTimer:() -> Void):Void {
        final _n = (_n : stdgo.GoInt);
        final _resetTimer = _resetTimer;
        stdgo._internal.runtime.Runtime_benchsettype.benchSetType(_n, _resetTimer);
    }
    static public inline function benchSetTypeSlice(_n:StdTypes.Int, _resetTimer:() -> Void, _len:StdTypes.Int):Void {
        final _n = (_n : stdgo.GoInt);
        final _resetTimer = _resetTimer;
        final _len = (_len : stdgo.GoInt);
        stdgo._internal.runtime.Runtime_benchsettypeslice.benchSetTypeSlice(_n, _resetTimer, _len);
    }
    /**
        * SetTracebackEnv is like runtime/debug.SetTraceback, but it raises
        * the "environment" traceback level, so later calls to
        * debug.SetTraceback (e.g., from testing timeouts) can't lower it.
    **/
    static public inline function setTracebackEnv(_level:String):Void {
        final _level = (_level : stdgo.GoString);
        stdgo._internal.runtime.Runtime_settracebackenv.setTracebackEnv(_level);
    }
    static public inline function countPagesInUse():stdgo.Tuple<stdgo.GoUIntptr, stdgo.GoUIntptr> {
        return {
            final obj = stdgo._internal.runtime.Runtime_countpagesinuse.countPagesInUse();
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function fastrand():std.UInt {
        return stdgo._internal.runtime.Runtime_fastrand.fastrand();
    }
    static public inline function fastrand64():haxe.UInt64 {
        return stdgo._internal.runtime.Runtime_fastrand64.fastrand64();
    }
    static public inline function fastrandn(_n:std.UInt):std.UInt {
        final _n = (_n : stdgo.GoUInt32);
        return stdgo._internal.runtime.Runtime_fastrandn.fastrandn(_n);
    }
    static public inline function newProfBuf(_hdrsize:StdTypes.Int, _bufwords:StdTypes.Int, _tags:StdTypes.Int):ProfBuf {
        final _hdrsize = (_hdrsize : stdgo.GoInt);
        final _bufwords = (_bufwords : stdgo.GoInt);
        final _tags = (_tags : stdgo.GoInt);
        return stdgo._internal.runtime.Runtime_newprofbuf.newProfBuf(_hdrsize, _bufwords, _tags);
    }
    static public inline function readMetricsSlow(_memStats:MemStats, _samplesp:stdgo._internal.unsafe.Unsafe.UnsafePointer, _len:StdTypes.Int, _cap:StdTypes.Int):Void {
        final _memStats = (_memStats : stdgo.Ref<stdgo._internal.runtime.Runtime_memstats.MemStats>);
        final _len = (_len : stdgo.GoInt);
        final _cap = (_cap : stdgo.GoInt);
        stdgo._internal.runtime.Runtime_readmetricsslow.readMetricsSlow(_memStats, _samplesp, _len, _cap);
    }
    /**
        * ReadMemStatsSlow returns both the runtime-computed MemStats and
        * MemStats accumulated by scanning the heap.
    **/
    static public inline function readMemStatsSlow():stdgo.Tuple<MemStats, MemStats> {
        return {
            final obj = stdgo._internal.runtime.Runtime_readmemstatsslow.readMemStatsSlow();
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * ShrinkStackAndVerifyFramePointers attempts to shrink the stack of the current goroutine
        * and verifies that unwinding the new stack doesn't crash, even if the old
        * stack has been freed or reused (simulated via poisoning).
    **/
    static public inline function shrinkStackAndVerifyFramePointers():Void {
        stdgo._internal.runtime.Runtime_shrinkstackandverifyframepointers.shrinkStackAndVerifyFramePointers();
    }
    /**
        * BlockOnSystemStack switches to the system stack, prints "x\n" to
        * stderr, and blocks in a stack containing
        * "runtime.blockOnSystemStackInternal".
    **/
    static public inline function blockOnSystemStack():Void {
        stdgo._internal.runtime.Runtime_blockonsystemstack.blockOnSystemStack();
    }
    static public inline function mapBucketsCount(_m:Map<StdTypes.Int, StdTypes.Int>):StdTypes.Int {
        final _m = {
            final __obj__ = new stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>();
            for (key => value in _m) {
                __obj__[(key : stdgo.GoInt)] = (value : stdgo.GoInt);
            };
            __obj__;
        };
        return stdgo._internal.runtime.Runtime_mapbucketscount.mapBucketsCount(_m);
    }
    static public inline function mapBucketsPointerIsNil(_m:Map<StdTypes.Int, StdTypes.Int>):Bool {
        final _m = {
            final __obj__ = new stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>();
            for (key => value in _m) {
                __obj__[(key : stdgo.GoInt)] = (value : stdgo.GoInt);
            };
            __obj__;
        };
        return stdgo._internal.runtime.Runtime_mapbucketspointerisnil.mapBucketsPointerIsNil(_m);
    }
    static public inline function lockOSCounts():stdgo.Tuple<std.UInt, std.UInt> {
        return {
            final obj = stdgo._internal.runtime.Runtime_lockoscounts.lockOSCounts();
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * go:noinline
    **/
    static public inline function tracebackSystemstack(_stk:Array<stdgo.GoUIntptr>, _i:StdTypes.Int):StdTypes.Int {
        final _stk = ([for (i in _stk) (i : stdgo.GoUIntptr)] : stdgo.Slice<stdgo.GoUIntptr>);
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.runtime.Runtime_tracebacksystemstack.tracebackSystemstack(_stk, _i);
    }
    static public inline function keepNArenaHints(_n:StdTypes.Int):Void {
        final _n = (_n : stdgo.GoInt);
        stdgo._internal.runtime.Runtime_keepnarenahints.keepNArenaHints(_n);
    }
    /**
        * MapNextArenaHint reserves a page at the next arena growth hint,
        * preventing the arena from growing there, and returns the range of
        * addresses that are no longer viable.
        * 
        * This may fail to reserve memory. If it fails, it still returns the
        * address range it attempted to reserve.
    **/
    static public inline function mapNextArenaHint():stdgo.Tuple.Tuple3<stdgo.GoUIntptr, stdgo.GoUIntptr, Bool> {
        return {
            final obj = stdgo._internal.runtime.Runtime_mapnextarenahint.mapNextArenaHint();
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public inline function getNextArenaHint():stdgo.GoUIntptr {
        return stdgo._internal.runtime.Runtime_getnextarenahint.getNextArenaHint();
    }
    static public inline function getg():T_g {
        return stdgo._internal.runtime.Runtime_getg.getg();
    }
    static public inline function goid():haxe.UInt64 {
        return stdgo._internal.runtime.Runtime_goid.goid();
    }
    static public inline function gIsWaitingOnMutex(_gp:T_g):Bool {
        final _gp = (_gp : stdgo.Ref<stdgo._internal.runtime.Runtime_t_g.T_g>);
        return stdgo._internal.runtime.Runtime_giswaitingonmutex.gIsWaitingOnMutex(_gp);
    }
    /**
        * go:noinline
    **/
    static public inline function panicForTesting(_b:Array<std.UInt>, _i:StdTypes.Int):std.UInt {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.runtime.Runtime_panicfortesting.panicForTesting(_b, _i);
    }
    static public inline function g0StackOverflow():Void {
        stdgo._internal.runtime.Runtime_g0stackoverflow.g0StackOverflow();
    }
    static public inline function mapTombstoneCheck(_m:Map<StdTypes.Int, StdTypes.Int>):Void {
        final _m = {
            final __obj__ = new stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>();
            for (key => value in _m) {
                __obj__[(key : stdgo.GoInt)] = (value : stdgo.GoInt);
            };
            __obj__;
        };
        stdgo._internal.runtime.Runtime_maptombstonecheck.mapTombstoneCheck(_m);
    }
    static public inline function runGetgThreadSwitchTest():Void {
        stdgo._internal.runtime.Runtime_rungetgthreadswitchtest.runGetgThreadSwitchTest();
    }
    static public inline function packPallocSum(_start:std.UInt, _max:std.UInt, _end:std.UInt):PallocSum {
        final _start = (_start : stdgo.GoUInt);
        final _max = (_max : stdgo.GoUInt);
        final _end = (_end : stdgo.GoUInt);
        return stdgo._internal.runtime.Runtime_packpallocsum.packPallocSum(_start, _max, _end);
    }
    /**
        * SummarizeSlow is a slow but more obviously correct implementation
        * of (*pallocBits).summarize. Used for testing.
    **/
    static public inline function summarizeSlow(_b:PallocBits):PallocSum {
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.Runtime_pallocbits.PallocBits>);
        return stdgo._internal.runtime.Runtime_summarizeslow.summarizeSlow(_b);
    }
    /**
        * Expose non-trivial helpers for testing.
    **/
    static public inline function findBitRange64(_c:haxe.UInt64, _n:std.UInt):std.UInt {
        final _c = (_c : stdgo.GoUInt64);
        final _n = (_n : stdgo.GoUInt);
        return stdgo._internal.runtime.Runtime_findbitrange64.findBitRange64(_c, _n);
    }
    /**
        * Given two PallocBits, returns a set of bit ranges where
        * they differ.
    **/
    static public inline function diffPallocBits(_a:PallocBits, _b:PallocBits):Array<BitRange> {
        final _a = (_a : stdgo.Ref<stdgo._internal.runtime.Runtime_pallocbits.PallocBits>);
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.Runtime_pallocbits.PallocBits>);
        return [for (i in stdgo._internal.runtime.Runtime_diffpallocbits.diffPallocBits(_a, _b)) i];
    }
    /**
        * StringifyPallocBits gets the bits in the bit range r from b,
        * and returns a string containing the bits as ASCII 0 and 1
        * characters.
    **/
    static public inline function stringifyPallocBits(_b:PallocBits, _r:BitRange):String {
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.Runtime_pallocbits.PallocBits>);
        return stdgo._internal.runtime.Runtime_stringifypallocbits.stringifyPallocBits(_b, _r);
    }
    /**
        * Expose fillAligned for testing.
    **/
    static public inline function fillAligned(_x:haxe.UInt64, _m:std.UInt):haxe.UInt64 {
        final _x = (_x : stdgo.GoUInt64);
        final _m = (_m : stdgo.GoUInt);
        return stdgo._internal.runtime.Runtime_fillaligned.fillAligned(_x, _m);
    }
    static public inline function newPageCache(_base:stdgo.GoUIntptr, _cache:haxe.UInt64, _scav:haxe.UInt64):PageCache {
        final _base = (_base : stdgo.GoUIntptr);
        final _cache = (_cache : stdgo.GoUInt64);
        final _scav = (_scav : stdgo.GoUInt64);
        return stdgo._internal.runtime.Runtime_newpagecache.newPageCache(_base, _cache, _scav);
    }
    /**
        * MakeAddrRange creates a new address range.
    **/
    static public inline function makeAddrRange(_base:stdgo.GoUIntptr, _limit:stdgo.GoUIntptr):AddrRange {
        final _base = (_base : stdgo.GoUIntptr);
        final _limit = (_limit : stdgo.GoUIntptr);
        return stdgo._internal.runtime.Runtime_makeaddrrange.makeAddrRange(_base, _limit);
    }
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
    static public inline function newAddrRanges():AddrRanges {
        return stdgo._internal.runtime.Runtime_newaddrranges.newAddrRanges();
    }
    /**
        * MakeAddrRanges creates a new addrRanges populated with
        * the ranges in a.
        * 
        * The returned AddrRanges is immutable, so methods like
        * Add will fail.
    **/
    static public inline function makeAddrRanges(_a:haxe.Rest<AddrRange>):AddrRanges {
        return stdgo._internal.runtime.Runtime_makeaddrranges.makeAddrRanges(...[for (i in _a) i]);
    }
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
    static public inline function newPageAlloc(_chunks:Map<ChunkIdx, Array<BitRange>>, _scav:Map<ChunkIdx, Array<BitRange>>):PageAlloc {
        final _chunks = {
            final __obj__ = new stdgo.GoMap<stdgo._internal.runtime.Runtime_chunkidx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_bitrange.BitRange>>();
            for (key => value in _chunks) {
                __obj__[key] = ([for (i in value) i] : stdgo.Slice<stdgo._internal.runtime.Runtime_bitrange.BitRange>);
            };
            __obj__;
        };
        final _scav = {
            final __obj__ = new stdgo.GoMap<stdgo._internal.runtime.Runtime_chunkidx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_bitrange.BitRange>>();
            for (key => value in _scav) {
                __obj__[key] = ([for (i in value) i] : stdgo.Slice<stdgo._internal.runtime.Runtime_bitrange.BitRange>);
            };
            __obj__;
        };
        return stdgo._internal.runtime.Runtime_newpagealloc.newPageAlloc(_chunks, _scav);
    }
    /**
        * FreePageAlloc releases hard OS resources owned by the pageAlloc. Once this
        * is called the pageAlloc may no longer be used. The object itself will be
        * collected by the garbage collector once it is no longer live.
    **/
    static public inline function freePageAlloc(_pp:PageAlloc):Void {
        final _pp = (_pp : stdgo.Ref<stdgo._internal.runtime.Runtime_pagealloc.PageAlloc>);
        stdgo._internal.runtime.Runtime_freepagealloc.freePageAlloc(_pp);
    }
    /**
        * PageBase returns an address given a chunk index and a page index
        * relative to that chunk.
    **/
    static public inline function pageBase(_c:ChunkIdx, _pageIdx:std.UInt):stdgo.GoUIntptr {
        final _pageIdx = (_pageIdx : stdgo.GoUInt);
        return stdgo._internal.runtime.Runtime_pagebase.pageBase(_c, _pageIdx);
    }
    static public inline function checkScavengedBitsCleared(_mismatches:Array<BitsMismatch>):stdgo.Tuple<StdTypes.Int, Bool> {
        final _mismatches = ([for (i in _mismatches) i] : stdgo.Slice<stdgo._internal.runtime.Runtime_bitsmismatch.BitsMismatch>);
        return {
            final obj = stdgo._internal.runtime.Runtime_checkscavengedbitscleared.checkScavengedBitsCleared(_mismatches);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function pageCachePagesLeaked():stdgo.GoUIntptr {
        return stdgo._internal.runtime.Runtime_pagecachepagesleaked.pageCachePagesLeaked();
    }
    static public inline function semNwait(_addr:stdgo.Pointer<std.UInt>):std.UInt {
        return stdgo._internal.runtime.Runtime_semnwait.semNwait(_addr);
    }
    /**
        * Allocate an mspan for testing.
    **/
    static public inline function allocMSpan():MSpan {
        return stdgo._internal.runtime.Runtime_allocmspan.allocMSpan();
    }
    /**
        * Free an allocated mspan.
    **/
    static public inline function freeMSpan(_s:MSpan):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.runtime.Runtime_mspan.MSpan>);
        stdgo._internal.runtime.Runtime_freemspan.freeMSpan(_s);
    }
    static public inline function mSpanCountAlloc(_ms:MSpan, _bits:Array<std.UInt>):StdTypes.Int {
        final _ms = (_ms : stdgo.Ref<stdgo._internal.runtime.Runtime_mspan.MSpan>);
        final _bits = ([for (i in _bits) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.runtime.Runtime_mspancountalloc.mSpanCountAlloc(_ms, _bits);
    }
    static public inline function setIntArgRegs(_a:StdTypes.Int):StdTypes.Int {
        final _a = (_a : stdgo.GoInt);
        return stdgo._internal.runtime.Runtime_setintargregs.setIntArgRegs(_a);
    }
    static public inline function finalizerGAsleep():Bool {
        return stdgo._internal.runtime.Runtime_finalizergasleep.finalizerGAsleep();
    }
    /**
        * For GCTestIsReachable, it's important that we do this as a call so
        * escape analysis can see through it.
    **/
    static public inline function gCTestIsReachable(_ptrs:haxe.Rest<stdgo._internal.unsafe.Unsafe.UnsafePointer>):haxe.UInt64 {
        return stdgo._internal.runtime.Runtime_gctestisreachable.gCTestIsReachable(...[for (i in _ptrs) i]);
    }
    /**
        * For GCTestPointerClass, it's important that we do this as a call so
        * escape analysis can see through it.
        * 
        * This is nosplit because gcTestPointerClass is.
        * 
        * go:nosplit
    **/
    static public inline function gCTestPointerClass(_p:stdgo._internal.unsafe.Unsafe.UnsafePointer):String {
        return stdgo._internal.runtime.Runtime_gctestpointerclass.gCTestPointerClass(_p);
    }
    static public inline function newGCController(_gcPercent:StdTypes.Int, _memoryLimit:haxe.Int64):GCController {
        final _gcPercent = (_gcPercent : stdgo.GoInt);
        final _memoryLimit = (_memoryLimit : stdgo.GoInt64);
        return stdgo._internal.runtime.Runtime_newgccontroller.newGCController(_gcPercent, _memoryLimit);
    }
    static public inline function escape(_x:Dynamic):Dynamic {
        return stdgo._internal.runtime.Runtime_escape.escape(_x);
    }
    /**
        * Acquirem blocks preemption.
    **/
    static public inline function acquirem():Void {
        stdgo._internal.runtime.Runtime_acquirem.acquirem();
    }
    static public inline function releasem():Void {
        stdgo._internal.runtime.Runtime_releasem.releasem();
    }
    static public inline function newPIController(_kp:StdTypes.Float, _ti:StdTypes.Float, _tt:StdTypes.Float, _min:StdTypes.Float, _max:StdTypes.Float):PIController {
        final _kp = (_kp : stdgo.GoFloat64);
        final _ti = (_ti : stdgo.GoFloat64);
        final _tt = (_tt : stdgo.GoFloat64);
        final _min = (_min : stdgo.GoFloat64);
        final _max = (_max : stdgo.GoFloat64);
        return stdgo._internal.runtime.Runtime_newpicontroller.newPIController(_kp, _ti, _tt, _min, _max);
    }
    static public inline function newGCCPULimiter(_now:haxe.Int64, _gomaxprocs:StdTypes.Int):GCCPULimiter {
        final _now = (_now : stdgo.GoInt64);
        final _gomaxprocs = (_gomaxprocs : stdgo.GoInt32);
        return stdgo._internal.runtime.Runtime_newgccpulimiter.newGCCPULimiter(_now, _gomaxprocs);
    }
    static public inline function newScavengeIndex(_min:ChunkIdx, _max:ChunkIdx):ScavengeIndex {
        return stdgo._internal.runtime.Runtime_newscavengeindex.newScavengeIndex(_min, _max);
    }
    static public inline function checkPackScavChunkData(_gen:std.UInt, _inUse:std.UInt, _lastInUse:std.UInt, _flags:std.UInt):Bool {
        final _gen = (_gen : stdgo.GoUInt32);
        final _inUse = (_inUse : stdgo.GoUInt16);
        final _lastInUse = (_lastInUse : stdgo.GoUInt16);
        final _flags = (_flags : stdgo.GoUInt8);
        return stdgo._internal.runtime.Runtime_checkpackscavchunkdata.checkPackScavChunkData(_gen, _inUse, _lastInUse, _flags);
    }
    static public inline function newUserArena():UserArena {
        return stdgo._internal.runtime.Runtime_newuserarena.newUserArena();
    }
    static public inline function globalWaitingArenaChunks():StdTypes.Int {
        return stdgo._internal.runtime.Runtime_globalwaitingarenachunks.globalWaitingArenaChunks();
    }
    static public inline function userArenaClone(_s:Dynamic):Dynamic {
        return stdgo._internal.runtime.Runtime_userarenaclone.userArenaClone(_s);
    }
    /**
        * BlockUntilEmptyFinalizerQueue blocks until either the finalizer
        * queue is emptied (and the finalizers have executed) or the timeout
        * is reached. Returns true if the finalizer queue was emptied.
    **/
    static public inline function blockUntilEmptyFinalizerQueue(_timeout:haxe.Int64):Bool {
        final _timeout = (_timeout : stdgo.GoInt64);
        return stdgo._internal.runtime.Runtime_blockuntilemptyfinalizerqueue.blockUntilEmptyFinalizerQueue(_timeout);
    }
    static public inline function frameStartLine(_f:Frame):StdTypes.Int {
        final _f = (_f : stdgo.Ref<stdgo._internal.runtime.Runtime_frame.Frame>);
        return stdgo._internal.runtime.Runtime_framestartline.frameStartLine(_f);
    }
    /**
        * PersistentAlloc allocates some memory that lives outside the Go heap.
        * This memory will never be freed; use sparingly.
    **/
    static public inline function persistentAlloc(_n:stdgo.GoUIntptr):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        final _n = (_n : stdgo.GoUIntptr);
        return stdgo._internal.runtime.Runtime_persistentalloc.persistentAlloc(_n);
    }
    /**
        * FPCallers works like Callers and uses frame pointer unwinding to populate
        * pcBuf with the return addresses of the physical frames on the stack.
    **/
    static public inline function fPCallers(_pcBuf:Array<stdgo.GoUIntptr>):StdTypes.Int {
        final _pcBuf = ([for (i in _pcBuf) (i : stdgo.GoUIntptr)] : stdgo.Slice<stdgo.GoUIntptr>);
        return stdgo._internal.runtime.Runtime_fpcallers.fPCallers(_pcBuf);
    }
    static public inline function setPinnerLeakPanic(_f:() -> Void):Void {
        final _f = _f;
        stdgo._internal.runtime.Runtime_setpinnerleakpanic.setPinnerLeakPanic(_f);
    }
    static public inline function getPinnerLeakPanic():() -> Void {
        return () -> stdgo._internal.runtime.Runtime_getpinnerleakpanic.getPinnerLeakPanic()();
    }
    /**
        * Caller reports file and line number information about function invocations on
        * the calling goroutine's stack. The argument skip is the number of stack frames
        * to ascend, with 0 identifying the caller of Caller.  (For historical reasons the
        * meaning of skip differs between Caller and Callers.) The return values report the
        * program counter, file name, and line number within the file of the corresponding
        * call. The boolean ok is false if it was not possible to recover the information.
    **/
    static public inline function caller(_skip:StdTypes.Int):stdgo.Tuple.Tuple4<stdgo.GoUIntptr, String, StdTypes.Int, Bool> {
        final _skip = (_skip : stdgo.GoInt);
        return {
            final obj = stdgo._internal.runtime.Runtime_caller.caller(_skip);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
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
    static public inline function callers(_skip:StdTypes.Int, _pc:Array<stdgo.GoUIntptr>):StdTypes.Int {
        final _skip = (_skip : stdgo.GoInt);
        final _pc = ([for (i in _pc) (i : stdgo.GoUIntptr)] : stdgo.Slice<stdgo.GoUIntptr>);
        return stdgo._internal.runtime.Runtime_callers.callers(_skip, _pc);
    }
    /**
        * GOROOT returns the root of the Go tree. It uses the
        * GOROOT environment variable, if set at process start,
        * or else the root used during the Go build.
    **/
    static public inline function gOROOT():String {
        return stdgo._internal.runtime.Runtime_goroot.gOROOT();
    }
    /**
        * Version returns the Go tree's version string.
        * It is either the commit hash and date at the time of the build or,
        * when possible, a release tag like "go1.3".
    **/
    static public inline function version():String {
        return stdgo._internal.runtime.Runtime_version.version();
    }
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
    static public inline function setFinalizer(_obj:stdgo.AnyInterface, _finalizer:stdgo.AnyInterface):Void {
        final _obj = (_obj : stdgo.AnyInterface);
        final _finalizer = (_finalizer : stdgo.AnyInterface);
        stdgo._internal.runtime.Runtime_setfinalizer.setFinalizer(_obj, _finalizer);
    }
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
    static public inline function keepAlive(_x:stdgo.AnyInterface):Void {
        final _x = (_x : stdgo.AnyInterface);
        stdgo._internal.runtime.Runtime_keepalive.keepAlive(_x);
    }
    /**
        * GC runs a garbage collection and blocks the caller until the
        * garbage collection is complete. It may also block the entire
        * program.
    **/
    static public inline function gC():Void {
        stdgo._internal.runtime.Runtime_gc.gC();
    }
    /**
        * SetBlockProfileRate controls the fraction of goroutine blocking events
        * that are reported in the blocking profile. The profiler aims to sample
        * an average of one blocking event per rate nanoseconds spent blocked.
        * 
        * To include every blocking event in the profile, pass rate = 1.
        * To turn off profiling entirely, pass rate <= 0.
    **/
    static public inline function setBlockProfileRate(_rate:StdTypes.Int):Void {
        final _rate = (_rate : stdgo.GoInt);
        stdgo._internal.runtime.Runtime_setblockprofilerate.setBlockProfileRate(_rate);
    }
    /**
        * SetMutexProfileFraction controls the fraction of mutex contention events
        * that are reported in the mutex profile. On average 1/rate events are
        * reported. The previous rate is returned.
        * 
        * To turn off profiling entirely, pass rate 0.
        * To just read the current rate, pass rate < 0.
        * (For n>1 the details of sampling may change.)
    **/
    static public inline function setMutexProfileFraction(_rate:StdTypes.Int):StdTypes.Int {
        final _rate = (_rate : stdgo.GoInt);
        return stdgo._internal.runtime.Runtime_setmutexprofilefraction.setMutexProfileFraction(_rate);
    }
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
    static public inline function memProfile(_p:Array<MemProfileRecord>, _inuseZero:Bool):stdgo.Tuple<StdTypes.Int, Bool> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo._internal.runtime.Runtime_memprofilerecord.MemProfileRecord>);
        return {
            final obj = stdgo._internal.runtime.Runtime_memprofile.memProfile(_p, _inuseZero);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * BlockProfile returns n, the number of records in the current blocking profile.
        * If len(p) >= n, BlockProfile copies the profile into p and returns n, true.
        * If len(p) < n, BlockProfile does not change p and returns n, false.
        * 
        * Most clients should use the runtime/pprof package or
        * the testing package's -test.blockprofile flag instead
        * of calling BlockProfile directly.
    **/
    static public inline function blockProfile(_p:Array<BlockProfileRecord>):stdgo.Tuple<StdTypes.Int, Bool> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo._internal.runtime.Runtime_blockprofilerecord.BlockProfileRecord>);
        return {
            final obj = stdgo._internal.runtime.Runtime_blockprofile.blockProfile(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * MutexProfile returns n, the number of records in the current mutex profile.
        * If len(p) >= n, MutexProfile copies the profile into p and returns n, true.
        * Otherwise, MutexProfile does not change p, and returns n, false.
        * 
        * Most clients should use the runtime/pprof package
        * instead of calling MutexProfile directly.
    **/
    static public inline function mutexProfile(_p:Array<BlockProfileRecord>):stdgo.Tuple<StdTypes.Int, Bool> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo._internal.runtime.Runtime_blockprofilerecord.BlockProfileRecord>);
        return {
            final obj = stdgo._internal.runtime.Runtime_mutexprofile.mutexProfile(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * ThreadCreateProfile returns n, the number of records in the thread creation profile.
        * If len(p) >= n, ThreadCreateProfile copies the profile into p and returns n, true.
        * If len(p) < n, ThreadCreateProfile does not change p and returns n, false.
        * 
        * Most clients should use the runtime/pprof package instead
        * of calling ThreadCreateProfile directly.
    **/
    static public inline function threadCreateProfile(_p:Array<StackRecord>):stdgo.Tuple<StdTypes.Int, Bool> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo._internal.runtime.Runtime_stackrecord.StackRecord>);
        return {
            final obj = stdgo._internal.runtime.Runtime_threadcreateprofile.threadCreateProfile(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * GoroutineProfile returns n, the number of records in the active goroutine stack profile.
        * If len(p) >= n, GoroutineProfile copies the profile into p and returns n, true.
        * If len(p) < n, GoroutineProfile does not change p and returns n, false.
        * 
        * Most clients should use the runtime/pprof package instead
        * of calling GoroutineProfile directly.
    **/
    static public inline function goroutineProfile(_p:Array<StackRecord>):stdgo.Tuple<StdTypes.Int, Bool> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo._internal.runtime.Runtime_stackrecord.StackRecord>);
        return {
            final obj = stdgo._internal.runtime.Runtime_goroutineprofile.goroutineProfile(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * Stack formats a stack trace of the calling goroutine into buf
        * and returns the number of bytes written to buf.
        * If all is true, Stack formats stack traces of all other goroutines
        * into buf after the trace for the current goroutine.
    **/
    static public inline function stack(_buf:Array<std.UInt>, _all:Bool):StdTypes.Int {
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.runtime.Runtime_stack.stack(_buf, _all);
    }
    /**
        * ReadMemStats populates m with memory allocator statistics.
        * 
        * The returned memory allocator statistics are up to date as of the
        * call to ReadMemStats. This is in contrast with a heap profile,
        * which is a snapshot as of the most recently completed garbage
        * collection cycle.
    **/
    static public inline function readMemStats(_m:MemStats):Void {
        final _m = (_m : stdgo.Ref<stdgo._internal.runtime.Runtime_memstats.MemStats>);
        stdgo._internal.runtime.Runtime_readmemstats.readMemStats(_m);
    }
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
    static public inline function goexit():Void {
        stdgo._internal.runtime.Runtime_goexit.goexit();
    }
    /**
        * Gosched yields the processor, allowing other goroutines to run. It does not
        * suspend the current goroutine, so execution resumes automatically.
        * 
        * go:nosplit
    **/
    static public inline function gosched():Void {
        stdgo._internal.runtime.Runtime_gosched.gosched();
    }
    /**
        * Breakpoint executes a breakpoint trap.
    **/
    static public inline function breakpoint():Void {
        stdgo._internal.runtime.Runtime_breakpoint.breakpoint();
    }
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
    static public inline function lockOSThread():Void {
        stdgo._internal.runtime.Runtime_lockosthread.lockOSThread();
    }
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
    static public inline function unlockOSThread():Void {
        stdgo._internal.runtime.Runtime_unlockosthread.unlockOSThread();
    }
    static public inline function runStealOrderTest():Void {
        stdgo._internal.runtime.Runtime_runstealordertest.runStealOrderTest();
    }
    /**
        * CallersFrames takes a slice of PC values returned by Callers and
        * prepares to return function/file/line information.
        * Do not change the slice until you are done with the Frames.
    **/
    static public inline function callersFrames(_callers:Array<stdgo.GoUIntptr>):Frames {
        final _callers = ([for (i in _callers) (i : stdgo.GoUIntptr)] : stdgo.Slice<stdgo.GoUIntptr>);
        return stdgo._internal.runtime.Runtime_callersframes.callersFrames(_callers);
    }
    /**
        * FuncForPC returns a *Func describing the function that contains the
        * given program counter address, or else nil.
        * 
        * If pc represents multiple functions because of inlining, it returns
        * the *Func describing the innermost function, but with an entry of
        * the outermost function.
    **/
    static public inline function funcForPC(_pc:stdgo.GoUIntptr):Func {
        final _pc = (_pc : stdgo.GoUIntptr);
        return stdgo._internal.runtime.Runtime_funcforpc.funcForPC(_pc);
    }
    static public inline function xTestInlineUnwinder(_t:TestingT):Void {
        stdgo._internal.runtime.Runtime_xtestinlineunwinder.xTestInlineUnwinder(_t);
    }
    /**
        * StartTrace enables tracing for the current process.
        * While tracing, the data will be buffered and available via ReadTrace.
        * StartTrace returns an error if tracing is already enabled.
        * Most clients should use the runtime/trace package or the testing package's
        * -test.trace flag instead of calling StartTrace directly.
    **/
    static public inline function startTrace():stdgo.Error {
        return stdgo._internal.runtime.Runtime_starttrace.startTrace();
    }
    /**
        * StopTrace stops tracing, if it was previously enabled.
        * StopTrace only returns after all the reads for the trace have completed.
    **/
    static public inline function stopTrace():Void {
        stdgo._internal.runtime.Runtime_stoptrace.stopTrace();
    }
    /**
        * ReadTrace returns the next chunk of binary tracing data, blocking until data
        * is available. If tracing is turned off and all the data accumulated while it
        * was on has been returned, ReadTrace returns nil. The caller must copy the
        * returned data before calling ReadTrace again.
        * ReadTrace must be called from one goroutine at a time.
    **/
    static public inline function readTrace():Array<std.UInt> {
        return [for (i in stdgo._internal.runtime.Runtime_readtrace.readTrace()) i];
    }
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
    static public inline function setCgoTraceback(_version:StdTypes.Int, _traceback:stdgo._internal.unsafe.Unsafe.UnsafePointer, _context:stdgo._internal.unsafe.Unsafe.UnsafePointer, _symbolizer:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void {
        final _version = (_version : stdgo.GoInt);
        stdgo._internal.runtime.Runtime_setcgotraceback.setCgoTraceback(_version, _traceback, _context, _symbolizer);
    }
    static public inline function xTestSPWrite(_t:TestingT):Void {
        stdgo._internal.runtime.Runtime_xtestspwrite.xTestSPWrite(_t);
    }
}
