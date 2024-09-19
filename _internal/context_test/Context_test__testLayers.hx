package _internal.context_test;
import stdgo._internal.context.Context;
import stdgo._internal.context.Context;
function _testLayers(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _seed:stdgo.GoInt64, _testTimeout:Bool):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t.parallel();
            var _r = stdgo._internal.math.rand.Rand_new_.new_(stdgo._internal.math.rand.Rand_newSource.newSource(_seed));
            var _errorf = function(_format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):Void {
                _t.errorf(stdgo._internal.fmt.Fmt_sprintf.sprintf(("seed=%d: %s" : stdgo.GoString), stdgo.Go.toInterface(_seed), stdgo.Go.toInterface(_format))?.__copy__(), ...(_a : Array<stdgo.AnyInterface>));
            };
            {};
            {};
            var __0:stdgo.Slice<stdgo.Pointer<_internal.context_test.Context_test_T__testLayers___localname___value_10521.T__testLayers___localname___value_10521>> = (null : stdgo.Slice<stdgo.Pointer<_internal.context_test.Context_test_T__testLayers___localname___value_10521.T__testLayers___localname___value_10521>>), __1:stdgo.Slice<stdgo._internal.context.Context_CancelFunc.CancelFunc> = (null : stdgo.Slice<stdgo._internal.context.Context_CancelFunc.CancelFunc>), __2:stdgo.GoInt = (0 : stdgo.GoInt), __3:stdgo._internal.context.Context_Context.Context = stdgo._internal.context.Context_background.background();
var _ctx = __3, _numTimers = __2, _cancels = __1, _vals = __0;
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor(((((_i < (30 : stdgo.GoInt) : Bool) || _numTimers == ((0 : stdgo.GoInt)) : Bool) || (_cancels.length) == ((0 : stdgo.GoInt)) : Bool) || (_vals.length == (0 : stdgo.GoInt)) : Bool), _i++, {
                    {
                        final __value__ = _r.intn((3 : stdgo.GoInt));
                        if (__value__ == ((0 : stdgo.GoInt))) {
                            var _v = stdgo.Go.pointer(((0 : stdgo.GoInt) : _internal.context_test.Context_test_T__testLayers___localname___value_10521.T__testLayers___localname___value_10521));
                            _ctx = stdgo._internal.context.Context_withValue.withValue(_ctx, stdgo.Go.toInterface(_v), stdgo.Go.toInterface(_v));
                            _vals = (_vals.__append__(_v));
                        } else if (__value__ == ((1 : stdgo.GoInt))) {
                            var _cancel:stdgo._internal.context.Context_CancelFunc.CancelFunc = (null : stdgo._internal.context.Context_CancelFunc.CancelFunc);
                            {
                                var __tmp__ = stdgo._internal.context.Context_withCancel.withCancel(_ctx);
                                _ctx = __tmp__._0;
                                _cancel = __tmp__._1;
                            };
                            _cancels = (_cancels.__append__(_cancel));
                        } else if (__value__ == ((2 : stdgo.GoInt))) {
                            var _cancel:stdgo._internal.context.Context_CancelFunc.CancelFunc = (null : stdgo._internal.context.Context_CancelFunc.CancelFunc);
                            var _d = (3600000000000000i64 : stdgo._internal.time.Time_Duration.Duration);
                            if (_testTimeout) {
                                _d = (1000000i64 : stdgo._internal.time.Time_Duration.Duration);
                            };
                            {
                                var __tmp__ = stdgo._internal.context.Context_withTimeout.withTimeout(_ctx, _d);
                                _ctx = __tmp__._0;
                                _cancel = __tmp__._1;
                            };
                            _cancels = (_cancels.__append__(_cancel));
                            _numTimers++;
                        };
                    };
                });
            };
            var _checkValues = (function(_when:stdgo.GoString):Void {
                for (__8 => _key in _vals) {
                    {
                        var _val = (stdgo.Go.typeAssert((_ctx.value(stdgo.Go.toInterface(_key)) : stdgo.Pointer<_internal.context_test.Context_test_T__testLayers___localname___value_10521.T__testLayers___localname___value_10521>)) : stdgo.Pointer<_internal.context_test.Context_test_T__testLayers___localname___value_10521.T__testLayers___localname___value_10521>);
                        if (_key != (_val)) {
                            _errorf(("%s: ctx.Value(%p) = %p want %p" : stdgo.GoString), stdgo.Go.toInterface(_when), stdgo.Go.toInterface(_key), stdgo.Go.toInterface(_val), stdgo.Go.toInterface(_key));
                        };
                    };
                };
            } : stdgo.GoString -> Void);
            if (!_testTimeout) {
                {
                    var __select__ = true;
                    while (__select__) {
                        if (_ctx.done() != null && _ctx.done().__isGet__()) {
                            __select__ = false;
                            {
                                _ctx.done().__get__();
                                {
                                    _errorf(("ctx should not be canceled yet" : stdgo.GoString));
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
            };
            {
                var __0 = (stdgo._internal.fmt.Fmt_sprint.sprint(stdgo.Go.toInterface(_ctx))?.__copy__() : stdgo.GoString), __1 = ("context.Background." : stdgo.GoString);
var _prefix = __1, _s = __0;
                if (!stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_s?.__copy__(), _prefix?.__copy__())) {
                    _t.errorf(("ctx.String() = %q want prefix %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_prefix));
                };
            };
            _t.log(stdgo.Go.toInterface(_ctx));
            _checkValues(("before cancel" : stdgo.GoString));
            if (_testTimeout) {
                var _d = (_internal.context_test.Context_test__quiescent._quiescent(_t) : stdgo._internal.time.Time_Duration.Duration);
                var _timer = stdgo._internal.time.Time_newTimer.newTimer(_d);
                __deferstack__.unshift(() -> _timer.stop());
                {
                    var __select__ = true;
                    while (__select__) {
                        if (_ctx.done() != null && _ctx.done().__isGet__()) {
                            __select__ = false;
                            {
                                _ctx.done().__get__();
                                {};
                            };
                        } else if (_timer.c != null && _timer.c.__isGet__()) {
                            __select__ = false;
                            {
                                _timer.c.__get__();
                                {
                                    _errorf(("ctx should have timed out after %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_d)));
                                };
                            };
                        };
                        #if !js Sys.sleep(0.01) #else null #end;
                        stdgo._internal.internal.Async.tick();
                    };
                };
                _checkValues(("after timeout" : stdgo.GoString));
            } else {
                var _cancel = (_cancels[(_r.intn((_cancels.length)) : stdgo.GoInt)] : stdgo._internal.context.Context_CancelFunc.CancelFunc);
                _cancel();
                {
                    var __select__ = true;
                    while (__select__) {
                        if (_ctx.done() != null && _ctx.done().__isGet__()) {
                            __select__ = false;
                            {
                                _ctx.done().__get__();
                                {};
                            };
                        } else {
                            __select__ = false;
                            {
                                _errorf(("ctx should be canceled" : stdgo.GoString));
                            };
                        };
                        #if !js Sys.sleep(0.01) #else null #end;
                        stdgo._internal.internal.Async.tick();
                    };
                };
                _checkValues(("after cancel" : stdgo.GoString));
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
