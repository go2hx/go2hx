package _internal.syscall.js_test;
function testDelete(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _internal.syscall.js_test.Js_test__dummys._dummys.set(("test" : stdgo.GoString), stdgo.Go.toInterface((42 : stdgo.GoInt)));
        _internal.syscall.js_test.Js_test__dummys._dummys.delete(("test" : stdgo.GoString));
        if (_internal.syscall.js_test.Js_test__dummys._dummys.call(("hasOwnProperty" : stdgo.GoString), stdgo.Go.toInterface(("test" : stdgo.GoString))).bool_()) {
            _t.errorf(("property still exists" : stdgo.GoString));
        };
        _internal.syscall.js_test.Js_test__expectValueError._expectValueError(_t, function():Void {
            _internal.syscall.js_test.Js_test__dummys._dummys.get(("zero" : stdgo.GoString)).delete(("badField" : stdgo.GoString));
        });
    }
