package _internal.runtime_test;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unsafe.Unsafe;
@:keep @:allow(_internal.runtime_test.Runtime_test.T_gcCycleResult_asInterface) class T_gcCycleResult_static_extension {
    @:keep
    static public function string( _r:stdgo.Ref<_internal.runtime_test.Runtime_test_T_gcCycleResult.T_gcCycleResult>):stdgo.GoString {
        @:recv var _r:stdgo.Ref<_internal.runtime_test.Runtime_test_T_gcCycleResult.T_gcCycleResult> = _r;
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%d %2.1f%% %d->%d->%d (goal: %d)" : stdgo.GoString), stdgo.Go.toInterface(_r._cycle), stdgo.Go.toInterface((_r._gcUtilization * (100 : stdgo.GoFloat64) : stdgo.GoFloat64)), stdgo.Go.toInterface(_r._heapLive), stdgo.Go.toInterface(_r._heapTrigger), stdgo.Go.toInterface(_r._heapPeak), stdgo.Go.toInterface(_r._heapGoal))?.__copy__();
    }
    @:keep
    static public function _triggerRatio( _r:stdgo.Ref<_internal.runtime_test.Runtime_test_T_gcCycleResult.T_gcCycleResult>):stdgo.GoFloat64 {
        @:recv var _r:stdgo.Ref<_internal.runtime_test.Runtime_test_T_gcCycleResult.T_gcCycleResult> = _r;
        return (((_r._heapTrigger - _r._heapLive : stdgo.GoUInt64) : stdgo.GoFloat64) / ((_r._heapGoal - _r._heapLive : stdgo.GoUInt64) : stdgo.GoFloat64) : stdgo.GoFloat64);
    }
    @:keep
    static public function _runway( _r:stdgo.Ref<_internal.runtime_test.Runtime_test_T_gcCycleResult.T_gcCycleResult>):stdgo.GoFloat64 {
        @:recv var _r:stdgo.Ref<_internal.runtime_test.Runtime_test_T_gcCycleResult.T_gcCycleResult> = _r;
        return ((_r._heapGoal - _r._heapTrigger : stdgo.GoUInt64) : stdgo.GoFloat64);
    }
    @:keep
    static public function _goalRatio( _r:stdgo.Ref<_internal.runtime_test.Runtime_test_T_gcCycleResult.T_gcCycleResult>):stdgo.GoFloat64 {
        @:recv var _r:stdgo.Ref<_internal.runtime_test.Runtime_test_T_gcCycleResult.T_gcCycleResult> = _r;
        return ((_r._heapPeak : stdgo.GoFloat64) / (_r._heapGoal : stdgo.GoFloat64) : stdgo.GoFloat64);
    }
}
