package _internal.syscall.js_test;
function testNull(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (!stdgo._internal.syscall.js.Js_null_.null_().isNull()) {
            _t.errorf(("null is not null" : stdgo.GoString));
        };
        if (!stdgo._internal.syscall.js.Js_null_.null_().equal(stdgo._internal.syscall.js.Js_null_.null_()?.__copy__())) {
            _t.errorf(("null is not equal to null" : stdgo.GoString));
        };
        if (_internal.syscall.js_test.Js_test__dummys._dummys.isNull()) {
            _t.errorf(("object is null" : stdgo.GoString));
        };
        if (stdgo._internal.syscall.js.Js_null_.null_().isUndefined()) {
            _t.errorf(("null is undefined" : stdgo.GoString));
        };
        {
            _internal.syscall.js_test.Js_test__dummys._dummys.set(("test" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.syscall.js.Js_null_.null_())));
            if (!_internal.syscall.js_test.Js_test__dummys._dummys.get(("test" : stdgo.GoString)).isNull()) {
                _t.errorf(("could not set null" : stdgo.GoString));
            };
        };
        {
            _internal.syscall.js_test.Js_test__dummys._dummys.set(("test" : stdgo.GoString), (null : stdgo.AnyInterface));
            if (!_internal.syscall.js_test.Js_test__dummys._dummys.get(("test" : stdgo.GoString)).isNull()) {
                _t.errorf(("could not set nil" : stdgo.GoString));
            };
        };
    }
