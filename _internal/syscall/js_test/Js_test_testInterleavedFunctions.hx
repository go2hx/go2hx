package _internal.syscall.js_test;
function testInterleavedFunctions(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _c1 = (new stdgo.Chan<_internal.syscall.js_test.Js_test_T__struct_0.T__struct_0>(0, () -> ({  } : _internal.syscall.js_test.Js_test_T__struct_0.T__struct_0)) : stdgo.Chan<_internal.syscall.js_test.Js_test_T__struct_0.T__struct_0>);
        var _c2 = (new stdgo.Chan<_internal.syscall.js_test.Js_test_T__struct_0.T__struct_0>(0, () -> ({  } : _internal.syscall.js_test.Js_test_T__struct_0.T__struct_0)) : stdgo.Chan<_internal.syscall.js_test.Js_test_T__struct_0.T__struct_0>);
        stdgo._internal.syscall.js.Js_global.global().get(("setTimeout" : stdgo.GoString)).invoke(stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.syscall.js.Js_funcOf.funcOf(function(_this:stdgo._internal.syscall.js.Js_Value.Value, _args:stdgo.Slice<stdgo._internal.syscall.js.Js_Value.Value>):stdgo.AnyInterface {
            _c1.__send__(({  } : _internal.syscall.js_test.Js_test_T__struct_0.T__struct_0));
            _c2.__get__();
            return (null : stdgo.AnyInterface);
        }))), stdgo.Go.toInterface((0 : stdgo.GoInt)));
        _c1.__get__();
        _c2.__send__(({  } : _internal.syscall.js_test.Js_test_T__struct_0.T__struct_0));
        var _f = (stdgo._internal.syscall.js.Js_funcOf.funcOf(function(_this:stdgo._internal.syscall.js.Js_Value.Value, _args:stdgo.Slice<stdgo._internal.syscall.js.Js_Value.Value>):stdgo.AnyInterface {
            return (null : stdgo.AnyInterface);
        })?.__copy__() : stdgo._internal.syscall.js.Js_Func.Func);
        _f.invoke();
    }
