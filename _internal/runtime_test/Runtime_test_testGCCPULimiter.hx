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
function testGCCPULimiter(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _ticks = ((0i64 : stdgo.GoInt64) : stdgo.GoInt64);
        var _advance = (function(_d:stdgo._internal.time.Time_Duration.Duration):stdgo.GoInt64 {
            _t.helper();
            _ticks = (_ticks + ((_d : stdgo.GoInt64)) : stdgo.GoInt64);
            return _ticks;
        } : stdgo._internal.time.Time_Duration.Duration -> stdgo.GoInt64);
        var _assistTime = (function(_d:stdgo._internal.time.Time_Duration.Duration, _frac:stdgo.GoFloat64):stdgo.GoInt64 {
            _t.helper();
            return (((_frac * (_d : stdgo.GoFloat64) : stdgo.GoFloat64) * (14 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoInt64);
        } : (stdgo._internal.time.Time_Duration.Duration, stdgo.GoFloat64) -> stdgo.GoInt64);
        var _l = stdgo._internal.runtime.Runtime_newGCCPULimiter.newGCCPULimiter(_ticks, (14 : stdgo.GoInt32));
        var _baseOverflow:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (2 : stdgo.GoInt) : Bool), _i++, {
                _t.logf(("Iteration %d" : stdgo.GoString), stdgo.Go.toInterface((_i + (1 : stdgo.GoInt) : stdgo.GoInt)));
                if (_l.capacity_() != ((14000000000i64 : stdgo.GoUInt64))) {
                    _t.fatalf(("unexpected capacity: %d" : stdgo.GoString), stdgo.Go.toInterface(_l.capacity_()));
                };
                if (_l.fill() != ((0i64 : stdgo.GoUInt64))) {
                    _t.fatalf(("expected empty bucket to start" : stdgo.GoString));
                };
                _l.update(_advance((10000000i64 : stdgo._internal.time.Time_Duration.Duration)));
                _l.update(_advance((1000000000i64 : stdgo._internal.time.Time_Duration.Duration)));
                _l.update(_advance((3600000000000i64 : stdgo._internal.time.Time_Duration.Duration)));
                if (_l.fill() != ((0i64 : stdgo.GoUInt64))) {
                    _t.fatalf(("expected empty bucket from only accumulating mutator time, got fill of %d cpu-ns" : stdgo.GoString), stdgo.Go.toInterface(_l.fill()));
                };
                if (_l.needUpdate(_advance((5000000i64 : stdgo._internal.time.Time_Duration.Duration)))) {
                    _t.fatal(stdgo.Go.toInterface(("need update even though updated half a period ago" : stdgo.GoString)));
                };
                if (!_l.needUpdate(_advance((10000000i64 : stdgo._internal.time.Time_Duration.Duration)))) {
                    _t.fatal(stdgo.Go.toInterface(("doesn\'t need update even though updated 1.5 periods ago" : stdgo.GoString)));
                };
                _l.update(_advance((0i64 : stdgo._internal.time.Time_Duration.Duration)));
                if (_l.needUpdate(_advance((0i64 : stdgo._internal.time.Time_Duration.Duration)))) {
                    _t.fatal(stdgo.Go.toInterface(("need update even though just updated" : stdgo.GoString)));
                };
                _l.startGCTransition(true, _advance((109000000i64 : stdgo._internal.time.Time_Duration.Duration)));
                _l.finishGCTransition(_advance((2001000i64 : stdgo._internal.time.Time_Duration.Duration)));
                {
                    var _expect = ((28014000i64 : stdgo._internal.time.Time_Duration.Duration) : stdgo.GoUInt64);
                    if (_l.fill() != (_expect)) {
                        _t.fatalf(("expected fill of %d, got %d cpu-ns" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_l.fill()));
                    };
                };
                var _factor = (2 : stdgo.GoFloat64);
                var _fill = (28014000i64 : stdgo._internal.time.Time_Duration.Duration);
                _l.update(_advance((((_factor * ((_fill - (14i64 : stdgo._internal.time.Time_Duration.Duration) : stdgo._internal.time.Time_Duration.Duration) : stdgo.GoFloat64) : stdgo.GoFloat64) / (14 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo._internal.time.Time_Duration.Duration)));
                if (_l.fill() != ((14i64 : stdgo.GoUInt64))) {
                    _t.fatalf(("expected fill %d cpu-ns from draining after a GC started, got fill of %d cpu-ns" : stdgo.GoString), stdgo.Go.toInterface((14 : stdgo.GoInt)), stdgo.Go.toInterface(_l.fill()));
                };
                _l.update(_advance((28000000000i64 : stdgo._internal.time.Time_Duration.Duration)));
                if (_l.fill() != ((0i64 : stdgo.GoUInt64))) {
                    _t.fatalf(("expected empty bucket from draining, got fill of %d cpu-ns" : stdgo.GoString), stdgo.Go.toInterface(_l.fill()));
                };
                _l.addAssistTime(_assistTime((10000000i64 : stdgo._internal.time.Time_Duration.Duration), (0.25 : stdgo.GoFloat64)));
                _l.update(_advance((10000000i64 : stdgo._internal.time.Time_Duration.Duration)));
                if (_l.fill() != ((0i64 : stdgo.GoUInt64))) {
                    _t.fatalf(("expected empty bucket from 50%% GC work, got fill of %d cpu-ns" : stdgo.GoString), stdgo.Go.toInterface(_l.fill()));
                };
                _l.addAssistTime(_assistTime((1000000i64 : stdgo._internal.time.Time_Duration.Duration), (0.75 : stdgo.GoFloat64)));
                _l.update(_advance((1000000i64 : stdgo._internal.time.Time_Duration.Duration)));
                {
                    var _expect = ((14000000i64 : stdgo._internal.time.Time_Duration.Duration) : stdgo.GoUInt64);
                    if (_l.fill() != (_expect)) {
                        _t.errorf(("expected %d fill from 100%% GC CPU, got fill of %d cpu-ns" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_l.fill()));
                    };
                };
                if (_l.limiting()) {
                    _t.errorf(("limiter is enabled after filling bucket but shouldn\'t be" : stdgo.GoString));
                };
                if (_t.failed()) {
                    _t.failNow();
                };
                _l.addAssistTime(_assistTime((999000000i64 : stdgo._internal.time.Time_Duration.Duration), (0.75 : stdgo.GoFloat64)));
                _l.update(_advance((999000000i64 : stdgo._internal.time.Time_Duration.Duration)));
                if (_l.fill() != (_l.capacity_())) {
                    _t.errorf(("expected bucket filled to capacity %d, got %d" : stdgo.GoString), stdgo.Go.toInterface(_l.capacity_()), stdgo.Go.toInterface(_l.fill()));
                };
                if (!_l.limiting()) {
                    _t.errorf(("limiter is not enabled after filling bucket but should be" : stdgo.GoString));
                };
                if (_l.overflow() != (((0i64 : stdgo.GoUInt64) + _baseOverflow : stdgo.GoUInt64))) {
                    _t.errorf(("bucket filled exactly should not have overflow, found %d" : stdgo.GoString), stdgo.Go.toInterface(_l.overflow()));
                };
                if (_t.failed()) {
                    _t.failNow();
                };
                _l.addAssistTime(_assistTime((1000000000i64 : stdgo._internal.time.Time_Duration.Duration), (0.25 : stdgo.GoFloat64)));
                _l.update(_advance((1000000000i64 : stdgo._internal.time.Time_Duration.Duration)));
                if (_l.fill() != (_l.capacity_())) {
                    _t.errorf(("expected bucket filled to capacity %d, got %d" : stdgo.GoString), stdgo.Go.toInterface(_l.capacity_()), stdgo.Go.toInterface(_l.fill()));
                };
                if (!_l.limiting()) {
                    _t.errorf(("limiter is not enabled after filling bucket but should be" : stdgo.GoString));
                };
                if (_l.overflow() != (((0i64 : stdgo.GoUInt64) + _baseOverflow : stdgo.GoUInt64))) {
                    _t.errorf(("bucket filled exactly should not have overflow, found %d" : stdgo.GoString), stdgo.Go.toInterface(_l.overflow()));
                };
                if (_t.failed()) {
                    _t.failNow();
                };
                _l.addAssistTime(_assistTime((1000000000i64 : stdgo._internal.time.Time_Duration.Duration), (0 : stdgo.GoFloat64)));
                _l.update(_advance((1000000000i64 : stdgo._internal.time.Time_Duration.Duration)));
                {
                    var _expect = (_l.capacity_() / (2i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (_l.fill() != (_expect)) {
                        _t.errorf(("failed to drain to %d, got fill %d" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_l.fill()));
                    };
                };
                if (_l.limiting()) {
                    _t.errorf(("limiter is enabled after draining bucket but shouldn\'t be" : stdgo.GoString));
                };
                if (_t.failed()) {
                    _t.failNow();
                };
                _l.addAssistTime(_assistTime((1000000000i64 : stdgo._internal.time.Time_Duration.Duration), (0.75 : stdgo.GoFloat64)));
                _l.update(_advance((1000000000i64 : stdgo._internal.time.Time_Duration.Duration)));
                if (_l.fill() != (_l.capacity_())) {
                    _t.errorf(("failed to fill to capacity %d, got fill %d" : stdgo.GoString), stdgo.Go.toInterface(_l.capacity_()), stdgo.Go.toInterface(_l.fill()));
                };
                if (!_l.limiting()) {
                    _t.errorf(("limiter is not enabled after overfill but should be" : stdgo.GoString));
                };
                {
                    var _expect = ((7000000000i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (_l.overflow() != ((_expect + _baseOverflow : stdgo.GoUInt64))) {
                        _t.errorf(("bucket overfilled should have overflow %d, found %d" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_l.overflow()));
                    };
                };
                if (_t.failed()) {
                    _t.failNow();
                };
                _l.addAssistTime(_assistTime((1000000i64 : stdgo._internal.time.Time_Duration.Duration), (0.75 : stdgo.GoFloat64)));
                _l.startGCTransition(false, _advance((1000000i64 : stdgo._internal.time.Time_Duration.Duration)));
                if (_l.fill() != (_l.capacity_())) {
                    _t.errorf(("failed to maintain fill to capacity %d, got fill %d" : stdgo.GoString), stdgo.Go.toInterface(_l.capacity_()), stdgo.Go.toInterface(_l.fill()));
                };
                if (!_l.limiting()) {
                    _t.errorf(("limiter is not enabled after overfill but should be" : stdgo.GoString));
                };
                {
                    var _expect = ((7014000000i64 : stdgo._internal.time.Time_Duration.Duration) : stdgo.GoUInt64);
                    if (_l.overflow() != ((_expect + _baseOverflow : stdgo.GoUInt64))) {
                        _t.errorf(("bucket overfilled should have overflow %d, found %d" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_l.overflow()));
                    };
                };
                if (_t.failed()) {
                    _t.failNow();
                };
                _l.finishGCTransition(_advance((5000000i64 : stdgo._internal.time.Time_Duration.Duration)));
                if (_l.fill() != (_l.capacity_())) {
                    _t.errorf(("failed to maintain fill to capacity %d, got fill %d" : stdgo.GoString), stdgo.Go.toInterface(_l.capacity_()), stdgo.Go.toInterface(_l.fill()));
                };
                if (!_l.limiting()) {
                    _t.errorf(("limiter is not enabled after overfill but should be" : stdgo.GoString));
                };
                {
                    var _expect = ((7084000000i64 : stdgo._internal.time.Time_Duration.Duration) : stdgo.GoUInt64);
                    if (_l.overflow() != ((_expect + _baseOverflow : stdgo.GoUInt64))) {
                        _t.errorf(("bucket overfilled should have overflow %d, found %d" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_l.overflow()));
                    };
                };
                if (_t.failed()) {
                    _t.failNow();
                };
                var _expectFill = (_l.capacity_() : stdgo.GoUInt64);
                _l.resetCapacity(_advance((0i64 : stdgo._internal.time.Time_Duration.Duration)), (24 : stdgo.GoInt32));
                if (_l.fill() != (_expectFill)) {
                    _t.errorf(("failed to maintain fill at old capacity %d, got fill %d" : stdgo.GoString), stdgo.Go.toInterface(_expectFill), stdgo.Go.toInterface(_l.fill()));
                };
                if (_l.limiting()) {
                    _t.errorf(("limiter is enabled after resetting capacity higher" : stdgo.GoString));
                };
                {
                    var _expect = ((7084000000i64 : stdgo._internal.time.Time_Duration.Duration) : stdgo.GoUInt64);
                    if (_l.overflow() != ((_expect + _baseOverflow : stdgo.GoUInt64))) {
                        _t.errorf(("bucket overflow %d should have remained constant, found %d" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_l.overflow()));
                    };
                };
                if (_t.failed()) {
                    _t.failNow();
                };
                _l.resetCapacity(_advance((0i64 : stdgo._internal.time.Time_Duration.Duration)), (4 : stdgo.GoInt32));
                if (_l.fill() != (_l.capacity_())) {
                    _t.errorf(("failed lower fill to new capacity %d, got fill %d" : stdgo.GoString), stdgo.Go.toInterface(_l.capacity_()), stdgo.Go.toInterface(_l.fill()));
                };
                if (!_l.limiting()) {
                    _t.errorf(("limiter is disabled after resetting capacity lower" : stdgo.GoString));
                };
                {
                    var _expect = ((7084000000i64 : stdgo._internal.time.Time_Duration.Duration) : stdgo.GoUInt64);
                    if (_l.overflow() != ((_expect + _baseOverflow : stdgo.GoUInt64))) {
                        _t.errorf(("bucket overflow %d should have remained constant, found %d" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_l.overflow()));
                    };
                };
                if (_t.failed()) {
                    _t.failNow();
                };
                _l.resetCapacity(_advance((14000000000i64 : stdgo._internal.time.Time_Duration.Duration)), (14 : stdgo.GoInt32));
                _baseOverflow = (_baseOverflow + (((7084000000i64 : stdgo._internal.time.Time_Duration.Duration) : stdgo.GoUInt64)) : stdgo.GoUInt64);
            });
        };
    }
