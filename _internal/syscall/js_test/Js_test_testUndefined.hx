package _internal.syscall.js_test;
function testUndefined(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (!stdgo._internal.syscall.js.Js_undefined.undefined().isUndefined()) {
            _t.errorf(("undefined is not undefined" : stdgo.GoString));
        };
        if (!stdgo._internal.syscall.js.Js_undefined.undefined().equal(stdgo._internal.syscall.js.Js_undefined.undefined()?.__copy__())) {
            _t.errorf(("undefined is not equal to undefined" : stdgo.GoString));
        };
        if (_internal.syscall.js_test.Js_test__dummys._dummys.isUndefined()) {
            _t.errorf(("object is undefined" : stdgo.GoString));
        };
        if (stdgo._internal.syscall.js.Js_undefined.undefined().isNull()) {
            _t.errorf(("undefined is null" : stdgo.GoString));
        };
        {
            _internal.syscall.js_test.Js_test__dummys._dummys.set(("test" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.syscall.js.Js_undefined.undefined())));
            if (!_internal.syscall.js_test.Js_test__dummys._dummys.get(("test" : stdgo.GoString)).isUndefined()) {
                _t.errorf(("could not set undefined" : stdgo.GoString));
            };
        };
    }
