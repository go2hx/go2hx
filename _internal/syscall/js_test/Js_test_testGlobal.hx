package _internal.syscall.js_test;
function testGlobal(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _ident = (stdgo._internal.syscall.js.Js_funcOf.funcOf(function(_this:stdgo._internal.syscall.js.Js_Value.Value, _args:stdgo.Slice<stdgo._internal.syscall.js.Js_Value.Value>):stdgo.AnyInterface {
                return stdgo.Go.toInterface(stdgo.Go.asInterface(_args[(0 : stdgo.GoInt)]));
            })?.__copy__() : stdgo._internal.syscall.js.Js_Func.Func);
            __deferstack__.unshift(() -> _ident.release());
            {
                var _got = (_ident.invoke(stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.syscall.js.Js_global.global())))?.__copy__() : stdgo._internal.syscall.js.Js_Value.Value);
                if (!_got.equal(stdgo._internal.syscall.js.Js_global.global()?.__copy__())) {
                    _t.errorf(("got %#v, want %#v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.syscall.js.Js_global.global())));
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
