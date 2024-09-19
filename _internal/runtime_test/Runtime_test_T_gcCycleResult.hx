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
@:structInit @:using(_internal.runtime_test.Runtime_test_T_gcCycleResult_static_extension.T_gcCycleResult_static_extension) class T_gcCycleResult {
    public var _cycle : stdgo.GoInt = 0;
    public var _heapLive : stdgo.GoUInt64 = 0;
    public var _heapTrigger : stdgo.GoUInt64 = 0;
    public var _heapGoal : stdgo.GoUInt64 = 0;
    public var _heapPeak : stdgo.GoUInt64 = 0;
    public var _heapScannable : stdgo.GoInt64 = 0;
    public var _gcUtilization : stdgo.GoFloat64 = 0;
    public function new(?_cycle:stdgo.GoInt, ?_heapLive:stdgo.GoUInt64, ?_heapTrigger:stdgo.GoUInt64, ?_heapGoal:stdgo.GoUInt64, ?_heapPeak:stdgo.GoUInt64, ?_heapScannable:stdgo.GoInt64, ?_gcUtilization:stdgo.GoFloat64) {
        if (_cycle != null) this._cycle = _cycle;
        if (_heapLive != null) this._heapLive = _heapLive;
        if (_heapTrigger != null) this._heapTrigger = _heapTrigger;
        if (_heapGoal != null) this._heapGoal = _heapGoal;
        if (_heapPeak != null) this._heapPeak = _heapPeak;
        if (_heapScannable != null) this._heapScannable = _heapScannable;
        if (_gcUtilization != null) this._gcUtilization = _gcUtilization;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_gcCycleResult(_cycle, _heapLive, _heapTrigger, _heapGoal, _heapPeak, _heapScannable, _gcUtilization);
    }
}
