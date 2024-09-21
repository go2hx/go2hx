package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function benchmarkPoolSTW(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var _a0 = stdgo._internal.runtime.debug.Debug_setGCPercent.setGCPercent((-1 : stdgo.GoInt));
                __deferstack__.unshift(() -> stdgo._internal.runtime.debug.Debug_setGCPercent.setGCPercent(_a0));
            };
            var _mstats:stdgo._internal.runtime.Runtime_MemStats.MemStats = ({} : stdgo._internal.runtime.Runtime_MemStats.MemStats);
            var _pauses:stdgo.Slice<stdgo.GoUInt64> = (null : stdgo.Slice<stdgo.GoUInt64>);
            var _p:stdgo._internal.sync.Sync_Pool.Pool = ({} : stdgo._internal.sync.Sync_Pool.Pool);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    {};
                    var _item:stdgo.AnyInterface = stdgo.Go.toInterface((42 : stdgo.GoInt));
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < (100000 : stdgo.GoInt) : Bool), _i++, {
                            _p.put(_item);
                        });
                    };
                    stdgo._internal.runtime.Runtime_gc.gc();
                    stdgo._internal.runtime.Runtime_readMemStats.readMemStats((stdgo.Go.setRef(_mstats) : stdgo.Ref<stdgo._internal.runtime.Runtime_MemStats.MemStats>));
                    _pauses = (_pauses.__append__(_mstats.pauseNs[((((_mstats.numGC + (255u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) % (256u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)]));
                });
            };
            stdgo._internal.sort.Sort_slice.slice(stdgo.Go.toInterface(_pauses), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    {
                        final __ret__:Bool = (_pauses[(_i : stdgo.GoInt)] < _pauses[(_j : stdgo.GoInt)] : Bool);
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                        return false;
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
                    return false;
                };
            });
            var _total:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
            for (__10 => _ns in _pauses) {
                _total = (_total + (_ns) : stdgo.GoUInt64);
            };
            _b.reportMetric(((_total : stdgo.GoFloat64) / (_b.n : stdgo.GoFloat64) : stdgo.GoFloat64), ("ns/op" : stdgo.GoString));
            _b.reportMetric((_pauses[(((_pauses.length) * (95 : stdgo.GoInt) : stdgo.GoInt) / (100 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoFloat64), ("p95-ns/STW" : stdgo.GoString));
            _b.reportMetric((_pauses[(((_pauses.length) * (50 : stdgo.GoInt) : stdgo.GoInt) / (100 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoFloat64), ("p50-ns/STW" : stdgo.GoString));
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
