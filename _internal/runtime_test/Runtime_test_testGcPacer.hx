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
function testGcPacer(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _t.parallel();
        {};
        for (__14 => _e in (new stdgo.Slice<stdgo.Ref<_internal.runtime_test.Runtime_test_T_gcExecTest.T_gcExecTest>>(19, 19, ...[
({ _name : ("Steady" : stdgo.GoString), _gcPercent : (100 : stdgo.GoInt), _memoryLimit : (9223372036854775807i64 : stdgo.GoInt64), _globalsBytes : (32768i64 : stdgo.GoUInt64), _nCores : (8 : stdgo.GoInt), _allocRate : _internal.runtime_test.Runtime_test__constant._constant((33 : stdgo.GoFloat64)), _scanRate : _internal.runtime_test.Runtime_test__constant._constant((1024 : stdgo.GoFloat64)), _growthRate : _internal.runtime_test.Runtime_test__constant._constant((2 : stdgo.GoFloat64))._sum(_internal.runtime_test.Runtime_test__ramp._ramp((-1 : stdgo.GoFloat64), (12 : stdgo.GoInt))), _scannableFrac : _internal.runtime_test.Runtime_test__constant._constant((1 : stdgo.GoFloat64)), _stackBytes : _internal.runtime_test.Runtime_test__constant._constant((8192 : stdgo.GoFloat64)), _length : (50 : stdgo.GoInt), _checker : function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _c:stdgo.Slice<_internal.runtime_test.Runtime_test_T_gcCycleResult.T_gcCycleResult>):Void {
            var _n = (_c.length : stdgo.GoInt);
            if ((_n >= (25 : stdgo.GoInt) : Bool)) {
                _internal.runtime_test.Runtime_test__assertInEpsilon._assertInEpsilon(_t, ("GC utilization" : stdgo.GoString), _c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._gcUtilization, (0.25 : stdgo.GoFloat64), (0.005 : stdgo.GoFloat64));
                _internal.runtime_test.Runtime_test__assertInEpsilon._assertInEpsilon(_t, ("GC utilization" : stdgo.GoString), _c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._gcUtilization, _c[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)]._gcUtilization, (0.005 : stdgo.GoFloat64));
                _internal.runtime_test.Runtime_test__assertInRange._assertInRange(_t, ("goal ratio" : stdgo.GoString), _c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._goalRatio(), (0.95 : stdgo.GoFloat64), (1.05 : stdgo.GoFloat64));
            };
        } } : _internal.runtime_test.Runtime_test_T_gcExecTest.T_gcExecTest),
({ _name : ("SteadyBigStacks" : stdgo.GoString), _gcPercent : (100 : stdgo.GoInt), _memoryLimit : (9223372036854775807i64 : stdgo.GoInt64), _globalsBytes : (32768i64 : stdgo.GoUInt64), _nCores : (8 : stdgo.GoInt), _allocRate : _internal.runtime_test.Runtime_test__constant._constant((132 : stdgo.GoFloat64)), _scanRate : _internal.runtime_test.Runtime_test__constant._constant((1024 : stdgo.GoFloat64)), _growthRate : _internal.runtime_test.Runtime_test__constant._constant((2 : stdgo.GoFloat64))._sum(_internal.runtime_test.Runtime_test__ramp._ramp((-1 : stdgo.GoFloat64), (12 : stdgo.GoInt))), _scannableFrac : _internal.runtime_test.Runtime_test__constant._constant((1 : stdgo.GoFloat64)), _stackBytes : _internal.runtime_test.Runtime_test__constant._constant((2048 : stdgo.GoFloat64))._sum(_internal.runtime_test.Runtime_test__ramp._ramp((1.34217728e+08 : stdgo.GoFloat64), (8 : stdgo.GoInt))), _length : (50 : stdgo.GoInt), _checker : function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _c:stdgo.Slice<_internal.runtime_test.Runtime_test_T_gcCycleResult.T_gcCycleResult>):Void {
            var _n = (_c.length : stdgo.GoInt);
            if ((_n >= (25 : stdgo.GoInt) : Bool)) {
                _internal.runtime_test.Runtime_test__assertInEpsilon._assertInEpsilon(_t, ("GC utilization" : stdgo.GoString), _c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._gcUtilization, (0.25 : stdgo.GoFloat64), (0.005 : stdgo.GoFloat64));
                _internal.runtime_test.Runtime_test__assertInRange._assertInRange(_t, ("goal ratio" : stdgo.GoString), _c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._goalRatio(), (0.95 : stdgo.GoFloat64), (1.05 : stdgo.GoFloat64));
                _internal.runtime_test.Runtime_test__assertInEpsilon._assertInEpsilon(_t, ("GC utilization" : stdgo.GoString), _c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._gcUtilization, _c[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)]._gcUtilization, (0.005 : stdgo.GoFloat64));
            };
        } } : _internal.runtime_test.Runtime_test_T_gcExecTest.T_gcExecTest),
({ _name : ("SteadyBigGlobals" : stdgo.GoString), _gcPercent : (100 : stdgo.GoInt), _memoryLimit : (9223372036854775807i64 : stdgo.GoInt64), _globalsBytes : (134217728i64 : stdgo.GoUInt64), _nCores : (8 : stdgo.GoInt), _allocRate : _internal.runtime_test.Runtime_test__constant._constant((132 : stdgo.GoFloat64)), _scanRate : _internal.runtime_test.Runtime_test__constant._constant((1024 : stdgo.GoFloat64)), _growthRate : _internal.runtime_test.Runtime_test__constant._constant((2 : stdgo.GoFloat64))._sum(_internal.runtime_test.Runtime_test__ramp._ramp((-1 : stdgo.GoFloat64), (12 : stdgo.GoInt))), _scannableFrac : _internal.runtime_test.Runtime_test__constant._constant((1 : stdgo.GoFloat64)), _stackBytes : _internal.runtime_test.Runtime_test__constant._constant((8192 : stdgo.GoFloat64)), _length : (50 : stdgo.GoInt), _checker : function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _c:stdgo.Slice<_internal.runtime_test.Runtime_test_T_gcCycleResult.T_gcCycleResult>):Void {
            var _n = (_c.length : stdgo.GoInt);
            if ((_n >= (25 : stdgo.GoInt) : Bool)) {
                _internal.runtime_test.Runtime_test__assertInEpsilon._assertInEpsilon(_t, ("GC utilization" : stdgo.GoString), _c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._gcUtilization, (0.25 : stdgo.GoFloat64), (0.005 : stdgo.GoFloat64));
                _internal.runtime_test.Runtime_test__assertInRange._assertInRange(_t, ("goal ratio" : stdgo.GoString), _c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._goalRatio(), (0.95 : stdgo.GoFloat64), (1.05 : stdgo.GoFloat64));
                _internal.runtime_test.Runtime_test__assertInEpsilon._assertInEpsilon(_t, ("GC utilization" : stdgo.GoString), _c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._gcUtilization, _c[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)]._gcUtilization, (0.005 : stdgo.GoFloat64));
            };
        } } : _internal.runtime_test.Runtime_test_T_gcExecTest.T_gcExecTest),
