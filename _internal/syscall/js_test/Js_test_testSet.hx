package _internal.syscall.js_test;
function testSet(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _internal.syscall.js_test.Js_test__expectValueError._expectValueError(_t, function():Void {
            _internal.syscall.js_test.Js_test__dummys._dummys.get(("zero" : stdgo.GoString)).set(("badField" : stdgo.GoString), stdgo.Go.toInterface((42 : stdgo.GoInt)));
        });
    }
