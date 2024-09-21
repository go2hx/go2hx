package _internal.context_test;
import stdgo._internal.context.Context;
import stdgo._internal.context.Context;
function testInterlockedCancels(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __tmp__ = stdgo._internal.context.Context_withCancel.withCancel(stdgo._internal.context.Context_background.background()), _parent:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancelParent:stdgo._internal.context.Context_CancelFunc.CancelFunc = __tmp__._1;
            var __tmp__ = stdgo._internal.context.Context_withCancel.withCancel(_parent), _child:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancelChild:stdgo._internal.context.Context_CancelFunc.CancelFunc = __tmp__._1;
            stdgo.Go.routine(() -> {
                var a = function():Void {
                    _parent.done().__get__();
                    _cancelChild();
                };
                a();
            });
            _cancelParent();
            var _d = (_internal.context_test.Context_test__quiescent._quiescent(_t) : stdgo._internal.time.Time_Duration.Duration);
            var _timer = stdgo._internal.time.Time_newTimer.newTimer(_d);
            __deferstack__.unshift(() -> _timer.stop());
            {
                var __select__ = true;
                while (__select__) {
                    if (_child.done() != null && _child.done().__isGet__()) {
                        __select__ = false;
                        {
                            _child.done().__get__();
                            {};
                        };
                    } else if (_timer.c != null && _timer.c.__isGet__()) {
                        __select__ = false;
                        {
                            _timer.c.__get__();
                            {
                                var _buf = (new stdgo.Slice<stdgo.GoUInt8>((10240 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                                var _n = (stdgo._internal.runtime.Runtime_stack.stack(_buf, true) : stdgo.GoInt);
                                _t.fatalf(("timed out after %v waiting for child.Done(); stacks:\n%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_d)), stdgo.Go.toInterface((_buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>)));
                            };
                        };
                    };
                    #if !js Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
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
