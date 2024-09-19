package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function benchmarkPoolExpensiveNew(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _internal.sync_test.Sync_test__globalSink._globalSink = stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>((8388608 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        _internal.sync_test.Sync_test__globalSink._globalSink = (null : stdgo.AnyInterface);
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
            var _p:stdgo._internal.sync.Sync_Pool.Pool = ({} : stdgo._internal.sync.Sync_Pool.Pool);
            var _nNew:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
            _p.new_ = function():stdgo.AnyInterface {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    stdgo._internal.sync.atomic_.Atomic__addUint64.addUint64(stdgo.Go.pointer(_nNew), (1i64 : stdgo.GoUInt64));
                    stdgo._internal.time.Time_sleep.sleep((1000000i64 : stdgo._internal.time.Time_Duration.Duration));
                    {
                        final __ret__:stdgo.AnyInterface = stdgo.Go.toInterface((42 : stdgo.GoInt));
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                    {
                        final __ret__:stdgo.AnyInterface = (null : stdgo.AnyInterface);
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
                    final __ret__:stdgo.AnyInterface = (null : stdgo.AnyInterface);
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                    return __ret__;
                };
            };
            var __0:stdgo._internal.runtime.Runtime_MemStats.MemStats = ({} : stdgo._internal.runtime.Runtime_MemStats.MemStats), __1:stdgo._internal.runtime.Runtime_MemStats.MemStats = ({} : stdgo._internal.runtime.Runtime_MemStats.MemStats);
var _mstats2 = __1, _mstats1 = __0;
            stdgo._internal.runtime.Runtime_readMemStats.readMemStats((stdgo.Go.setRef(_mstats1) : stdgo.Ref<stdgo._internal.runtime.Runtime_MemStats.MemStats>));
            _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB>):Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    var _items = (new stdgo.Slice<stdgo.AnyInterface>((100 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.AnyInterface>);
                    var _sink:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
                    while (_pb.next()) {
                        for (_i => _ in _items) {
                            _items[(_i : stdgo.GoInt)] = _p.get();
                            _sink = (new stdgo.Slice<stdgo.GoUInt8>((32768 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                        };
                        for (_i => _v in _items) {
                            _p.put(_v);
                            _items[(_i : stdgo.GoInt)] = (null : stdgo.AnyInterface);
                        };
                    };
                    var __blank__ = _sink;
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
            });
            stdgo._internal.runtime.Runtime_readMemStats.readMemStats((stdgo.Go.setRef(_mstats2) : stdgo.Ref<stdgo._internal.runtime.Runtime_MemStats.MemStats>));
            _b.reportMetric((((_mstats2.numGC - _mstats1.numGC : stdgo.GoUInt32) : stdgo.GoFloat64) / (_b.n : stdgo.GoFloat64) : stdgo.GoFloat64), ("GCs/op" : stdgo.GoString));
            _b.reportMetric(((_nNew : stdgo.GoFloat64) / (_b.n : stdgo.GoFloat64) : stdgo.GoFloat64), ("New/op" : stdgo.GoString));
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
