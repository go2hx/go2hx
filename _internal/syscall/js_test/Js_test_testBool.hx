package _internal.syscall.js_test;
function testBool(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _want = (true : Bool);
        var _o = (_internal.syscall.js_test.Js_test__dummys._dummys.get(("someBool" : stdgo.GoString))?.__copy__() : stdgo._internal.syscall.js.Js_Value.Value);
        {
            var _got = (_o.bool_() : Bool);
            if (_got != (_want)) {
                _t.errorf(("got %#v, want %#v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
        _internal.syscall.js_test.Js_test__dummys._dummys.set(("otherBool" : stdgo.GoString), stdgo.Go.toInterface(_want));
        {
            var _got = (_internal.syscall.js_test.Js_test__dummys._dummys.get(("otherBool" : stdgo.GoString)).bool_() : Bool);
            if (_got != (_want)) {
                _t.errorf(("got %#v, want %#v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
        if (!_internal.syscall.js_test.Js_test__dummys._dummys.get(("someBool" : stdgo.GoString)).equal(_internal.syscall.js_test.Js_test__dummys._dummys.get(("someBool" : stdgo.GoString))?.__copy__())) {
            _t.errorf(("same value not equal" : stdgo.GoString));
        };
    }