({ _name : ("StepAlloc" : stdgo.GoString), _gcPercent : (100 : stdgo.GoInt), _memoryLimit : (9223372036854775807i64 : stdgo.GoInt64), _globalsBytes : (32768i64 : stdgo.GoUInt64), _nCores : (8 : stdgo.GoInt), _allocRate : _internal.runtime_test.Runtime_test__constant._constant((33 : stdgo.GoFloat64))._sum(_internal.runtime_test.Runtime_test__ramp._ramp((66 : stdgo.GoFloat64), (1 : stdgo.GoInt))._delay((50 : stdgo.GoInt))), _scanRate : _internal.runtime_test.Runtime_test__constant._constant((1024 : stdgo.GoFloat64)), _growthRate : _internal.runtime_test.Runtime_test__constant._constant((2 : stdgo.GoFloat64))._sum(_internal.runtime_test.Runtime_test__ramp._ramp((-1 : stdgo.GoFloat64), (12 : stdgo.GoInt))), _scannableFrac : _internal.runtime_test.Runtime_test__constant._constant((1 : stdgo.GoFloat64)), _stackBytes : _internal.runtime_test.Runtime_test__constant._constant((8192 : stdgo.GoFloat64)), _length : (100 : stdgo.GoInt), _checker : function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _c:stdgo.Slice<_internal.runtime_test.Runtime_test_T_gcCycleResult.T_gcCycleResult>):Void {
            var _n = (_c.length : stdgo.GoInt);
            if (((((_n >= (25 : stdgo.GoInt) : Bool) && (_n < (50 : stdgo.GoInt) : Bool) : Bool)) || (_n >= (75 : stdgo.GoInt) : Bool) : Bool)) {
                _internal.runtime_test.Runtime_test__assertInEpsilon._assertInEpsilon(_t, ("GC utilization" : stdgo.GoString), _c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._gcUtilization, _c[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)]._gcUtilization, (0.005 : stdgo.GoFloat64));
                _internal.runtime_test.Runtime_test__assertInRange._assertInRange(_t, ("goal ratio" : stdgo.GoString), _c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._goalRatio(), (0.95 : stdgo.GoFloat64), (1.05 : stdgo.GoFloat64));
            };
        } } : _internal.runtime_test.Runtime_test_T_gcExecTest.T_gcExecTest),
({ _name : ("HeavyStepAlloc" : stdgo.GoString), _gcPercent : (100 : stdgo.GoInt), _memoryLimit : (9223372036854775807i64 : stdgo.GoInt64), _globalsBytes : (32768i64 : stdgo.GoUInt64), _nCores : (8 : stdgo.GoInt), _allocRate : _internal.runtime_test.Runtime_test__constant._constant((33 : stdgo.GoFloat64))._sum(_internal.runtime_test.Runtime_test__ramp._ramp((330 : stdgo.GoFloat64), (1 : stdgo.GoInt))._delay((50 : stdgo.GoInt))), _scanRate : _internal.runtime_test.Runtime_test__constant._constant((1024 : stdgo.GoFloat64)), _growthRate : _internal.runtime_test.Runtime_test__constant._constant((2 : stdgo.GoFloat64))._sum(_internal.runtime_test.Runtime_test__ramp._ramp((-1 : stdgo.GoFloat64), (12 : stdgo.GoInt))), _scannableFrac : _internal.runtime_test.Runtime_test__constant._constant((1 : stdgo.GoFloat64)), _stackBytes : _internal.runtime_test.Runtime_test__constant._constant((8192 : stdgo.GoFloat64)), _length : (100 : stdgo.GoInt), _checker : function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _c:stdgo.Slice<_internal.runtime_test.Runtime_test_T_gcCycleResult.T_gcCycleResult>):Void {
            var _n = (_c.length : stdgo.GoInt);
            if (((((_n >= (25 : stdgo.GoInt) : Bool) && (_n < (50 : stdgo.GoInt) : Bool) : Bool)) || (_n >= (75 : stdgo.GoInt) : Bool) : Bool)) {
                _internal.runtime_test.Runtime_test__assertInEpsilon._assertInEpsilon(_t, ("GC utilization" : stdgo.GoString), _c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._gcUtilization, _c[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)]._gcUtilization, (0.005 : stdgo.GoFloat64));
                _internal.runtime_test.Runtime_test__assertInRange._assertInRange(_t, ("goal ratio" : stdgo.GoString), _c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._goalRatio(), (0.95 : stdgo.GoFloat64), (1.05 : stdgo.GoFloat64));
            };
        } } : _internal.runtime_test.Runtime_test_T_gcExecTest.T_gcExecTest),
({ _name : ("StepScannableFrac" : stdgo.GoString), _gcPercent : (100 : stdgo.GoInt), _memoryLimit : (9223372036854775807i64 : stdgo.GoInt64), _globalsBytes : (32768i64 : stdgo.GoUInt64), _nCores : (8 : stdgo.GoInt), _allocRate : _internal.runtime_test.Runtime_test__constant._constant((128 : stdgo.GoFloat64)), _scanRate : _internal.runtime_test.Runtime_test__constant._constant((1024 : stdgo.GoFloat64)), _growthRate : _internal.runtime_test.Runtime_test__constant._constant((2 : stdgo.GoFloat64))._sum(_internal.runtime_test.Runtime_test__ramp._ramp((-1 : stdgo.GoFloat64), (12 : stdgo.GoInt))), _scannableFrac : _internal.runtime_test.Runtime_test__constant._constant((0.2 : stdgo.GoFloat64))._sum(_internal.runtime_test.Runtime_test__unit._unit((0.5 : stdgo.GoFloat64))._delay((50 : stdgo.GoInt))), _stackBytes : _internal.runtime_test.Runtime_test__constant._constant((8192 : stdgo.GoFloat64)), _length : (100 : stdgo.GoInt), _checker : function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _c:stdgo.Slice<_internal.runtime_test.Runtime_test_T_gcCycleResult.T_gcCycleResult>):Void {
            var _n = (_c.length : stdgo.GoInt);
            if (((((_n >= (25 : stdgo.GoInt) : Bool) && (_n < (50 : stdgo.GoInt) : Bool) : Bool)) || (_n >= (75 : stdgo.GoInt) : Bool) : Bool)) {
                _internal.runtime_test.Runtime_test__assertInEpsilon._assertInEpsilon(_t, ("GC utilization" : stdgo.GoString), _c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._gcUtilization, _c[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)]._gcUtilization, (0.005 : stdgo.GoFloat64));
                _internal.runtime_test.Runtime_test__assertInRange._assertInRange(_t, ("goal ratio" : stdgo.GoString), _c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._goalRatio(), (0.95 : stdgo.GoFloat64), (1.05 : stdgo.GoFloat64));
            };
        } } : _internal.runtime_test.Runtime_test_T_gcExecTest.T_gcExecTest),
