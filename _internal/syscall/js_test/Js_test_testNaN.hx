package _internal.syscall.js_test;
function testNaN(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (!_internal.syscall.js_test.Js_test__dummys._dummys.get(("NaN" : stdgo.GoString)).isNaN()) {
            _t.errorf(("JS NaN is not NaN" : stdgo.GoString));
        };
        if (!stdgo._internal.syscall.js.Js_valueOf.valueOf(stdgo.Go.toInterface(stdgo._internal.math.Math_naN.naN())).isNaN()) {
            _t.errorf(("Go NaN is not NaN" : stdgo.GoString));
        };
        if (_internal.syscall.js_test.Js_test__dummys._dummys.get(("NaN" : stdgo.GoString)).equal(_internal.syscall.js_test.Js_test__dummys._dummys.get(("NaN" : stdgo.GoString))?.__copy__())) {
            _t.errorf(("NaN is equal to NaN" : stdgo.GoString));
        };
    }
