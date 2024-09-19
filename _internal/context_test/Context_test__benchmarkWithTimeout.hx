package _internal.context_test;
import stdgo._internal.context.Context;
import stdgo._internal.context.Context;
function _benchmarkWithTimeout(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _concurrentContexts:stdgo.GoInt):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _gomaxprocs = (stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs((0 : stdgo.GoInt)) : stdgo.GoInt);
            var _perPContexts = (_concurrentContexts / _gomaxprocs : stdgo.GoInt);
            var _root = (stdgo._internal.context.Context_background.background() : stdgo._internal.context.Context_Context.Context);
            var _wg:stdgo._internal.sync.Sync_WaitGroup.WaitGroup = ({} : stdgo._internal.sync.Sync_WaitGroup.WaitGroup);
            var _ccf = (new stdgo.Slice<stdgo.Slice<stdgo._internal.context.Context_CancelFunc.CancelFunc>>((_gomaxprocs : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Slice<stdgo._internal.context.Context_CancelFunc.CancelFunc>>);
            for (_i => _ in _ccf) {
                _wg.add((1 : stdgo.GoInt));
                stdgo.Go.routine(() -> {
                    var a = function(_i:stdgo.GoInt):Void {
                        var __deferstack__:Array<Void -> Void> = [];
                        try {
                            __deferstack__.unshift(() -> _wg.done());
                            var _cf = (new stdgo.Slice<stdgo._internal.context.Context_CancelFunc.CancelFunc>((_perPContexts : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo._internal.context.Context_CancelFunc.CancelFunc>);
                            for (_j => _ in _cf) {
                                {
                                    var __tmp__ = stdgo._internal.context.Context_withTimeout.withTimeout(_root, (3600000000000i64 : stdgo._internal.time.Time_Duration.Duration));
                                    _cf[(_j : stdgo.GoInt)] = __tmp__._1;
                                };
                            };
                            _ccf[(_i : stdgo.GoInt)] = _cf;
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
                    a(_i);
                });
            };
            _wg.wait_();
            _b.resetTimer();
            _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB>):Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    var _wcf = (new stdgo.Slice<stdgo._internal.context.Context_CancelFunc.CancelFunc>((10 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo._internal.context.Context_CancelFunc.CancelFunc>);
                    while (_pb.next()) {
                        for (_i => _ in _wcf) {
                            {
                                var __tmp__ = stdgo._internal.context.Context_withTimeout.withTimeout(_root, (3600000000000i64 : stdgo._internal.time.Time_Duration.Duration));
                                _wcf[(_i : stdgo.GoInt)] = __tmp__._1;
                            };
                        };
                        for (__20 => _f in _wcf) {
                            _f();
                        };
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
            });
            _b.stopTimer();
            for (__28 => _cf in _ccf) {
                for (__29 => _f in _cf) {
                    _f();
                };
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
