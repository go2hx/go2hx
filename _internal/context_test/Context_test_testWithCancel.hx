package _internal.context_test;
import stdgo._internal.context.Context;
import stdgo._internal.context.Context;
function testWithCancel(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __tmp__ = stdgo._internal.context.Context_withCancel.withCancel(stdgo._internal.context.Context_background.background()), _c1:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_CancelFunc.CancelFunc = __tmp__._1;
        {
            var __0 = (stdgo._internal.fmt.Fmt_sprint.sprint(stdgo.Go.toInterface(_c1))?.__copy__() : stdgo.GoString), __1 = ("context.Background.WithCancel" : stdgo.GoString);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                _t.errorf(("c1.String() = %q want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
        var _o = (new _internal.context_test.Context_test_T_otherContext.T_otherContext(_c1) : _internal.context_test.Context_test_T_otherContext.T_otherContext);
        var __tmp__ = stdgo._internal.context.Context_withCancel.withCancel(stdgo.Go.asInterface(_o)), _c2:stdgo._internal.context.Context_Context.Context = __tmp__._0, __0:stdgo._internal.context.Context_CancelFunc.CancelFunc = __tmp__._1;
        var _contexts = (new stdgo.Slice<stdgo._internal.context.Context_Context.Context>(3, 3, ...[_c1, stdgo.Go.asInterface(_o), _c2]) : stdgo.Slice<stdgo._internal.context.Context_Context.Context>);
        for (_i => _c in _contexts) {
            {
                var _d = _c.done();
                if (_d == null) {
                    _t.errorf(("c[%d].Done() == %v want non-nil" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_d));
                };
            };
            {
                var _e = (_c.err() : stdgo.Error);
                if (_e != null) {
                    _t.errorf(("c[%d].Err() == %v want nil" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_e));
                };
            };
            {
                var __select__ = true;
                while (__select__) {
                    if (_c.done() != null && _c.done().__isGet__()) {
                        __select__ = false;
                        {
                            var _x = _c.done().__get__();
                            {
                                _t.errorf(("<-c.Done() == %v want nothing (it should block)" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)));
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
        _cancel();
        for (_i => _c in _contexts) {
            {
                var __select__ = true;
                while (__select__) {
                    if (_c.done() != null && _c.done().__isGet__()) {
                        __select__ = false;
                        {
                            _c.done().__get__();
                            {};
                        };
                    } else {
                        __select__ = false;
                        {
                            _t.errorf(("<-c[%d].Done() blocked, but shouldn\'t have" : stdgo.GoString), stdgo.Go.toInterface(_i));
                        };
                    };
                    #if !js Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
            };
            {
                var _e = (_c.err() : stdgo.Error);
                if (stdgo.Go.toInterface(_e) != (stdgo.Go.toInterface(stdgo._internal.context.Context_canceled.canceled))) {
                    _t.errorf(("c[%d].Err() == %v want %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_e), stdgo.Go.toInterface(stdgo._internal.context.Context_canceled.canceled));
                };
            };
        };
    }