({ _name : ("HighGOGC" : stdgo.GoString), _gcPercent : (1500 : stdgo.GoInt), _memoryLimit : (9223372036854775807i64 : stdgo.GoInt64), _globalsBytes : (32768i64 : stdgo.GoUInt64), _nCores : (8 : stdgo.GoInt), _allocRate : _internal.runtime_test.Runtime_test__random._random((7 : stdgo.GoFloat64), (83i64 : stdgo.GoInt64))._offset((165 : stdgo.GoFloat64)), _scanRate : _internal.runtime_test.Runtime_test__constant._constant((1024 : stdgo.GoFloat64)), _growthRate : _internal.runtime_test.Runtime_test__constant._constant((2 : stdgo.GoFloat64))._sum(_internal.runtime_test.Runtime_test__ramp._ramp((-1 : stdgo.GoFloat64), (12 : stdgo.GoInt)), _internal.runtime_test.Runtime_test__random._random((0.01 : stdgo.GoFloat64), (1i64 : stdgo.GoInt64)), _internal.runtime_test.Runtime_test__unit._unit((14 : stdgo.GoFloat64))._delay((25 : stdgo.GoInt))), _scannableFrac : _internal.runtime_test.Runtime_test__constant._constant((1 : stdgo.GoFloat64)), _stackBytes : _internal.runtime_test.Runtime_test__constant._constant((8192 : stdgo.GoFloat64)), _length : (50 : stdgo.GoInt), _checker : function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _c:stdgo.Slice<_internal.runtime_test.Runtime_test_T_gcCycleResult.T_gcCycleResult>):Void {
            var _n = (_c.length : stdgo.GoInt);
            if ((_n > (12 : stdgo.GoInt) : Bool)) {
                if (_n == ((26 : stdgo.GoInt))) {
                    _internal.runtime_test.Runtime_test__assertInRange._assertInRange(_t, ("goal ratio" : stdgo.GoString), _c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._goalRatio(), (0.9 : stdgo.GoFloat64), (15 : stdgo.GoFloat64));
                } else {
                    _internal.runtime_test.Runtime_test__assertInRange._assertInRange(_t, ("goal ratio" : stdgo.GoString), _c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._goalRatio(), (0.9 : stdgo.GoFloat64), (1.05 : stdgo.GoFloat64));
                };
                _internal.runtime_test.Runtime_test__assertInEpsilon._assertInEpsilon(_t, ("GC utilization" : stdgo.GoString), _c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._gcUtilization, (0.25 : stdgo.GoFloat64), (0.28 : stdgo.GoFloat64));
                _internal.runtime_test.Runtime_test__assertInEpsilon._assertInEpsilon(_t, ("GC utilization" : stdgo.GoString), _c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._gcUtilization, _c[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)]._gcUtilization, (0.03 : stdgo.GoFloat64));
            };
        } } : _internal.runtime_test.Runtime_test_T_gcExecTest.T_gcExecTest),
({ _name : ("OscAlloc" : stdgo.GoString), _gcPercent : (100 : stdgo.GoInt), _memoryLimit : (9223372036854775807i64 : stdgo.GoInt64), _globalsBytes : (32768i64 : stdgo.GoUInt64), _nCores : (8 : stdgo.GoInt), _allocRate : _internal.runtime_test.Runtime_test__oscillate._oscillate((13 : stdgo.GoFloat64), (0 : stdgo.GoFloat64), (8 : stdgo.GoInt))._offset((67 : stdgo.GoFloat64)), _scanRate : _internal.runtime_test.Runtime_test__constant._constant((1024 : stdgo.GoFloat64)), _growthRate : _internal.runtime_test.Runtime_test__constant._constant((2 : stdgo.GoFloat64))._sum(_internal.runtime_test.Runtime_test__ramp._ramp((-1 : stdgo.GoFloat64), (12 : stdgo.GoInt))), _scannableFrac : _internal.runtime_test.Runtime_test__constant._constant((1 : stdgo.GoFloat64)), _stackBytes : _internal.runtime_test.Runtime_test__constant._constant((8192 : stdgo.GoFloat64)), _length : (50 : stdgo.GoInt), _checker : function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _c:stdgo.Slice<_internal.runtime_test.Runtime_test_T_gcCycleResult.T_gcCycleResult>):Void {
            var _n = (_c.length : stdgo.GoInt);
            if ((_n > (12 : stdgo.GoInt) : Bool)) {
                _internal.runtime_test.Runtime_test__assertInRange._assertInRange(_t, ("goal ratio" : stdgo.GoString), _c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._goalRatio(), (0.95 : stdgo.GoFloat64), (1.05 : stdgo.GoFloat64));
                _internal.runtime_test.Runtime_test__assertInRange._assertInRange(_t, ("GC utilization" : stdgo.GoString), _c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._gcUtilization, (0.25 : stdgo.GoFloat64), (0.3 : stdgo.GoFloat64));
            };
        } } : _internal.runtime_test.Runtime_test_T_gcExecTest.T_gcExecTest),
({ _name : ("JitterAlloc" : stdgo.GoString), _gcPercent : (100 : stdgo.GoInt), _memoryLimit : (9223372036854775807i64 : stdgo.GoInt64), _globalsBytes : (32768i64 : stdgo.GoUInt64), _nCores : (8 : stdgo.GoInt), _allocRate : _internal.runtime_test.Runtime_test__random._random((13 : stdgo.GoFloat64), (15i64 : stdgo.GoInt64))._offset((132 : stdgo.GoFloat64)), _scanRate : _internal.runtime_test.Runtime_test__constant._constant((1024 : stdgo.GoFloat64)), _growthRate : _internal.runtime_test.Runtime_test__constant._constant((2 : stdgo.GoFloat64))._sum(_internal.runtime_test.Runtime_test__ramp._ramp((-1 : stdgo.GoFloat64), (12 : stdgo.GoInt)), _internal.runtime_test.Runtime_test__random._random((0.01 : stdgo.GoFloat64), (14i64 : stdgo.GoInt64))), _scannableFrac : _internal.runtime_test.Runtime_test__constant._constant((1 : stdgo.GoFloat64)), _stackBytes : _internal.runtime_test.Runtime_test__constant._constant((8192 : stdgo.GoFloat64)), _length : (50 : stdgo.GoInt), _checker : function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _c:stdgo.Slice<_internal.runtime_test.Runtime_test_T_gcCycleResult.T_gcCycleResult>):Void {
            var _n = (_c.length : stdgo.GoInt);
            if ((_n > (12 : stdgo.GoInt) : Bool)) {
                _internal.runtime_test.Runtime_test__assertInRange._assertInRange(_t, ("goal ratio" : stdgo.GoString), _c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._goalRatio(), (0.95 : stdgo.GoFloat64), (1.025 : stdgo.GoFloat64));
                _internal.runtime_test.Runtime_test__assertInRange._assertInRange(_t, ("GC utilization" : stdgo.GoString), _c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._gcUtilization, (0.25 : stdgo.GoFloat64), (0.275 : stdgo.GoFloat64));
            };
        } } : _internal.runtime_test.Runtime_test_T_gcExecTest.T_gcExecTest),
