package _internal.context_test;
import stdgo._internal.context.Context;
import stdgo._internal.context.Context;
function exampleAfterFunc_cond():Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _waitOnCond = function(_ctx:stdgo._internal.context.Context_Context.Context, _cond:stdgo.Ref<stdgo._internal.sync.Sync_Cond.Cond>, _conditionMet:() -> Bool):stdgo.Error {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    var _stopf = (_internal.context_test.Context_test_context.context.afterFunc(_ctx, function():Void {
                        var __deferstack__:Array<Void -> Void> = [];
                        try {
                            _cond.l.lock();
                            __deferstack__.unshift(() -> _cond.l.unlock());
                            _cond.broadcast();
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
                    }) : () -> Bool);
                    __deferstack__.unshift(() -> _stopf());
                    while (!_conditionMet()) {
                        _cond.wait_();
                        if (_ctx.err() != null) {
                            {
                                final __ret__:stdgo.Error = _ctx.err();
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                return __ret__;
                            };
                        };
                    };
                    {
                        final __ret__:stdgo.Error = (null : stdgo.Error);
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                    {
                        final __ret__:stdgo.Error = (null : stdgo.Error);
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
                    final __ret__:stdgo.Error = (null : stdgo.Error);
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                    return __ret__;
                };
            };
            var _cond = stdgo._internal.sync.Sync_newCond.newCond(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.sync.Sync_Mutex.Mutex)) : stdgo.Ref<stdgo._internal.sync.Sync_Mutex.Mutex>)));
            var _wg:stdgo._internal.sync.Sync_WaitGroup.WaitGroup = ({} : stdgo._internal.sync.Sync_WaitGroup.WaitGroup);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (4 : stdgo.GoInt) : Bool), _i++, {
                    _wg.add((1 : stdgo.GoInt));
                    stdgo.Go.routine(() -> {
                        var a = function():Void {
                            var __deferstack__:Array<Void -> Void> = [];
                            try {
                                __deferstack__.unshift(() -> _wg.done());
                                var __tmp__ = _internal.context_test.Context_test_context.context.withTimeout(_internal.context_test.Context_test_context.context.background(), (1000000i64 : stdgo._internal.time.Time_Duration.Duration)), _ctx:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_CancelFunc.CancelFunc = __tmp__._1;
                                __deferstack__.unshift(() -> _cancel());
                                _cond.l.lock();
                                __deferstack__.unshift(() -> _cond.l.unlock());
                                var _err = (_waitOnCond(_ctx, _cond, function():Bool {
                                    var __deferstack__:Array<Void -> Void> = [];
                                    try {
                                        {
                                            for (defer in __deferstack__) {
                                                defer();
                                            };
                                            return false;
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
                                }) : stdgo.Error);
                                stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_err));
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
