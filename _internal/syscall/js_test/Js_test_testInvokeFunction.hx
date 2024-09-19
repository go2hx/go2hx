package _internal.syscall.js_test;
function testInvokeFunction(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _called = (false : Bool);
            var _cb = (stdgo._internal.syscall.js.Js_funcOf.funcOf(function(_this:stdgo._internal.syscall.js.Js_Value.Value, _args:stdgo.Slice<stdgo._internal.syscall.js.Js_Value.Value>):stdgo.AnyInterface {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    var _cb2 = (stdgo._internal.syscall.js.Js_funcOf.funcOf(function(_this:stdgo._internal.syscall.js.Js_Value.Value, _args:stdgo.Slice<stdgo._internal.syscall.js.Js_Value.Value>):stdgo.AnyInterface {
                        _called = true;
                        return stdgo.Go.toInterface((42 : stdgo.GoInt));
                    })?.__copy__() : stdgo._internal.syscall.js.Js_Func.Func);
                    __deferstack__.unshift(() -> _cb2.release());
                    {
                        final __ret__:stdgo.AnyInterface = stdgo.Go.toInterface(stdgo.Go.asInterface(_cb2.invoke()));
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                    {
                        final __ret__:stdgo.AnyInterface = (null : stdgo.AnyInterface);
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
                    final __ret__:stdgo.AnyInterface = (null : stdgo.AnyInterface);
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                    return __ret__;
                };
            })?.__copy__() : stdgo._internal.syscall.js.Js_Func.Func);
            __deferstack__.unshift(() -> _cb.release());
            {
                var _got = (_cb.invoke().int_() : stdgo.GoInt);
                if (_got != ((42 : stdgo.GoInt))) {
                    _t.errorf(("got %#v, want %#v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface((42 : stdgo.GoInt)));
                };
            };
            if (!_called) {
                _t.error(stdgo.Go.toInterface(("function not called" : stdgo.GoString)));
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