({ _name : ("HeavyJitterAlloc" : stdgo.GoString), _gcPercent : (100 : stdgo.GoInt), _memoryLimit : (9223372036854775807i64 : stdgo.GoInt64), _globalsBytes : (32768i64 : stdgo.GoUInt64), _nCores : (8 : stdgo.GoInt), _allocRate : _internal.runtime_test.Runtime_test__random._random((33 : stdgo.GoFloat64), (0i64 : stdgo.GoInt64))._offset((330 : stdgo.GoFloat64)), _scanRate : _internal.runtime_test.Runtime_test__constant._constant((1024 : stdgo.GoFloat64)), _growthRate : _internal.runtime_test.Runtime_test__constant._constant((2 : stdgo.GoFloat64))._sum(_internal.runtime_test.Runtime_test__ramp._ramp((-1 : stdgo.GoFloat64), (12 : stdgo.GoInt)), _internal.runtime_test.Runtime_test__random._random((0.01 : stdgo.GoFloat64), (338i64 : stdgo.GoInt64))), _scannableFrac : _internal.runtime_test.Runtime_test__constant._constant((1 : stdgo.GoFloat64)), _stackBytes : _internal.runtime_test.Runtime_test__constant._constant((8192 : stdgo.GoFloat64)), _length : (50 : stdgo.GoInt), _checker : function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _c:stdgo.Slice<_internal.runtime_test.Runtime_test_T_gcCycleResult.T_gcCycleResult>):Void {
            var _n = (_c.length : stdgo.GoInt);
            if ((_n > (13 : stdgo.GoInt) : Bool)) {
                _internal.runtime_test.Runtime_test__assertInRange._assertInRange(_t, ("goal ratio" : stdgo.GoString), _c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._goalRatio(), (0.95 : stdgo.GoFloat64), (1.05 : stdgo.GoFloat64));
                _internal.runtime_test.Runtime_test__assertInEpsilon._assertInEpsilon(_t, ("GC utilization" : stdgo.GoString), _c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._gcUtilization, _c[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)]._gcUtilization, (0.05 : stdgo.GoFloat64));
                _internal.runtime_test.Runtime_test__assertInEpsilon._assertInEpsilon(_t, ("GC utilization" : stdgo.GoString), _c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._gcUtilization, _c[(11 : stdgo.GoInt)]._gcUtilization, (0.05 : stdgo.GoFloat64));
            };
        } } : _internal.runtime_test.Runtime_test_T_gcExecTest.T_gcExecTest),
({ _name : ("SmallHeapSlowAlloc" : stdgo.GoString), _gcPercent : (100 : stdgo.GoInt), _memoryLimit : (9223372036854775807i64 : stdgo.GoInt64), _globalsBytes : (32768i64 : stdgo.GoUInt64), _nCores : (8 : stdgo.GoInt), _allocRate : _internal.runtime_test.Runtime_test__constant._constant((1 : stdgo.GoFloat64)), _scanRate : _internal.runtime_test.Runtime_test__constant._constant((2048 : stdgo.GoFloat64)), _growthRate : _internal.runtime_test.Runtime_test__constant._constant((2 : stdgo.GoFloat64))._sum(_internal.runtime_test.Runtime_test__ramp._ramp((-1 : stdgo.GoFloat64), (3 : stdgo.GoInt))), _scannableFrac : _internal.runtime_test.Runtime_test__constant._constant((0.01 : stdgo.GoFloat64)), _stackBytes : _internal.runtime_test.Runtime_test__constant._constant((8192 : stdgo.GoFloat64)), _length : (50 : stdgo.GoInt), _checker : function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _c:stdgo.Slice<_internal.runtime_test.Runtime_test_T_gcCycleResult.T_gcCycleResult>):Void {
            var _n = (_c.length : stdgo.GoInt);
            if ((_n > (4 : stdgo.GoInt) : Bool)) {
                _internal.runtime_test.Runtime_test__assertInRange._assertInRange(_t, ("goal ratio" : stdgo.GoString), _c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._goalRatio(), (0.925 : stdgo.GoFloat64), (1.025 : stdgo.GoFloat64));
                _internal.runtime_test.Runtime_test__assertInRange._assertInRange(_t, ("trigger ratio" : stdgo.GoString), _c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._triggerRatio(), (0.925 : stdgo.GoFloat64), (0.975 : stdgo.GoFloat64));
            };
            if ((_n > (25 : stdgo.GoInt) : Bool)) {
                _internal.runtime_test.Runtime_test__assertInEpsilon._assertInEpsilon(_t, ("GC utilization" : stdgo.GoString), _c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._gcUtilization, (0.25 : stdgo.GoFloat64), (0.005 : stdgo.GoFloat64));
                _internal.runtime_test.Runtime_test__assertInEpsilon._assertInEpsilon(_t, ("GC utilization" : stdgo.GoString), _c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._gcUtilization, _c[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)]._gcUtilization, (0.05 : stdgo.GoFloat64));
                _internal.runtime_test.Runtime_test__assertInEpsilon._assertInEpsilon(_t, ("GC utilization" : stdgo.GoString), _c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._gcUtilization, _c[(11 : stdgo.GoInt)]._gcUtilization, (0.05 : stdgo.GoFloat64));
            };
        } } : _internal.runtime_test.Runtime_test_T_gcExecTest.T_gcExecTest),
({ _name : ("MediumHeapSlowAlloc" : stdgo.GoString), _gcPercent : (100 : stdgo.GoInt), _memoryLimit : (9223372036854775807i64 : stdgo.GoInt64), _globalsBytes : (32768i64 : stdgo.GoUInt64), _nCores : (8 : stdgo.GoInt), _allocRate : _internal.runtime_test.Runtime_test__constant._constant((1 : stdgo.GoFloat64)), _scanRate : _internal.runtime_test.Runtime_test__constant._constant((2048 : stdgo.GoFloat64)), _growthRate : _internal.runtime_test.Runtime_test__constant._constant((2 : stdgo.GoFloat64))._sum(_internal.runtime_test.Runtime_test__ramp._ramp((-1 : stdgo.GoFloat64), (8 : stdgo.GoInt))), _scannableFrac : _internal.runtime_test.Runtime_test__constant._constant((0.01 : stdgo.GoFloat64)), _stackBytes : _internal.runtime_test.Runtime_test__constant._constant((8192 : stdgo.GoFloat64)), _length : (50 : stdgo.GoInt), _checker : function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _c:stdgo.Slice<_internal.runtime_test.Runtime_test_T_gcCycleResult.T_gcCycleResult>):Void {
            var _n = (_c.length : stdgo.GoInt);
            if ((_n > (9 : stdgo.GoInt) : Bool)) {
                _internal.runtime_test.Runtime_test__assertInRange._assertInRange(_t, ("goal ratio" : stdgo.GoString), _c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._goalRatio(), (0.925 : stdgo.GoFloat64), (1.025 : stdgo.GoFloat64));
                _internal.runtime_test.Runtime_test__assertInRange._assertInRange(_t, ("trigger ratio" : stdgo.GoString), _c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._triggerRatio(), (0.925 : stdgo.GoFloat64), (0.975 : stdgo.GoFloat64));
            };
            if ((_n > (25 : stdgo.GoInt) : Bool)) {
                _internal.runtime_test.Runtime_test__assertInEpsilon._assertInEpsilon(_t, ("GC utilization" : stdgo.GoString), _c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._gcUtilization, (0.25 : stdgo.GoFloat64), (0.005 : stdgo.GoFloat64));
                _internal.runtime_test.Runtime_test__assertInEpsilon._assertInEpsilon(_t, ("GC utilization" : stdgo.GoString), _c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._gcUtilization, _c[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)]._gcUtilization, (0.05 : stdgo.GoFloat64));
                _internal.runtime_test.Runtime_test__assertInEpsilon._assertInEpsilon(_t, ("GC utilization" : stdgo.GoString), _c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._gcUtilization, _c[(11 : stdgo.GoInt)]._gcUtilization, (0.05 : stdgo.GoFloat64));
            };
        } } : _internal.runtime_test.Runtime_test_T_gcExecTest.T_gcExecTest),
