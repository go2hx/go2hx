package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function testOnceFuncGoexit(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _calls = (0 : stdgo.GoInt);
            var _f = (stdgo._internal.sync.Sync_onceFunc.onceFunc(function():Void {
                _calls++;
                stdgo._internal.runtime.Runtime_goexit.goexit();
            }) : () -> Void);
            var _wg:stdgo._internal.sync.Sync_WaitGroup.WaitGroup = ({} : stdgo._internal.sync.Sync_WaitGroup.WaitGroup);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (2 : stdgo.GoInt) : Bool), _i++, {
                    _wg.add((1 : stdgo.GoInt));
                    stdgo.Go.routine(() -> {
                        var a = function():Void {
                            var __deferstack__:Array<Void -> Void> = [];
                            try {
                                __deferstack__.unshift(() -> _wg.done());
                                __deferstack__.unshift(() -> {
                                    var a = function():Void {
                                        var __deferstack__:Array<Void -> Void> = [];
                                        try {
                                            ({
                                                final r = stdgo.Go.recover_exception;
                                                stdgo.Go.recover_exception = null;
                                                r;
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
                                    };
                                    a();
                                });
                                _f();
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
                    _wg.wait_();
                });
            };
            if (_calls != ((1 : stdgo.GoInt))) {
                _t.errorf(("want calls==1, got %d" : stdgo.GoString), stdgo.Go.toInterface(_calls));
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
