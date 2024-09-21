package _internal.context_test;
import stdgo._internal.context.Context;
import stdgo._internal.context.Context;
function testTODO(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _c = (stdgo._internal.context.Context_todo.todo() : stdgo._internal.context.Context_Context.Context);
        if (_c == null) {
            _t.fatalf(("TODO returned nil" : stdgo.GoString));
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
        {
            var __0 = (stdgo._internal.fmt.Fmt_sprint.sprint(stdgo.Go.toInterface(_c))?.__copy__() : stdgo.GoString), __1 = ("context.TODO" : stdgo.GoString);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                _t.errorf(("TODO().String() = %q want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