({ _name : ("LargeHeapSlowAlloc" : stdgo.GoString), _gcPercent : (100 : stdgo.GoInt), _memoryLimit : (9223372036854775807i64 : stdgo.GoInt64), _globalsBytes : (32768i64 : stdgo.GoUInt64), _nCores : (8 : stdgo.GoInt), _allocRate : _internal.runtime_test.Runtime_test__constant._constant((1 : stdgo.GoFloat64)), _scanRate : _internal.runtime_test.Runtime_test__constant._constant((2048 : stdgo.GoFloat64)), _growthRate : _internal.runtime_test.Runtime_test__constant._constant((4 : stdgo.GoFloat64))._sum(_internal.runtime_test.Runtime_test__ramp._ramp((-3 : stdgo.GoFloat64), (12 : stdgo.GoInt))), _scannableFrac : _internal.runtime_test.Runtime_test__constant._constant((0.01 : stdgo.GoFloat64)), _stackBytes : _internal.runtime_test.Runtime_test__constant._constant((8192 : stdgo.GoFloat64)), _length : (50 : stdgo.GoInt), _checker : function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _c:stdgo.Slice<_internal.runtime_test.Runtime_test_T_gcCycleResult.T_gcCycleResult>):Void {
            var _n = (_c.length : stdgo.GoInt);
            if ((_n > (13 : stdgo.GoInt) : Bool)) {
                _internal.runtime_test.Runtime_test__assertInRange._assertInRange(_t, ("goal ratio" : stdgo.GoString), _c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._goalRatio(), (0.95 : stdgo.GoFloat64), (1.05 : stdgo.GoFloat64));
                _internal.runtime_test.Runtime_test__assertInRange._assertInRange(_t, ("runway" : stdgo.GoString), _c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._runway(), (4.128768e+06 : stdgo.GoFloat64), (4.25984e+06 : stdgo.GoFloat64));
            };
            if ((_n > (25 : stdgo.GoInt) : Bool)) {
                _internal.runtime_test.Runtime_test__assertInEpsilon._assertInEpsilon(_t, ("GC utilization" : stdgo.GoString), _c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._gcUtilization, (0.25 : stdgo.GoFloat64), (0.005 : stdgo.GoFloat64));
                _internal.runtime_test.Runtime_test__assertInEpsilon._assertInEpsilon(_t, ("GC utilization" : stdgo.GoString), _c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._gcUtilization, _c[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)]._gcUtilization, (0.05 : stdgo.GoFloat64));
                _internal.runtime_test.Runtime_test__assertInEpsilon._assertInEpsilon(_t, ("GC utilization" : stdgo.GoString), _c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._gcUtilization, _c[(11 : stdgo.GoInt)]._gcUtilization, (0.05 : stdgo.GoFloat64));
            };
        } } : _internal.runtime_test.Runtime_test_T_gcExecTest.T_gcExecTest),
({ _name : ("SteadyMemoryLimit" : stdgo.GoString), _gcPercent : (100 : stdgo.GoInt), _memoryLimit : (536870912i64 : stdgo.GoInt64), _globalsBytes : (32768i64 : stdgo.GoUInt64), _nCores : (8 : stdgo.GoInt), _allocRate : _internal.runtime_test.Runtime_test__constant._constant((33 : stdgo.GoFloat64)), _scanRate : _internal.runtime_test.Runtime_test__constant._constant((1024 : stdgo.GoFloat64)), _growthRate : _internal.runtime_test.Runtime_test__constant._constant((2 : stdgo.GoFloat64))._sum(_internal.runtime_test.Runtime_test__ramp._ramp((-1 : stdgo.GoFloat64), (12 : stdgo.GoInt))), _scannableFrac : _internal.runtime_test.Runtime_test__constant._constant((1 : stdgo.GoFloat64)), _stackBytes : _internal.runtime_test.Runtime_test__constant._constant((8192 : stdgo.GoFloat64)), _length : (50 : stdgo.GoInt), _checker : function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _c:stdgo.Slice<_internal.runtime_test.Runtime_test_T_gcCycleResult.T_gcCycleResult>):Void {
            var _n = (_c.length : stdgo.GoInt);
            {
                var _peak = (_c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._heapPeak : stdgo.GoUInt64);
                if ((_peak >= _internal.runtime_test.Runtime_test__applyMemoryLimitHeapGoalHeadroom._applyMemoryLimitHeapGoalHeadroom((536870912i64 : stdgo.GoUInt64)) : Bool)) {
                    _t.errorf(("peak heap size reaches heap limit: %d" : stdgo.GoString), stdgo.Go.toInterface(_peak));
                };
            };
            if ((_n >= (25 : stdgo.GoInt) : Bool)) {
                _internal.runtime_test.Runtime_test__assertInEpsilon._assertInEpsilon(_t, ("GC utilization" : stdgo.GoString), _c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._gcUtilization, (0.25 : stdgo.GoFloat64), (0.005 : stdgo.GoFloat64));
                _internal.runtime_test.Runtime_test__assertInEpsilon._assertInEpsilon(_t, ("GC utilization" : stdgo.GoString), _c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._gcUtilization, _c[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)]._gcUtilization, (0.005 : stdgo.GoFloat64));
                _internal.runtime_test.Runtime_test__assertInRange._assertInRange(_t, ("goal ratio" : stdgo.GoString), _c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._goalRatio(), (0.95 : stdgo.GoFloat64), (1.05 : stdgo.GoFloat64));
            };
        } } : _internal.runtime_test.Runtime_test_T_gcExecTest.T_gcExecTest),
({ _name : ("SteadyMemoryLimitNoGCPercent" : stdgo.GoString), _gcPercent : (-1 : stdgo.GoInt), _memoryLimit : (536870912i64 : stdgo.GoInt64), _globalsBytes : (32768i64 : stdgo.GoUInt64), _nCores : (8 : stdgo.GoInt), _allocRate : _internal.runtime_test.Runtime_test__constant._constant((33 : stdgo.GoFloat64)), _scanRate : _internal.runtime_test.Runtime_test__constant._constant((1024 : stdgo.GoFloat64)), _growthRate : _internal.runtime_test.Runtime_test__constant._constant((2 : stdgo.GoFloat64))._sum(_internal.runtime_test.Runtime_test__ramp._ramp((-1 : stdgo.GoFloat64), (12 : stdgo.GoInt))), _scannableFrac : _internal.runtime_test.Runtime_test__constant._constant((1 : stdgo.GoFloat64)), _stackBytes : _internal.runtime_test.Runtime_test__constant._constant((8192 : stdgo.GoFloat64)), _length : (50 : stdgo.GoInt), _checker : function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _c:stdgo.Slice<_internal.runtime_test.Runtime_test_T_gcCycleResult.T_gcCycleResult>):Void {
            var _n = (_c.length : stdgo.GoInt);
            {
                var _goal = (_c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._heapGoal : stdgo.GoUInt64);
                if (_goal != (_internal.runtime_test.Runtime_test__applyMemoryLimitHeapGoalHeadroom._applyMemoryLimitHeapGoalHeadroom((536870912i64 : stdgo.GoUInt64)))) {
                    _t.errorf(("heap goal is not the heap limit: %d" : stdgo.GoString), stdgo.Go.toInterface(_goal));
                };
            };
            if ((_n >= (25 : stdgo.GoInt) : Bool)) {
                _internal.runtime_test.Runtime_test__assertInEpsilon._assertInEpsilon(_t, ("GC utilization" : stdgo.GoString), _c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._gcUtilization, (0.25 : stdgo.GoFloat64), (0.005 : stdgo.GoFloat64));
                _internal.runtime_test.Runtime_test__assertInEpsilon._assertInEpsilon(_t, ("GC utilization" : stdgo.GoString), _c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._gcUtilization, _c[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)]._gcUtilization, (0.005 : stdgo.GoFloat64));
                _internal.runtime_test.Runtime_test__assertInRange._assertInRange(_t, ("goal ratio" : stdgo.GoString), _c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._goalRatio(), (0.95 : stdgo.GoFloat64), (1.05 : stdgo.GoFloat64));
            };
        } } : _internal.runtime_test.Runtime_test_T_gcExecTest.T_gcExecTest),
