package _internal.syscall.js_test;
function testEqual(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (!_internal.syscall.js_test.Js_test__dummys._dummys.get(("someFloat" : stdgo.GoString)).equal(_internal.syscall.js_test.Js_test__dummys._dummys.get(("someFloat" : stdgo.GoString))?.__copy__())) {
            _t.errorf(("same float is not equal" : stdgo.GoString));
        };
        if (!_internal.syscall.js_test.Js_test__dummys._dummys.get(("emptyObj" : stdgo.GoString)).equal(_internal.syscall.js_test.Js_test__dummys._dummys.get(("emptyObj" : stdgo.GoString))?.__copy__())) {
            _t.errorf(("same object is not equal" : stdgo.GoString));
        };
        if (_internal.syscall.js_test.Js_test__dummys._dummys.get(("someFloat" : stdgo.GoString)).equal(_internal.syscall.js_test.Js_test__dummys._dummys.get(("someInt" : stdgo.GoString))?.__copy__())) {
            _t.errorf(("different values are not unequal" : stdgo.GoString));
        };
    }
