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
function testStackMem(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {};
            if (stdgo._internal.testing.Testing_short.short()) {
                return;
            };
            {
                var _a0 = stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs((32 : stdgo.GoInt));
                __deferstack__.unshift(() -> stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs(_a0));
            };
            var _s0 = (stdgo.Go.setRef(({} : stdgo._internal.runtime.Runtime_MemStats.MemStats)) : stdgo.Ref<stdgo._internal.runtime.Runtime_MemStats.MemStats>);
            stdgo._internal.runtime.Runtime_readMemStats.readMemStats(_s0);
            {
                var _b = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_b < (256 : stdgo.GoInt) : Bool), _b++, {
                    var _c = (new stdgo.Chan<Bool>((32 : stdgo.GoInt).toBasic(), () -> false) : stdgo.Chan<Bool>);
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < (32 : stdgo.GoInt) : Bool), _i++, {
                            stdgo.Go.routine(() -> {
                                var a = function():Void {
                                    var __deferstack__:Array<Void -> Void> = [];
                                    try {
                                        var _f:(stdgo.GoInt, stdgo.GoArray<stdgo.GoUInt8>) -> Void = null;
                                        _f = function(_k:stdgo.GoInt, _a:stdgo.GoArray<stdgo.GoUInt8>):Void {
                                            var __deferstack__:Array<Void -> Void> = [];
                                            try {
                                                if (_k == ((0 : stdgo.GoInt))) {
                                                    stdgo._internal.time.Time_sleep.sleep((1000000i64 : stdgo._internal.time.Time_Duration.Duration));
                                                    {
                                                        for (defer in __deferstack__) {
                                                            defer();
                                                        };
                                                        return;
                                                    };
                                                };
                                                _f((_k - (1 : stdgo.GoInt) : stdgo.GoInt), _a?.__copy__());
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
                                        _f((128 : stdgo.GoInt), (new stdgo.GoArray<stdgo.GoUInt8>(1024, 1024, ...[]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__());
                                        _c.__send__(true);
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
                        });
                    };
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < (32 : stdgo.GoInt) : Bool), _i++, {
                            _c.__get__();
                        });
                    };
                    stdgo._internal.time.Time_sleep.sleep((10000000i64 : stdgo._internal.time.Time_Duration.Duration));
                });
            };
            var _s1 = (stdgo.Go.setRef(({} : stdgo._internal.runtime.Runtime_MemStats.MemStats)) : stdgo.Ref<stdgo._internal.runtime.Runtime_MemStats.MemStats>);
            stdgo._internal.runtime.Runtime_readMemStats.readMemStats(_s1);
            var _consumed = ((_s1.stackSys - _s0.stackSys : stdgo.GoUInt64) : stdgo.GoInt64);
            _t.logf(("Consumed %vMB for stack mem" : stdgo.GoString), stdgo.Go.toInterface((_consumed >> (20i64 : stdgo.GoUInt64) : stdgo.GoInt64)));
            var _estimate = ((33554432i64 : stdgo.GoInt64) : stdgo.GoInt64);
            if ((_consumed > _estimate : Bool)) {
                _t.fatalf(("Stack mem: want %v, got %v" : stdgo.GoString), stdgo.Go.toInterface(_estimate), stdgo.Go.toInterface(_consumed));
            };
            var _inuse = ((_s1.stackInuse : stdgo.GoInt64) - (_s0.stackInuse : stdgo.GoInt64) : stdgo.GoInt64);
            _t.logf(("Inuse %vMB for stack mem" : stdgo.GoString), stdgo.Go.toInterface((_inuse >> (20i64 : stdgo.GoUInt64) : stdgo.GoInt64)));
            if ((_inuse > (4194304i64 : stdgo.GoInt64) : Bool)) {
                _t.fatalf(("Stack inuse: want %v, got %v" : stdgo.GoString), stdgo.Go.toInterface((4194304 : stdgo.GoInt)), stdgo.Go.toInterface(_inuse));
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
