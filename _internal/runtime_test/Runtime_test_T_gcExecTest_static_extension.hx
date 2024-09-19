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
@:keep @:allow(_internal.runtime_test.Runtime_test.T_gcExecTest_asInterface) class T_gcExecTest_static_extension {
    @:keep
    static public function _check( _e:stdgo.Ref<_internal.runtime_test.Runtime_test_T_gcExecTest.T_gcExecTest>, _t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _results:stdgo.Slice<_internal.runtime_test.Runtime_test_T_gcCycleResult.T_gcCycleResult>):Void {
        @:recv var _e:stdgo.Ref<_internal.runtime_test.Runtime_test_T_gcExecTest.T_gcExecTest> = _e;
        _t.helper();
        var _n = (_results.length : stdgo.GoInt);
        {
            final __value__ = _n;
            if (__value__ == ((0 : stdgo.GoInt))) {
                _t.fatal(stdgo.Go.toInterface(("no results passed to check" : stdgo.GoString)));
                return;
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                if (_results[(0 : stdgo.GoInt)]._cycle != ((1 : stdgo.GoInt))) {
                    _t.error(stdgo.Go.toInterface(("first cycle has incorrect number" : stdgo.GoString)));
                };
            } else {
                if (_results[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._cycle != ((_results[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)]._cycle + (1 : stdgo.GoInt) : stdgo.GoInt))) {
                    _t.error(stdgo.Go.toInterface(("cycle numbers out of order" : stdgo.GoString)));
                };
            };
        };
        {
            var _u = (_results[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._gcUtilization : stdgo.GoFloat64);
            if (((_u < (0 : stdgo.GoFloat64) : Bool) || (_u > (1 : stdgo.GoFloat64) : Bool) : Bool)) {
                _t.fatal(stdgo.Go.toInterface(("GC utilization not within acceptable bounds" : stdgo.GoString)));
            };
        };
        {
            var _s = (_results[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._heapScannable : stdgo.GoInt64);
            if ((_s < (0i64 : stdgo.GoInt64) : Bool)) {
                _t.fatal(stdgo.Go.toInterface(("heapScannable is negative" : stdgo.GoString)));
            };
        };
        if (_e._checker == null) {
            _t.fatal(stdgo.Go.toInterface(("test-specific checker is missing" : stdgo.GoString)));
        };
        _e._checker(_t, _results);
    }
    @:keep
    static public function _next( _e:stdgo.Ref<_internal.runtime_test.Runtime_test_T_gcExecTest.T_gcExecTest>):_internal.runtime_test.Runtime_test_T_gcCycle.T_gcCycle {
        @:recv var _e:stdgo.Ref<_internal.runtime_test.Runtime_test_T_gcExecTest.T_gcExecTest> = _e;
        return ({ _allocRate : _e._allocRate._min((0.0001 : stdgo.GoFloat64))(), _scanRate : _e._scanRate._min((0.0001 : stdgo.GoFloat64))(), _growthRate : _e._growthRate._min((0.0001 : stdgo.GoFloat64))(), _scannableFrac : _e._scannableFrac._limit((0 : stdgo.GoFloat64), (1 : stdgo.GoFloat64))(), _stackBytes : (_e._stackBytes._quantize((2048 : stdgo.GoFloat64))._min((0 : stdgo.GoFloat64))() : stdgo.GoUInt64) } : _internal.runtime_test.Runtime_test_T_gcCycle.T_gcCycle);
    }
}
