package _internal.syscall.js_test;
function testLength(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _got = (_internal.syscall.js_test.Js_test__dummys._dummys.get(("someArray" : stdgo.GoString)).length_() : stdgo.GoInt);
            if (_got != ((3 : stdgo.GoInt))) {
                _t.errorf(("got %#v, want %#v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface((3 : stdgo.GoInt)));
            };
        };
    }
