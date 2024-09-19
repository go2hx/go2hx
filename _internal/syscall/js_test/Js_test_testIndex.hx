package _internal.syscall.js_test;
function testIndex(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _got = (_internal.syscall.js_test.Js_test__dummys._dummys.get(("someArray" : stdgo.GoString)).index((1 : stdgo.GoInt)).int_() : stdgo.GoInt);
            if (_got != ((42 : stdgo.GoInt))) {
                _t.errorf(("got %#v, want %#v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface((42 : stdgo.GoInt)));
            };
        };
        _internal.syscall.js_test.Js_test__expectValueError._expectValueError(_t, function():Void {
            _internal.syscall.js_test.Js_test__dummys._dummys.get(("zero" : stdgo.GoString)).index((1 : stdgo.GoInt));
        });
    }
