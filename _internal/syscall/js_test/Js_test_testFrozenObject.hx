package _internal.syscall.js_test;
function testFrozenObject(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _o = (stdgo._internal.syscall.js.Js_global.global().call(("eval" : stdgo.GoString), stdgo.Go.toInterface(("(function () { let o = new Object(); o.field = 5; Object.freeze(o); return o; })()" : stdgo.GoString)))?.__copy__() : stdgo._internal.syscall.js.Js_Value.Value);
        var _want = (5 : stdgo.GoInt);
        {
            var _got = (_o.get(("field" : stdgo.GoString)).int_() : stdgo.GoInt);
            if (_want != (_got)) {
                _t.errorf(("got %#v, want %#v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
