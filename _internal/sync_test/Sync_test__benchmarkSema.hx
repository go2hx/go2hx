package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function _benchmarkSema(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _block:Bool, _work:Bool):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (_b.n == ((0 : stdgo.GoInt))) {
                return;
            };
            var _sem = ((0u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
            if (_block) {
                var _done = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        {
                            var _p = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_p < (stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs((0 : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt) : Bool), _p++, {
                                stdgo._internal.sync.Sync_runtime_Semacquire.runtime_Semacquire(stdgo.Go.pointer(_sem));
                            });
                        };
                        _done.__send__(true);
                    };
                    a();
                });
                __deferstack__.unshift(() -> {
                    var a = function():Void {
                        var __deferstack__:Array<Void -> Void> = [];
                        try {
                            _done.__get__();
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
            };
            _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB>):Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    var _foo = (0 : stdgo.GoInt);
                    while (_pb.next()) {
                        stdgo._internal.sync.Sync_runtime_Semrelease.runtime_Semrelease(stdgo.Go.pointer(_sem), false, (0 : stdgo.GoInt));
                        if (_work) {
                            {
                                var _i = (0 : stdgo.GoInt);
                                stdgo.Go.cfor((_i < (100 : stdgo.GoInt) : Bool), _i++, {
                                    _foo = (_foo * ((2 : stdgo.GoInt)) : stdgo.GoInt);
                                    _foo = (_foo / ((2 : stdgo.GoInt)) : stdgo.GoInt);
                                });
                            };
                        };
                        stdgo._internal.sync.Sync_runtime_Semacquire.runtime_Semacquire(stdgo.Go.pointer(_sem));
                    };
                    var __blank__ = _foo;
                    stdgo._internal.sync.Sync_runtime_Semrelease.runtime_Semrelease(stdgo.Go.pointer(_sem), false, (0 : stdgo.GoInt));
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
