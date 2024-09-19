package _internal.syscall.js_test;
function testObject(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (!_internal.syscall.js_test.Js_test__dummys._dummys.get(("someArray" : stdgo.GoString)).equal(_internal.syscall.js_test.Js_test__dummys._dummys.get(("someArray" : stdgo.GoString))?.__copy__())) {
            _t.errorf(("same value not equal" : stdgo.GoString));
        };
        var _proto = (stdgo._internal.syscall.js.Js_global.global().get(("Object" : stdgo.GoString)).get(("prototype" : stdgo.GoString))?.__copy__() : stdgo._internal.syscall.js.Js_Value.Value);
        var _o = (stdgo._internal.syscall.js.Js_global.global().call(("eval" : stdgo.GoString), stdgo.Go.toInterface(("new Object()" : stdgo.GoString)))?.__copy__() : stdgo._internal.syscall.js.Js_Value.Value);
        if (_proto.equal(_o?.__copy__())) {
            _t.errorf(("object equals to its prototype" : stdgo.GoString));
        };
    }
