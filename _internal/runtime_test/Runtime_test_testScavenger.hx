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
function testScavenger(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _workedTime = (function(_bytes:stdgo.GoUIntptr):stdgo.GoInt64 {
            return (((((_bytes + (4095 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) / (4096 : stdgo.GoUIntptr) : stdgo.GoUIntptr) : stdgo.GoInt64) * ((10000i64 : stdgo._internal.time.Time_Duration.Duration) : stdgo.GoInt64) : stdgo.GoInt64);
        } : stdgo.GoUIntptr -> stdgo.GoInt64);
        var _totalWork = (((67108864 : stdgo.GoUIntptr) - ((3 : stdgo.GoUIntptr) * stdgo._internal.runtime.Runtime_physPageSize.physPageSize : stdgo.GoUIntptr) : stdgo.GoUIntptr) : stdgo.GoUInt64);
        var __0:_internal.runtime.internal.atomic_.Atomic__Int64_.Int64_ = ({} : _internal.runtime.internal.atomic_.Atomic__Int64_.Int64_), __1:_internal.runtime.internal.atomic_.Atomic__Int64_.Int64_ = ({} : _internal.runtime.internal.atomic_.Atomic__Int64_.Int64_);
var _totalWorked = __1, _totalSlept = __0;
        var _availableWork:_internal.runtime.internal.atomic_.Atomic__Uint64.Uint64 = ({} : _internal.runtime.internal.atomic_.Atomic__Uint64.Uint64);
        var _stopAt:_internal.runtime.internal.atomic_.Atomic__Uint64.Uint64 = ({} : _internal.runtime.internal.atomic_.Atomic__Uint64.Uint64);
        var _s:stdgo._internal.runtime.Runtime_Scavenger.Scavenger = ({} : stdgo._internal.runtime.Runtime_Scavenger.Scavenger);
        _s.sleep = function(_ns:stdgo.GoInt64):stdgo.GoInt64 {
            _totalSlept.add(_ns);
            return _ns;
        };
        _s.scavenge = function(_bytes:stdgo.GoUIntptr):{ var _0 : stdgo.GoUIntptr; var _1 : stdgo.GoInt64; } {
            var _avail = (_availableWork.load() : stdgo.GoUInt64);
            if (((_bytes : stdgo.GoUInt64) > _avail : Bool)) {
                _bytes = (_avail : stdgo.GoUIntptr);
            };
            var _t = (_workedTime(_bytes) : stdgo.GoInt64);
            if (_bytes != ((0 : stdgo.GoUIntptr))) {
                _availableWork.add(-(_bytes : stdgo.GoInt64));
                _totalWorked.add(_t);
            };
            return { _0 : _bytes, _1 : _t };
        };
        _s.shouldStop = function():Bool {
            if ((_availableWork.load() <= _stopAt.load() : Bool)) {
                return true;
            };
            return false;
        };
        _s.goMaxProcs = function():stdgo.GoInt32 {
            return (1 : stdgo.GoInt32);
        };
        var _verifyScavengerState = function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _expWork:stdgo.GoUInt64):Void {
            _t.helper();
            {
                var _workDone = (_s.released() : stdgo.GoUInt64);
                if (_workDone != (_expWork)) {
                    _t.errorf(("want %d bytes of work done, got %d" : stdgo.GoString), stdgo.Go.toInterface(_expWork), stdgo.Go.toInterface(_workDone));
                };
            };
            var _idealFraction = (0.01 : stdgo.GoFloat64);
            var _cpuFraction = ((_totalWorked.load() : stdgo.GoFloat64) / ((_totalWorked.load() + _totalSlept.load() : stdgo.GoInt64) : stdgo.GoFloat64) : stdgo.GoFloat64);
            if (((_cpuFraction < (_idealFraction - (0.005 : stdgo.GoFloat64) : stdgo.GoFloat64) : Bool) || (_cpuFraction > (_idealFraction + (0.005 : stdgo.GoFloat64) : stdgo.GoFloat64) : Bool) : Bool)) {
                _t.errorf(("want %f CPU fraction, got %f" : stdgo.GoString), stdgo.Go.toInterface(_idealFraction), stdgo.Go.toInterface(_cpuFraction));
            };
        };
        _s.start();
        _availableWork.store(_totalWork);
        _s.wake();
        if (!_s.blockUntilParked((2000000000i64 : stdgo.GoInt64))) {
            _t.fatal(stdgo.Go.toInterface(("timed out waiting for scavenger to run to completion" : stdgo.GoString)));
        };
        _verifyScavengerState(_t, _totalWork);
        _s.wake();
        if (!_s.blockUntilParked((2000000000i64 : stdgo.GoInt64))) {
            _t.fatal(stdgo.Go.toInterface(("timed out waiting for scavenger to run to completion" : stdgo.GoString)));
        };
        _verifyScavengerState(_t, _totalWork);
        _availableWork.store(_totalWork);
        _s.wake();
        if (!_s.blockUntilParked((2000000000i64 : stdgo.GoInt64))) {
            _t.fatal(stdgo.Go.toInterface(("timed out waiting for scavenger to run to completion" : stdgo.GoString)));
        };
        _verifyScavengerState(_t, ((2i64 : stdgo.GoUInt64) * _totalWork : stdgo.GoUInt64));
        _availableWork.store(_totalWork);
        var _stoppingPoint = (((1048576 : stdgo.GoUIntptr) - ((3 : stdgo.GoUIntptr) * stdgo._internal.runtime.Runtime_physPageSize.physPageSize : stdgo.GoUIntptr) : stdgo.GoUIntptr) : stdgo.GoUInt64);
        _stopAt.store(_stoppingPoint);
        _s.wake();
        if (!_s.blockUntilParked((2000000000i64 : stdgo.GoInt64))) {
            _t.fatal(stdgo.Go.toInterface(("timed out waiting for scavenger to run to completion" : stdgo.GoString)));
        };
        _verifyScavengerState(_t, (((2i64 : stdgo.GoUInt64) * _totalWork : stdgo.GoUInt64) + ((_totalWork - _stoppingPoint : stdgo.GoUInt64)) : stdgo.GoUInt64));
        _s.stop();
    }
