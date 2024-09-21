package _internal.context_test;
import stdgo._internal.context.Context;
import stdgo._internal.context.Context;
function _testDeadline(_c:stdgo._internal.context.Context_Context.Context, _name:stdgo.GoString, _t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t.helper();
            var _d = (_internal.context_test.Context_test__quiescent._quiescent(_t) : stdgo._internal.time.Time_Duration.Duration);
            var _timer = stdgo._internal.time.Time_newTimer.newTimer(_d);
            __deferstack__.unshift(() -> _timer.stop());
            {
                var __select__ = true;
                while (__select__) {
                    if (_timer.c != null && _timer.c.__isGet__()) {
                        __select__ = false;
                        {
                            _timer.c.__get__();
                            {
                                _t.fatalf(("%s: context not timed out after %v" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(stdgo.Go.asInterface(_d)));
                            };
                        };
                    } else if (_c.done() != null && _c.done().__isGet__()) {
                        __select__ = false;
                        {
                            _c.done().__get__();
                            {};
                        };
                    };
                    #if !js Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
            };
            {
                var _e = (_c.err() : stdgo.Error);
                if (stdgo.Go.toInterface(_e) != (stdgo.Go.toInterface(stdgo._internal.context.Context_deadlineExceeded.deadlineExceeded))) {
                    _t.errorf(("%s: c.Err() == %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_e), stdgo.Go.toInterface(stdgo._internal.context.Context_deadlineExceeded.deadlineExceeded));
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
