package _internal.syscall.js_test;
function testSetIndex(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _internal.syscall.js_test.Js_test__dummys._dummys.get(("someArray" : stdgo.GoString)).setIndex((2 : stdgo.GoInt), stdgo.Go.toInterface((99 : stdgo.GoInt)));
        {
            var _got = (_internal.syscall.js_test.Js_test__dummys._dummys.get(("someArray" : stdgo.GoString)).index((2 : stdgo.GoInt)).int_() : stdgo.GoInt);
            if (_got != ((99 : stdgo.GoInt))) {
                _t.errorf(("got %#v, want %#v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface((99 : stdgo.GoInt)));
            };
        };
        _internal.syscall.js_test.Js_test__expectValueError._expectValueError(_t, function():Void {
            _internal.syscall.js_test.Js_test__dummys._dummys.get(("zero" : stdgo.GoString)).setIndex((2 : stdgo.GoInt), stdgo.Go.toInterface((99 : stdgo.GoInt)));
        });
    }
