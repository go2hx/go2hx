package stdgo.runtime;
final compiler : String = stdgo._internal.runtime.Runtime_compiler.compiler;
final dlogEnabled : Bool = stdgo._internal.runtime.Runtime_dlogEnabled.dlogEnabled;
final debugLogBytes : haxe.UInt64 = stdgo._internal.runtime.Runtime_debugLogBytes.debugLogBytes;
final debugLogStringLimit : haxe.UInt64 = stdgo._internal.runtime.Runtime_debugLogStringLimit.debugLogStringLimit;
final tracebackInnerFrames : haxe.UInt64 = stdgo._internal.runtime.Runtime_tracebackInnerFrames.tracebackInnerFrames;
final tracebackOuterFrames : haxe.UInt64 = stdgo._internal.runtime.Runtime_tracebackOuterFrames.tracebackOuterFrames;
final preemptMSupported : Bool = stdgo._internal.runtime.Runtime_preemptMSupported.preemptMSupported;
final hashLoad : StdTypes.Float = stdgo._internal.runtime.Runtime_hashLoad.hashLoad;
final ptrSize : haxe.UInt64 = stdgo._internal.runtime.Runtime_ptrSize.ptrSize;
final profBufBlocking : T_profBufReadMode = stdgo._internal.runtime.Runtime_profBufBlocking.profBufBlocking;
final profBufNonBlocking : T_profBufReadMode = stdgo._internal.runtime.Runtime_profBufNonBlocking.profBufNonBlocking;
final runtimeHmapSize : stdgo.GoUIntptr = stdgo._internal.runtime.Runtime_runtimeHmapSize.runtimeHmapSize;
final pageSize : haxe.UInt64 = stdgo._internal.runtime.Runtime_pageSize.pageSize;
final pallocChunkPages : haxe.UInt64 = stdgo._internal.runtime.Runtime_pallocChunkPages.pallocChunkPages;
final pageAlloc64Bit : haxe.UInt64 = stdgo._internal.runtime.Runtime_pageAlloc64Bit.pageAlloc64Bit;
final pallocSumBytes : stdgo.GoUIntptr = stdgo._internal.runtime.Runtime_pallocSumBytes.pallocSumBytes;
final pageCachePages : stdgo.GoUIntptr = stdgo._internal.runtime.Runtime_pageCachePages.pageCachePages;
final semTableSize : haxe.UInt64 = stdgo._internal.runtime.Runtime_semTableSize.semTableSize;
final timeHistSubBucketBits : haxe.UInt64 = stdgo._internal.runtime.Runtime_timeHistSubBucketBits.timeHistSubBucketBits;
final timeHistNumSubBuckets : haxe.UInt64 = stdgo._internal.runtime.Runtime_timeHistNumSubBuckets.timeHistNumSubBuckets;
final timeHistNumBuckets : haxe.UInt64 = stdgo._internal.runtime.Runtime_timeHistNumBuckets.timeHistNumBuckets;
final timeHistMinBucketBits : haxe.UInt64 = stdgo._internal.runtime.Runtime_timeHistMinBucketBits.timeHistMinBucketBits;
final timeHistMaxBucketBits : haxe.UInt64 = stdgo._internal.runtime.Runtime_timeHistMaxBucketBits.timeHistMaxBucketBits;
final raceenabled : Bool = stdgo._internal.runtime.Runtime_raceenabled.raceenabled;
final gcbackgroundUtilization : StdTypes.Float = stdgo._internal.runtime.Runtime_gcbackgroundUtilization.gcbackgroundUtilization;
final gcgoalUtilization : StdTypes.Float = stdgo._internal.runtime.Runtime_gcgoalUtilization.gcgoalUtilization;
final defaultHeapMinimum : haxe.UInt64 = stdgo._internal.runtime.Runtime_defaultHeapMinimum.defaultHeapMinimum;
final memoryLimitHeapGoalHeadroomPercent : haxe.UInt64 = stdgo._internal.runtime.Runtime_memoryLimitHeapGoalHeadroomPercent.memoryLimitHeapGoalHeadroomPercent;
final memoryLimitMinHeapGoalHeadroom : haxe.UInt64 = stdgo._internal.runtime.Runtime_memoryLimitMinHeapGoalHeadroom.memoryLimitMinHeapGoalHeadroom;
final capacityPerProc : StdTypes.Float = stdgo._internal.runtime.Runtime_capacityPerProc.capacityPerProc;
final gccpulimiterUpdatePeriod : StdTypes.Float = stdgo._internal.runtime.Runtime_gccpulimiterUpdatePeriod.gccpulimiterUpdatePeriod;
final scavengePercent : haxe.UInt64 = stdgo._internal.runtime.Runtime_scavengePercent.scavengePercent;
final gtrackingPeriod : haxe.UInt64 = stdgo._internal.runtime.Runtime_gtrackingPeriod.gtrackingPeriod;
final userArenaChunkBytes : stdgo.GoUIntptr = stdgo._internal.runtime.Runtime_userArenaChunkBytes.userArenaChunkBytes;
final framePointerEnabled : Bool = stdgo._internal.runtime.Runtime_framePointerEnabled.framePointerEnabled;
final goos : String = stdgo._internal.runtime.Runtime_goos.goos;
final goarch : String = stdgo._internal.runtime.Runtime_goarch.goarch;
var fmtSprintf(get, set) : (stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> stdgo.GoString;
private function get_fmtSprintf():(stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> stdgo.GoString return (_0, _1) -> stdgo._internal.runtime.Runtime_fmtSprintf.fmtSprintf(_0, _1);
private function set_fmtSprintf(v:(stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> stdgo.GoString):(stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> stdgo.GoString {
        stdgo._internal.runtime.Runtime_fmtSprintf.fmtSprintf = v;
        return v;
    }
var testenvOptimizationOff(get, set) : () -> Bool;
private function get_testenvOptimizationOff():() -> Bool return () -> stdgo._internal.runtime.Runtime_testenvOptimizationOff.testenvOptimizationOff();
private function set_testenvOptimizationOff(v:() -> Bool):() -> Bool {
        stdgo._internal.runtime.Runtime_testenvOptimizationOff.testenvOptimizationOff = v;
        return v;
    }
var memProfileRate(get, set) : StdTypes.Int;
private function get_memProfileRate():StdTypes.Int return stdgo._internal.runtime.Runtime_memProfileRate.memProfileRate;
private function set_memProfileRate(v:StdTypes.Int):StdTypes.Int {
        stdgo._internal.runtime.Runtime_memProfileRate.memProfileRate = v;
        return v;
    }
var atomicFields(get, set) : Array<stdgo.GoUIntptr>;
private function get_atomicFields():Array<stdgo.GoUIntptr> return [for (i in stdgo._internal.runtime.Runtime_atomicFields.atomicFields) i];
private function set_atomicFields(v:Array<stdgo.GoUIntptr>):Array<stdgo.GoUIntptr> {
        stdgo._internal.runtime.Runtime_atomicFields.atomicFields = ([for (i in v) i] : stdgo.Slice<stdgo.GoUIntptr>);
        return v;
    }
var atomicVariables(get, set) : Array<stdgo._internal.unsafe.Unsafe.UnsafePointer>;
private function get_atomicVariables():Array<stdgo._internal.unsafe.Unsafe.UnsafePointer> return [for (i in stdgo._internal.runtime.Runtime_atomicVariables.atomicVariables) i];
private function set_atomicVariables(v:Array<stdgo._internal.unsafe.Unsafe.UnsafePointer>):Array<stdgo._internal.unsafe.Unsafe.UnsafePointer> {
        stdgo._internal.runtime.Runtime_atomicVariables.atomicVariables = ([for (i in v) i] : stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>);
        return v;
    }
var dlog(get, set) : () -> stdgo.Ref<stdgo._internal.runtime.Runtime_T_dlogger.T_dlogger>;
private function get_dlog():() -> stdgo.Ref<stdgo._internal.runtime.Runtime_T_dlogger.T_dlogger> return () -> stdgo._internal.runtime.Runtime_dlog.dlog();
private function set_dlog(v:() -> stdgo.Ref<stdgo._internal.runtime.Runtime_T_dlogger.T_dlogger>):() -> stdgo.Ref<stdgo._internal.runtime.Runtime_T_dlogger.T_dlogger> {
        stdgo._internal.runtime.Runtime_dlog.dlog = v;
        return v;
    }
var fadd64(get, set) : (stdgo.GoUInt64, stdgo.GoUInt64) -> stdgo.GoUInt64;
private function get_fadd64():(stdgo.GoUInt64, stdgo.GoUInt64) -> stdgo.GoUInt64 return (_0, _1) -> stdgo._internal.runtime.Runtime_fadd64.fadd64(_0, _1);
private function set_fadd64(v:(stdgo.GoUInt64, stdgo.GoUInt64) -> stdgo.GoUInt64):(stdgo.GoUInt64, stdgo.GoUInt64) -> stdgo.GoUInt64 {
        stdgo._internal.runtime.Runtime_fadd64.fadd64 = v;
        return v;
    }
var fsub64(get, set) : (stdgo.GoUInt64, stdgo.GoUInt64) -> stdgo.GoUInt64;
private function get_fsub64():(stdgo.GoUInt64, stdgo.GoUInt64) -> stdgo.GoUInt64 return (_0, _1) -> stdgo._internal.runtime.Runtime_fsub64.fsub64(_0, _1);
private function set_fsub64(v:(stdgo.GoUInt64, stdgo.GoUInt64) -> stdgo.GoUInt64):(stdgo.GoUInt64, stdgo.GoUInt64) -> stdgo.GoUInt64 {
        stdgo._internal.runtime.Runtime_fsub64.fsub64 = v;
        return v;
    }
var fmul64(get, set) : (stdgo.GoUInt64, stdgo.GoUInt64) -> stdgo.GoUInt64;
private function get_fmul64():(stdgo.GoUInt64, stdgo.GoUInt64) -> stdgo.GoUInt64 return (_0, _1) -> stdgo._internal.runtime.Runtime_fmul64.fmul64(_0, _1);
private function set_fmul64(v:(stdgo.GoUInt64, stdgo.GoUInt64) -> stdgo.GoUInt64):(stdgo.GoUInt64, stdgo.GoUInt64) -> stdgo.GoUInt64 {
        stdgo._internal.runtime.Runtime_fmul64.fmul64 = v;
        return v;
    }
var fdiv64(get, set) : (stdgo.GoUInt64, stdgo.GoUInt64) -> stdgo.GoUInt64;
private function get_fdiv64():(stdgo.GoUInt64, stdgo.GoUInt64) -> stdgo.GoUInt64 return (_0, _1) -> stdgo._internal.runtime.Runtime_fdiv64.fdiv64(_0, _1);
private function set_fdiv64(v:(stdgo.GoUInt64, stdgo.GoUInt64) -> stdgo.GoUInt64):(stdgo.GoUInt64, stdgo.GoUInt64) -> stdgo.GoUInt64 {
        stdgo._internal.runtime.Runtime_fdiv64.fdiv64 = v;
        return v;
    }
var f64to32(get, set) : stdgo.GoUInt64 -> stdgo.GoUInt32;
private function get_f64to32():stdgo.GoUInt64 -> stdgo.GoUInt32 return _0 -> stdgo._internal.runtime.Runtime_f64to32.f64to32(_0);
private function set_f64to32(v:stdgo.GoUInt64 -> stdgo.GoUInt32):stdgo.GoUInt64 -> stdgo.GoUInt32 {
        stdgo._internal.runtime.Runtime_f64to32.f64to32 = v;
        return v;
    }
var f32to64(get, set) : stdgo.GoUInt32 -> stdgo.GoUInt64;
private function get_f32to64():stdgo.GoUInt32 -> stdgo.GoUInt64 return _0 -> stdgo._internal.runtime.Runtime_f32to64.f32to64(_0);
private function set_f32to64(v:stdgo.GoUInt32 -> stdgo.GoUInt64):stdgo.GoUInt32 -> stdgo.GoUInt64 {
        stdgo._internal.runtime.Runtime_f32to64.f32to64 = v;
        return v;
    }
var fcmp64(get, set) : (stdgo.GoUInt64, stdgo.GoUInt64) -> { var _0 : stdgo.GoInt32; var _1 : Bool; };
private function get_fcmp64():(stdgo.GoUInt64, stdgo.GoUInt64) -> { var _0 : stdgo.GoInt32; var _1 : Bool; } return (_0, _1) -> stdgo._internal.runtime.Runtime_fcmp64.fcmp64(_0, _1);
private function set_fcmp64(v:(stdgo.GoUInt64, stdgo.GoUInt64) -> { var _0 : stdgo.GoInt32; var _1 : Bool; }):(stdgo.GoUInt64, stdgo.GoUInt64) -> { var _0 : stdgo.GoInt32; var _1 : Bool; } {
        stdgo._internal.runtime.Runtime_fcmp64.fcmp64 = v;
        return v;
    }
var fintto64(get, set) : stdgo.GoInt64 -> stdgo.GoUInt64;
private function get_fintto64():stdgo.GoInt64 -> stdgo.GoUInt64 return _0 -> stdgo._internal.runtime.Runtime_fintto64.fintto64(_0);
private function set_fintto64(v:stdgo.GoInt64 -> stdgo.GoUInt64):stdgo.GoInt64 -> stdgo.GoUInt64 {
        stdgo._internal.runtime.Runtime_fintto64.fintto64 = v;
        return v;
    }
var f64toint(get, set) : stdgo.GoUInt64 -> { var _0 : stdgo.GoInt64; var _1 : Bool; };
private function get_f64toint():stdgo.GoUInt64 -> { var _0 : stdgo.GoInt64; var _1 : Bool; } return _0 -> stdgo._internal.runtime.Runtime_f64toint.f64toint(_0);
private function set_f64toint(v:stdgo.GoUInt64 -> { var _0 : stdgo.GoInt64; var _1 : Bool; }):stdgo.GoUInt64 -> { var _0 : stdgo.GoInt64; var _1 : Bool; } {
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
private function get_lockedOSThread():() -> Bool return () -> stdgo._internal.runtime.Runtime_lockedOSThread.lockedOSThread();
private function set_lockedOSThread(v:() -> Bool):() -> Bool {
        stdgo._internal.runtime.Runtime_lockedOSThread.lockedOSThread = v;
        return v;
    }
var xadduintptr(get, set) : (stdgo.Pointer<stdgo.GoUIntptr>, stdgo.GoUIntptr) -> stdgo.GoUIntptr;
private function get_xadduintptr():(stdgo.Pointer<stdgo.GoUIntptr>, stdgo.GoUIntptr) -> stdgo.GoUIntptr return (_0, _1) -> stdgo._internal.runtime.Runtime_xadduintptr.xadduintptr(_0, _1);
private function set_xadduintptr(v:(stdgo.Pointer<stdgo.GoUIntptr>, stdgo.GoUIntptr) -> stdgo.GoUIntptr):(stdgo.Pointer<stdgo.GoUIntptr>, stdgo.GoUIntptr) -> stdgo.GoUIntptr {
        stdgo._internal.runtime.Runtime_xadduintptr.xadduintptr = v;
        return v;
    }
var fastlog2(get, set) : stdgo.GoFloat64 -> stdgo.GoFloat64;
private function get_fastlog2():stdgo.GoFloat64 -> stdgo.GoFloat64 return _0 -> stdgo._internal.runtime.Runtime_fastlog2.fastlog2(_0);
private function set_fastlog2(v:stdgo.GoFloat64 -> stdgo.GoFloat64):stdgo.GoFloat64 -> stdgo.GoFloat64 {
        stdgo._internal.runtime.Runtime_fastlog2.fastlog2 = v;
        return v;
    }
var atoi(get, set) : stdgo.GoString -> { var _0 : stdgo.GoInt; var _1 : Bool; };
private function get_atoi():stdgo.GoString -> { var _0 : stdgo.GoInt; var _1 : Bool; } return _0 -> stdgo._internal.runtime.Runtime_atoi.atoi(_0);
private function set_atoi(v:stdgo.GoString -> { var _0 : stdgo.GoInt; var _1 : Bool; }):stdgo.GoString -> { var _0 : stdgo.GoInt; var _1 : Bool; } {
        stdgo._internal.runtime.Runtime_atoi.atoi = v;
        return v;
    }
var atoi32(get, set) : stdgo.GoString -> { var _0 : stdgo.GoInt32; var _1 : Bool; };
private function get_atoi32():stdgo.GoString -> { var _0 : stdgo.GoInt32; var _1 : Bool; } return _0 -> stdgo._internal.runtime.Runtime_atoi32.atoi32(_0);
private function set_atoi32(v:stdgo.GoString -> { var _0 : stdgo.GoInt32; var _1 : Bool; }):stdgo.GoString -> { var _0 : stdgo.GoInt32; var _1 : Bool; } {
        stdgo._internal.runtime.Runtime_atoi32.atoi32 = v;
        return v;
    }
var parseByteCount(get, set) : stdgo.GoString -> { var _0 : stdgo.GoInt64; var _1 : Bool; };
private function get_parseByteCount():stdgo.GoString -> { var _0 : stdgo.GoInt64; var _1 : Bool; } return _0 -> stdgo._internal.runtime.Runtime_parseByteCount.parseByteCount(_0);
private function set_parseByteCount(v:stdgo.GoString -> { var _0 : stdgo.GoInt64; var _1 : Bool; }):stdgo.GoString -> { var _0 : stdgo.GoInt64; var _1 : Bool; } {
        stdgo._internal.runtime.Runtime_parseByteCount.parseByteCount = v;
        return v;
    }
var nanotime(get, set) : () -> stdgo.GoInt64;
private function get_nanotime():() -> stdgo.GoInt64 return () -> stdgo._internal.runtime.Runtime_nanotime.nanotime();
private function set_nanotime(v:() -> stdgo.GoInt64):() -> stdgo.GoInt64 {
        stdgo._internal.runtime.Runtime_nanotime.nanotime = v;
        return v;
    }
var netpollBreak(get, set) : () -> Void;
private function get_netpollBreak():() -> Void return () -> stdgo._internal.runtime.Runtime_netpollBreak.netpollBreak();
private function set_netpollBreak(v:() -> Void):() -> Void {
        stdgo._internal.runtime.Runtime_netpollBreak.netpollBreak = v;
        return v;
    }
var usleep(get, set) : stdgo.GoUInt32 -> Void;
private function get_usleep():stdgo.GoUInt32 -> Void return _0 -> stdgo._internal.runtime.Runtime_usleep.usleep(_0);
private function set_usleep(v:stdgo.GoUInt32 -> Void):stdgo.GoUInt32 -> Void {
        stdgo._internal.runtime.Runtime_usleep.usleep = v;
        return v;
    }
var physPageSize(get, set) : stdgo.GoUIntptr;
private function get_physPageSize():stdgo.GoUIntptr return stdgo._internal.runtime.Runtime_physPageSize.physPageSize;
private function set_physPageSize(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        stdgo._internal.runtime.Runtime_physPageSize.physPageSize = v;
        return v;
    }
var physHugePageSize(get, set) : stdgo.GoUIntptr;
private function get_physHugePageSize():stdgo.GoUIntptr return stdgo._internal.runtime.Runtime_physHugePageSize.physHugePageSize;
private function set_physHugePageSize(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        stdgo._internal.runtime.Runtime_physHugePageSize.physHugePageSize = v;
        return v;
    }
var netpollGenericInit(get, set) : () -> Void;
private function get_netpollGenericInit():() -> Void return () -> stdgo._internal.runtime.Runtime_netpollGenericInit.netpollGenericInit();
private function set_netpollGenericInit(v:() -> Void):() -> Void {
        stdgo._internal.runtime.Runtime_netpollGenericInit.netpollGenericInit = v;
        return v;
    }
var memmove(get, set) : (stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> Void;
private function get_memmove():(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> Void return (_0, _1, _2) -> stdgo._internal.runtime.Runtime_memmove.memmove(_0, _1, _2);
private function set_memmove(v:(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> Void):(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> Void {
        stdgo._internal.runtime.Runtime_memmove.memmove = v;
        return v;
    }
var memclrNoHeapPointers(get, set) : (stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> Void;
private function get_memclrNoHeapPointers():(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> Void return (_0, _1) -> stdgo._internal.runtime.Runtime_memclrNoHeapPointers.memclrNoHeapPointers(_0, _1);
private function set_memclrNoHeapPointers(v:(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> Void):(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> Void {
        stdgo._internal.runtime.Runtime_memclrNoHeapPointers.memclrNoHeapPointers = v;
        return v;
    }
var cgoCheckPointer(get, set) : (stdgo.AnyInterface, stdgo.AnyInterface) -> Void;
private function get_cgoCheckPointer():(stdgo.AnyInterface, stdgo.AnyInterface) -> Void return (_0, _1) -> stdgo._internal.runtime.Runtime_cgoCheckPointer.cgoCheckPointer(_0, _1);
private function set_cgoCheckPointer(v:(stdgo.AnyInterface, stdgo.AnyInterface) -> Void):(stdgo.AnyInterface, stdgo.AnyInterface) -> Void {
        stdgo._internal.runtime.Runtime_cgoCheckPointer.cgoCheckPointer = v;
        return v;
    }
var lockPartialOrder(get, set) : Array<Array<T_lockRank>>;
private function get_lockPartialOrder():Array<Array<T_lockRank>> return [for (i in stdgo._internal.runtime.Runtime_lockPartialOrder.lockPartialOrder) [for (i in i) i]];
private function set_lockPartialOrder(v:Array<Array<T_lockRank>>):Array<Array<T_lockRank>> {
        stdgo._internal.runtime.Runtime_lockPartialOrder.lockPartialOrder = ([for (i in v) ([for (i in i) i] : stdgo.Slice<stdgo._internal.runtime.Runtime_T_lockRank.T_lockRank>)] : stdgo.Slice<stdgo.Slice<stdgo._internal.runtime.Runtime_T_lockRank.T_lockRank>>);
        return v;
    }
var stringHash(get, set) : (stdgo.GoString, stdgo.GoUIntptr) -> stdgo.GoUIntptr;
private function get_stringHash():(stdgo.GoString, stdgo.GoUIntptr) -> stdgo.GoUIntptr return (_0, _1) -> stdgo._internal.runtime.Runtime_stringHash.stringHash(_0, _1);
private function set_stringHash(v:(stdgo.GoString, stdgo.GoUIntptr) -> stdgo.GoUIntptr):(stdgo.GoString, stdgo.GoUIntptr) -> stdgo.GoUIntptr {
        stdgo._internal.runtime.Runtime_stringHash.stringHash = v;
        return v;
    }
var bytesHash(get, set) : (stdgo.Slice<stdgo.GoUInt8>, stdgo.GoUIntptr) -> stdgo.GoUIntptr;
private function get_bytesHash():(stdgo.Slice<stdgo.GoUInt8>, stdgo.GoUIntptr) -> stdgo.GoUIntptr return (_0, _1) -> stdgo._internal.runtime.Runtime_bytesHash.bytesHash([for (i in _0) i], _1);
private function set_bytesHash(v:(stdgo.Slice<stdgo.GoUInt8>, stdgo.GoUIntptr) -> stdgo.GoUIntptr):(stdgo.Slice<stdgo.GoUInt8>, stdgo.GoUIntptr) -> stdgo.GoUIntptr {
        stdgo._internal.runtime.Runtime_bytesHash.bytesHash = v;
        return v;
    }
var int32Hash(get, set) : (stdgo.GoUInt32, stdgo.GoUIntptr) -> stdgo.GoUIntptr;
private function get_int32Hash():(stdgo.GoUInt32, stdgo.GoUIntptr) -> stdgo.GoUIntptr return (_0, _1) -> stdgo._internal.runtime.Runtime_int32Hash.int32Hash(_0, _1);
private function set_int32Hash(v:(stdgo.GoUInt32, stdgo.GoUIntptr) -> stdgo.GoUIntptr):(stdgo.GoUInt32, stdgo.GoUIntptr) -> stdgo.GoUIntptr {
        stdgo._internal.runtime.Runtime_int32Hash.int32Hash = v;
        return v;
    }
var int64Hash(get, set) : (stdgo.GoUInt64, stdgo.GoUIntptr) -> stdgo.GoUIntptr;
private function get_int64Hash():(stdgo.GoUInt64, stdgo.GoUIntptr) -> stdgo.GoUIntptr return (_0, _1) -> stdgo._internal.runtime.Runtime_int64Hash.int64Hash(_0, _1);
private function set_int64Hash(v:(stdgo.GoUInt64, stdgo.GoUIntptr) -> stdgo.GoUIntptr):(stdgo.GoUInt64, stdgo.GoUIntptr) -> stdgo.GoUIntptr {
        stdgo._internal.runtime.Runtime_int64Hash.int64Hash = v;
        return v;
    }
var memHash(get, set) : (stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr, stdgo.GoUIntptr) -> stdgo.GoUIntptr;
private function get_memHash():(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr, stdgo.GoUIntptr) -> stdgo.GoUIntptr return (_0, _1, _2) -> stdgo._internal.runtime.Runtime_memHash.memHash(_0, _1, _2);
private function set_memHash(v:(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr, stdgo.GoUIntptr) -> stdgo.GoUIntptr):(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr, stdgo.GoUIntptr) -> stdgo.GoUIntptr {
        stdgo._internal.runtime.Runtime_memHash.memHash = v;
        return v;
    }
var memHash32(get, set) : (stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> stdgo.GoUIntptr;
private function get_memHash32():(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> stdgo.GoUIntptr return (_0, _1) -> stdgo._internal.runtime.Runtime_memHash32.memHash32(_0, _1);
private function set_memHash32(v:(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> stdgo.GoUIntptr):(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> stdgo.GoUIntptr {
        stdgo._internal.runtime.Runtime_memHash32.memHash32 = v;
        return v;
    }
var memHash64(get, set) : (stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> stdgo.GoUIntptr;
private function get_memHash64():(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> stdgo.GoUIntptr return (_0, _1) -> stdgo._internal.runtime.Runtime_memHash64.memHash64(_0, _1);
private function set_memHash64(v:(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> stdgo.GoUIntptr):(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> stdgo.GoUIntptr {
        stdgo._internal.runtime.Runtime_memHash64.memHash64 = v;
        return v;
    }
var efaceHash(get, set) : (stdgo.AnyInterface, stdgo.GoUIntptr) -> stdgo.GoUIntptr;
private function get_efaceHash():(stdgo.AnyInterface, stdgo.GoUIntptr) -> stdgo.GoUIntptr return (_0, _1) -> stdgo._internal.runtime.Runtime_efaceHash.efaceHash(_0, _1);
private function set_efaceHash(v:(stdgo.AnyInterface, stdgo.GoUIntptr) -> stdgo.GoUIntptr):(stdgo.AnyInterface, stdgo.GoUIntptr) -> stdgo.GoUIntptr {
        stdgo._internal.runtime.Runtime_efaceHash.efaceHash = v;
        return v;
    }
var ifaceHash(get, set) : (stdgo.AnyInterface, stdgo.GoUIntptr) -> stdgo.GoUIntptr;
private function get_ifaceHash():(stdgo.AnyInterface, stdgo.GoUIntptr) -> stdgo.GoUIntptr return (_0, _1) -> stdgo._internal.runtime.Runtime_ifaceHash.ifaceHash(_0, _1);
private function set_ifaceHash(v:(stdgo.AnyInterface, stdgo.GoUIntptr) -> stdgo.GoUIntptr):(stdgo.AnyInterface, stdgo.GoUIntptr) -> stdgo.GoUIntptr {
        stdgo._internal.runtime.Runtime_ifaceHash.ifaceHash = v;
        return v;
    }
var useAeshash(get, set) : stdgo.Pointer<Bool>;
private function get_useAeshash():stdgo.Pointer<Bool> return stdgo._internal.runtime.Runtime_useAeshash.useAeshash;
private function set_useAeshash(v:stdgo.Pointer<Bool>):stdgo.Pointer<Bool> {
        stdgo._internal.runtime.Runtime_useAeshash.useAeshash = v;
        return v;
    }
var open(get, set) : (stdgo.Pointer<stdgo.GoUInt8>, stdgo.GoInt32, stdgo.GoInt32) -> stdgo.GoInt32;
private function get_open():(stdgo.Pointer<stdgo.GoUInt8>, stdgo.GoInt32, stdgo.GoInt32) -> stdgo.GoInt32 return (_0, _1, _2) -> stdgo._internal.runtime.Runtime_open.open(_0, _1, _2);
private function set_open(v:(stdgo.Pointer<stdgo.GoUInt8>, stdgo.GoInt32, stdgo.GoInt32) -> stdgo.GoInt32):(stdgo.Pointer<stdgo.GoUInt8>, stdgo.GoInt32, stdgo.GoInt32) -> stdgo.GoInt32 {
        stdgo._internal.runtime.Runtime_open.open = v;
        return v;
    }
var close(get, set) : stdgo.GoInt32 -> stdgo.GoInt32;
private function get_close():stdgo.GoInt32 -> stdgo.GoInt32 return _0 -> stdgo._internal.runtime.Runtime_close.close(_0);
private function set_close(v:stdgo.GoInt32 -> stdgo.GoInt32):stdgo.GoInt32 -> stdgo.GoInt32 {
        stdgo._internal.runtime.Runtime_close.close = v;
        return v;
    }
var read(get, set) : (stdgo.GoInt32, stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoInt32) -> stdgo.GoInt32;
private function get_read():(stdgo.GoInt32, stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoInt32) -> stdgo.GoInt32 return (_0, _1, _2) -> stdgo._internal.runtime.Runtime_read.read(_0, _1, _2);
private function set_read(v:(stdgo.GoInt32, stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoInt32) -> stdgo.GoInt32):(stdgo.GoInt32, stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoInt32) -> stdgo.GoInt32 {
        stdgo._internal.runtime.Runtime_read.read = v;
        return v;
    }
var write(get, set) : (stdgo.GoUIntptr, stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoInt32) -> stdgo.GoInt32;
private function get_write():(stdgo.GoUIntptr, stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoInt32) -> stdgo.GoInt32 return (_0, _1, _2) -> stdgo._internal.runtime.Runtime_write.write(_0, _1, _2);
private function set_write(v:(stdgo.GoUIntptr, stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoInt32) -> stdgo.GoInt32):(stdgo.GoUIntptr, stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoInt32) -> stdgo.GoInt32 {
        stdgo._internal.runtime.Runtime_write.write = v;
        return v;
    }
var forceGCPeriod(get, set) : stdgo.Pointer<haxe.Int64>;
private function get_forceGCPeriod():stdgo.Pointer<haxe.Int64> return stdgo._internal.runtime.Runtime_forceGCPeriod.forceGCPeriod;
private function set_forceGCPeriod(v:stdgo.Pointer<haxe.Int64>):stdgo.Pointer<haxe.Int64> {
        stdgo._internal.runtime.Runtime_forceGCPeriod.forceGCPeriod = v;
        return v;
    }
var readUnaligned32(get, set) : stdgo._internal.unsafe.Unsafe.UnsafePointer -> stdgo.GoUInt32;
private function get_readUnaligned32():stdgo._internal.unsafe.Unsafe.UnsafePointer -> stdgo.GoUInt32 return _0 -> stdgo._internal.runtime.Runtime_readUnaligned32.readUnaligned32(_0);
private function set_readUnaligned32(v:stdgo._internal.unsafe.Unsafe.UnsafePointer -> stdgo.GoUInt32):stdgo._internal.unsafe.Unsafe.UnsafePointer -> stdgo.GoUInt32 {
        stdgo._internal.runtime.Runtime_readUnaligned32.readUnaligned32 = v;
        return v;
    }
var readUnaligned64(get, set) : stdgo._internal.unsafe.Unsafe.UnsafePointer -> stdgo.GoUInt64;
private function get_readUnaligned64():stdgo._internal.unsafe.Unsafe.UnsafePointer -> stdgo.GoUInt64 return _0 -> stdgo._internal.runtime.Runtime_readUnaligned64.readUnaligned64(_0);
private function set_readUnaligned64(v:stdgo._internal.unsafe.Unsafe.UnsafePointer -> stdgo.GoUInt64):stdgo._internal.unsafe.Unsafe.UnsafePointer -> stdgo.GoUInt64 {
        stdgo._internal.runtime.Runtime_readUnaligned64.readUnaligned64 = v;
        return v;
    }
var casGStatusAlwaysTrack(get, set) : stdgo.Pointer<Bool>;
private function get_casGStatusAlwaysTrack():stdgo.Pointer<Bool> return stdgo._internal.runtime.Runtime_casGStatusAlwaysTrack.casGStatusAlwaysTrack;
private function set_casGStatusAlwaysTrack(v:stdgo.Pointer<Bool>):stdgo.Pointer<Bool> {
        stdgo._internal.runtime.Runtime_casGStatusAlwaysTrack.casGStatusAlwaysTrack = v;
        return v;
    }
var baseChunkIdx(get, set) : ChunkIdx;
private function get_baseChunkIdx():ChunkIdx return stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx;
private function set_baseChunkIdx(v:ChunkIdx):ChunkIdx {
        stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx = v;
        return v;
    }
var semacquire(get, set) : stdgo.Pointer<stdgo.GoUInt32> -> Void;
private function get_semacquire():stdgo.Pointer<stdgo.GoUInt32> -> Void return _0 -> stdgo._internal.runtime.Runtime_semacquire.semacquire(_0);
private function set_semacquire(v:stdgo.Pointer<stdgo.GoUInt32> -> Void):stdgo.Pointer<stdgo.GoUInt32> -> Void {
        stdgo._internal.runtime.Runtime_semacquire.semacquire = v;
        return v;
    }
var semrelease1(get, set) : (stdgo.Pointer<stdgo.GoUInt32>, Bool, stdgo.GoInt) -> Void;
private function get_semrelease1():(stdgo.Pointer<stdgo.GoUInt32>, Bool, stdgo.GoInt) -> Void return (_0, _1, _2) -> stdgo._internal.runtime.Runtime_semrelease1.semrelease1(_0, _1, _2);
private function set_semrelease1(v:(stdgo.Pointer<stdgo.GoUInt32>, Bool, stdgo.GoInt) -> Void):(stdgo.Pointer<stdgo.GoUInt32>, Bool, stdgo.GoInt) -> Void {
        stdgo._internal.runtime.Runtime_semrelease1.semrelease1 = v;
        return v;
    }
var timeHistogramMetricsBuckets(get, set) : () -> stdgo.Slice<stdgo.GoFloat64>;
private function get_timeHistogramMetricsBuckets():() -> stdgo.Slice<stdgo.GoFloat64> return () -> stdgo._internal.runtime.Runtime_timeHistogramMetricsBuckets.timeHistogramMetricsBuckets();
private function set_timeHistogramMetricsBuckets(v:() -> stdgo.Slice<stdgo.GoFloat64>):() -> stdgo.Slice<stdgo.GoFloat64> {
        stdgo._internal.runtime.Runtime_timeHistogramMetricsBuckets.timeHistogramMetricsBuckets = v;
        return v;
    }
var gctestMoveStackOnNextCall(get, set) : () -> Void;
private function get_gctestMoveStackOnNextCall():() -> Void return () -> stdgo._internal.runtime.Runtime_gctestMoveStackOnNextCall.gctestMoveStackOnNextCall();
private function set_gctestMoveStackOnNextCall(v:() -> Void):() -> Void {
        stdgo._internal.runtime.Runtime_gctestMoveStackOnNextCall.gctestMoveStackOnNextCall = v;
        return v;
    }
var timediv(get, set) : (stdgo.GoInt64, stdgo.GoInt32, stdgo.Pointer<stdgo.GoInt32>) -> stdgo.GoInt32;
private function get_timediv():(stdgo.GoInt64, stdgo.GoInt32, stdgo.Pointer<stdgo.GoInt32>) -> stdgo.GoInt32 return (_0, _1, _2) -> stdgo._internal.runtime.Runtime_timediv.timediv(_0, _1, _2);
private function set_timediv(v:(stdgo.GoInt64, stdgo.GoInt32, stdgo.Pointer<stdgo.GoInt32>) -> stdgo.GoInt32):(stdgo.GoInt64, stdgo.GoInt32, stdgo.Pointer<stdgo.GoInt32>) -> stdgo.GoInt32 {
        stdgo._internal.runtime.Runtime_timediv.timediv = v;
        return v;
    }
var zeroBase(get, set) : stdgo._internal.unsafe.Unsafe.UnsafePointer;
private function get_zeroBase():stdgo._internal.unsafe.Unsafe.UnsafePointer return stdgo._internal.runtime.Runtime_zeroBase.zeroBase;
private function set_zeroBase(v:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        stdgo._internal.runtime.Runtime_zeroBase.zeroBase = v;
        return v;
    }
var alignUp(get, set) : (stdgo.GoUIntptr, stdgo.GoUIntptr) -> stdgo.GoUIntptr;
private function get_alignUp():(stdgo.GoUIntptr, stdgo.GoUIntptr) -> stdgo.GoUIntptr return (_0, _1) -> stdgo._internal.runtime.Runtime_alignUp.alignUp(_0, _1);
private function set_alignUp(v:(stdgo.GoUIntptr, stdgo.GoUIntptr) -> stdgo.GoUIntptr):(stdgo.GoUIntptr, stdgo.GoUIntptr) -> stdgo.GoUIntptr {
        stdgo._internal.runtime.Runtime_alignUp.alignUp = v;
        return v;
    }
var isPinned(get, set) : stdgo._internal.unsafe.Unsafe.UnsafePointer -> Bool;
private function get_isPinned():stdgo._internal.unsafe.Unsafe.UnsafePointer -> Bool return _0 -> stdgo._internal.runtime.Runtime_isPinned.isPinned(_0);
private function set_isPinned(v:stdgo._internal.unsafe.Unsafe.UnsafePointer -> Bool):stdgo._internal.unsafe.Unsafe.UnsafePointer -> Bool {
        stdgo._internal.runtime.Runtime_isPinned.isPinned = v;
        return v;
    }
var getPinCounter(get, set) : stdgo._internal.unsafe.Unsafe.UnsafePointer -> stdgo.Pointer<stdgo.GoUIntptr>;
private function get_getPinCounter():stdgo._internal.unsafe.Unsafe.UnsafePointer -> stdgo.Pointer<stdgo.GoUIntptr> return _0 -> stdgo._internal.runtime.Runtime_getPinCounter.getPinCounter(_0);
private function set_getPinCounter(v:stdgo._internal.unsafe.Unsafe.UnsafePointer -> stdgo.Pointer<stdgo.GoUIntptr>):stdgo._internal.unsafe.Unsafe.UnsafePointer -> stdgo.Pointer<stdgo.GoUIntptr> {
        stdgo._internal.runtime.Runtime_getPinCounter.getPinCounter = v;
        return v;
    }
class Error_static_extension {
    static public function runtimeError(t:stdgo._internal.runtime.Runtime_Error.Error):Void {
        stdgo._internal.runtime.Runtime_Error_static_extension.Error_static_extension.runtimeError(t);
    }
}
typedef Error = stdgo._internal.runtime.Runtime_Error.Error;
class TestingT_static_extension {
    static public function tempDir(t:stdgo._internal.runtime.Runtime_TestingT.TestingT):String {
        return stdgo._internal.runtime.Runtime_TestingT_static_extension.TestingT_static_extension.tempDir(t);
    }
    static public function skipped(t:stdgo._internal.runtime.Runtime_TestingT.TestingT):Bool {
        return stdgo._internal.runtime.Runtime_TestingT_static_extension.TestingT_static_extension.skipped(t);
    }
    static public function skipf(t:stdgo._internal.runtime.Runtime_TestingT.TestingT, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.runtime.Runtime_TestingT_static_extension.TestingT_static_extension.skipf(t, _format, ...[for (i in _args) i]);
    }
    static public function skipNow(t:stdgo._internal.runtime.Runtime_TestingT.TestingT):Void {
        stdgo._internal.runtime.Runtime_TestingT_static_extension.TestingT_static_extension.skipNow(t);
    }
    static public function skip(t:stdgo._internal.runtime.Runtime_TestingT.TestingT, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.runtime.Runtime_TestingT_static_extension.TestingT_static_extension.skip(t, ...[for (i in _args) i]);
    }
    static public function setenv(t:stdgo._internal.runtime.Runtime_TestingT.TestingT, _key:String, _value:String):Void {
        stdgo._internal.runtime.Runtime_TestingT_static_extension.TestingT_static_extension.setenv(t, _key, _value);
    }
    static public function name(t:stdgo._internal.runtime.Runtime_TestingT.TestingT):String {
        return stdgo._internal.runtime.Runtime_TestingT_static_extension.TestingT_static_extension.name(t);
    }
    static public function logf(t:stdgo._internal.runtime.Runtime_TestingT.TestingT, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.runtime.Runtime_TestingT_static_extension.TestingT_static_extension.logf(t, _format, ...[for (i in _args) i]);
    }
    static public function log(t:stdgo._internal.runtime.Runtime_TestingT.TestingT, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.runtime.Runtime_TestingT_static_extension.TestingT_static_extension.log(t, ...[for (i in _args) i]);
    }
    static public function helper(t:stdgo._internal.runtime.Runtime_TestingT.TestingT):Void {
        stdgo._internal.runtime.Runtime_TestingT_static_extension.TestingT_static_extension.helper(t);
    }
    static public function fatalf(t:stdgo._internal.runtime.Runtime_TestingT.TestingT, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.runtime.Runtime_TestingT_static_extension.TestingT_static_extension.fatalf(t, _format, ...[for (i in _args) i]);
    }
    static public function fatal(t:stdgo._internal.runtime.Runtime_TestingT.TestingT, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.runtime.Runtime_TestingT_static_extension.TestingT_static_extension.fatal(t, ...[for (i in _args) i]);
    }
    static public function failed(t:stdgo._internal.runtime.Runtime_TestingT.TestingT):Bool {
        return stdgo._internal.runtime.Runtime_TestingT_static_extension.TestingT_static_extension.failed(t);
    }
    static public function failNow(t:stdgo._internal.runtime.Runtime_TestingT.TestingT):Void {
        stdgo._internal.runtime.Runtime_TestingT_static_extension.TestingT_static_extension.failNow(t);
    }
    static public function fail(t:stdgo._internal.runtime.Runtime_TestingT.TestingT):Void {
        stdgo._internal.runtime.Runtime_TestingT_static_extension.TestingT_static_extension.fail(t);
    }
    static public function errorf(t:stdgo._internal.runtime.Runtime_TestingT.TestingT, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.runtime.Runtime_TestingT_static_extension.TestingT_static_extension.errorf(t, _format, ...[for (i in _args) i]);
    }
    static public function error(t:stdgo._internal.runtime.Runtime_TestingT.TestingT, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.runtime.Runtime_TestingT_static_extension.TestingT_static_extension.error(t, ...[for (i in _args) i]);
    }
    static public function cleanup(t:stdgo._internal.runtime.Runtime_TestingT.TestingT, _0:() -> Void):Void {
        final _0 = _0;
        stdgo._internal.runtime.Runtime_TestingT_static_extension.TestingT_static_extension.cleanup(t, _0);
    }
}
typedef TestingT = stdgo._internal.runtime.Runtime_TestingT.TestingT;
@:structInit @:using(stdgo.runtime.Runtime.TypeAssertionError_static_extension) abstract TypeAssertionError(stdgo._internal.runtime.Runtime_TypeAssertionError.TypeAssertionError) from stdgo._internal.runtime.Runtime_TypeAssertionError.TypeAssertionError to stdgo._internal.runtime.Runtime_TypeAssertionError.TypeAssertionError {
    public function new() this = new stdgo._internal.runtime.Runtime_TypeAssertionError.TypeAssertionError();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract LFNode(stdgo._internal.runtime.Runtime_LFNode.LFNode) from stdgo._internal.runtime.Runtime_LFNode.LFNode to stdgo._internal.runtime.Runtime_LFNode.LFNode {
    public var next(get, set) : haxe.UInt64;
    function get_next():haxe.UInt64 return this.next;
    function set_next(v:haxe.UInt64):haxe.UInt64 {
        this.next = v;
        return v;
    }
    public var pushcnt(get, set) : stdgo.GoUIntptr;
    function get_pushcnt():stdgo.GoUIntptr return this.pushcnt;
    function set_pushcnt(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this.pushcnt = v;
        return v;
    }
    public function new(?next:haxe.UInt64, ?pushcnt:stdgo.GoUIntptr) this = new stdgo._internal.runtime.Runtime_LFNode.LFNode(next, pushcnt);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.RWMutex_static_extension) abstract RWMutex(stdgo._internal.runtime.Runtime_RWMutex.RWMutex) from stdgo._internal.runtime.Runtime_RWMutex.RWMutex to stdgo._internal.runtime.Runtime_RWMutex.RWMutex {
    public function new() this = new stdgo._internal.runtime.Runtime_RWMutex.RWMutex();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.AddrRange_static_extension) abstract AddrRange(stdgo._internal.runtime.Runtime_AddrRange.AddrRange) from stdgo._internal.runtime.Runtime_AddrRange.AddrRange to stdgo._internal.runtime.Runtime_AddrRange.AddrRange {
    public function new() this = new stdgo._internal.runtime.Runtime_AddrRange.AddrRange();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.AddrRanges_static_extension) abstract AddrRanges(stdgo._internal.runtime.Runtime_AddrRanges.AddrRanges) from stdgo._internal.runtime.Runtime_AddrRanges.AddrRanges to stdgo._internal.runtime.Runtime_AddrRanges.AddrRanges {
    public function new() this = new stdgo._internal.runtime.Runtime_AddrRanges.AddrRanges();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract BitRange(stdgo._internal.runtime.Runtime_BitRange.BitRange) from stdgo._internal.runtime.Runtime_BitRange.BitRange to stdgo._internal.runtime.Runtime_BitRange.BitRange {
    public var i(get, set) : std.UInt;
    function get_i():std.UInt return this.i;
    function set_i(v:std.UInt):std.UInt {
        this.i = v;
        return v;
    }
    public var n(get, set) : std.UInt;
    function get_n():std.UInt return this.n;
    function set_n(v:std.UInt):std.UInt {
        this.n = v;
        return v;
    }
    public function new(?i:std.UInt, ?n:std.UInt) this = new stdgo._internal.runtime.Runtime_BitRange.BitRange(i, n);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract BitsMismatch(stdgo._internal.runtime.Runtime_BitsMismatch.BitsMismatch) from stdgo._internal.runtime.Runtime_BitsMismatch.BitsMismatch to stdgo._internal.runtime.Runtime_BitsMismatch.BitsMismatch {
    public var base(get, set) : stdgo.GoUIntptr;
    function get_base():stdgo.GoUIntptr return this.base;
    function set_base(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this.base = v;
        return v;
    }
    public var got(get, set) : haxe.UInt64;
    function get_got():haxe.UInt64 return this.got;
    function set_got(v:haxe.UInt64):haxe.UInt64 {
        this.got = v;
        return v;
    }
    public var want(get, set) : haxe.UInt64;
    function get_want():haxe.UInt64 return this.want;
    function set_want(v:haxe.UInt64):haxe.UInt64 {
        this.want = v;
        return v;
    }
    public function new(?base:stdgo.GoUIntptr, ?got:haxe.UInt64, ?want:haxe.UInt64) this = new stdgo._internal.runtime.Runtime_BitsMismatch.BitsMismatch(base, got, want);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.SemTable_static_extension) abstract SemTable(stdgo._internal.runtime.Runtime_SemTable.SemTable) from stdgo._internal.runtime.Runtime_SemTable.SemTable to stdgo._internal.runtime.Runtime_SemTable.SemTable {
    public function new() this = new stdgo._internal.runtime.Runtime_SemTable.SemTable();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.GCController_static_extension) abstract GCController(stdgo._internal.runtime.Runtime_GCController.GCController) from stdgo._internal.runtime.Runtime_GCController.GCController to stdgo._internal.runtime.Runtime_GCController.GCController {
    public function new() this = new stdgo._internal.runtime.Runtime_GCController.GCController();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract GCControllerReviseDelta(stdgo._internal.runtime.Runtime_GCControllerReviseDelta.GCControllerReviseDelta) from stdgo._internal.runtime.Runtime_GCControllerReviseDelta.GCControllerReviseDelta to stdgo._internal.runtime.Runtime_GCControllerReviseDelta.GCControllerReviseDelta {
    public var heapLive(get, set) : haxe.Int64;
    function get_heapLive():haxe.Int64 return this.heapLive;
    function set_heapLive(v:haxe.Int64):haxe.Int64 {
        this.heapLive = v;
        return v;
    }
    public var heapScan(get, set) : haxe.Int64;
    function get_heapScan():haxe.Int64 return this.heapScan;
    function set_heapScan(v:haxe.Int64):haxe.Int64 {
        this.heapScan = v;
        return v;
    }
    public var heapScanWork(get, set) : haxe.Int64;
    function get_heapScanWork():haxe.Int64 return this.heapScanWork;
    function set_heapScanWork(v:haxe.Int64):haxe.Int64 {
        this.heapScanWork = v;
        return v;
    }
    public var stackScanWork(get, set) : haxe.Int64;
    function get_stackScanWork():haxe.Int64 return this.stackScanWork;
    function set_stackScanWork(v:haxe.Int64):haxe.Int64 {
        this.stackScanWork = v;
        return v;
    }
    public var globalsScanWork(get, set) : haxe.Int64;
    function get_globalsScanWork():haxe.Int64 return this.globalsScanWork;
    function set_globalsScanWork(v:haxe.Int64):haxe.Int64 {
        this.globalsScanWork = v;
        return v;
    }
    public function new(?heapLive:haxe.Int64, ?heapScan:haxe.Int64, ?heapScanWork:haxe.Int64, ?stackScanWork:haxe.Int64, ?globalsScanWork:haxe.Int64) this = new stdgo._internal.runtime.Runtime_GCControllerReviseDelta.GCControllerReviseDelta(heapLive, heapScan, heapScanWork, stackScanWork, globalsScanWork);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.PIController_static_extension) abstract PIController(stdgo._internal.runtime.Runtime_PIController.PIController) from stdgo._internal.runtime.Runtime_PIController.PIController to stdgo._internal.runtime.Runtime_PIController.PIController {
    public function new() this = new stdgo._internal.runtime.Runtime_PIController.PIController();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.GCCPULimiter_static_extension) abstract GCCPULimiter(stdgo._internal.runtime.Runtime_GCCPULimiter.GCCPULimiter) from stdgo._internal.runtime.Runtime_GCCPULimiter.GCCPULimiter to stdgo._internal.runtime.Runtime_GCCPULimiter.GCCPULimiter {
    public function new() this = new stdgo._internal.runtime.Runtime_GCCPULimiter.GCCPULimiter();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.Scavenger_static_extension) abstract Scavenger(stdgo._internal.runtime.Runtime_Scavenger.Scavenger) from stdgo._internal.runtime.Runtime_Scavenger.Scavenger to stdgo._internal.runtime.Runtime_Scavenger.Scavenger {
    public var sleep(get, set) : stdgo.GoInt64 -> stdgo.GoInt64;
    function get_sleep():stdgo.GoInt64 -> stdgo.GoInt64 return _0 -> this.sleep(_0);
    function set_sleep(v:stdgo.GoInt64 -> stdgo.GoInt64):stdgo.GoInt64 -> stdgo.GoInt64 {
        this.sleep = v;
        return v;
    }
    public var scavenge(get, set) : stdgo.GoUIntptr -> { var _0 : stdgo.GoUIntptr; var _1 : stdgo.GoInt64; };
    function get_scavenge():stdgo.GoUIntptr -> { var _0 : stdgo.GoUIntptr; var _1 : stdgo.GoInt64; } return _0 -> this.scavenge(_0);
    function set_scavenge(v:stdgo.GoUIntptr -> { var _0 : stdgo.GoUIntptr; var _1 : stdgo.GoInt64; }):stdgo.GoUIntptr -> { var _0 : stdgo.GoUIntptr; var _1 : stdgo.GoInt64; } {
        this.scavenge = v;
        return v;
    }
    public var shouldStop(get, set) : () -> Bool;
    function get_shouldStop():() -> Bool return () -> this.shouldStop();
    function set_shouldStop(v:() -> Bool):() -> Bool {
        this.shouldStop = v;
        return v;
    }
    public var goMaxProcs(get, set) : () -> stdgo.GoInt32;
    function get_goMaxProcs():() -> stdgo.GoInt32 return () -> this.goMaxProcs();
    function set_goMaxProcs(v:() -> stdgo.GoInt32):() -> stdgo.GoInt32 {
        this.goMaxProcs = v;
        return v;
    }
    public function new(?sleep:stdgo.GoInt64 -> stdgo.GoInt64, ?scavenge:stdgo.GoUIntptr -> { var _0 : stdgo.GoUIntptr; var _1 : stdgo.GoInt64; }, ?shouldStop:() -> Bool, ?goMaxProcs:() -> stdgo.GoInt32) this = new stdgo._internal.runtime.Runtime_Scavenger.Scavenger(sleep, scavenge, shouldStop, goMaxProcs);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.ScavengeIndex_static_extension) abstract ScavengeIndex(stdgo._internal.runtime.Runtime_ScavengeIndex.ScavengeIndex) from stdgo._internal.runtime.Runtime_ScavengeIndex.ScavengeIndex to stdgo._internal.runtime.Runtime_ScavengeIndex.ScavengeIndex {
    public function new() this = new stdgo._internal.runtime.Runtime_ScavengeIndex.ScavengeIndex();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.UserArena_static_extension) abstract UserArena(stdgo._internal.runtime.Runtime_UserArena.UserArena) from stdgo._internal.runtime.Runtime_UserArena.UserArena to stdgo._internal.runtime.Runtime_UserArena.UserArena {
    public function new() this = new stdgo._internal.runtime.Runtime_UserArena.UserArena();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.StackRecord_static_extension) abstract StackRecord(stdgo._internal.runtime.Runtime_StackRecord.StackRecord) from stdgo._internal.runtime.Runtime_StackRecord.StackRecord to stdgo._internal.runtime.Runtime_StackRecord.StackRecord {
    public var stack0(get, set) : haxe.ds.Vector<stdgo.GoUIntptr>;
    function get_stack0():haxe.ds.Vector<stdgo.GoUIntptr> return haxe.ds.Vector.fromArrayCopy([for (i in this.stack0) i]);
    function set_stack0(v:haxe.ds.Vector<stdgo.GoUIntptr>):haxe.ds.Vector<stdgo.GoUIntptr> {
        this.stack0 = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUIntptr>);
        return v;
    }
    public function new(?stack0:haxe.ds.Vector<stdgo.GoUIntptr>) this = new stdgo._internal.runtime.Runtime_StackRecord.StackRecord(([for (i in stack0) i] : stdgo.GoArray<stdgo.GoUIntptr>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.MemProfileRecord_static_extension) abstract MemProfileRecord(stdgo._internal.runtime.Runtime_MemProfileRecord.MemProfileRecord) from stdgo._internal.runtime.Runtime_MemProfileRecord.MemProfileRecord to stdgo._internal.runtime.Runtime_MemProfileRecord.MemProfileRecord {
    public var allocBytes(get, set) : haxe.Int64;
    function get_allocBytes():haxe.Int64 return this.allocBytes;
    function set_allocBytes(v:haxe.Int64):haxe.Int64 {
        this.allocBytes = v;
        return v;
    }
    public var freeBytes(get, set) : haxe.Int64;
    function get_freeBytes():haxe.Int64 return this.freeBytes;
    function set_freeBytes(v:haxe.Int64):haxe.Int64 {
        this.freeBytes = v;
        return v;
    }
    public var allocObjects(get, set) : haxe.Int64;
    function get_allocObjects():haxe.Int64 return this.allocObjects;
    function set_allocObjects(v:haxe.Int64):haxe.Int64 {
        this.allocObjects = v;
        return v;
    }
    public var freeObjects(get, set) : haxe.Int64;
    function get_freeObjects():haxe.Int64 return this.freeObjects;
    function set_freeObjects(v:haxe.Int64):haxe.Int64 {
        this.freeObjects = v;
        return v;
    }
    public var stack0(get, set) : haxe.ds.Vector<stdgo.GoUIntptr>;
    function get_stack0():haxe.ds.Vector<stdgo.GoUIntptr> return haxe.ds.Vector.fromArrayCopy([for (i in this.stack0) i]);
    function set_stack0(v:haxe.ds.Vector<stdgo.GoUIntptr>):haxe.ds.Vector<stdgo.GoUIntptr> {
        this.stack0 = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUIntptr>);
        return v;
    }
    public function new(?allocBytes:haxe.Int64, ?freeBytes:haxe.Int64, ?allocObjects:haxe.Int64, ?freeObjects:haxe.Int64, ?stack0:haxe.ds.Vector<stdgo.GoUIntptr>) this = new stdgo._internal.runtime.Runtime_MemProfileRecord.MemProfileRecord(allocBytes, freeBytes, allocObjects, freeObjects, ([for (i in stack0) i] : stdgo.GoArray<stdgo.GoUIntptr>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.BlockProfileRecord_static_extension) abstract BlockProfileRecord(stdgo._internal.runtime.Runtime_BlockProfileRecord.BlockProfileRecord) from stdgo._internal.runtime.Runtime_BlockProfileRecord.BlockProfileRecord to stdgo._internal.runtime.Runtime_BlockProfileRecord.BlockProfileRecord {
    public var count(get, set) : haxe.Int64;
    function get_count():haxe.Int64 return this.count;
    function set_count(v:haxe.Int64):haxe.Int64 {
        this.count = v;
        return v;
    }
    public var cycles(get, set) : haxe.Int64;
    function get_cycles():haxe.Int64 return this.cycles;
    function set_cycles(v:haxe.Int64):haxe.Int64 {
        this.cycles = v;
        return v;
    }
    public var stackRecord(get, set) : StackRecord;
    function get_stackRecord():StackRecord return this.stackRecord;
    function set_stackRecord(v:StackRecord):StackRecord {
        this.stackRecord = v;
        return v;
    }
    public function new(?count:haxe.Int64, ?cycles:haxe.Int64, ?stackRecord:StackRecord) this = new stdgo._internal.runtime.Runtime_BlockProfileRecord.BlockProfileRecord(count, cycles, stackRecord);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract MemStats(stdgo._internal.runtime.Runtime_MemStats.MemStats) from stdgo._internal.runtime.Runtime_MemStats.MemStats to stdgo._internal.runtime.Runtime_MemStats.MemStats {
    public var alloc(get, set) : haxe.UInt64;
    function get_alloc():haxe.UInt64 return this.alloc;
    function set_alloc(v:haxe.UInt64):haxe.UInt64 {
        this.alloc = v;
        return v;
    }
    public var totalAlloc(get, set) : haxe.UInt64;
    function get_totalAlloc():haxe.UInt64 return this.totalAlloc;
    function set_totalAlloc(v:haxe.UInt64):haxe.UInt64 {
        this.totalAlloc = v;
        return v;
    }
    public var sys(get, set) : haxe.UInt64;
    function get_sys():haxe.UInt64 return this.sys;
    function set_sys(v:haxe.UInt64):haxe.UInt64 {
        this.sys = v;
        return v;
    }
    public var lookups(get, set) : haxe.UInt64;
    function get_lookups():haxe.UInt64 return this.lookups;
    function set_lookups(v:haxe.UInt64):haxe.UInt64 {
        this.lookups = v;
        return v;
    }
    public var mallocs(get, set) : haxe.UInt64;
    function get_mallocs():haxe.UInt64 return this.mallocs;
    function set_mallocs(v:haxe.UInt64):haxe.UInt64 {
        this.mallocs = v;
        return v;
    }
    public var frees(get, set) : haxe.UInt64;
    function get_frees():haxe.UInt64 return this.frees;
    function set_frees(v:haxe.UInt64):haxe.UInt64 {
        this.frees = v;
        return v;
    }
    public var heapAlloc(get, set) : haxe.UInt64;
    function get_heapAlloc():haxe.UInt64 return this.heapAlloc;
    function set_heapAlloc(v:haxe.UInt64):haxe.UInt64 {
        this.heapAlloc = v;
        return v;
    }
    public var heapSys(get, set) : haxe.UInt64;
    function get_heapSys():haxe.UInt64 return this.heapSys;
    function set_heapSys(v:haxe.UInt64):haxe.UInt64 {
        this.heapSys = v;
        return v;
    }
    public var heapIdle(get, set) : haxe.UInt64;
    function get_heapIdle():haxe.UInt64 return this.heapIdle;
    function set_heapIdle(v:haxe.UInt64):haxe.UInt64 {
        this.heapIdle = v;
        return v;
    }
    public var heapInuse(get, set) : haxe.UInt64;
    function get_heapInuse():haxe.UInt64 return this.heapInuse;
    function set_heapInuse(v:haxe.UInt64):haxe.UInt64 {
        this.heapInuse = v;
        return v;
    }
    public var heapReleased(get, set) : haxe.UInt64;
    function get_heapReleased():haxe.UInt64 return this.heapReleased;
    function set_heapReleased(v:haxe.UInt64):haxe.UInt64 {
        this.heapReleased = v;
        return v;
    }
    public var heapObjects(get, set) : haxe.UInt64;
    function get_heapObjects():haxe.UInt64 return this.heapObjects;
    function set_heapObjects(v:haxe.UInt64):haxe.UInt64 {
        this.heapObjects = v;
        return v;
    }
    public var stackInuse(get, set) : haxe.UInt64;
    function get_stackInuse():haxe.UInt64 return this.stackInuse;
    function set_stackInuse(v:haxe.UInt64):haxe.UInt64 {
        this.stackInuse = v;
        return v;
    }
    public var stackSys(get, set) : haxe.UInt64;
    function get_stackSys():haxe.UInt64 return this.stackSys;
    function set_stackSys(v:haxe.UInt64):haxe.UInt64 {
        this.stackSys = v;
        return v;
    }
    public var mspanInuse(get, set) : haxe.UInt64;
    function get_mspanInuse():haxe.UInt64 return this.mspanInuse;
    function set_mspanInuse(v:haxe.UInt64):haxe.UInt64 {
        this.mspanInuse = v;
        return v;
    }
    public var mspanSys(get, set) : haxe.UInt64;
    function get_mspanSys():haxe.UInt64 return this.mspanSys;
    function set_mspanSys(v:haxe.UInt64):haxe.UInt64 {
        this.mspanSys = v;
        return v;
    }
    public var mcacheInuse(get, set) : haxe.UInt64;
    function get_mcacheInuse():haxe.UInt64 return this.mcacheInuse;
    function set_mcacheInuse(v:haxe.UInt64):haxe.UInt64 {
        this.mcacheInuse = v;
        return v;
    }
    public var mcacheSys(get, set) : haxe.UInt64;
    function get_mcacheSys():haxe.UInt64 return this.mcacheSys;
    function set_mcacheSys(v:haxe.UInt64):haxe.UInt64 {
        this.mcacheSys = v;
        return v;
    }
    public var buckHashSys(get, set) : haxe.UInt64;
    function get_buckHashSys():haxe.UInt64 return this.buckHashSys;
    function set_buckHashSys(v:haxe.UInt64):haxe.UInt64 {
        this.buckHashSys = v;
        return v;
    }
    public var gcsys(get, set) : haxe.UInt64;
    function get_gcsys():haxe.UInt64 return this.gcsys;
    function set_gcsys(v:haxe.UInt64):haxe.UInt64 {
        this.gcsys = v;
        return v;
    }
    public var otherSys(get, set) : haxe.UInt64;
    function get_otherSys():haxe.UInt64 return this.otherSys;
    function set_otherSys(v:haxe.UInt64):haxe.UInt64 {
        this.otherSys = v;
        return v;
    }
    public var nextGC(get, set) : haxe.UInt64;
    function get_nextGC():haxe.UInt64 return this.nextGC;
    function set_nextGC(v:haxe.UInt64):haxe.UInt64 {
        this.nextGC = v;
        return v;
    }
    public var lastGC(get, set) : haxe.UInt64;
    function get_lastGC():haxe.UInt64 return this.lastGC;
    function set_lastGC(v:haxe.UInt64):haxe.UInt64 {
        this.lastGC = v;
        return v;
    }
    public var pauseTotalNs(get, set) : haxe.UInt64;
    function get_pauseTotalNs():haxe.UInt64 return this.pauseTotalNs;
    function set_pauseTotalNs(v:haxe.UInt64):haxe.UInt64 {
        this.pauseTotalNs = v;
        return v;
    }
    public var pauseNs(get, set) : haxe.ds.Vector<haxe.UInt64>;
    function get_pauseNs():haxe.ds.Vector<haxe.UInt64> return haxe.ds.Vector.fromArrayCopy([for (i in this.pauseNs) i]);
    function set_pauseNs(v:haxe.ds.Vector<haxe.UInt64>):haxe.ds.Vector<haxe.UInt64> {
        this.pauseNs = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt64>);
        return v;
    }
    public var pauseEnd(get, set) : haxe.ds.Vector<haxe.UInt64>;
    function get_pauseEnd():haxe.ds.Vector<haxe.UInt64> return haxe.ds.Vector.fromArrayCopy([for (i in this.pauseEnd) i]);
    function set_pauseEnd(v:haxe.ds.Vector<haxe.UInt64>):haxe.ds.Vector<haxe.UInt64> {
        this.pauseEnd = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt64>);
        return v;
    }
    public var numGC(get, set) : std.UInt;
    function get_numGC():std.UInt return this.numGC;
    function set_numGC(v:std.UInt):std.UInt {
        this.numGC = v;
        return v;
    }
    public var numForcedGC(get, set) : std.UInt;
    function get_numForcedGC():std.UInt return this.numForcedGC;
    function set_numForcedGC(v:std.UInt):std.UInt {
        this.numForcedGC = v;
        return v;
    }
    public var gccpufraction(get, set) : StdTypes.Float;
    function get_gccpufraction():StdTypes.Float return this.gccpufraction;
    function set_gccpufraction(v:StdTypes.Float):StdTypes.Float {
        this.gccpufraction = v;
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
    public var bySize(get, set) : haxe.ds.Vector<stdgo.Tuple.Tuple3<std.UInt, haxe.UInt64, haxe.UInt64>>;
    function get_bySize():haxe.ds.Vector<stdgo.Tuple.Tuple3<std.UInt, haxe.UInt64, haxe.UInt64>> return haxe.ds.Vector.fromArrayCopy([for (i in this.bySize) {
        final obj = i;
        { size : obj.size, mallocs : obj.mallocs, frees : obj.frees };
    }]);
    function set_bySize(v:haxe.ds.Vector<stdgo.Tuple.Tuple3<std.UInt, haxe.UInt64, haxe.UInt64>>):haxe.ds.Vector<stdgo.Tuple.Tuple3<std.UInt, haxe.UInt64, haxe.UInt64>> {
        this.bySize = ([for (i in v) {
            final obj = i;
            { size : obj.size, mallocs : obj.mallocs, frees : obj.frees };
        }] : stdgo.GoArray<{ var size : stdgo.GoUInt32; var mallocs : stdgo.GoUInt64; var frees : stdgo.GoUInt64; }>);
        return v;
    }
    public function new(?alloc:haxe.UInt64, ?totalAlloc:haxe.UInt64, ?sys:haxe.UInt64, ?lookups:haxe.UInt64, ?mallocs:haxe.UInt64, ?frees:haxe.UInt64, ?heapAlloc:haxe.UInt64, ?heapSys:haxe.UInt64, ?heapIdle:haxe.UInt64, ?heapInuse:haxe.UInt64, ?heapReleased:haxe.UInt64, ?heapObjects:haxe.UInt64, ?stackInuse:haxe.UInt64, ?stackSys:haxe.UInt64, ?mspanInuse:haxe.UInt64, ?mspanSys:haxe.UInt64, ?mcacheInuse:haxe.UInt64, ?mcacheSys:haxe.UInt64, ?buckHashSys:haxe.UInt64, ?gcsys:haxe.UInt64, ?otherSys:haxe.UInt64, ?nextGC:haxe.UInt64, ?lastGC:haxe.UInt64, ?pauseTotalNs:haxe.UInt64, ?pauseNs:haxe.ds.Vector<haxe.UInt64>, ?pauseEnd:haxe.ds.Vector<haxe.UInt64>, ?numGC:std.UInt, ?numForcedGC:std.UInt, ?gccpufraction:StdTypes.Float, ?enableGC:Bool, ?debugGC:Bool, ?bySize:haxe.ds.Vector<stdgo.Tuple.Tuple3<std.UInt, haxe.UInt64, haxe.UInt64>>) this = new stdgo._internal.runtime.Runtime_MemStats.MemStats(
alloc,
totalAlloc,
sys,
lookups,
mallocs,
frees,
heapAlloc,
heapSys,
heapIdle,
heapInuse,
heapReleased,
heapObjects,
stackInuse,
stackSys,
mspanInuse,
mspanSys,
mcacheInuse,
mcacheSys,
buckHashSys,
gcsys,
otherSys,
nextGC,
lastGC,
pauseTotalNs,
([for (i in pauseNs) i] : stdgo.GoArray<stdgo.GoUInt64>),
([for (i in pauseEnd) i] : stdgo.GoArray<stdgo.GoUInt64>),
numGC,
numForcedGC,
gccpufraction,
enableGC,
debugGC,
([for (i in bySize) {
        final obj = i;
        { size : obj.size, mallocs : obj.mallocs, frees : obj.frees };
    }] : stdgo.GoArray<{ var size : stdgo.GoUInt32; var mallocs : stdgo.GoUInt64; var frees : stdgo.GoUInt64; }>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.PanicNilError_static_extension) abstract PanicNilError(stdgo._internal.runtime.Runtime_PanicNilError.PanicNilError) from stdgo._internal.runtime.Runtime_PanicNilError.PanicNilError to stdgo._internal.runtime.Runtime_PanicNilError.PanicNilError {
    public function new() this = new stdgo._internal.runtime.Runtime_PanicNilError.PanicNilError();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.Pinner_static_extension) abstract Pinner(stdgo._internal.runtime.Runtime_Pinner.Pinner) from stdgo._internal.runtime.Runtime_Pinner.Pinner to stdgo._internal.runtime.Runtime_Pinner.Pinner {
    public function new() this = new stdgo._internal.runtime.Runtime_Pinner.Pinner();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.Frames_static_extension) abstract Frames(stdgo._internal.runtime.Runtime_Frames.Frames) from stdgo._internal.runtime.Runtime_Frames.Frames to stdgo._internal.runtime.Runtime_Frames.Frames {
    public function new() this = new stdgo._internal.runtime.Runtime_Frames.Frames();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract Frame(stdgo._internal.runtime.Runtime_Frame.Frame) from stdgo._internal.runtime.Runtime_Frame.Frame to stdgo._internal.runtime.Runtime_Frame.Frame {
    public var pc(get, set) : stdgo.GoUIntptr;
    function get_pc():stdgo.GoUIntptr return this.pc;
    function set_pc(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this.pc = v;
        return v;
    }
    public var func(get, set) : Func;
    function get_func():Func return this.func;
    function set_func(v:Func):Func {
        this.func = v;
        return v;
    }
    public var function_(get, set) : String;
    function get_function_():String return this.function_;
    function set_function_(v:String):String {
        this.function_ = v;
        return v;
    }
    public var file(get, set) : String;
    function get_file():String return this.file;
    function set_file(v:String):String {
        this.file = v;
        return v;
    }
    public var line(get, set) : StdTypes.Int;
    function get_line():StdTypes.Int return this.line;
    function set_line(v:StdTypes.Int):StdTypes.Int {
        this.line = v;
        return v;
    }
    public var entry(get, set) : stdgo.GoUIntptr;
    function get_entry():stdgo.GoUIntptr return this.entry;
    function set_entry(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this.entry = v;
        return v;
    }
    public function new(?pc:stdgo.GoUIntptr, ?func:Func, ?function_:String, ?file:String, ?line:StdTypes.Int, ?entry:stdgo.GoUIntptr) this = new stdgo._internal.runtime.Runtime_Frame.Frame(pc, func, function_, file, line, entry);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.Runtime.Func_static_extension) abstract Func(stdgo._internal.runtime.Runtime_Func.Func) from stdgo._internal.runtime.Runtime_Func.Func to stdgo._internal.runtime.Runtime_Func.Func {
    public function new() this = new stdgo._internal.runtime.Runtime_Func.Func();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class T__struct_0_static_extension {

}
typedef T__struct_0 = stdgo._internal.runtime.Runtime_T__struct_0.T__struct_0;
typedef LockRank = stdgo._internal.runtime.Runtime_LockRank.LockRank;
typedef ProfBuf = stdgo._internal.runtime.Runtime_ProfBuf.ProfBuf;
typedef G = stdgo._internal.runtime.Runtime_G.G;
typedef Sudog = stdgo._internal.runtime.Runtime_Sudog.Sudog;
typedef PallocSum = stdgo._internal.runtime.Runtime_PallocSum.PallocSum;
typedef PallocBits = stdgo._internal.runtime.Runtime_PallocBits.PallocBits;
typedef PallocData = stdgo._internal.runtime.Runtime_PallocData.PallocData;
typedef PageCache = stdgo._internal.runtime.Runtime_PageCache.PageCache;
typedef ChunkIdx = stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx;
typedef PageAlloc = stdgo._internal.runtime.Runtime_PageAlloc.PageAlloc;
typedef MSpan = stdgo._internal.runtime.Runtime_MSpan.MSpan;
typedef TimeHistogram = stdgo._internal.runtime.Runtime_TimeHistogram.TimeHistogram;
class TypeAssertionError_static_extension {
    static public function error(_e:TypeAssertionError):String {
        return stdgo._internal.runtime.Runtime_TypeAssertionError_static_extension.TypeAssertionError_static_extension.error(_e);
    }
    static public function runtimeError(_:TypeAssertionError):Void {
        stdgo._internal.runtime.Runtime_TypeAssertionError_static_extension.TypeAssertionError_static_extension.runtimeError(_);
    }
}
class RWMutex_static_extension {
    static public function unlock(_rw:RWMutex):Void {
        stdgo._internal.runtime.Runtime_RWMutex_static_extension.RWMutex_static_extension.unlock(_rw);
    }
    static public function lock(_rw:RWMutex):Void {
        stdgo._internal.runtime.Runtime_RWMutex_static_extension.RWMutex_static_extension.lock(_rw);
    }
    static public function runlock(_rw:RWMutex):Void {
        stdgo._internal.runtime.Runtime_RWMutex_static_extension.RWMutex_static_extension.runlock(_rw);
    }
    static public function rlock(_rw:RWMutex):Void {
        stdgo._internal.runtime.Runtime_RWMutex_static_extension.RWMutex_static_extension.rlock(_rw);
    }
}
class AddrRange_static_extension {
    static public function size(_a:AddrRange):stdgo.GoUIntptr {
        return stdgo._internal.runtime.Runtime_AddrRange_static_extension.AddrRange_static_extension.size(_a);
    }
    static public function equals(_a:AddrRange, _b:AddrRange):Bool {
        return stdgo._internal.runtime.Runtime_AddrRange_static_extension.AddrRange_static_extension.equals(_a, _b);
    }
    static public function limit(_a:AddrRange):stdgo.GoUIntptr {
        return stdgo._internal.runtime.Runtime_AddrRange_static_extension.AddrRange_static_extension.limit(_a);
    }
    static public function base(_a:AddrRange):stdgo.GoUIntptr {
        return stdgo._internal.runtime.Runtime_AddrRange_static_extension.AddrRange_static_extension.base(_a);
    }
    public static function _takeFromFront(__self__:stdgo._internal.runtime.Runtime_AddrRange.AddrRange, _offset:stdgo.GoUIntptr, _kind:std.UInt):stdgo.Tuple<stdgo.GoUIntptr, Bool> {
        return {
            final obj = stdgo._internal.runtime.Runtime_AddrRange_static_extension.AddrRange_static_extension._takeFromFront(__self__, _offset, _kind);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _takeFromBack(__self__:stdgo._internal.runtime.Runtime_AddrRange.AddrRange, _offset:stdgo.GoUIntptr, _kind:std.UInt):stdgo.Tuple<stdgo.GoUIntptr, Bool> {
        return {
            final obj = stdgo._internal.runtime.Runtime_AddrRange_static_extension.AddrRange_static_extension._takeFromBack(__self__, _offset, _kind);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _subtract(__self__:stdgo._internal.runtime.Runtime_AddrRange.AddrRange, __0:T_addrRange):T_addrRange {
        return stdgo._internal.runtime.Runtime_AddrRange_static_extension.AddrRange_static_extension._subtract(__self__, __0);
    }
    public static function _size(__self__:stdgo._internal.runtime.Runtime_AddrRange.AddrRange):stdgo.GoUIntptr {
        return stdgo._internal.runtime.Runtime_AddrRange_static_extension.AddrRange_static_extension._size(__self__);
    }
    public static function _removeGreaterEqual(__self__:stdgo._internal.runtime.Runtime_AddrRange.AddrRange, __0:stdgo.GoUIntptr):T_addrRange {
        return stdgo._internal.runtime.Runtime_AddrRange_static_extension.AddrRange_static_extension._removeGreaterEqual(__self__, __0);
    }
    public static function _contains(__self__:stdgo._internal.runtime.Runtime_AddrRange.AddrRange, __0:stdgo.GoUIntptr):Bool {
        return stdgo._internal.runtime.Runtime_AddrRange_static_extension.AddrRange_static_extension._contains(__self__, __0);
    }
}
class AddrRanges_static_extension {
    static public function totalBytes(_a:AddrRanges):stdgo.GoUIntptr {
        return stdgo._internal.runtime.Runtime_AddrRanges_static_extension.AddrRanges_static_extension.totalBytes(_a);
    }
    static public function add(_a:AddrRanges, _r:AddrRange):Void {
        stdgo._internal.runtime.Runtime_AddrRanges_static_extension.AddrRanges_static_extension.add(_a, _r);
    }
    static public function findSucc(_a:AddrRanges, _base:stdgo.GoUIntptr):StdTypes.Int {
        return stdgo._internal.runtime.Runtime_AddrRanges_static_extension.AddrRanges_static_extension.findSucc(_a, _base);
    }
    static public function ranges(_a:AddrRanges):Array<AddrRange> {
        return [for (i in stdgo._internal.runtime.Runtime_AddrRanges_static_extension.AddrRanges_static_extension.ranges(_a)) i];
    }
    public static function _removeLast(__self__:stdgo._internal.runtime.Runtime_AddrRanges.AddrRanges, __0:stdgo.GoUIntptr):T_addrRange {
        return stdgo._internal.runtime.Runtime_AddrRanges_static_extension.AddrRanges_static_extension._removeLast(__self__, __0);
    }
    public static function _removeGreaterEqual(__self__:stdgo._internal.runtime.Runtime_AddrRanges.AddrRanges, __0:stdgo.GoUIntptr) {
        stdgo._internal.runtime.Runtime_AddrRanges_static_extension.AddrRanges_static_extension._removeGreaterEqual(__self__, __0);
    }
    public static function _init(__self__:stdgo._internal.runtime.Runtime_AddrRanges.AddrRanges, _sysStat:stdgo.Pointer<T_sysMemStat>) {
        stdgo._internal.runtime.Runtime_AddrRanges_static_extension.AddrRanges_static_extension._init(__self__, _sysStat);
    }
    public static function _findSucc(__self__:stdgo._internal.runtime.Runtime_AddrRanges.AddrRanges, __0:stdgo.GoUIntptr):StdTypes.Int {
        return stdgo._internal.runtime.Runtime_AddrRanges_static_extension.AddrRanges_static_extension._findSucc(__self__, __0);
    }
    public static function _findAddrGreaterEqual(__self__:stdgo._internal.runtime.Runtime_AddrRanges.AddrRanges, __0:stdgo.GoUIntptr):stdgo.Tuple<stdgo.GoUIntptr, Bool> {
        return {
            final obj = stdgo._internal.runtime.Runtime_AddrRanges_static_extension.AddrRanges_static_extension._findAddrGreaterEqual(__self__, __0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _contains(__self__:stdgo._internal.runtime.Runtime_AddrRanges.AddrRanges, __0:stdgo.GoUIntptr):Bool {
        return stdgo._internal.runtime.Runtime_AddrRanges_static_extension.AddrRanges_static_extension._contains(__self__, __0);
    }
    public static function _cloneInto(__self__:stdgo._internal.runtime.Runtime_AddrRanges.AddrRanges, _b:T_addrRanges) {
        stdgo._internal.runtime.Runtime_AddrRanges_static_extension.AddrRanges_static_extension._cloneInto(__self__, _b);
    }
    public static function _add(__self__:stdgo._internal.runtime.Runtime_AddrRanges.AddrRanges, __0:T_addrRange) {
        stdgo._internal.runtime.Runtime_AddrRanges_static_extension.AddrRanges_static_extension._add(__self__, __0);
    }
}
class SemTable_static_extension {
    static public function dequeue(_t:SemTable, _addr:stdgo.Pointer<std.UInt>):Bool {
        return stdgo._internal.runtime.Runtime_SemTable_static_extension.SemTable_static_extension.dequeue(_t, _addr);
    }
    static public function enqueue(_t:SemTable, _addr:stdgo.Pointer<std.UInt>):Void {
        stdgo._internal.runtime.Runtime_SemTable_static_extension.SemTable_static_extension.enqueue(_t, _addr);
    }
    public static function _rootFor(__self__:stdgo._internal.runtime.Runtime_SemTable.SemTable, _addr:stdgo.Pointer<std.UInt>):T_semaRoot {
        return stdgo._internal.runtime.Runtime_SemTable_static_extension.SemTable_static_extension._rootFor(__self__, _addr);
    }
}
class GCController_static_extension {
    static public function setMaxIdleMarkWorkers(_c:GCController, _max:StdTypes.Int):Void {
        stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension.setMaxIdleMarkWorkers(_c, _max);
    }
    static public function removeIdleMarkWorker(_c:GCController):Void {
        stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension.removeIdleMarkWorker(_c);
    }
    static public function needIdleMarkWorker(_c:GCController):Bool {
        return stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension.needIdleMarkWorker(_c);
    }
    static public function addIdleMarkWorker(_c:GCController):Bool {
        return stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension.addIdleMarkWorker(_c);
    }
    static public function endCycle(_c:GCController, _bytesMarked:haxe.UInt64, _assistTime:haxe.Int64, _elapsed:haxe.Int64, _gomaxprocs:StdTypes.Int):Void {
        stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension.endCycle(_c, _bytesMarked, _assistTime, _elapsed, _gomaxprocs);
    }
    static public function revise(_c:GCController, _d:GCControllerReviseDelta):Void {
        stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension.revise(_c, _d);
    }
    static public function triggered(_c:GCController):haxe.UInt64 {
        return stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension.triggered(_c);
    }
    static public function heapMarked(_c:GCController):haxe.UInt64 {
        return stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension.heapMarked(_c);
    }
    static public function heapLive(_c:GCController):haxe.UInt64 {
        return stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension.heapLive(_c);
    }
    static public function heapGoal(_c:GCController):haxe.UInt64 {
        return stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension.heapGoal(_c);
    }
    static public function assistWorkPerByte(_c:GCController):StdTypes.Float {
        return stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension.assistWorkPerByte(_c);
    }
    static public function startCycle(_c:GCController, _stackSize:haxe.UInt64, _globalsSize:haxe.UInt64, _scannableFrac:StdTypes.Float, _gomaxprocs:StdTypes.Int):Void {
        stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension.startCycle(_c, _stackSize, _globalsSize, _scannableFrac, _gomaxprocs);
    }
    public static function _update(__self__:stdgo._internal.runtime.Runtime_GCController.GCController, _old:haxe.Int64, _new:haxe.Int64) {
        stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension._update(__self__, _old, _new);
    }
    public static function _trigger(__self__:stdgo._internal.runtime.Runtime_GCController.GCController):stdgo.Tuple<haxe.UInt64, haxe.UInt64> {
        return {
            final obj = stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension._trigger(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _startCycle(__self__:stdgo._internal.runtime.Runtime_GCController.GCController, _markStartTime:haxe.Int64, _procs:StdTypes.Int, _trigger:T_gcTrigger) {
        stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension._startCycle(__self__, _markStartTime, _procs, _trigger);
    }
    public static function _setMemoryLimit(__self__:stdgo._internal.runtime.Runtime_GCController.GCController, _n:haxe.Int64):haxe.Int64 {
        return stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension._setMemoryLimit(__self__, _n);
    }
    public static function _setMaxIdleMarkWorkers(__self__:stdgo._internal.runtime.Runtime_GCController.GCController, _delta:StdTypes.Int) {
        stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension._setMaxIdleMarkWorkers(__self__, _delta);
    }
    public static function _setGCPercent(__self__:stdgo._internal.runtime.Runtime_GCController.GCController, _delta:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension._setGCPercent(__self__, _delta);
    }
    public static function _revise(__self__:stdgo._internal.runtime.Runtime_GCController.GCController) {
        stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension._revise(__self__);
    }
    public static function _resetLive(__self__:stdgo._internal.runtime.Runtime_GCController.GCController, __0:haxe.UInt64) {
        stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension._resetLive(__self__, __0);
    }
    public static function _removeIdleMarkWorker(__self__:stdgo._internal.runtime.Runtime_GCController.GCController) {
        stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension._removeIdleMarkWorker(__self__);
    }
    public static function _needIdleMarkWorker(__self__:stdgo._internal.runtime.Runtime_GCController.GCController):Bool {
        return stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension._needIdleMarkWorker(__self__);
    }
    public static function _memoryLimitHeapGoal(__self__:stdgo._internal.runtime.Runtime_GCController.GCController):haxe.UInt64 {
        return stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension._memoryLimitHeapGoal(__self__);
    }
    public static function _markWorkerStop(__self__:stdgo._internal.runtime.Runtime_GCController.GCController, _mode:T_gcMarkWorkerMode, _duration:haxe.Int64) {
        stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension._markWorkerStop(__self__, _mode, _duration);
    }
    public static function _init(__self__:stdgo._internal.runtime.Runtime_GCController.GCController, _gcPercent:StdTypes.Int, _memoryLimit:haxe.Int64) {
        stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension._init(__self__, _gcPercent, _memoryLimit);
    }
    public static function _heapGoalInternal(__self__:stdgo._internal.runtime.Runtime_GCController.GCController):stdgo.Tuple<haxe.UInt64, haxe.UInt64> {
        return {
            final obj = stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension._heapGoalInternal(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _heapGoal(__self__:stdgo._internal.runtime.Runtime_GCController.GCController):haxe.UInt64 {
        return stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension._heapGoal(__self__);
    }
    public static function _findRunnableGCWorker(__self__:stdgo._internal.runtime.Runtime_GCController.GCController, _pp:T_p, _amount:haxe.Int64):stdgo.Tuple<T_g, haxe.Int64> {
        return {
            final obj = stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension._findRunnableGCWorker(__self__, _pp, _amount);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _enlistWorker(__self__:stdgo._internal.runtime.Runtime_GCController.GCController) {
        stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension._enlistWorker(__self__);
    }
    public static function _endCycle(__self__:stdgo._internal.runtime.Runtime_GCController.GCController, _now:haxe.Int64, _procs:StdTypes.Int, _userForced:Bool) {
        stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension._endCycle(__self__, _now, _procs, _userForced);
    }
    public static function _commit(__self__:stdgo._internal.runtime.Runtime_GCController.GCController, __0:Bool) {
        stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension._commit(__self__, __0);
    }
    public static function _addScannableStack(__self__:stdgo._internal.runtime.Runtime_GCController.GCController, _pp:T_p, _amount:haxe.Int64) {
        stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension._addScannableStack(__self__, _pp, _amount);
    }
    public static function _addIdleMarkWorker(__self__:stdgo._internal.runtime.Runtime_GCController.GCController):Bool {
        return stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension._addIdleMarkWorker(__self__);
    }
    public static function _addGlobals(__self__:stdgo._internal.runtime.Runtime_GCController.GCController, _n:haxe.Int64) {
        stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension._addGlobals(__self__, _n);
    }
}
class PIController_static_extension {
    static public function next(_c:PIController, _input:StdTypes.Float, _setpoint:StdTypes.Float, _period:StdTypes.Float):stdgo.Tuple<StdTypes.Float, Bool> {
        return {
            final obj = stdgo._internal.runtime.Runtime_PIController_static_extension.PIController_static_extension.next(_c, _input, _setpoint, _period);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _reset(__self__:stdgo._internal.runtime.Runtime_PIController.PIController) {
        stdgo._internal.runtime.Runtime_PIController_static_extension.PIController_static_extension._reset(__self__);
    }
    public static function _next(__self__:stdgo._internal.runtime.Runtime_PIController.PIController, _input:StdTypes.Float, _setpoint:StdTypes.Float, _period:StdTypes.Float):stdgo.Tuple<StdTypes.Float, Bool> {
        return {
            final obj = stdgo._internal.runtime.Runtime_PIController_static_extension.PIController_static_extension._next(__self__, _input, _setpoint, _period);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class GCCPULimiter_static_extension {
    static public function resetCapacity(_l:GCCPULimiter, _now:haxe.Int64, _nprocs:StdTypes.Int):Void {
        stdgo._internal.runtime.Runtime_GCCPULimiter_static_extension.GCCPULimiter_static_extension.resetCapacity(_l, _now, _nprocs);
    }
    static public function addAssistTime(_l:GCCPULimiter, _t:haxe.Int64):Void {
        stdgo._internal.runtime.Runtime_GCCPULimiter_static_extension.GCCPULimiter_static_extension.addAssistTime(_l, _t);
    }
    static public function update(_l:GCCPULimiter, _now:haxe.Int64):Void {
        stdgo._internal.runtime.Runtime_GCCPULimiter_static_extension.GCCPULimiter_static_extension.update(_l, _now);
    }
    static public function finishGCTransition(_l:GCCPULimiter, _now:haxe.Int64):Void {
        stdgo._internal.runtime.Runtime_GCCPULimiter_static_extension.GCCPULimiter_static_extension.finishGCTransition(_l, _now);
    }
    static public function startGCTransition(_l:GCCPULimiter, _enableGC:Bool, _now:haxe.Int64):Void {
        stdgo._internal.runtime.Runtime_GCCPULimiter_static_extension.GCCPULimiter_static_extension.startGCTransition(_l, _enableGC, _now);
    }
    static public function needUpdate(_l:GCCPULimiter, _now:haxe.Int64):Bool {
        return stdgo._internal.runtime.Runtime_GCCPULimiter_static_extension.GCCPULimiter_static_extension.needUpdate(_l, _now);
    }
    static public function limiting(_l:GCCPULimiter):Bool {
        return stdgo._internal.runtime.Runtime_GCCPULimiter_static_extension.GCCPULimiter_static_extension.limiting(_l);
    }
    static public function overflow(_l:GCCPULimiter):haxe.UInt64 {
        return stdgo._internal.runtime.Runtime_GCCPULimiter_static_extension.GCCPULimiter_static_extension.overflow(_l);
    }
    static public function capacity_(_l:GCCPULimiter):haxe.UInt64 {
        return stdgo._internal.runtime.Runtime_GCCPULimiter_static_extension.GCCPULimiter_static_extension.capacity_(_l);
    }
    static public function fill(_l:GCCPULimiter):haxe.UInt64 {
        return stdgo._internal.runtime.Runtime_GCCPULimiter_static_extension.GCCPULimiter_static_extension.fill(_l);
    }
}
class Scavenger_static_extension {
    static public function stop(_s:Scavenger):Void {
        stdgo._internal.runtime.Runtime_Scavenger_static_extension.Scavenger_static_extension.stop(_s);
    }
    static public function wake(_s:Scavenger):Void {
        stdgo._internal.runtime.Runtime_Scavenger_static_extension.Scavenger_static_extension.wake(_s);
    }
    static public function released(_s:Scavenger):stdgo.GoUIntptr {
        return stdgo._internal.runtime.Runtime_Scavenger_static_extension.Scavenger_static_extension.released(_s);
    }
    static public function blockUntilParked(_s:Scavenger, _timeout:haxe.Int64):Bool {
        return stdgo._internal.runtime.Runtime_Scavenger_static_extension.Scavenger_static_extension.blockUntilParked(_s, _timeout);
    }
    static public function start(_s:Scavenger):Void {
        stdgo._internal.runtime.Runtime_Scavenger_static_extension.Scavenger_static_extension.start(_s);
    }
}
class ScavengeIndex_static_extension {
    static public function setNoHugePage(_s:ScavengeIndex, _ci:ChunkIdx):Void {
        stdgo._internal.runtime.Runtime_ScavengeIndex_static_extension.ScavengeIndex_static_extension.setNoHugePage(_s, _ci);
    }
    static public function setEmpty(_s:ScavengeIndex, _ci:ChunkIdx):Void {
        stdgo._internal.runtime.Runtime_ScavengeIndex_static_extension.ScavengeIndex_static_extension.setEmpty(_s, _ci);
    }
    static public function nextGen(_s:ScavengeIndex):Void {
        stdgo._internal.runtime.Runtime_ScavengeIndex_static_extension.ScavengeIndex_static_extension.nextGen(_s);
    }
    static public function resetSearchAddrs(_s:ScavengeIndex):Void {
        stdgo._internal.runtime.Runtime_ScavengeIndex_static_extension.ScavengeIndex_static_extension.resetSearchAddrs(_s);
    }
    static public function freeRange(_s:ScavengeIndex, _base:stdgo.GoUIntptr, _limit:stdgo.GoUIntptr):Void {
        stdgo._internal.runtime.Runtime_ScavengeIndex_static_extension.ScavengeIndex_static_extension.freeRange(_s, _base, _limit);
    }
    static public function allocRange(_s:ScavengeIndex, _base:stdgo.GoUIntptr, _limit:stdgo.GoUIntptr):Void {
        stdgo._internal.runtime.Runtime_ScavengeIndex_static_extension.ScavengeIndex_static_extension.allocRange(_s, _base, _limit);
    }
    static public function find(_s:ScavengeIndex, _force:Bool):stdgo.Tuple<ChunkIdx, std.UInt> {
        return {
            final obj = stdgo._internal.runtime.Runtime_ScavengeIndex_static_extension.ScavengeIndex_static_extension.find(_s, _force);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class UserArena_static_extension {
    static public function free(_a:UserArena):Void {
        stdgo._internal.runtime.Runtime_UserArena_static_extension.UserArena_static_extension.free(_a);
    }
    static public function slice(_a:UserArena, _sl:stdgo.AnyInterface, _cap:StdTypes.Int):Void {
        stdgo._internal.runtime.Runtime_UserArena_static_extension.UserArena_static_extension.slice(_a, _sl, _cap);
    }
    static public function new_(_a:UserArena, _out:stdgo.AnyInterface):Void {
        stdgo._internal.runtime.Runtime_UserArena_static_extension.UserArena_static_extension.new_(_a, _out);
    }
}
class StackRecord_static_extension {
    static public function stack(_r:StackRecord):Array<stdgo.GoUIntptr> {
        return [for (i in stdgo._internal.runtime.Runtime_StackRecord_static_extension.StackRecord_static_extension.stack(_r)) i];
    }
}
class MemProfileRecord_static_extension {
    static public function stack(_r:MemProfileRecord):Array<stdgo.GoUIntptr> {
        return [for (i in stdgo._internal.runtime.Runtime_MemProfileRecord_static_extension.MemProfileRecord_static_extension.stack(_r)) i];
    }
    static public function inUseObjects(_r:MemProfileRecord):haxe.Int64 {
        return stdgo._internal.runtime.Runtime_MemProfileRecord_static_extension.MemProfileRecord_static_extension.inUseObjects(_r);
    }
    static public function inUseBytes(_r:MemProfileRecord):haxe.Int64 {
        return stdgo._internal.runtime.Runtime_MemProfileRecord_static_extension.MemProfileRecord_static_extension.inUseBytes(_r);
    }
}
class BlockProfileRecord_static_extension {
    public static function stack(__self__:stdgo._internal.runtime.Runtime_BlockProfileRecord.BlockProfileRecord):Array<stdgo.GoUIntptr> {
        return [for (i in stdgo._internal.runtime.Runtime_BlockProfileRecord_static_extension.BlockProfileRecord_static_extension.stack(__self__)) i];
    }
}
class PanicNilError_static_extension {
    static public function runtimeError(_:PanicNilError):Void {
        stdgo._internal.runtime.Runtime_PanicNilError_static_extension.PanicNilError_static_extension.runtimeError(_);
    }
    static public function error(_:PanicNilError):String {
        return stdgo._internal.runtime.Runtime_PanicNilError_static_extension.PanicNilError_static_extension.error(_);
    }
}
class Pinner_static_extension {
    static public function unpin(_p:Pinner):Void {
        stdgo._internal.runtime.Runtime_Pinner_static_extension.Pinner_static_extension.unpin(_p);
    }
    static public function pin(_p:Pinner, _pointer:stdgo.AnyInterface):Void {
        stdgo._internal.runtime.Runtime_Pinner_static_extension.Pinner_static_extension.pin(_p, _pointer);
    }
    public static function _unpin(__self__:stdgo._internal.runtime.Runtime_Pinner.Pinner) {
        stdgo._internal.runtime.Runtime_Pinner_static_extension.Pinner_static_extension._unpin(__self__);
    }
}
class Frames_static_extension {
    static public function next(_ci:Frames):stdgo.Tuple<Frame, Bool> {
        return {
            final obj = stdgo._internal.runtime.Runtime_Frames_static_extension.Frames_static_extension.next(_ci);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class Func_static_extension {
    static public function fileLine(_f:Func, _pc:stdgo.GoUIntptr):stdgo.Tuple<String, StdTypes.Int> {
        return {
            final obj = stdgo._internal.runtime.Runtime_Func_static_extension.Func_static_extension.fileLine(_f, _pc);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function entry(_f:Func):stdgo.GoUIntptr {
        return stdgo._internal.runtime.Runtime_Func_static_extension.Func_static_extension.entry(_f);
    }
    static public function name(_f:Func):String {
        return stdgo._internal.runtime.Runtime_Func_static_extension.Func_static_extension.name(_f);
    }
}
class LockRank_static_extension {
    static public function string(_l:LockRank):String {
        return stdgo._internal.runtime.Runtime_LockRank_static_extension.LockRank_static_extension.string(_l);
    }
}
class ProfBuf_static_extension {
    static public function close(_p:ProfBuf):Void {
        stdgo._internal.runtime.Runtime_ProfBuf_static_extension.ProfBuf_static_extension.close(_p);
    }
    static public function read(_p:ProfBuf, _mode:T_profBufReadMode):stdgo.Tuple.Tuple3<Array<haxe.UInt64>, Array<stdgo._internal.unsafe.Unsafe.UnsafePointer>, Bool> {
        return {
            final obj = stdgo._internal.runtime.Runtime_ProfBuf_static_extension.ProfBuf_static_extension.read(_p, _mode);
            { _0 : [for (i in obj._0) i], _1 : [for (i in obj._1) i], _2 : obj._2 };
        };
    }
    static public function write(_p:ProfBuf, _tag:stdgo.Pointer<stdgo._internal.unsafe.Unsafe.UnsafePointer>, _now:haxe.Int64, _hdr:Array<haxe.UInt64>, _stk:Array<stdgo.GoUIntptr>):Void {
        final _hdr = ([for (i in _hdr) i] : stdgo.Slice<stdgo.GoUInt64>);
        final _stk = ([for (i in _stk) i] : stdgo.Slice<stdgo.GoUIntptr>);
        stdgo._internal.runtime.Runtime_ProfBuf_static_extension.ProfBuf_static_extension.write(_p, _tag, _now, _hdr, _stk);
    }
}
class PallocSum_static_extension {
    static public function end(_m:PallocSum):std.UInt {
        return stdgo._internal.runtime.Runtime_PallocSum_static_extension.PallocSum_static_extension.end(_m);
    }
    static public function max(_m:PallocSum):std.UInt {
        return stdgo._internal.runtime.Runtime_PallocSum_static_extension.PallocSum_static_extension.max(_m);
    }
    static public function start(_m:PallocSum):std.UInt {
        return stdgo._internal.runtime.Runtime_PallocSum_static_extension.PallocSum_static_extension.start(_m);
    }
}
class PallocBits_static_extension {
    static public function popcntRange(_b:PallocBits, _i:std.UInt, _n:std.UInt):std.UInt {
        return stdgo._internal.runtime.Runtime_PallocBits_static_extension.PallocBits_static_extension.popcntRange(_b, _i, _n);
    }
    static public function summarize(_b:PallocBits):PallocSum {
        return stdgo._internal.runtime.Runtime_PallocBits_static_extension.PallocBits_static_extension.summarize(_b);
    }
    static public function free(_b:PallocBits, _i:std.UInt, _n:std.UInt):Void {
        stdgo._internal.runtime.Runtime_PallocBits_static_extension.PallocBits_static_extension.free(_b, _i, _n);
    }
    static public function allocRange(_b:PallocBits, _i:std.UInt, _n:std.UInt):Void {
        stdgo._internal.runtime.Runtime_PallocBits_static_extension.PallocBits_static_extension.allocRange(_b, _i, _n);
    }
    static public function find(_b:PallocBits, _npages:stdgo.GoUIntptr, _searchIdx:std.UInt):stdgo.Tuple<std.UInt, std.UInt> {
        return {
            final obj = stdgo._internal.runtime.Runtime_PallocBits_static_extension.PallocBits_static_extension.find(_b, _npages, _searchIdx);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class PallocData_static_extension {
    static public function scavenged(_d:PallocData):PallocBits {
        return stdgo._internal.runtime.Runtime_PallocData_static_extension.PallocData_static_extension.scavenged(_d);
    }
    static public function pallocBits(_d:PallocData):PallocBits {
        return stdgo._internal.runtime.Runtime_PallocData_static_extension.PallocData_static_extension.pallocBits(_d);
    }
    static public function scavengedSetRange(_d:PallocData, _i:std.UInt, _n:std.UInt):Void {
        stdgo._internal.runtime.Runtime_PallocData_static_extension.PallocData_static_extension.scavengedSetRange(_d, _i, _n);
    }
    static public function allocRange(_d:PallocData, _i:std.UInt, _n:std.UInt):Void {
        stdgo._internal.runtime.Runtime_PallocData_static_extension.PallocData_static_extension.allocRange(_d, _i, _n);
    }
    static public function findScavengeCandidate(_d:PallocData, _searchIdx:std.UInt, _min:stdgo.GoUIntptr, _max:stdgo.GoUIntptr):stdgo.Tuple<std.UInt, std.UInt> {
        return {
            final obj = stdgo._internal.runtime.Runtime_PallocData_static_extension.PallocData_static_extension.findScavengeCandidate(_d, _searchIdx, _min, _max);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class PageCache_static_extension {
    static public function flush(_c:PageCache, _s:PageAlloc):Void {
        stdgo._internal.runtime.Runtime_PageCache_static_extension.PageCache_static_extension.flush(_c, _s);
    }
    static public function alloc(_c:PageCache, _npages:stdgo.GoUIntptr):stdgo.Tuple<stdgo.GoUIntptr, stdgo.GoUIntptr> {
        return {
            final obj = stdgo._internal.runtime.Runtime_PageCache_static_extension.PageCache_static_extension.alloc(_c, _npages);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function scav(_c:PageCache):haxe.UInt64 {
        return stdgo._internal.runtime.Runtime_PageCache_static_extension.PageCache_static_extension.scav(_c);
    }
    static public function cache(_c:PageCache):haxe.UInt64 {
        return stdgo._internal.runtime.Runtime_PageCache_static_extension.PageCache_static_extension.cache(_c);
    }
    static public function base(_c:PageCache):stdgo.GoUIntptr {
        return stdgo._internal.runtime.Runtime_PageCache_static_extension.PageCache_static_extension.base(_c);
    }
    static public function empty(_c:PageCache):Bool {
        return stdgo._internal.runtime.Runtime_PageCache_static_extension.PageCache_static_extension.empty(_c);
    }
}
class PageAlloc_static_extension {
    static public function pallocData(_p:PageAlloc, _i:ChunkIdx):PallocData {
        return stdgo._internal.runtime.Runtime_PageAlloc_static_extension.PageAlloc_static_extension.pallocData(_p, _i);
    }
    static public function inUse(_p:PageAlloc):Array<AddrRange> {
        return [for (i in stdgo._internal.runtime.Runtime_PageAlloc_static_extension.PageAlloc_static_extension.inUse(_p)) i];
    }
    static public function scavenge(_p:PageAlloc, _nbytes:stdgo.GoUIntptr):stdgo.GoUIntptr {
        return stdgo._internal.runtime.Runtime_PageAlloc_static_extension.PageAlloc_static_extension.scavenge(_p, _nbytes);
    }
    static public function bounds(_p:PageAlloc):stdgo.Tuple<ChunkIdx, ChunkIdx> {
        return {
            final obj = stdgo._internal.runtime.Runtime_PageAlloc_static_extension.PageAlloc_static_extension.bounds(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function free(_p:PageAlloc, _base:stdgo.GoUIntptr, _npages:stdgo.GoUIntptr):Void {
        stdgo._internal.runtime.Runtime_PageAlloc_static_extension.PageAlloc_static_extension.free(_p, _base, _npages);
    }
    static public function allocToCache(_p:PageAlloc):PageCache {
        return stdgo._internal.runtime.Runtime_PageAlloc_static_extension.PageAlloc_static_extension.allocToCache(_p);
    }
    static public function alloc(_p:PageAlloc, _npages:stdgo.GoUIntptr):stdgo.Tuple<stdgo.GoUIntptr, stdgo.GoUIntptr> {
        return {
            final obj = stdgo._internal.runtime.Runtime_PageAlloc_static_extension.PageAlloc_static_extension.alloc(_p, _npages);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class TimeHistogram_static_extension {
    static public function record(_th:TimeHistogram, _duration:haxe.Int64):Void {
        stdgo._internal.runtime.Runtime_TimeHistogram_static_extension.TimeHistogram_static_extension.record(_th, _duration);
    }
    static public function count(_th:TimeHistogram, _bucket:StdTypes.Int, _subBucket:StdTypes.Int):stdgo.Tuple<haxe.UInt64, Bool> {
        return {
            final obj = stdgo._internal.runtime.Runtime_TimeHistogram_static_extension.TimeHistogram_static_extension.count(_th, _bucket, _subBucket);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
/**
    /|*
    Package runtime contains operations that interact with Go's runtime system,
    such as functions to control goroutines. It also includes the low-level type information
    used by the reflect package; see reflect's documentation for the programmable
    interface to the run-time type system.
    
    # Environment Variables
    
    The following environment variables ($name or %name%, depending on the host
    operating system) control the run-time behavior of Go programs. The meanings
    and use may change from release to release.
    
    The GOGC variable sets the initial garbage collection target percentage.
    A collection is triggered when the ratio of freshly allocated data to live data
    remaining after the previous collection reaches this percentage. The default
    is GOGC=100. Setting GOGC=off disables the garbage collector entirely.
    [runtime/debug.SetGCPercent] allows changing this percentage at run time.
    
    The GOMEMLIMIT variable sets a soft memory limit for the runtime. This memory limit
    includes the Go heap and all other memory managed by the runtime, and excludes
    external memory sources such as mappings of the binary itself, memory managed in
    other languages, and memory held by the operating system on behalf of the Go
    program. GOMEMLIMIT is a numeric value in bytes with an optional unit suffix.
    The supported suffixes include B, KiB, MiB, GiB, and TiB. These suffixes
    represent quantities of bytes as defined by the IEC 80000-13 standard. That is,
    they are based on powers of two: KiB means 2^10 bytes, MiB means 2^20 bytes,
    and so on. The default setting is math.MaxInt64, which effectively disables the
    memory limit. [runtime/debug.SetMemoryLimit] allows changing this limit at run
    time.
    
    The GODEBUG variable controls debugging variables within the runtime.
    It is a comma-separated list of name=val pairs setting these named variables:
    
    	allocfreetrace: setting allocfreetrace=1 causes every allocation to be
    	profiled and a stack trace printed on each object's allocation and free.
    
    	clobberfree: setting clobberfree=1 causes the garbage collector to
    	clobber the memory content of an object with bad content when it frees
    	the object.
    
    	cpu.*: cpu.all=off disables the use of all optional instruction set extensions.
    	cpu.extension=off disables use of instructions from the specified instruction set extension.
    	extension is the lower case name for the instruction set extension such as sse41 or avx
    	as listed in internal/cpu package. As an example cpu.avx=off disables runtime detection
    	and thereby use of AVX instructions.
    
    	cgocheck: setting cgocheck=0 disables all checks for packages
    	using cgo to incorrectly pass Go pointers to non-Go code.
    	Setting cgocheck=1 (the default) enables relatively cheap
    	checks that may miss some errors. A more complete, but slow,
    	cgocheck mode can be enabled using GOEXPERIMENT (which
    	requires a rebuild), see https://pkg.go.dev/internal/goexperiment for details.
    
    	dontfreezetheworld: by default, the start of a fatal panic or throw
    	"freezes the world", preempting all threads to stop all running
    	goroutines, which makes it possible to traceback all goroutines, and
    	keeps their state close to the point of panic. Setting
    	dontfreezetheworld=1 disables this preemption, allowing goroutines to
    	continue executing during panic processing. Note that goroutines that
    	naturally enter the scheduler will still stop. This can be useful when
    	debugging the runtime scheduler, as freezetheworld perturbs scheduler
    	state and thus may hide problems.
    
    	efence: setting efence=1 causes the allocator to run in a mode
    	where each object is allocated on a unique page and addresses are
    	never recycled.
    
    	gccheckmark: setting gccheckmark=1 enables verification of the
    	garbage collector's concurrent mark phase by performing a
    	second mark pass while the world is stopped.  If the second
    	pass finds a reachable object that was not found by concurrent
    	mark, the garbage collector will panic.
    
    	gcpacertrace: setting gcpacertrace=1 causes the garbage collector to
    	print information about the internal state of the concurrent pacer.
    
    	gcshrinkstackoff: setting gcshrinkstackoff=1 disables moving goroutines
    	onto smaller stacks. In this mode, a goroutine's stack can only grow.
    
    	gcstoptheworld: setting gcstoptheworld=1 disables concurrent garbage collection,
    	making every garbage collection a stop-the-world event. Setting gcstoptheworld=2
    	also disables concurrent sweeping after the garbage collection finishes.
    
    	gctrace: setting gctrace=1 causes the garbage collector to emit a single line to standard
    	error at each collection, summarizing the amount of memory collected and the
    	length of the pause. The format of this line is subject to change. Included in
    	the explanation below is also the relevant runtime/metrics metric for each field.
    	Currently, it is:
    		gc # @#s #%: #+#+# ms clock, #+#/#/#+# ms cpu, #->#-># MB, # MB goal, # MB stacks, #MB globals, # P
    	where the fields are as follows:
    		gc #         the GC number, incremented at each GC
    		@#s          time in seconds since program start
    		#%           percentage of time spent in GC since program start
    		#+...+#      wall-clock/CPU times for the phases of the GC
    		#->#-># MB   heap size at GC start, at GC end, and live heap, or /gc/scan/heap:bytes
    		# MB goal    goal heap size, or /gc/heap/goal:bytes
    		# MB stacks  estimated scannable stack size, or /gc/scan/stack:bytes
    		# MB globals scannable global size, or /gc/scan/globals:bytes
    		# P          number of processors used, or /sched/gomaxprocs:threads
    	The phases are stop-the-world (STW) sweep termination, concurrent
    	mark and scan, and STW mark termination. The CPU times
    	for mark/scan are broken down in to assist time (GC performed in
    	line with allocation), background GC time, and idle GC time.
    	If the line ends with "(forced)", this GC was forced by a
    	runtime.GC() call.
    
    	harddecommit: setting harddecommit=1 causes memory that is returned to the OS to
    	also have protections removed on it. This is the only mode of operation on Windows,
    	but is helpful in debugging scavenger-related issues on other platforms. Currently,
    	only supported on Linux.
    
    	inittrace: setting inittrace=1 causes the runtime to emit a single line to standard
    	error for each package with init work, summarizing the execution time and memory
    	allocation. No information is printed for inits executed as part of plugin loading
    	and for packages without both user defined and compiler generated init work.
    	The format of this line is subject to change. Currently, it is:
    		init # @#ms, # ms clock, # bytes, # allocs
    	where the fields are as follows:
    		init #      the package name
    		@# ms       time in milliseconds when the init started since program start
    		# clock     wall-clock time for package initialization work
    		# bytes     memory allocated on the heap
    		# allocs    number of heap allocations
    
    	madvdontneed: setting madvdontneed=0 will use MADV_FREE
    	instead of MADV_DONTNEED on Linux when returning memory to the
    	kernel. This is more efficient, but means RSS numbers will
    	drop only when the OS is under memory pressure. On the BSDs and
    	Illumos/Solaris, setting madvdontneed=1 will use MADV_DONTNEED instead
    	of MADV_FREE. This is less efficient, but causes RSS numbers to drop
    	more quickly.
    
    	memprofilerate: setting memprofilerate=X will update the value of runtime.MemProfileRate.
    	When set to 0 memory profiling is disabled.  Refer to the description of
    	MemProfileRate for the default value.
    
    	pagetrace: setting pagetrace=/path/to/file will write out a trace of page events
    	that can be viewed, analyzed, and visualized using the x/debug/cmd/pagetrace tool.
    	Build your program with GOEXPERIMENT=pagetrace to enable this functionality. Do not
    	enable this functionality if your program is a setuid binary as it introduces a security
    	risk in that scenario. Currently not supported on Windows, plan9 or js/wasm. Setting this
    	option for some applications can produce large traces, so use with care.
    
    	invalidptr: invalidptr=1 (the default) causes the garbage collector and stack
    	copier to crash the program if an invalid pointer value (for example, 1)
    	is found in a pointer-typed location. Setting invalidptr=0 disables this check.
    	This should only be used as a temporary workaround to diagnose buggy code.
    	The real fix is to not store integers in pointer-typed locations.
    
    	sbrk: setting sbrk=1 replaces the memory allocator and garbage collector
    	with a trivial allocator that obtains memory from the operating system and
    	never reclaims any memory.
    
    	scavtrace: setting scavtrace=1 causes the runtime to emit a single line to standard
    	error, roughly once per GC cycle, summarizing the amount of work done by the
    	scavenger as well as the total amount of memory returned to the operating system
    	and an estimate of physical memory utilization. The format of this line is subject
    	to change, but currently it is:
    		scav # KiB work (bg), # KiB work (eager), # KiB total, #% util
    	where the fields are as follows:
    		# KiB work (bg)    the amount of memory returned to the OS in the background since
    		                   the last line
    		# KiB work (eager) the amount of memory returned to the OS eagerly since the last line
    		# KiB now          the amount of address space currently returned to the OS
    		#% util            the fraction of all unscavenged heap memory which is in-use
    	If the line ends with "(forced)", then scavenging was forced by a
    	debug.FreeOSMemory() call.
    
    	scheddetail: setting schedtrace=X and scheddetail=1 causes the scheduler to emit
    	detailed multiline info every X milliseconds, describing state of the scheduler,
    	processors, threads and goroutines.
    
    	schedtrace: setting schedtrace=X causes the scheduler to emit a single line to standard
    	error every X milliseconds, summarizing the scheduler state.
    
    	tracebackancestors: setting tracebackancestors=N extends tracebacks with the stacks at
    	which goroutines were created, where N limits the number of ancestor goroutines to
    	report. This also extends the information returned by runtime.Stack. Ancestor's goroutine
    	IDs will refer to the ID of the goroutine at the time of creation; it's possible for this
    	ID to be reused for another goroutine. Setting N to 0 will report no ancestry information.
    
    	tracefpunwindoff: setting tracefpunwindoff=1 forces the execution tracer to
    	use the runtime's default stack unwinder instead of frame pointer unwinding.
    	This increases tracer overhead, but could be helpful as a workaround or for
    	debugging unexpected regressions caused by frame pointer unwinding.
    
    	asyncpreemptoff: asyncpreemptoff=1 disables signal-based
    	asynchronous goroutine preemption. This makes some loops
    	non-preemptible for long periods, which may delay GC and
    	goroutine scheduling. This is useful for debugging GC issues
    	because it also disables the conservative stack scanning used
    	for asynchronously preempted goroutines.
    
    The net and net/http packages also refer to debugging variables in GODEBUG.
    See the documentation for those packages for details.
    
    The GOMAXPROCS variable limits the number of operating system threads that
    can execute user-level Go code simultaneously. There is no limit to the number of threads
    that can be blocked in system calls on behalf of Go code; those do not count against
    the GOMAXPROCS limit. This package's GOMAXPROCS function queries and changes
    the limit.
    
    The GORACE variable configures the race detector, for programs built using -race.
    See https://golang.org/doc/articles/race_detector.html for details.
    
    The GOTRACEBACK variable controls the amount of output generated when a Go
    program fails due to an unrecovered panic or an unexpected runtime condition.
    By default, a failure prints a stack trace for the current goroutine,
    eliding functions internal to the run-time system, and then exits with exit code 2.
    The failure prints stack traces for all goroutines if there is no current goroutine
    or the failure is internal to the run-time.
    GOTRACEBACK=none omits the goroutine stack traces entirely.
    GOTRACEBACK=single (the default) behaves as described above.
    GOTRACEBACK=all adds stack traces for all user-created goroutines.
    GOTRACEBACK=system is like “all” but adds stack frames for run-time functions
    and shows goroutines created internally by the run-time.
    GOTRACEBACK=crash is like “system” but crashes in an operating system-specific
    manner instead of exiting. For example, on Unix systems, the crash raises
    SIGABRT to trigger a core dump.
    GOTRACEBACK=wer is like “crash” but doesn't disable Windows Error Reporting (WER).
    For historical reasons, the GOTRACEBACK settings 0, 1, and 2 are synonyms for
    none, all, and system, respectively.
    The runtime/debug package's SetTraceback function allows increasing the
    amount of output at run time, but it cannot reduce the amount below that
    specified by the environment variable.
    See https://golang.org/pkg/runtime/debug/#SetTraceback.
    
    The GOARCH, GOOS, GOPATH, and GOROOT environment variables complete
    the set of Go environment variables. They influence the building of Go programs
    (see https://golang.org/cmd/go and https://golang.org/pkg/go/build).
    GOARCH, GOOS, and GOROOT are recorded at compile time and made available by
    constants or functions in this package, but they do not influence the execution
    of the run-time system.
    
    # Security
    
    On Unix platforms, Go's runtime system behaves slightly differently when a
    binary is setuid/setgid or executed with setuid/setgid-like properties, in order
    to prevent dangerous behaviors. On Linux this is determined by checking for the
    AT_SECURE flag in the auxiliary vector, on the BSDs and Solaris/Illumos it is
    determined by checking the issetugid syscall, and on AIX it is determined by
    checking if the uid/gid match the effective uid/gid.
    
    When the runtime determines the binary is setuid/setgid-like, it does three main
    things:
      - The standard input/output file descriptors (0, 1, 2) are checked to be open.
        If any of them are closed, they are opened pointing at /dev/null.
      - The value of the GOTRACEBACK environment variable is set to 'none'.
      - When a signal is received that terminates the program, or the program
        encounters an unrecoverable panic that would otherwise override the value
        of GOTRACEBACK, the goroutine stack, registers, and other memory related
        information are omitted.
    *|/
**/
class Runtime {
    /**
        SetCPUProfileRate sets the CPU profiling rate to hz samples per second.
        If hz <= 0, SetCPUProfileRate turns off profiling.
        If the profiler is on, the rate cannot be changed without first turning it off.
        
        Most clients should use the runtime/pprof package or
        the testing package's -test.cpuprofile flag instead of calling
        SetCPUProfileRate directly.
    **/
    static public function setCPUProfileRate(_hz:StdTypes.Int):Void {
        stdgo._internal.runtime.Runtime_setCPUProfileRate.setCPUProfileRate(_hz);
    }
    /**
        CPUProfile panics.
        It formerly provided raw access to chunks of
        a pprof-format profile generated by the runtime.
        The details of generating that format have changed,
        so this functionality has been removed.
        
        Deprecated: Use the runtime/pprof package,
        or the handlers in the net/http/pprof package,
        or the testing package's -test.cpuprofile flag instead.
    **/
    static public function cpuprofile():Array<std.UInt> {
        return [for (i in stdgo._internal.runtime.Runtime_cpuprofile.cpuprofile()) i];
    }
    /**
        GOMAXPROCS sets the maximum number of CPUs that can be executing
        simultaneously and returns the previous setting. It defaults to
        the value of runtime.NumCPU. If n < 1, it does not change the current setting.
        This call will go away when the scheduler improves.
    **/
    static public function gomaxprocs(_n:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs(_n);
    }
    /**
        NumCPU returns the number of logical CPUs usable by the current process.
        
        The set of available CPUs is checked by querying the operating system
        at process startup. Changes to operating system CPU allocation after
        process startup are not reflected.
    **/
    static public function numCPU():StdTypes.Int {
        return stdgo._internal.runtime.Runtime_numCPU.numCPU();
    }
    /**
        NumCgoCall returns the number of cgo calls made by the current process.
    **/
    static public function numCgoCall():haxe.Int64 {
        return stdgo._internal.runtime.Runtime_numCgoCall.numCgoCall();
    }
    /**
        NumGoroutine returns the number of goroutines that currently exist.
    **/
    static public function numGoroutine():StdTypes.Int {
        return stdgo._internal.runtime.Runtime_numGoroutine.numGoroutine();
    }
    static public function dumpDebugLog():String {
        return stdgo._internal.runtime.Runtime_dumpDebugLog.dumpDebugLog();
    }
    static public function resetDebugLog():Void {
        stdgo._internal.runtime.Runtime_resetDebugLog.resetDebugLog();
    }
    static public function lfstackPush(_head:stdgo.Pointer<haxe.UInt64>, _node:LFNode):Void {
        stdgo._internal.runtime.Runtime_lfstackPush.lfstackPush(_head, _node);
    }
    static public function lfstackPop(_head:stdgo.Pointer<haxe.UInt64>):LFNode {
        return stdgo._internal.runtime.Runtime_lfstackPop.lfstackPop(_head);
    }
    static public function lfnodeValidate(_node:LFNode):Void {
        stdgo._internal.runtime.Runtime_lfnodeValidate.lfnodeValidate(_node);
    }
    static public function netpoll(_delta:haxe.Int64):Void {
        stdgo._internal.runtime.Runtime_netpoll.netpoll(_delta);
    }
    static public function gcmask(_x:stdgo.AnyInterface):Array<std.UInt> {
        return [for (i in stdgo._internal.runtime.Runtime_gcmask.gcmask(_x)) i];
    }
    static public function runSchedLocalQueueTest():Void {
        stdgo._internal.runtime.Runtime_runSchedLocalQueueTest.runSchedLocalQueueTest();
    }
    static public function runSchedLocalQueueStealTest():Void {
        stdgo._internal.runtime.Runtime_runSchedLocalQueueStealTest.runSchedLocalQueueStealTest();
    }
    static public function runSchedLocalQueueEmptyTest(_iters:StdTypes.Int):Void {
        stdgo._internal.runtime.Runtime_runSchedLocalQueueEmptyTest.runSchedLocalQueueEmptyTest(_iters);
    }
    static public function memclrBytes(_b:Array<std.UInt>):Void {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.runtime.Runtime_memclrBytes.memclrBytes(_b);
    }
    /**
        entry point for testing
    **/
    static public function gostringW(_w:Array<std.UInt>):String {
        final _w = ([for (i in _w) i] : stdgo.Slice<stdgo.GoUInt16>);
        return stdgo._internal.runtime.Runtime_gostringW.gostringW(_w);
    }
    static public function envs():Array<String> {
        return [for (i in stdgo._internal.runtime.Runtime_envs.envs()) i];
    }
    static public function setEnvs(_e:Array<String>):Void {
        final _e = ([for (i in _e) i] : stdgo.Slice<stdgo.GoString>);
        stdgo._internal.runtime.Runtime_setEnvs.setEnvs(_e);
    }
    static public function benchSetType<T_>(_n:StdTypes.Int, _resetTimer:() -> Void):Void {
        final _resetTimer = _resetTimer;
        stdgo._internal.runtime.Runtime_benchSetType.benchSetType(_n, _resetTimer);
    }
    static public function benchSetTypeSlice<T_>(_n:StdTypes.Int, _resetTimer:() -> Void, _len:StdTypes.Int):Void {
        final _resetTimer = _resetTimer;
        stdgo._internal.runtime.Runtime_benchSetTypeSlice.benchSetTypeSlice(_n, _resetTimer, _len);
    }
    /**
        SetTracebackEnv is like runtime/debug.SetTraceback, but it raises
        the "environment" traceback level, so later calls to
        debug.SetTraceback (e.g., from testing timeouts) can't lower it.
    **/
    static public function setTracebackEnv(_level:String):Void {
        stdgo._internal.runtime.Runtime_setTracebackEnv.setTracebackEnv(_level);
    }
    static public function countPagesInUse():stdgo.Tuple<stdgo.GoUIntptr, stdgo.GoUIntptr> {
        return {
            final obj = stdgo._internal.runtime.Runtime_countPagesInUse.countPagesInUse();
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function fastrand():std.UInt {
        return stdgo._internal.runtime.Runtime_fastrand.fastrand();
    }
    static public function fastrand64():haxe.UInt64 {
        return stdgo._internal.runtime.Runtime_fastrand64.fastrand64();
    }
    static public function fastrandn(_n:std.UInt):std.UInt {
        return stdgo._internal.runtime.Runtime_fastrandn.fastrandn(_n);
    }
    static public function newProfBuf(_hdrsize:StdTypes.Int, _bufwords:StdTypes.Int, _tags:StdTypes.Int):ProfBuf {
        return stdgo._internal.runtime.Runtime_newProfBuf.newProfBuf(_hdrsize, _bufwords, _tags);
    }
    static public function readMetricsSlow(_memStats:MemStats, _samplesp:stdgo._internal.unsafe.Unsafe.UnsafePointer, _len:StdTypes.Int, _cap:StdTypes.Int):Void {
        stdgo._internal.runtime.Runtime_readMetricsSlow.readMetricsSlow(_memStats, _samplesp, _len, _cap);
    }
    /**
        ReadMemStatsSlow returns both the runtime-computed MemStats and
        MemStats accumulated by scanning the heap.
    **/
    static public function readMemStatsSlow():stdgo.Tuple<MemStats, MemStats> {
        return {
            final obj = stdgo._internal.runtime.Runtime_readMemStatsSlow.readMemStatsSlow();
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        ShrinkStackAndVerifyFramePointers attempts to shrink the stack of the current goroutine
        and verifies that unwinding the new stack doesn't crash, even if the old
        stack has been freed or reused (simulated via poisoning).
    **/
    static public function shrinkStackAndVerifyFramePointers():Void {
        stdgo._internal.runtime.Runtime_shrinkStackAndVerifyFramePointers.shrinkStackAndVerifyFramePointers();
    }
    /**
        BlockOnSystemStack switches to the system stack, prints "x\n" to
        stderr, and blocks in a stack containing
        "runtime.blockOnSystemStackInternal".
    **/
    static public function blockOnSystemStack():Void {
        stdgo._internal.runtime.Runtime_blockOnSystemStack.blockOnSystemStack();
    }
    static public function mapBucketsCount(_m:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>):StdTypes.Int {
        return stdgo._internal.runtime.Runtime_mapBucketsCount.mapBucketsCount(_m);
    }
    static public function mapBucketsPointerIsNil(_m:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>):Bool {
        return stdgo._internal.runtime.Runtime_mapBucketsPointerIsNil.mapBucketsPointerIsNil(_m);
    }
    static public function lockOSCounts():stdgo.Tuple<std.UInt, std.UInt> {
        return {
            final obj = stdgo._internal.runtime.Runtime_lockOSCounts.lockOSCounts();
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        go:noinline
    **/
    static public function tracebackSystemstack(_stk:Array<stdgo.GoUIntptr>, _i:StdTypes.Int):StdTypes.Int {
        final _stk = ([for (i in _stk) i] : stdgo.Slice<stdgo.GoUIntptr>);
        return stdgo._internal.runtime.Runtime_tracebackSystemstack.tracebackSystemstack(_stk, _i);
    }
    static public function keepNArenaHints(_n:StdTypes.Int):Void {
        stdgo._internal.runtime.Runtime_keepNArenaHints.keepNArenaHints(_n);
    }
    /**
        MapNextArenaHint reserves a page at the next arena growth hint,
        preventing the arena from growing there, and returns the range of
        addresses that are no longer viable.
        
        This may fail to reserve memory. If it fails, it still returns the
        address range it attempted to reserve.
    **/
    static public function mapNextArenaHint():stdgo.Tuple.Tuple3<stdgo.GoUIntptr, stdgo.GoUIntptr, Bool> {
        return {
            final obj = stdgo._internal.runtime.Runtime_mapNextArenaHint.mapNextArenaHint();
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function getNextArenaHint():stdgo.GoUIntptr {
        return stdgo._internal.runtime.Runtime_getNextArenaHint.getNextArenaHint();
    }
    static public function getg():T_g {
        return stdgo._internal.runtime.Runtime_getg.getg();
    }
    static public function goid():haxe.UInt64 {
        return stdgo._internal.runtime.Runtime_goid.goid();
    }
    static public function gisWaitingOnMutex(_gp:T_g):Bool {
        return stdgo._internal.runtime.Runtime_gisWaitingOnMutex.gisWaitingOnMutex(_gp);
    }
    /**
        go:noinline
    **/
    static public function panicForTesting(_b:Array<std.UInt>, _i:StdTypes.Int):std.UInt {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.runtime.Runtime_panicForTesting.panicForTesting(_b, _i);
    }
    static public function g0stackOverflow():Void {
        stdgo._internal.runtime.Runtime_g0stackOverflow.g0stackOverflow();
    }
    static public function mapTombstoneCheck(_m:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>):Void {
        stdgo._internal.runtime.Runtime_mapTombstoneCheck.mapTombstoneCheck(_m);
    }
    static public function runGetgThreadSwitchTest():Void {
        stdgo._internal.runtime.Runtime_runGetgThreadSwitchTest.runGetgThreadSwitchTest();
    }
    static public function packPallocSum(_start:std.UInt, _max:std.UInt, _end:std.UInt):PallocSum {
        return stdgo._internal.runtime.Runtime_packPallocSum.packPallocSum(_start, _max, _end);
    }
    /**
        SummarizeSlow is a slow but more obviously correct implementation
        of (*pallocBits).summarize. Used for testing.
    **/
    static public function summarizeSlow(_b:PallocBits):PallocSum {
        return stdgo._internal.runtime.Runtime_summarizeSlow.summarizeSlow(_b);
    }
    /**
        Expose non-trivial helpers for testing.
    **/
    static public function findBitRange64(_c:haxe.UInt64, _n:std.UInt):std.UInt {
        return stdgo._internal.runtime.Runtime_findBitRange64.findBitRange64(_c, _n);
    }
    /**
        Given two PallocBits, returns a set of bit ranges where
        they differ.
    **/
    static public function diffPallocBits(_a:PallocBits, _b:PallocBits):Array<BitRange> {
        return [for (i in stdgo._internal.runtime.Runtime_diffPallocBits.diffPallocBits(_a, _b)) i];
    }
    /**
        StringifyPallocBits gets the bits in the bit range r from b,
        and returns a string containing the bits as ASCII 0 and 1
        characters.
    **/
    static public function stringifyPallocBits(_b:PallocBits, _r:BitRange):String {
        return stdgo._internal.runtime.Runtime_stringifyPallocBits.stringifyPallocBits(_b, _r);
    }
    /**
        Expose fillAligned for testing.
    **/
    static public function fillAligned(_x:haxe.UInt64, _m:std.UInt):haxe.UInt64 {
        return stdgo._internal.runtime.Runtime_fillAligned.fillAligned(_x, _m);
    }
    static public function newPageCache(_base:stdgo.GoUIntptr, _cache:haxe.UInt64, _scav:haxe.UInt64):PageCache {
        return stdgo._internal.runtime.Runtime_newPageCache.newPageCache(_base, _cache, _scav);
    }
    /**
        MakeAddrRange creates a new address range.
    **/
    static public function makeAddrRange(_base:stdgo.GoUIntptr, _limit:stdgo.GoUIntptr):AddrRange {
        return stdgo._internal.runtime.Runtime_makeAddrRange.makeAddrRange(_base, _limit);
    }
    /**
        NewAddrRanges creates a new empty addrRanges.
        
        Note that this initializes addrRanges just like in the
        runtime, so its memory is persistentalloc'd. Call this
        function sparingly since the memory it allocates is
        leaked.
        
        This AddrRanges is mutable, so we can test methods like
        Add.
    **/
    static public function newAddrRanges():AddrRanges {
        return stdgo._internal.runtime.Runtime_newAddrRanges.newAddrRanges();
    }
    /**
        MakeAddrRanges creates a new addrRanges populated with
        the ranges in a.
        
        The returned AddrRanges is immutable, so methods like
        Add will fail.
    **/
    static public function makeAddrRanges(_a:haxe.Rest<AddrRange>):AddrRanges {
        return stdgo._internal.runtime.Runtime_makeAddrRanges.makeAddrRanges(...[for (i in _a) i]);
    }
    /**
        NewPageAlloc creates a new page allocator for testing and
        initializes it with the scav and chunks maps. Each key in these maps
        represents a chunk index and each value is a series of bit ranges to
        set within each bitmap's chunk.
        
        The initialization of the pageAlloc preserves the invariant that if a
        scavenged bit is set the alloc bit is necessarily unset, so some
        of the bits described by scav may be cleared in the final bitmap if
        ranges in chunks overlap with them.
        
        scav is optional, and if nil, the scavenged bitmap will be cleared
        (as opposed to all 1s, which it usually is). Furthermore, every
        chunk index in scav must appear in chunks; ones that do not are
        ignored.
    **/
    static public function newPageAlloc(_chunks:stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>, _scav:stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>):PageAlloc {
        return stdgo._internal.runtime.Runtime_newPageAlloc.newPageAlloc(_chunks, _scav);
    }
    /**
        FreePageAlloc releases hard OS resources owned by the pageAlloc. Once this
        is called the pageAlloc may no longer be used. The object itself will be
        collected by the garbage collector once it is no longer live.
    **/
    static public function freePageAlloc(_pp:PageAlloc):Void {
        stdgo._internal.runtime.Runtime_freePageAlloc.freePageAlloc(_pp);
    }
    /**
        PageBase returns an address given a chunk index and a page index
        relative to that chunk.
    **/
    static public function pageBase(_c:ChunkIdx, _pageIdx:std.UInt):stdgo.GoUIntptr {
        return stdgo._internal.runtime.Runtime_pageBase.pageBase(_c, _pageIdx);
    }
    static public function checkScavengedBitsCleared(_mismatches:Array<BitsMismatch>):stdgo.Tuple<StdTypes.Int, Bool> {
        final _mismatches = ([for (i in _mismatches) i] : stdgo.Slice<stdgo._internal.runtime.Runtime_BitsMismatch.BitsMismatch>);
        return {
            final obj = stdgo._internal.runtime.Runtime_checkScavengedBitsCleared.checkScavengedBitsCleared(_mismatches);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function pageCachePagesLeaked():stdgo.GoUIntptr {
        return stdgo._internal.runtime.Runtime_pageCachePagesLeaked.pageCachePagesLeaked();
    }
    static public function semNwait(_addr:stdgo.Pointer<std.UInt>):std.UInt {
        return stdgo._internal.runtime.Runtime_semNwait.semNwait(_addr);
    }
    /**
        Allocate an mspan for testing.
    **/
    static public function allocMSpan():MSpan {
        return stdgo._internal.runtime.Runtime_allocMSpan.allocMSpan();
    }
    /**
        Free an allocated mspan.
    **/
    static public function freeMSpan(_s:MSpan):Void {
        stdgo._internal.runtime.Runtime_freeMSpan.freeMSpan(_s);
    }
    static public function mspanCountAlloc(_ms:MSpan, _bits:Array<std.UInt>):StdTypes.Int {
        final _bits = ([for (i in _bits) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.runtime.Runtime_mspanCountAlloc.mspanCountAlloc(_ms, _bits);
    }
    static public function setIntArgRegs(_a:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.runtime.Runtime_setIntArgRegs.setIntArgRegs(_a);
    }
    static public function finalizerGAsleep():Bool {
        return stdgo._internal.runtime.Runtime_finalizerGAsleep.finalizerGAsleep();
    }
    /**
        For GCTestIsReachable, it's important that we do this as a call so
        escape analysis can see through it.
    **/
    static public function gctestIsReachable(_ptrs:haxe.Rest<stdgo._internal.unsafe.Unsafe.UnsafePointer>):haxe.UInt64 {
        return stdgo._internal.runtime.Runtime_gctestIsReachable.gctestIsReachable(...[for (i in _ptrs) i]);
    }
    /**
        For GCTestPointerClass, it's important that we do this as a call so
        escape analysis can see through it.
        
        This is nosplit because gcTestPointerClass is.
        
        go:nosplit
    **/
    static public function gctestPointerClass(_p:stdgo._internal.unsafe.Unsafe.UnsafePointer):String {
        return stdgo._internal.runtime.Runtime_gctestPointerClass.gctestPointerClass(_p);
    }
    static public function newGCController(_gcPercent:StdTypes.Int, _memoryLimit:haxe.Int64):GCController {
        return stdgo._internal.runtime.Runtime_newGCController.newGCController(_gcPercent, _memoryLimit);
    }
    static public function escape<T_>(_x:Dynamic):Dynamic {
        return stdgo._internal.runtime.Runtime_escape.escape(_x);
    }
    /**
        Acquirem blocks preemption.
    **/
    static public function acquirem():Void {
        stdgo._internal.runtime.Runtime_acquirem.acquirem();
    }
    static public function releasem():Void {
        stdgo._internal.runtime.Runtime_releasem.releasem();
    }
    static public function newPIController(_kp:StdTypes.Float, _ti:StdTypes.Float, _tt:StdTypes.Float, _min:StdTypes.Float, _max:StdTypes.Float):PIController {
        return stdgo._internal.runtime.Runtime_newPIController.newPIController(_kp, _ti, _tt, _min, _max);
    }
    static public function newGCCPULimiter(_now:haxe.Int64, _gomaxprocs:StdTypes.Int):GCCPULimiter {
        return stdgo._internal.runtime.Runtime_newGCCPULimiter.newGCCPULimiter(_now, _gomaxprocs);
    }
    static public function newScavengeIndex(_min:ChunkIdx, _max:ChunkIdx):ScavengeIndex {
        return stdgo._internal.runtime.Runtime_newScavengeIndex.newScavengeIndex(_min, _max);
    }
    static public function checkPackScavChunkData(_gen:std.UInt, _inUse:std.UInt, _lastInUse:std.UInt, _flags:std.UInt):Bool {
        return stdgo._internal.runtime.Runtime_checkPackScavChunkData.checkPackScavChunkData(_gen, _inUse, _lastInUse, _flags);
    }
    static public function newUserArena():UserArena {
        return stdgo._internal.runtime.Runtime_newUserArena.newUserArena();
    }
    static public function globalWaitingArenaChunks():StdTypes.Int {
        return stdgo._internal.runtime.Runtime_globalWaitingArenaChunks.globalWaitingArenaChunks();
    }
    static public function userArenaClone<T_>(_s:Dynamic):Dynamic {
        return stdgo._internal.runtime.Runtime_userArenaClone.userArenaClone(_s);
    }
    /**
        BlockUntilEmptyFinalizerQueue blocks until either the finalizer
        queue is emptied (and the finalizers have executed) or the timeout
        is reached. Returns true if the finalizer queue was emptied.
    **/
    static public function blockUntilEmptyFinalizerQueue(_timeout:haxe.Int64):Bool {
        return stdgo._internal.runtime.Runtime_blockUntilEmptyFinalizerQueue.blockUntilEmptyFinalizerQueue(_timeout);
    }
    static public function frameStartLine(_f:Frame):StdTypes.Int {
        return stdgo._internal.runtime.Runtime_frameStartLine.frameStartLine(_f);
    }
    /**
        PersistentAlloc allocates some memory that lives outside the Go heap.
        This memory will never be freed; use sparingly.
    **/
    static public function persistentAlloc(_n:stdgo.GoUIntptr):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        return stdgo._internal.runtime.Runtime_persistentAlloc.persistentAlloc(_n);
    }
    /**
        FPCallers works like Callers and uses frame pointer unwinding to populate
        pcBuf with the return addresses of the physical frames on the stack.
    **/
    static public function fpcallers(_pcBuf:Array<stdgo.GoUIntptr>):StdTypes.Int {
        final _pcBuf = ([for (i in _pcBuf) i] : stdgo.Slice<stdgo.GoUIntptr>);
        return stdgo._internal.runtime.Runtime_fpcallers.fpcallers(_pcBuf);
    }
    static public function setPinnerLeakPanic(_f:() -> Void):Void {
        final _f = _f;
        stdgo._internal.runtime.Runtime_setPinnerLeakPanic.setPinnerLeakPanic(_f);
    }
    static public function getPinnerLeakPanic():() -> Void {
        return () -> stdgo._internal.runtime.Runtime_getPinnerLeakPanic.getPinnerLeakPanic()();
    }
    /**
        Caller reports file and line number information about function invocations on
        the calling goroutine's stack. The argument skip is the number of stack frames
        to ascend, with 0 identifying the caller of Caller.  (For historical reasons the
        meaning of skip differs between Caller and Callers.) The return values report the
        program counter, file name, and line number within the file of the corresponding
        call. The boolean ok is false if it was not possible to recover the information.
    **/
    static public function caller(_skip:StdTypes.Int):stdgo.Tuple.Tuple4<stdgo.GoUIntptr, String, StdTypes.Int, Bool> {
        return {
            final obj = stdgo._internal.runtime.Runtime_caller.caller(_skip);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
    /**
        Callers fills the slice pc with the return program counters of function invocations
        on the calling goroutine's stack. The argument skip is the number of stack frames
        to skip before recording in pc, with 0 identifying the frame for Callers itself and
        1 identifying the caller of Callers.
        It returns the number of entries written to pc.
        
        To translate these PCs into symbolic information such as function
        names and line numbers, use CallersFrames. CallersFrames accounts
        for inlined functions and adjusts the return program counters into
        call program counters. Iterating over the returned slice of PCs
        directly is discouraged, as is using FuncForPC on any of the
        returned PCs, since these cannot account for inlining or return
        program counter adjustment.
    **/
    static public function callers(_skip:StdTypes.Int, _pc:Array<stdgo.GoUIntptr>):StdTypes.Int {
        final _pc = ([for (i in _pc) i] : stdgo.Slice<stdgo.GoUIntptr>);
        return stdgo._internal.runtime.Runtime_callers.callers(_skip, _pc);
    }
    /**
        GOROOT returns the root of the Go tree. It uses the
        GOROOT environment variable, if set at process start,
        or else the root used during the Go build.
    **/
    static public function goroot():String {
        return stdgo._internal.runtime.Runtime_goroot.goroot();
    }
    /**
        Version returns the Go tree's version string.
        It is either the commit hash and date at the time of the build or,
        when possible, a release tag like "go1.3".
    **/
    static public function version():String {
        return stdgo._internal.runtime.Runtime_version.version();
    }
    /**
        SetFinalizer sets the finalizer associated with obj to the provided
        finalizer function. When the garbage collector finds an unreachable block
        with an associated finalizer, it clears the association and runs
        finalizer(obj) in a separate goroutine. This makes obj reachable again,
        but now without an associated finalizer. Assuming that SetFinalizer
        is not called again, the next time the garbage collector sees
        that obj is unreachable, it will free obj.
        
        SetFinalizer(obj, nil) clears any finalizer associated with obj.
        
        The argument obj must be a pointer to an object allocated by calling
        new, by taking the address of a composite literal, or by taking the
        address of a local variable.
        The argument finalizer must be a function that takes a single argument
        to which obj's type can be assigned, and can have arbitrary ignored return
        values. If either of these is not true, SetFinalizer may abort the
        program.
        
        Finalizers are run in dependency order: if A points at B, both have
        finalizers, and they are otherwise unreachable, only the finalizer
        for A runs; once A is freed, the finalizer for B can run.
        If a cyclic structure includes a block with a finalizer, that
        cycle is not guaranteed to be garbage collected and the finalizer
        is not guaranteed to run, because there is no ordering that
        respects the dependencies.
        
        The finalizer is scheduled to run at some arbitrary time after the
        program can no longer reach the object to which obj points.
        There is no guarantee that finalizers will run before a program exits,
        so typically they are useful only for releasing non-memory resources
        associated with an object during a long-running program.
        For example, an os.File object could use a finalizer to close the
        associated operating system file descriptor when a program discards
        an os.File without calling Close, but it would be a mistake
        to depend on a finalizer to flush an in-memory I/O buffer such as a
        bufio.Writer, because the buffer would not be flushed at program exit.
        
        It is not guaranteed that a finalizer will run if the size of *obj is
        zero bytes, because it may share same address with other zero-size
        objects in memory. See https://go.dev/ref/spec#Size_and_alignment_guarantees.
        
        It is not guaranteed that a finalizer will run for objects allocated
        in initializers for package-level variables. Such objects may be
        linker-allocated, not heap-allocated.
        
        Note that because finalizers may execute arbitrarily far into the future
        after an object is no longer referenced, the runtime is allowed to perform
        a space-saving optimization that batches objects together in a single
        allocation slot. The finalizer for an unreferenced object in such an
        allocation may never run if it always exists in the same batch as a
        referenced object. Typically, this batching only happens for tiny
        (on the order of 16 bytes or less) and pointer-free objects.
        
        A finalizer may run as soon as an object becomes unreachable.
        In order to use finalizers correctly, the program must ensure that
        the object is reachable until it is no longer required.
        Objects stored in global variables, or that can be found by tracing
        pointers from a global variable, are reachable. For other objects,
        pass the object to a call of the KeepAlive function to mark the
        last point in the function where the object must be reachable.
        
        For example, if p points to a struct, such as os.File, that contains
        a file descriptor d, and p has a finalizer that closes that file
        descriptor, and if the last use of p in a function is a call to
        syscall.Write(p.d, buf, size), then p may be unreachable as soon as
        the program enters syscall.Write. The finalizer may run at that moment,
        closing p.d, causing syscall.Write to fail because it is writing to
        a closed file descriptor (or, worse, to an entirely different
        file descriptor opened by a different goroutine). To avoid this problem,
        call KeepAlive(p) after the call to syscall.Write.
        
        A single goroutine runs all finalizers for a program, sequentially.
        If a finalizer must run for a long time, it should do so by starting
        a new goroutine.
        
        In the terminology of the Go memory model, a call
        SetFinalizer(x, f) “synchronizes before” the finalization call f(x).
        However, there is no guarantee that KeepAlive(x) or any other use of x
        “synchronizes before” f(x), so in general a finalizer should use a mutex
        or other synchronization mechanism if it needs to access mutable state in x.
        For example, consider a finalizer that inspects a mutable field in x
        that is modified from time to time in the main program before x
        becomes unreachable and the finalizer is invoked.
        The modifications in the main program and the inspection in the finalizer
        need to use appropriate synchronization, such as mutexes or atomic updates,
        to avoid read-write races.
    **/
    static public function setFinalizer(_obj:stdgo.AnyInterface, _finalizer:stdgo.AnyInterface):Void {
        stdgo._internal.runtime.Runtime_setFinalizer.setFinalizer(_obj, _finalizer);
    }
    /**
        KeepAlive marks its argument as currently reachable.
        This ensures that the object is not freed, and its finalizer is not run,
        before the point in the program where KeepAlive is called.
        
        A very simplified example showing where KeepAlive is required:
        
        	type File struct { d int }
        	d, err := syscall.Open("/file/path", syscall.O_RDONLY, 0)
        	// ... do something if err != nil ...
        	p := &File{d}
        	runtime.SetFinalizer(p, func(p *File) { syscall.Close(p.d) })
        	var buf [10]byte
        	n, err := syscall.Read(p.d, buf[:])
        	// Ensure p is not finalized until Read returns.
        	runtime.KeepAlive(p)
        	// No more uses of p after this point.
        
        Without the KeepAlive call, the finalizer could run at the start of
        syscall.Read, closing the file descriptor before syscall.Read makes
        the actual system call.
        
        Note: KeepAlive should only be used to prevent finalizers from
        running prematurely. In particular, when used with unsafe.Pointer,
        the rules for valid uses of unsafe.Pointer still apply.
    **/
    static public function keepAlive(_x:stdgo.AnyInterface):Void {
        stdgo._internal.runtime.Runtime_keepAlive.keepAlive(_x);
    }
    /**
        GC runs a garbage collection and blocks the caller until the
        garbage collection is complete. It may also block the entire
        program.
    **/
    static public function gc():Void {
        stdgo._internal.runtime.Runtime_gc.gc();
    }
    /**
        SetBlockProfileRate controls the fraction of goroutine blocking events
        that are reported in the blocking profile. The profiler aims to sample
        an average of one blocking event per rate nanoseconds spent blocked.
        
        To include every blocking event in the profile, pass rate = 1.
        To turn off profiling entirely, pass rate <= 0.
    **/
    static public function setBlockProfileRate(_rate:StdTypes.Int):Void {
        stdgo._internal.runtime.Runtime_setBlockProfileRate.setBlockProfileRate(_rate);
    }
    /**
        SetMutexProfileFraction controls the fraction of mutex contention events
        that are reported in the mutex profile. On average 1/rate events are
        reported. The previous rate is returned.
        
        To turn off profiling entirely, pass rate 0.
        To just read the current rate, pass rate < 0.
        (For n>1 the details of sampling may change.)
    **/
    static public function setMutexProfileFraction(_rate:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.runtime.Runtime_setMutexProfileFraction.setMutexProfileFraction(_rate);
    }
    /**
        MemProfile returns a profile of memory allocated and freed per allocation
        site.
        
        MemProfile returns n, the number of records in the current memory profile.
        If len(p) >= n, MemProfile copies the profile into p and returns n, true.
        If len(p) < n, MemProfile does not change p and returns n, false.
        
        If inuseZero is true, the profile includes allocation records
        where r.AllocBytes > 0 but r.AllocBytes == r.FreeBytes.
        These are sites where memory was allocated, but it has all
        been released back to the runtime.
        
        The returned profile may be up to two garbage collection cycles old.
        This is to avoid skewing the profile toward allocations; because
        allocations happen in real time but frees are delayed until the garbage
        collector performs sweeping, the profile only accounts for allocations
        that have had a chance to be freed by the garbage collector.
        
        Most clients should use the runtime/pprof package or
        the testing package's -test.memprofile flag instead
        of calling MemProfile directly.
    **/
    static public function memProfile(_p:Array<MemProfileRecord>, _inuseZero:Bool):stdgo.Tuple<StdTypes.Int, Bool> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo._internal.runtime.Runtime_MemProfileRecord.MemProfileRecord>);
        return {
            final obj = stdgo._internal.runtime.Runtime_memProfile.memProfile(_p, _inuseZero);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        BlockProfile returns n, the number of records in the current blocking profile.
        If len(p) >= n, BlockProfile copies the profile into p and returns n, true.
        If len(p) < n, BlockProfile does not change p and returns n, false.
        
        Most clients should use the runtime/pprof package or
        the testing package's -test.blockprofile flag instead
        of calling BlockProfile directly.
    **/
    static public function blockProfile(_p:Array<BlockProfileRecord>):stdgo.Tuple<StdTypes.Int, Bool> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo._internal.runtime.Runtime_BlockProfileRecord.BlockProfileRecord>);
        return {
            final obj = stdgo._internal.runtime.Runtime_blockProfile.blockProfile(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        MutexProfile returns n, the number of records in the current mutex profile.
        If len(p) >= n, MutexProfile copies the profile into p and returns n, true.
        Otherwise, MutexProfile does not change p, and returns n, false.
        
        Most clients should use the runtime/pprof package
        instead of calling MutexProfile directly.
    **/
    static public function mutexProfile(_p:Array<BlockProfileRecord>):stdgo.Tuple<StdTypes.Int, Bool> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo._internal.runtime.Runtime_BlockProfileRecord.BlockProfileRecord>);
        return {
            final obj = stdgo._internal.runtime.Runtime_mutexProfile.mutexProfile(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        ThreadCreateProfile returns n, the number of records in the thread creation profile.
        If len(p) >= n, ThreadCreateProfile copies the profile into p and returns n, true.
        If len(p) < n, ThreadCreateProfile does not change p and returns n, false.
        
        Most clients should use the runtime/pprof package instead
        of calling ThreadCreateProfile directly.
    **/
    static public function threadCreateProfile(_p:Array<StackRecord>):stdgo.Tuple<StdTypes.Int, Bool> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo._internal.runtime.Runtime_StackRecord.StackRecord>);
        return {
            final obj = stdgo._internal.runtime.Runtime_threadCreateProfile.threadCreateProfile(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        GoroutineProfile returns n, the number of records in the active goroutine stack profile.
        If len(p) >= n, GoroutineProfile copies the profile into p and returns n, true.
        If len(p) < n, GoroutineProfile does not change p and returns n, false.
        
        Most clients should use the runtime/pprof package instead
        of calling GoroutineProfile directly.
    **/
    static public function goroutineProfile(_p:Array<StackRecord>):stdgo.Tuple<StdTypes.Int, Bool> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo._internal.runtime.Runtime_StackRecord.StackRecord>);
        return {
            final obj = stdgo._internal.runtime.Runtime_goroutineProfile.goroutineProfile(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Stack formats a stack trace of the calling goroutine into buf
        and returns the number of bytes written to buf.
        If all is true, Stack formats stack traces of all other goroutines
        into buf after the trace for the current goroutine.
    **/
    static public function stack(_buf:Array<std.UInt>, _all:Bool):StdTypes.Int {
        final _buf = ([for (i in _buf) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.runtime.Runtime_stack.stack(_buf, _all);
    }
    /**
        ReadMemStats populates m with memory allocator statistics.
        
        The returned memory allocator statistics are up to date as of the
        call to ReadMemStats. This is in contrast with a heap profile,
        which is a snapshot as of the most recently completed garbage
        collection cycle.
    **/
    static public function readMemStats(_m:MemStats):Void {
        stdgo._internal.runtime.Runtime_readMemStats.readMemStats(_m);
    }
    /**
        Goexit terminates the goroutine that calls it. No other goroutine is affected.
        Goexit runs all deferred calls before terminating the goroutine. Because Goexit
        is not a panic, any recover calls in those deferred functions will return nil.
        
        Calling Goexit from the main goroutine terminates that goroutine
        without func main returning. Since func main has not returned,
        the program continues execution of other goroutines.
        If all other goroutines exit, the program crashes.
    **/
    static public function goexit():Void {
        stdgo._internal.runtime.Runtime_goexit.goexit();
    }
    /**
        Gosched yields the processor, allowing other goroutines to run. It does not
        suspend the current goroutine, so execution resumes automatically.
        
        go:nosplit
    **/
    static public function gosched():Void {
        stdgo._internal.runtime.Runtime_gosched.gosched();
    }
    /**
        Breakpoint executes a breakpoint trap.
    **/
    static public function breakpoint():Void {
        stdgo._internal.runtime.Runtime_breakpoint.breakpoint();
    }
    /**
        LockOSThread wires the calling goroutine to its current operating system thread.
        The calling goroutine will always execute in that thread,
        and no other goroutine will execute in it,
        until the calling goroutine has made as many calls to
        UnlockOSThread as to LockOSThread.
        If the calling goroutine exits without unlocking the thread,
        the thread will be terminated.
        
        All init functions are run on the startup thread. Calling LockOSThread
        from an init function will cause the main function to be invoked on
        that thread.
        
        A goroutine should call LockOSThread before calling OS services or
        non-Go library functions that depend on per-thread state.
        
        go:nosplit
    **/
    static public function lockOSThread():Void {
        stdgo._internal.runtime.Runtime_lockOSThread.lockOSThread();
    }
    /**
        UnlockOSThread undoes an earlier call to LockOSThread.
        If this drops the number of active LockOSThread calls on the
        calling goroutine to zero, it unwires the calling goroutine from
        its fixed operating system thread.
        If there are no active LockOSThread calls, this is a no-op.
        
        Before calling UnlockOSThread, the caller must ensure that the OS
        thread is suitable for running other goroutines. If the caller made
        any permanent changes to the state of the thread that would affect
        other goroutines, it should not call this function and thus leave
        the goroutine locked to the OS thread until the goroutine (and
        hence the thread) exits.
        
        go:nosplit
    **/
    static public function unlockOSThread():Void {
        stdgo._internal.runtime.Runtime_unlockOSThread.unlockOSThread();
    }
    static public function runStealOrderTest():Void {
        stdgo._internal.runtime.Runtime_runStealOrderTest.runStealOrderTest();
    }
    /**
        CallersFrames takes a slice of PC values returned by Callers and
        prepares to return function/file/line information.
        Do not change the slice until you are done with the Frames.
    **/
    static public function callersFrames(_callers:Array<stdgo.GoUIntptr>):Frames {
        final _callers = ([for (i in _callers) i] : stdgo.Slice<stdgo.GoUIntptr>);
        return stdgo._internal.runtime.Runtime_callersFrames.callersFrames(_callers);
    }
    /**
        FuncForPC returns a *Func describing the function that contains the
        given program counter address, or else nil.
        
        If pc represents multiple functions because of inlining, it returns
        the *Func describing the innermost function, but with an entry of
        the outermost function.
    **/
    static public function funcForPC(_pc:stdgo.GoUIntptr):Func {
        return stdgo._internal.runtime.Runtime_funcForPC.funcForPC(_pc);
    }
    static public function xtestInlineUnwinder(_t:TestingT):Void {
        stdgo._internal.runtime.Runtime_xtestInlineUnwinder.xtestInlineUnwinder(_t);
    }
    /**
        StartTrace enables tracing for the current process.
        While tracing, the data will be buffered and available via ReadTrace.
        StartTrace returns an error if tracing is already enabled.
        Most clients should use the runtime/trace package or the testing package's
        -test.trace flag instead of calling StartTrace directly.
    **/
    static public function startTrace():stdgo.Error {
        return stdgo._internal.runtime.Runtime_startTrace.startTrace();
    }
    /**
        StopTrace stops tracing, if it was previously enabled.
        StopTrace only returns after all the reads for the trace have completed.
    **/
    static public function stopTrace():Void {
        stdgo._internal.runtime.Runtime_stopTrace.stopTrace();
    }
    /**
        ReadTrace returns the next chunk of binary tracing data, blocking until data
        is available. If tracing is turned off and all the data accumulated while it
        was on has been returned, ReadTrace returns nil. The caller must copy the
        returned data before calling ReadTrace again.
        ReadTrace must be called from one goroutine at a time.
    **/
    static public function readTrace():Array<std.UInt> {
        return [for (i in stdgo._internal.runtime.Runtime_readTrace.readTrace()) i];
    }
    /**
        SetCgoTraceback records three C functions to use to gather
        traceback information from C code and to convert that traceback
        information into symbolic information. These are used when printing
        stack traces for a program that uses cgo.
        
        The traceback and context functions may be called from a signal
        handler, and must therefore use only async-signal safe functions.
        The symbolizer function may be called while the program is
        crashing, and so must be cautious about using memory.  None of the
        functions may call back into Go.
        
        The context function will be called with a single argument, a
        pointer to a struct:
        
        	struct {
        		Context uintptr
        	}
        
        In C syntax, this struct will be
        
        	struct {
        		uintptr_t Context;
        	};
        
        If the Context field is 0, the context function is being called to
        record the current traceback context. It should record in the
        Context field whatever information is needed about the current
        point of execution to later produce a stack trace, probably the
        stack pointer and PC. In this case the context function will be
        called from C code.
        
        If the Context field is not 0, then it is a value returned by a
        previous call to the context function. This case is called when the
        context is no longer needed; that is, when the Go code is returning
        to its C code caller. This permits the context function to release
        any associated resources.
        
        While it would be correct for the context function to record a
        complete a stack trace whenever it is called, and simply copy that
        out in the traceback function, in a typical program the context
        function will be called many times without ever recording a
        traceback for that context. Recording a complete stack trace in a
        call to the context function is likely to be inefficient.
        
        The traceback function will be called with a single argument, a
        pointer to a struct:
        
        	struct {
        		Context    uintptr
        		SigContext uintptr
        		Buf        *uintptr
        		Max        uintptr
        	}
        
        In C syntax, this struct will be
        
        	struct {
        		uintptr_t  Context;
        		uintptr_t  SigContext;
        		uintptr_t* Buf;
        		uintptr_t  Max;
        	};
        
        The Context field will be zero to gather a traceback from the
        current program execution point. In this case, the traceback
        function will be called from C code.
        
        Otherwise Context will be a value previously returned by a call to
        the context function. The traceback function should gather a stack
        trace from that saved point in the program execution. The traceback
        function may be called from an execution thread other than the one
        that recorded the context, but only when the context is known to be
        valid and unchanging. The traceback function may also be called
        deeper in the call stack on the same thread that recorded the
        context. The traceback function may be called multiple times with
        the same Context value; it will usually be appropriate to cache the
        result, if possible, the first time this is called for a specific
        context value.
        
        If the traceback function is called from a signal handler on a Unix
        system, SigContext will be the signal context argument passed to
        the signal handler (a C ucontext_t* cast to uintptr_t). This may be
        used to start tracing at the point where the signal occurred. If
        the traceback function is not called from a signal handler,
        SigContext will be zero.
        
        Buf is where the traceback information should be stored. It should
        be PC values, such that Buf[0] is the PC of the caller, Buf[1] is
        the PC of that function's caller, and so on.  Max is the maximum
        number of entries to store.  The function should store a zero to
        indicate the top of the stack, or that the caller is on a different
        stack, presumably a Go stack.
        
        Unlike runtime.Callers, the PC values returned should, when passed
        to the symbolizer function, return the file/line of the call
        instruction.  No additional subtraction is required or appropriate.
        
        On all platforms, the traceback function is invoked when a call from
        Go to C to Go requests a stack trace. On linux/amd64, linux/ppc64le,
        linux/arm64, and freebsd/amd64, the traceback function is also invoked
        when a signal is received by a thread that is executing a cgo call.
        The traceback function should not make assumptions about when it is
        called, as future versions of Go may make additional calls.
        
        The symbolizer function will be called with a single argument, a
        pointer to a struct:
        
        	struct {
        		PC      uintptr // program counter to fetch information for
        		File    *byte   // file name (NUL terminated)
        		Lineno  uintptr // line number
        		Func    *byte   // function name (NUL terminated)
        		Entry   uintptr // function entry point
        		More    uintptr // set non-zero if more info for this PC
        		Data    uintptr // unused by runtime, available for function
        	}
        
        In C syntax, this struct will be
        
        	struct {
        		uintptr_t PC;
        		char*     File;
        		uintptr_t Lineno;
        		char*     Func;
        		uintptr_t Entry;
        		uintptr_t More;
        		uintptr_t Data;
        	};
        
        The PC field will be a value returned by a call to the traceback
        function.
        
        The first time the function is called for a particular traceback,
        all the fields except PC will be 0. The function should fill in the
        other fields if possible, setting them to 0/nil if the information
        is not available. The Data field may be used to store any useful
        information across calls. The More field should be set to non-zero
        if there is more information for this PC, zero otherwise. If More
        is set non-zero, the function will be called again with the same
        PC, and may return different information (this is intended for use
        with inlined functions). If More is zero, the function will be
        called with the next PC value in the traceback. When the traceback
        is complete, the function will be called once more with PC set to
        zero; this may be used to free any information. Each call will
        leave the fields of the struct set to the same values they had upon
        return, except for the PC field when the More field is zero. The
        function must not keep a copy of the struct pointer between calls.
        
        When calling SetCgoTraceback, the version argument is the version
        number of the structs that the functions expect to receive.
        Currently this must be zero.
        
        The symbolizer function may be nil, in which case the results of
        the traceback function will be displayed as numbers. If the
        traceback function is nil, the symbolizer function will never be
        called. The context function may be nil, in which case the
        traceback function will only be called with the context field set
        to zero.  If the context function is nil, then calls from Go to C
        to Go will not show a traceback for the C portion of the call stack.
        
        SetCgoTraceback should be called only once, ideally from an init function.
    **/
    static public function setCgoTraceback(_version:StdTypes.Int, _traceback:stdgo._internal.unsafe.Unsafe.UnsafePointer, _context:stdgo._internal.unsafe.Unsafe.UnsafePointer, _symbolizer:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void {
        stdgo._internal.runtime.Runtime_setCgoTraceback.setCgoTraceback(_version, _traceback, _context, _symbolizer);
    }
    static public function xtestSPWrite(_t:TestingT):Void {
        stdgo._internal.runtime.Runtime_xtestSPWrite.xtestSPWrite(_t);
    }
}
