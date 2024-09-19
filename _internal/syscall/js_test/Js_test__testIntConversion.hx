package _internal.syscall.js_test;
function _testIntConversion(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _want:stdgo.GoInt):Void {
        {
            var _got = (stdgo._internal.syscall.js.Js_valueOf.valueOf(stdgo.Go.toInterface(_want)).int_() : stdgo.GoInt);
            if (_got != (_want)) {
                _t.errorf(("got %#v, want %#v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
