package _internal.syscall.js_test;
function testCall(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _i:stdgo.GoInt64 = (40i64 : stdgo.GoInt64);
        {
            var _got = (_internal.syscall.js_test.Js_test__dummys._dummys.call(("add" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface((2 : stdgo.GoInt))).int_() : stdgo.GoInt);
            if (_got != ((42 : stdgo.GoInt))) {
                _t.errorf(("got %#v, want %#v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface((42 : stdgo.GoInt)));
            };
        };
        {
            var _got = (_internal.syscall.js_test.Js_test__dummys._dummys.call(("add" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.syscall.js.Js_global.global().call(("eval" : stdgo.GoString), stdgo.Go.toInterface(("40" : stdgo.GoString))))), stdgo.Go.toInterface((2 : stdgo.GoInt))).int_() : stdgo.GoInt);
            if (_got != ((42 : stdgo.GoInt))) {
                _t.errorf(("got %#v, want %#v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface((42 : stdgo.GoInt)));
            };
        };
        _internal.syscall.js_test.Js_test__expectPanic._expectPanic(_t, function():Void {
            _internal.syscall.js_test.Js_test__dummys._dummys.call(("zero" : stdgo.GoString));
        });
        _internal.syscall.js_test.Js_test__expectValueError._expectValueError(_t, function():Void {
            _internal.syscall.js_test.Js_test__dummys._dummys.get(("zero" : stdgo.GoString)).call(("badMethod" : stdgo.GoString));
        });
    }
