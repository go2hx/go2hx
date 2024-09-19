package _internal.runtime.debug_test;
import stdgo._internal.runtime.debug.Debug;
import stdgo._internal.runtime.debug.Debug;
import stdgo._internal.runtime.debug.Debug;
function testReadGCStats(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var _a0 = stdgo._internal.runtime.debug.Debug_setGCPercent.setGCPercent((-1 : stdgo.GoInt));
                __deferstack__.unshift(() -> stdgo._internal.runtime.debug.Debug_setGCPercent.setGCPercent(_a0));
            };
            var _stats:stdgo._internal.runtime.debug.Debug_GCStats.GCStats = ({} : stdgo._internal.runtime.debug.Debug_GCStats.GCStats);
            var _mstats:stdgo._internal.runtime.Runtime_MemStats.MemStats = ({} : stdgo._internal.runtime.Runtime_MemStats.MemStats);
            var __0:stdgo._internal.time.Time_Duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_Duration.Duration), __1:stdgo._internal.time.Time_Duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_Duration.Duration);
var _max = __1, _min = __0;
            _stats.pauseQuantiles = (new stdgo.Slice<stdgo._internal.time.Time_Duration.Duration>((10 : stdgo.GoInt).toBasic(), 0).__setNumber64__() : stdgo.Slice<stdgo._internal.time.Time_Duration.Duration>);
            stdgo._internal.runtime.debug.Debug_readGCStats.readGCStats((stdgo.Go.setRef(_stats) : stdgo.Ref<stdgo._internal.runtime.debug.Debug_GCStats.GCStats>));
            stdgo._internal.runtime.Runtime_gc.gc();
            stdgo._internal.runtime.debug.Debug_readGCStats.readGCStats((stdgo.Go.setRef(_stats) : stdgo.Ref<stdgo._internal.runtime.debug.Debug_GCStats.GCStats>));
            stdgo._internal.runtime.Runtime_readMemStats.readMemStats((stdgo.Go.setRef(_mstats) : stdgo.Ref<stdgo._internal.runtime.Runtime_MemStats.MemStats>));
            if (_stats.numGC != ((_mstats.numGC : stdgo.GoInt64))) {
                _t.errorf(("stats.NumGC = %d, but mstats.NumGC = %d" : stdgo.GoString), stdgo.Go.toInterface(_stats.numGC), stdgo.Go.toInterface(_mstats.numGC));
            };
            if (_stats.pauseTotal != ((_mstats.pauseTotalNs : stdgo._internal.time.Time_Duration.Duration))) {
                _t.errorf(("stats.PauseTotal = %d, but mstats.PauseTotalNs = %d" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_stats.pauseTotal)), stdgo.Go.toInterface(_mstats.pauseTotalNs));
            };
            if (_stats.lastGC.unixNano() != ((_mstats.lastGC : stdgo.GoInt64))) {
                _t.errorf(("stats.LastGC.UnixNano = %d, but mstats.LastGC = %d" : stdgo.GoString), stdgo.Go.toInterface(_stats.lastGC.unixNano()), stdgo.Go.toInterface(_mstats.lastGC));
            };
            var _n = (_mstats.numGC : stdgo.GoInt);
            if ((_n > (_mstats.pauseNs.length) : Bool)) {
                _n = (_mstats.pauseNs.length);
            };
            if ((_stats.pause.length) != (_n)) {
                _t.errorf(("len(stats.Pause) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface((_stats.pause.length)), stdgo.Go.toInterface(_n));
            } else {
                var _off = (((((_mstats.numGC : stdgo.GoInt) + (_mstats.pauseNs.length) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)) % (_mstats.pauseNs.length) : stdgo.GoInt);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _n : Bool), _i++, {
                        var _dt = (_stats.pause[(_i : stdgo.GoInt)] : stdgo._internal.time.Time_Duration.Duration);
                        if (_dt != ((_mstats.pauseNs[(_off : stdgo.GoInt)] : stdgo._internal.time.Time_Duration.Duration))) {
                            _t.errorf(("stats.Pause[%d] = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_dt)), stdgo.Go.toInterface(_mstats.pauseNs[(_off : stdgo.GoInt)]));
                        };
                        if ((_max < _dt : Bool)) {
                            _max = _dt;
                        };
                        if (((_min > _dt : Bool) || (_i == (0 : stdgo.GoInt)) : Bool)) {
                            _min = _dt;
                        };
                        _off = ((((_off + (_mstats.pauseNs.length) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)) % (_mstats.pauseNs.length) : stdgo.GoInt);
                    });
                };
            };
            var _q = _stats.pauseQuantiles;
            var _nq = (_q.length : stdgo.GoInt);
            if (((_q[(0 : stdgo.GoInt)] != _min) || (_q[(_nq - (1 : stdgo.GoInt) : stdgo.GoInt)] != _max) : Bool)) {
                _t.errorf(("stats.PauseQuantiles = [%d, ..., %d], want [%d, ..., %d]" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_q[(0 : stdgo.GoInt)])), stdgo.Go.toInterface(stdgo.Go.asInterface(_q[(_nq - (1 : stdgo.GoInt) : stdgo.GoInt)])), stdgo.Go.toInterface(stdgo.Go.asInterface(_min)), stdgo.Go.toInterface(stdgo.Go.asInterface(_max)));
            };
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (_nq - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool), _i++, {
                    if ((_q[(_i : stdgo.GoInt)] > _q[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] : Bool)) {
                        _t.errorf(("stats.PauseQuantiles[%d]=%d > stats.PauseQuantiles[%d]=%d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_q[(_i : stdgo.GoInt)])), stdgo.Go.toInterface((_i + (1 : stdgo.GoInt) : stdgo.GoInt)), stdgo.Go.toInterface(stdgo.Go.asInterface(_q[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)])));
                    };
                });
            };
            if ((_stats.pauseEnd.length) != (_n)) {
                _t.fatalf(("len(stats.PauseEnd) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface((_stats.pauseEnd.length)), stdgo.Go.toInterface(_n));
            };
            var _off = (((((_mstats.numGC : stdgo.GoInt) + (_mstats.pauseEnd.length) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)) % (_mstats.pauseEnd.length) : stdgo.GoInt);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _n : Bool), _i++, {
                    var _dt = (_stats.pauseEnd[(_i : stdgo.GoInt)] : stdgo._internal.time.Time_Time.Time);
                    if (_dt.unixNano() != ((_mstats.pauseEnd[(_off : stdgo.GoInt)] : stdgo.GoInt64))) {
                        _t.errorf(("stats.PauseEnd[%d] = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_dt.unixNano()), stdgo.Go.toInterface(_mstats.pauseEnd[(_off : stdgo.GoInt)]));
                    };
                    _off = ((((_off + (_mstats.pauseEnd.length) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)) % (_mstats.pauseEnd.length) : stdgo.GoInt);
                });
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