({ _name : ("ExceedMemoryLimit" : stdgo.GoString), _gcPercent : (100 : stdgo.GoInt), _memoryLimit : (536870912i64 : stdgo.GoInt64), _globalsBytes : (32768i64 : stdgo.GoUInt64), _nCores : (8 : stdgo.GoInt), _allocRate : _internal.runtime_test.Runtime_test__constant._constant((33 : stdgo.GoFloat64)), _scanRate : _internal.runtime_test.Runtime_test__constant._constant((1024 : stdgo.GoFloat64)), _growthRate : _internal.runtime_test.Runtime_test__constant._constant((3.5 : stdgo.GoFloat64))._sum(_internal.runtime_test.Runtime_test__ramp._ramp((-2.5 : stdgo.GoFloat64), (12 : stdgo.GoInt))), _scannableFrac : _internal.runtime_test.Runtime_test__constant._constant((1 : stdgo.GoFloat64)), _stackBytes : _internal.runtime_test.Runtime_test__constant._constant((8192 : stdgo.GoFloat64)), _length : (50 : stdgo.GoInt), _checker : function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _c:stdgo.Slice<_internal.runtime_test.Runtime_test_T_gcCycleResult.T_gcCycleResult>):Void {
            var _n = (_c.length : stdgo.GoInt);
            if ((_n > (12 : stdgo.GoInt) : Bool)) {
                {
                    var __0 = (_c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._heapGoal : stdgo.GoUInt64), __1 = (_c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._heapLive : stdgo.GoUInt64);
var _live = __1, _goal = __0;
                    if (_goal != (_live)) {
                        _t.errorf(("heap goal is not equal to live heap: %d != %d" : stdgo.GoString), stdgo.Go.toInterface(_goal), stdgo.Go.toInterface(_live));
                    };
                };
            };
            if ((_n >= (25 : stdgo.GoInt) : Bool)) {
                _internal.runtime_test.Runtime_test__assertInEpsilon._assertInEpsilon(_t, ("GC utilization" : stdgo.GoString), _c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._gcUtilization, (1 : stdgo.GoFloat64), (0.005 : stdgo.GoFloat64));
                _internal.runtime_test.Runtime_test__assertInEpsilon._assertInEpsilon(_t, ("GC utilization" : stdgo.GoString), _c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._gcUtilization, _c[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)]._gcUtilization, (0.005 : stdgo.GoFloat64));
            };
        } } : _internal.runtime_test.Runtime_test_T_gcExecTest.T_gcExecTest),
({ _name : ("ExceedMemoryLimitNoGCPercent" : stdgo.GoString), _gcPercent : (-1 : stdgo.GoInt), _memoryLimit : (536870912i64 : stdgo.GoInt64), _globalsBytes : (32768i64 : stdgo.GoUInt64), _nCores : (8 : stdgo.GoInt), _allocRate : _internal.runtime_test.Runtime_test__constant._constant((33 : stdgo.GoFloat64)), _scanRate : _internal.runtime_test.Runtime_test__constant._constant((1024 : stdgo.GoFloat64)), _growthRate : _internal.runtime_test.Runtime_test__constant._constant((3.5 : stdgo.GoFloat64))._sum(_internal.runtime_test.Runtime_test__ramp._ramp((-2.5 : stdgo.GoFloat64), (12 : stdgo.GoInt))), _scannableFrac : _internal.runtime_test.Runtime_test__constant._constant((1 : stdgo.GoFloat64)), _stackBytes : _internal.runtime_test.Runtime_test__constant._constant((8192 : stdgo.GoFloat64)), _length : (50 : stdgo.GoInt), _checker : function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _c:stdgo.Slice<_internal.runtime_test.Runtime_test_T_gcCycleResult.T_gcCycleResult>):Void {
            var _n = (_c.length : stdgo.GoInt);
            if ((_n < (10 : stdgo.GoInt) : Bool)) {
                {
                    var _goal = (_c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._heapGoal : stdgo.GoUInt64);
                    if (_goal != (_internal.runtime_test.Runtime_test__applyMemoryLimitHeapGoalHeadroom._applyMemoryLimitHeapGoalHeadroom((536870912i64 : stdgo.GoUInt64)))) {
                        _t.errorf(("heap goal is not the heap limit: %d" : stdgo.GoString), stdgo.Go.toInterface(_goal));
                    };
                };
            };
            if ((_n > (12 : stdgo.GoInt) : Bool)) {
                {
                    var __0 = (_c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._heapGoal : stdgo.GoUInt64), __1 = (_c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._heapLive : stdgo.GoUInt64);
var _live = __1, _goal = __0;
                    if (_goal != (_live)) {
                        _t.errorf(("heap goal is not equal to live heap: %d != %d" : stdgo.GoString), stdgo.Go.toInterface(_goal), stdgo.Go.toInterface(_live));
                    };
                };
            };
            if ((_n >= (25 : stdgo.GoInt) : Bool)) {
                _internal.runtime_test.Runtime_test__assertInEpsilon._assertInEpsilon(_t, ("GC utilization" : stdgo.GoString), _c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._gcUtilization, (1 : stdgo.GoFloat64), (0.005 : stdgo.GoFloat64));
                _internal.runtime_test.Runtime_test__assertInEpsilon._assertInEpsilon(_t, ("GC utilization" : stdgo.GoString), _c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._gcUtilization, _c[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)]._gcUtilization, (0.005 : stdgo.GoFloat64));
            };
        } } : _internal.runtime_test.Runtime_test_T_gcExecTest.T_gcExecTest),
