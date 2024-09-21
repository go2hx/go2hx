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
function testReadMetricsCumulative(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _descs = stdgo._internal.runtime.metrics.Metrics_all.all();
            var _samples:stdgo.GoArray<stdgo.Slice<stdgo._internal.runtime.metrics.Metrics_Sample.Sample>> = new stdgo.GoArray<stdgo.Slice<stdgo._internal.runtime.metrics.Metrics_Sample.Sample>>(2, 2, ...[for (i in 0 ... 2) (null : stdgo.Slice<stdgo._internal.runtime.metrics.Metrics_Sample.Sample>)]);
            _samples[(0 : stdgo.GoInt)] = (new stdgo.Slice<stdgo._internal.runtime.metrics.Metrics_Sample.Sample>((_descs.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_descs.length : stdgo.GoInt).toBasic() > 0 ? (_descs.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.metrics.Metrics_Sample.Sample)]) : stdgo.Slice<stdgo._internal.runtime.metrics.Metrics_Sample.Sample>);
            _samples[(1 : stdgo.GoInt)] = (new stdgo.Slice<stdgo._internal.runtime.metrics.Metrics_Sample.Sample>((_descs.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_descs.length : stdgo.GoInt).toBasic() > 0 ? (_descs.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.metrics.Metrics_Sample.Sample)]) : stdgo.Slice<stdgo._internal.runtime.metrics.Metrics_Sample.Sample>);
            var _total = (0 : stdgo.GoInt);
            for (_i => _ in _samples[(0 : stdgo.GoInt)]) {
                if (!_descs[(_i : stdgo.GoInt)].cumulative) {
                    continue;
                };
                _samples[(0 : stdgo.GoInt)][(_total : stdgo.GoInt)].name = _descs[(_i : stdgo.GoInt)].name?.__copy__();
                _total++;
            };
            _samples[(0 : stdgo.GoInt)] = (_samples[(0 : stdgo.GoInt)].__slice__(0, _total) : stdgo.Slice<stdgo._internal.runtime.metrics.Metrics_Sample.Sample>);
            _samples[(1 : stdgo.GoInt)] = (_samples[(1 : stdgo.GoInt)].__slice__(0, _total) : stdgo.Slice<stdgo._internal.runtime.metrics.Metrics_Sample.Sample>);
            stdgo.Go.copySlice(_samples[(1 : stdgo.GoInt)], _samples[(0 : stdgo.GoInt)]);
            var _wg:stdgo._internal.sync.Sync_WaitGroup.WaitGroup = ({} : stdgo._internal.sync.Sync_WaitGroup.WaitGroup);
            _wg.add((1 : stdgo.GoInt));
            var _done = (new stdgo.Chan<_internal.runtime_test.Runtime_test_T_struct0.T_struct0>(0, () -> ({} : _internal.runtime_test.Runtime_test_T_struct0.T_struct0)) : stdgo.Chan<_internal.runtime_test.Runtime_test_T_struct0.T_struct0>);
            stdgo.Go.routine(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        __deferstack__.unshift(() -> _wg.done());
                        while (true) {
                            {
                                var _i = (0 : stdgo.GoInt);
                                stdgo.Go.cfor((_i < (_internal.runtime_test.Runtime_test__readMetricsSink._readMetricsSink.length) : Bool), _i++, {
                                    _internal.runtime_test.Runtime_test__readMetricsSink._readMetricsSink[(_i : stdgo.GoInt)] = stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>((1024 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
                                    {
                                        var __select__ = true;
                                        while (__select__) {
                                            if (_done != null && _done.__isGet__()) {
                                                __select__ = false;
                                                {
                                                    _done.__get__();
                                                    {
                                                        {
                                                            for (defer in __deferstack__) {
                                                                defer();
                                                            };
                                                            return;
                                                        };
                                                    };
                                                };
                                            } else {
                                                __select__ = false;
                                                {};
                                            };
                                            #if !js Sys.sleep(0.01) #else null #end;
                                            stdgo._internal.internal.Async.tick();
                                        };
                                    };
                                });
                            };
                            stdgo._internal.runtime.Runtime_gc.gc();
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
                };
                a();
            });
            var _sum = function(_us:stdgo.Slice<stdgo.GoUInt64>):stdgo.GoUInt64 {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    var _total = ((0i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    for (__10 => _u in _us) {
                        _total = (_total + (_u) : stdgo.GoUInt64);
                    };
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return _total;
                    };
                    {
                        final __ret__:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                        return __ret__;
                    };
                } catch(__exception__) {
                    var exe:Dynamic = __exception__.native;
                    if ((exe is haxe.ValueException)) exe = exe.value;
                    if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                        if (__exception__.message == "__return__") throw "__return__";
                        exe = stdgo.Go.toInterface(__exception__.message);
                    };
                    stdgo.Go.recover_exception = exe;
                    final __ret__:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                    return __ret__;
                };
            };
            stdgo._internal.runtime.metrics.Metrics_read.read(_samples[(0 : stdgo.GoInt)]);
            {
                var _gen = (1 : stdgo.GoInt);
                stdgo.Go.cfor((_gen < (10 : stdgo.GoInt) : Bool), _gen++, {
                    stdgo._internal.runtime.metrics.Metrics_read.read(_samples[(_gen % (2 : stdgo.GoInt) : stdgo.GoInt)]);
                    for (_i => _ in _samples[(_gen % (2 : stdgo.GoInt) : stdgo.GoInt)]) {
                        var _name = (_samples[(_gen % (2 : stdgo.GoInt) : stdgo.GoInt)][(_i : stdgo.GoInt)].name?.__copy__() : stdgo.GoString);
                        var __0 = (_samples[(_gen % (2 : stdgo.GoInt) : stdgo.GoInt)][(_i : stdgo.GoInt)].value?.__copy__() : stdgo._internal.runtime.metrics.Metrics_Value.Value), __1 = (_samples[((1 : stdgo.GoInt) - ((_gen % (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt)][(_i : stdgo.GoInt)].value?.__copy__() : stdgo._internal.runtime.metrics.Metrics_Value.Value);
var _vOld = __1, _vNew = __0;
                        {
                            final __value__ = _vNew.kind();
                            if (__value__ == ((1 : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind))) {
                                var _new = (_vNew.uint64() : stdgo.GoUInt64);
                                var _old = (_vOld.uint64() : stdgo.GoUInt64);
                                if ((_new < _old : Bool)) {
                                    _t.errorf(("%s decreased: %d < %d" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_new), stdgo.Go.toInterface(_old));
                                };
                            } else if (__value__ == ((2 : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind))) {
                                var _new = (_vNew.float64() : stdgo.GoFloat64);
                                var _old = (_vOld.float64() : stdgo.GoFloat64);
                                if ((_new < _old : Bool)) {
                                    _t.errorf(("%s decreased: %f < %f" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_new), stdgo.Go.toInterface(_old));
                                };
                            } else if (__value__ == ((3 : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind))) {
                                var _new = (_sum(_vNew.float64Histogram().counts) : stdgo.GoUInt64);
                                var _old = (_sum(_vOld.float64Histogram().counts) : stdgo.GoUInt64);
                                if ((_new < _old : Bool)) {
                                    _t.errorf(("%s counts decreased: %d < %d" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_new), stdgo.Go.toInterface(_old));
                                };
                            };
                        };
                    };
                });
            };
            if (_done != null) _done.__close__();
            _wg.wait_();
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
