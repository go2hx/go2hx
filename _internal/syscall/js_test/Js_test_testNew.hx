package _internal.syscall.js_test;
function testNew(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _got = (stdgo._internal.syscall.js.Js_global.global().get(("Array" : stdgo.GoString)).new_(stdgo.Go.toInterface((42 : stdgo.GoInt))).length_() : stdgo.GoInt);
            if (_got != ((42 : stdgo.GoInt))) {
                _t.errorf(("got %#v, want %#v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface((42 : stdgo.GoInt)));
            };
        };
        _internal.syscall.js_test.Js_test__expectValueError._expectValueError(_t, function():Void {
            _internal.syscall.js_test.Js_test__dummys._dummys.get(("zero" : stdgo.GoString)).new_();
        });
    }