({ _name : ("MaintainMemoryLimit" : stdgo.GoString), _gcPercent : (100 : stdgo.GoInt), _memoryLimit : (536870912i64 : stdgo.GoInt64), _globalsBytes : (32768i64 : stdgo.GoUInt64), _nCores : (8 : stdgo.GoInt), _allocRate : _internal.runtime_test.Runtime_test__constant._constant((33 : stdgo.GoFloat64)), _scanRate : _internal.runtime_test.Runtime_test__constant._constant((1024 : stdgo.GoFloat64)), _growthRate : _internal.runtime_test.Runtime_test__constant._constant((3 : stdgo.GoFloat64))._sum(_internal.runtime_test.Runtime_test__ramp._ramp((-2 : stdgo.GoFloat64), (12 : stdgo.GoInt))), _scannableFrac : _internal.runtime_test.Runtime_test__constant._constant((1 : stdgo.GoFloat64)), _stackBytes : _internal.runtime_test.Runtime_test__constant._constant((8192 : stdgo.GoFloat64)), _length : (50 : stdgo.GoInt), _checker : function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _c:stdgo.Slice<_internal.runtime_test.Runtime_test_T_gcCycleResult.T_gcCycleResult>):Void {
            var _n = (_c.length : stdgo.GoInt);
            if ((_n > (12 : stdgo.GoInt) : Bool)) {
                {
                    var _goal = (_c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._heapGoal : stdgo.GoUInt64);
                    if (_goal != (_internal.runtime_test.Runtime_test__applyMemoryLimitHeapGoalHeadroom._applyMemoryLimitHeapGoalHeadroom((536870912i64 : stdgo.GoUInt64)))) {
                        _t.errorf(("heap goal is not the heap limit: %d" : stdgo.GoString), stdgo.Go.toInterface(_goal));
                    };
                };
            };
            if ((_n >= (25 : stdgo.GoInt) : Bool)) {
                _internal.runtime_test.Runtime_test__assertInEpsilon._assertInEpsilon(_t, ("GC utilization" : stdgo.GoString), _c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._gcUtilization, (0.25 : stdgo.GoFloat64), (0.005 : stdgo.GoFloat64));
                _internal.runtime_test.Runtime_test__assertInEpsilon._assertInEpsilon(_t, ("GC utilization" : stdgo.GoString), _c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._gcUtilization, _c[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)]._gcUtilization, (0.005 : stdgo.GoFloat64));
                _internal.runtime_test.Runtime_test__assertInRange._assertInRange(_t, ("goal ratio" : stdgo.GoString), _c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._goalRatio(), (0.95 : stdgo.GoFloat64), (1.05 : stdgo.GoFloat64));
            };
        } } : _internal.runtime_test.Runtime_test_T_gcExecTest.T_gcExecTest),
