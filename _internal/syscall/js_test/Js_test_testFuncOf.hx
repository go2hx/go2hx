package _internal.syscall.js_test;
function testFuncOf(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _c = (new stdgo.Chan<_internal.syscall.js_test.Js_test_T__struct_0.T__struct_0>(0, () -> ({  } : _internal.syscall.js_test.Js_test_T__struct_0.T__struct_0)) : stdgo.Chan<_internal.syscall.js_test.Js_test_T__struct_0.T__struct_0>);
            var _cb = (stdgo._internal.syscall.js.Js_funcOf.funcOf(function(_this:stdgo._internal.syscall.js.Js_Value.Value, _args:stdgo.Slice<stdgo._internal.syscall.js.Js_Value.Value>):stdgo.AnyInterface {
                {
                    var _got = (_args[(0 : stdgo.GoInt)].int_() : stdgo.GoInt);
                    if (_got != ((42 : stdgo.GoInt))) {
                        _t.errorf(("got %#v, want %#v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface((42 : stdgo.GoInt)));
                    };
                };
                _c.__send__(({  } : _internal.syscall.js_test.Js_test_T__struct_0.T__struct_0));
                return (null : stdgo.AnyInterface);
            })?.__copy__() : stdgo._internal.syscall.js.Js_Func.Func);
            __deferstack__.unshift(() -> _cb.release());
            stdgo._internal.syscall.js.Js_global.global().call(("setTimeout" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_cb)), stdgo.Go.toInterface((0 : stdgo.GoInt)), stdgo.Go.toInterface((42 : stdgo.GoInt)));
            _c.__get__();
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
