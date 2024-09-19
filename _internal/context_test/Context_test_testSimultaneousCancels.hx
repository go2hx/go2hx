package _internal.context_test;
import stdgo._internal.context.Context;
import stdgo._internal.context.Context;
function testSimultaneousCancels(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __tmp__ = stdgo._internal.context.Context_withCancel.withCancel(stdgo._internal.context.Context_background.background()), _root:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_CancelFunc.CancelFunc = __tmp__._1;
            var _m = ({
                final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.context.Context_Context.Context, stdgo._internal.context.Context_CancelFunc.CancelFunc>();
                x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.context.Context_Context.Context", [], stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
                x.__defaultValue__ = () -> (null : stdgo._internal.context.Context_CancelFunc.CancelFunc);
                x.set(_root, _cancel);
                cast x;
            } : stdgo.GoMap<stdgo._internal.context.Context_Context.Context, stdgo._internal.context.Context_CancelFunc.CancelFunc>);
            var _q = (new stdgo.Slice<stdgo._internal.context.Context_Context.Context>(1, 1, ...[_root]) : stdgo.Slice<stdgo._internal.context.Context_Context.Context>);
            while (((_q.length != (0 : stdgo.GoInt)) && ((_m.length) < (100 : stdgo.GoInt) : Bool) : Bool)) {
                var _parent = (_q[(0 : stdgo.GoInt)] : stdgo._internal.context.Context_Context.Context);
                _q = (_q.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.context.Context_Context.Context>);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < (4 : stdgo.GoInt) : Bool), _i++, {
                        var __tmp__ = stdgo._internal.context.Context_withCancel.withCancel(_parent), _ctx:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_CancelFunc.CancelFunc = __tmp__._1;
                        _m[_ctx] = _cancel;
                        _q = (_q.__append__(_ctx));
                    });
                };
            };
            var _wg:stdgo._internal.sync.Sync_WaitGroup.WaitGroup = ({} : stdgo._internal.sync.Sync_WaitGroup.WaitGroup);
            _wg.add((_m.length));
            for (__4 => _cancel in _m) {
                stdgo.Go.routine(() -> {
                    var a = function(_cancel:stdgo._internal.context.Context_CancelFunc.CancelFunc):Void {
                        _cancel();
                        _wg.done();
                    };
                    a(_cancel);
                });
            };
            var _d = (_internal.context_test.Context_test__quiescent._quiescent(_t) : stdgo._internal.time.Time_Duration.Duration);
            var _stuck = (new stdgo.Chan<_internal.context_test.Context_test_T__struct_1.T__struct_1>(0, () -> ({  } : _internal.context_test.Context_test_T__struct_1.T__struct_1)) : stdgo.Chan<_internal.context_test.Context_test_T__struct_1.T__struct_1>);
            var _timer = stdgo._internal.time.Time_afterFunc.afterFunc(_d, function():Void {
                if (_stuck != null) _stuck.__close__();
            });
            __deferstack__.unshift(() -> _timer.stop());
            for (_ctx => _ in _m) {
                {
                    var __select__ = true;
                    while (__select__) {
                        if (_ctx.done() != null && _ctx.done().__isGet__()) {
                            __select__ = false;
                            {
                                _ctx.done().__get__();
                                {};
                            };
                        } else if (_stuck != null && _stuck.__isGet__()) {
                            __select__ = false;
                            {
                                _stuck.__get__();
                                {
                                    var _buf = (new stdgo.Slice<stdgo.GoUInt8>((10240 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                                    var _n = (stdgo._internal.runtime.Runtime_stack.stack(_buf, true) : stdgo.GoInt);
                                    _t.fatalf(("timed out after %v waiting for <-ctx.Done(); stacks:\n%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_d)), stdgo.Go.toInterface((_buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>)));
                                };
                            };
                        };
                        #if !js Sys.sleep(0.01) #else null #end;
                        stdgo._internal.internal.Async.tick();
                    };
                };
            };
            var _done = (new stdgo.Chan<_internal.context_test.Context_test_T__struct_1.T__struct_1>(0, () -> ({  } : _internal.context_test.Context_test_T__struct_1.T__struct_1)) : stdgo.Chan<_internal.context_test.Context_test_T__struct_1.T__struct_1>);
            stdgo.Go.routine(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        _wg.wait_();
                        if (_done != null) _done.__close__();
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
            {
                var __select__ = true;
                while (__select__) {
                    if (_done != null && _done.__isGet__()) {
                        __select__ = false;
                        {
                            _done.__get__();
                            {};
                        };
                    } else if (_stuck != null && _stuck.__isGet__()) {
                        __select__ = false;
                        {
                            _stuck.__get__();
                            {
                                var _buf = (new stdgo.Slice<stdgo.GoUInt8>((10240 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                                var _n = (stdgo._internal.runtime.Runtime_stack.stack(_buf, true) : stdgo.GoInt);
                                _t.fatalf(("timed out after %v waiting for cancel functions; stacks:\n%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_d)), stdgo.Go.toInterface((_buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>)));
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