({ _name : ("MaintainMemoryLimitNoGCPercent" : stdgo.GoString), _gcPercent : (-1 : stdgo.GoInt), _memoryLimit : (536870912i64 : stdgo.GoInt64), _globalsBytes : (32768i64 : stdgo.GoUInt64), _nCores : (8 : stdgo.GoInt), _allocRate : _internal.runtime_test.Runtime_test__constant._constant((33 : stdgo.GoFloat64)), _scanRate : _internal.runtime_test.Runtime_test__constant._constant((1024 : stdgo.GoFloat64)), _growthRate : _internal.runtime_test.Runtime_test__constant._constant((3 : stdgo.GoFloat64))._sum(_internal.runtime_test.Runtime_test__ramp._ramp((-2 : stdgo.GoFloat64), (12 : stdgo.GoInt))), _scannableFrac : _internal.runtime_test.Runtime_test__constant._constant((1 : stdgo.GoFloat64)), _stackBytes : _internal.runtime_test.Runtime_test__constant._constant((8192 : stdgo.GoFloat64)), _length : (50 : stdgo.GoInt), _checker : function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _c:stdgo.Slice<_internal.runtime_test.Runtime_test_T_gcCycleResult.T_gcCycleResult>):Void {
            var _n = (_c.length : stdgo.GoInt);
            {
                var _goal = (_c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._heapGoal : stdgo.GoUInt64);
                if (_goal != (_internal.runtime_test.Runtime_test__applyMemoryLimitHeapGoalHeadroom._applyMemoryLimitHeapGoalHeadroom((536870912i64 : stdgo.GoUInt64)))) {
                    _t.errorf(("heap goal is not the heap limit: %d" : stdgo.GoString), stdgo.Go.toInterface(_goal));
                };
            };
            if ((_n >= (25 : stdgo.GoInt) : Bool)) {
                _internal.runtime_test.Runtime_test__assertInEpsilon._assertInEpsilon(_t, ("GC utilization" : stdgo.GoString), _c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._gcUtilization, (0.25 : stdgo.GoFloat64), (0.005 : stdgo.GoFloat64));
                _internal.runtime_test.Runtime_test__assertInEpsilon._assertInEpsilon(_t, ("GC utilization" : stdgo.GoString), _c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._gcUtilization, _c[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)]._gcUtilization, (0.005 : stdgo.GoFloat64));
                _internal.runtime_test.Runtime_test__assertInRange._assertInRange(_t, ("goal ratio" : stdgo.GoString), _c[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._goalRatio(), (0.95 : stdgo.GoFloat64), (1.05 : stdgo.GoFloat64));
            };
        } } : _internal.runtime_test.Runtime_test_T_gcExecTest.T_gcExecTest)]) : stdgo.Slice<stdgo.Ref<_internal.runtime_test.Runtime_test_T_gcExecTest.T_gcExecTest>>)) {
            var _e = _e;
            _t.run(_e._name?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                _t.parallel();
                var _c = stdgo._internal.runtime.Runtime_newGCController.newGCController(_e._gcPercent, _e._memoryLimit);
                var _bytesAllocatedBlackLast:stdgo.GoInt64 = (0 : stdgo.GoInt64);
                var _results = (new stdgo.Slice<_internal.runtime_test.Runtime_test_T_gcCycleResult.T_gcCycleResult>((0 : stdgo.GoInt).toBasic(), _e._length, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > _e._length ? (0 : stdgo.GoInt).toBasic() : _e._length : stdgo.GoInt).toBasic()) ({} : _internal.runtime_test.Runtime_test_T_gcCycleResult.T_gcCycleResult)]) : stdgo.Slice<_internal.runtime_test.Runtime_test_T_gcCycleResult.T_gcCycleResult>);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _e._length : Bool), _i++, {
                        var _cycle = (_e._next()?.__copy__() : _internal.runtime_test.Runtime_test_T_gcCycle.T_gcCycle);
                        _c.startCycle(_cycle._stackBytes, _e._globalsBytes, _cycle._scannableFrac, _e._nCores);
                        {};
                        var _nextHeapMarked:stdgo.GoInt64 = (0 : stdgo.GoInt64);
                        if (_i == ((0 : stdgo.GoInt))) {
                            _nextHeapMarked = (262144i64 : stdgo.GoInt64);
                        } else {
                            _nextHeapMarked = (((((_c.heapMarked() : stdgo.GoInt64) - _bytesAllocatedBlackLast : stdgo.GoInt64) : stdgo.GoFloat64) * _cycle._growthRate : stdgo.GoFloat64) : stdgo.GoInt64);
                        };
                        var _globalsScanWorkLeft = (_e._globalsBytes : stdgo.GoInt64);
                        var _stackScanWorkLeft = (_cycle._stackBytes : stdgo.GoInt64);
                        var _heapScanWorkLeft = (((_nextHeapMarked : stdgo.GoFloat64) * _cycle._scannableFrac : stdgo.GoFloat64) : stdgo.GoInt64);
                        var _doWork = (function(_work:stdgo.GoInt64):{ var _0 : stdgo.GoInt64; var _1 : stdgo.GoInt64; var _2 : stdgo.GoInt64; } {
                            var _deltas:stdgo.GoArray<stdgo.GoInt64> = new stdgo.GoArray<stdgo.GoInt64>(3, 3, ...[for (i in 0 ... 3) (0 : stdgo.GoInt64)]);
                            for (_i => _workLeft in (new stdgo.Slice<stdgo.Pointer<stdgo.GoInt64>>(3, 3, ...[stdgo.Go.pointer(_globalsScanWorkLeft), stdgo.Go.pointer(_stackScanWorkLeft), stdgo.Go.pointer(_heapScanWorkLeft)]) : stdgo.Slice<stdgo.Pointer<stdgo.GoInt64>>)) {
                                if (_workLeft.value == ((0i64 : stdgo.GoInt64))) {
                                    continue;
                                };
                                if ((_workLeft.value > _work : Bool)) {
                                    _deltas[(_i : stdgo.GoInt)] = (_deltas[(_i : stdgo.GoInt)] + (_work) : stdgo.GoInt64);
                                    _workLeft.value = (_workLeft.value - (_work) : stdgo.GoInt64);
                                    _work = (0i64 : stdgo.GoInt64);
                                    break;
                                } else {
                                    _deltas[(_i : stdgo.GoInt)] = (_deltas[(_i : stdgo.GoInt)] + (_workLeft.value) : stdgo.GoInt64);
                                    _work = (_work - (_workLeft.value) : stdgo.GoInt64);
                                    _workLeft.value = (0i64 : stdgo.GoInt64);
                                };
                            };
                            return { _0 : _deltas[(0 : stdgo.GoInt)], _1 : _deltas[(1 : stdgo.GoInt)], _2 : _deltas[(2 : stdgo.GoInt)] };
                        } : stdgo.GoInt64 -> { var _0 : stdgo.GoInt64; var _1 : stdgo.GoInt64; var _2 : stdgo.GoInt64; });
                        var __0:stdgo.GoInt64 = (0 : stdgo.GoInt64), __1:stdgo.GoInt64 = (0 : stdgo.GoInt64), __2:stdgo.GoInt64 = (0 : stdgo.GoInt64);
var _bytesAllocatedBlack = __2, _assistTime = __1, _gcDuration = __0;
                        while ((((_heapScanWorkLeft + _stackScanWorkLeft : stdgo.GoInt64) + _globalsScanWorkLeft : stdgo.GoInt64) > (0i64 : stdgo.GoInt64) : Bool)) {
                            var _assistRatio = (_c.assistWorkPerByte() : stdgo.GoFloat64);
                            var _utilization = ((_assistRatio * _cycle._allocRate : stdgo.GoFloat64) / (((_assistRatio * _cycle._allocRate : stdgo.GoFloat64) + _cycle._scanRate : stdgo.GoFloat64)) : stdgo.GoFloat64);
                            if ((_utilization < (0.25 : stdgo.GoFloat64) : Bool)) {
                                _utilization = (0.25 : stdgo.GoFloat64);
                            };
                            var _bytesScanned = ((((_cycle._scanRate * (512 : stdgo.GoFloat64) : stdgo.GoFloat64) * (_e._nCores : stdgo.GoFloat64) : stdgo.GoFloat64) * _utilization : stdgo.GoFloat64) : stdgo.GoInt64);
                            var _bytesAllocated = ((((_cycle._allocRate * (512 : stdgo.GoFloat64) : stdgo.GoFloat64) * (_e._nCores : stdgo.GoFloat64) : stdgo.GoFloat64) * (((1 : stdgo.GoFloat64) - _utilization : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoInt64);
                            var __tmp__ = _doWork(_bytesScanned), _globalsScanned:stdgo.GoInt64 = __tmp__._0, _stackScanned:stdgo.GoInt64 = __tmp__._1, _heapScanned:stdgo.GoInt64 = __tmp__._2;
                            var _actualElapsed = (500000i64 : stdgo._internal.time.Time_Duration.Duration);
                            var _actualAllocated = (_bytesAllocated : stdgo.GoInt64);
                            {
                                var _actualScanned = ((_globalsScanned + _stackScanned : stdgo.GoInt64) + _heapScanned : stdgo.GoInt64);
                                if ((_actualScanned < _bytesScanned : Bool)) {
                                    _actualElapsed = ((((_actualScanned : stdgo.GoFloat64) * ((500000i64 : stdgo._internal.time.Time_Duration.Duration) : stdgo.GoFloat64) : stdgo.GoFloat64) / ((((_cycle._scanRate * (512 : stdgo.GoFloat64) : stdgo.GoFloat64) * (_e._nCores : stdgo.GoFloat64) : stdgo.GoFloat64) * _utilization : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo._internal.time.Time_Duration.Duration);
                                    _actualAllocated = ((((((_cycle._allocRate * (512 : stdgo.GoFloat64) : stdgo.GoFloat64) * (_actualElapsed : stdgo.GoFloat64) : stdgo.GoFloat64) / ((500000i64 : stdgo._internal.time.Time_Duration.Duration) : stdgo.GoFloat64) : stdgo.GoFloat64) * (_e._nCores : stdgo.GoFloat64) : stdgo.GoFloat64) * (((1 : stdgo.GoFloat64) - _utilization : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoInt64);
                                };
                            };
                            _c.revise(({ heapLive : _actualAllocated, heapScan : (((_actualAllocated : stdgo.GoFloat64) * _cycle._scannableFrac : stdgo.GoFloat64) : stdgo.GoInt64), heapScanWork : _heapScanned, stackScanWork : _stackScanned, globalsScanWork : _globalsScanned } : stdgo._internal.runtime.Runtime_GCControllerReviseDelta.GCControllerReviseDelta));
                            _assistTime = (_assistTime + (((((_actualElapsed : stdgo.GoFloat64) * (_e._nCores : stdgo.GoFloat64) : stdgo.GoFloat64) * ((_utilization - (0.25 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoInt64)) : stdgo.GoInt64);
                            _gcDuration = (_gcDuration + ((_actualElapsed : stdgo.GoInt64)) : stdgo.GoInt64);
                            _bytesAllocatedBlack = (_bytesAllocatedBlack + (_actualAllocated) : stdgo.GoInt64);
                        };
                        var _result = ({ _cycle : (_i + (1 : stdgo.GoInt) : stdgo.GoInt), _heapLive : _c.heapMarked(), _heapScannable : (((((_c.heapMarked() : stdgo.GoInt64) - _bytesAllocatedBlackLast : stdgo.GoInt64) : stdgo.GoFloat64) * _cycle._scannableFrac : stdgo.GoFloat64) : stdgo.GoInt64), _heapTrigger : _c.triggered(), _heapPeak : _c.heapLive(), _heapGoal : _c.heapGoal(), _gcUtilization : (((_assistTime : stdgo.GoFloat64) / (((_gcDuration : stdgo.GoFloat64) * (_e._nCores : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) + (0.25 : stdgo.GoFloat64) : stdgo.GoFloat64) } : _internal.runtime_test.Runtime_test_T_gcCycleResult.T_gcCycleResult);
                        _t.log(stdgo.Go.toInterface(("GC" : stdgo.GoString)), stdgo.Go.toInterface((_result.string() : stdgo.GoString)));
                        _results = (_results.__append__(_result?.__copy__()));
                        _e._check(_t, _results);
                        _c.endCycle(((_nextHeapMarked + _bytesAllocatedBlack : stdgo.GoInt64) : stdgo.GoUInt64), _assistTime, _gcDuration, _e._nCores);
                        _bytesAllocatedBlackLast = _bytesAllocatedBlack;
                    });
                };
            });
        };
    }
