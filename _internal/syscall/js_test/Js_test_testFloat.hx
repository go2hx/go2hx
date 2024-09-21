package _internal.syscall.js_test;
function testFloat(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _want = (42.123 : stdgo.GoFloat64);
        var _o = (_internal.syscall.js_test.Js_test__dummys._dummys.get(("someFloat" : stdgo.GoString))?.__copy__() : stdgo._internal.syscall.js.Js_Value.Value);
        {
            var _got = (_o.float_() : stdgo.GoFloat64);
            if (_got != (_want)) {
                _t.errorf(("got %#v, want %#v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
        _internal.syscall.js_test.Js_test__dummys._dummys.set(("otherFloat" : stdgo.GoString), stdgo.Go.toInterface(_want));
        {
            var _got = (_internal.syscall.js_test.Js_test__dummys._dummys.get(("otherFloat" : stdgo.GoString)).float_() : stdgo.GoFloat64);
            if (_got != (_want)) {
                _t.errorf(("got %#v, want %#v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
        if (!_internal.syscall.js_test.Js_test__dummys._dummys.get(("someFloat" : stdgo.GoString)).equal(_internal.syscall.js_test.Js_test__dummys._dummys.get(("someFloat" : stdgo.GoString))?.__copy__())) {
            _t.errorf(("same value not equal" : stdgo.GoString));
        };
    }
