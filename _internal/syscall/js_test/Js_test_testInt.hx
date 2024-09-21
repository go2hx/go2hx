package _internal.syscall.js_test;
function testInt(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _want = (42 : stdgo.GoInt);
        var _o = (_internal.syscall.js_test.Js_test__dummys._dummys.get(("someInt" : stdgo.GoString))?.__copy__() : stdgo._internal.syscall.js.Js_Value.Value);
        {
            var _got = (_o.int_() : stdgo.GoInt);
            if (_got != (_want)) {
                _t.errorf(("got %#v, want %#v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
        _internal.syscall.js_test.Js_test__dummys._dummys.set(("otherInt" : stdgo.GoString), stdgo.Go.toInterface(_want));
        {
            var _got = (_internal.syscall.js_test.Js_test__dummys._dummys.get(("otherInt" : stdgo.GoString)).int_() : stdgo.GoInt);
            if (_got != (_want)) {
                _t.errorf(("got %#v, want %#v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
        if (!_internal.syscall.js_test.Js_test__dummys._dummys.get(("someInt" : stdgo.GoString)).equal(_internal.syscall.js_test.Js_test__dummys._dummys.get(("someInt" : stdgo.GoString))?.__copy__())) {
            _t.errorf(("same value not equal" : stdgo.GoString));
        };
        {
            var _got = (_internal.syscall.js_test.Js_test__dummys._dummys.get(("zero" : stdgo.GoString)).int_() : stdgo.GoInt);
            if (_got != ((0 : stdgo.GoInt))) {
                _t.errorf(("got %#v, want %#v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface((0 : stdgo.GoInt)));
            };
        };
    }
