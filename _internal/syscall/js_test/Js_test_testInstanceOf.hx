package _internal.syscall.js_test;
function testInstanceOf(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _someArray = (stdgo._internal.syscall.js.Js_global.global().get(("Array" : stdgo.GoString)).new_()?.__copy__() : stdgo._internal.syscall.js.Js_Value.Value);
        {
            var __0 = (_someArray.instanceOf(stdgo._internal.syscall.js.Js_global.global().get(("Array" : stdgo.GoString))?.__copy__()) : Bool), __1 = (true : Bool);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                _t.errorf(("got %#v, want %#v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
        {
            var __0 = (_someArray.instanceOf(stdgo._internal.syscall.js.Js_global.global().get(("Function" : stdgo.GoString))?.__copy__()) : Bool), __1 = (false : Bool);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                _t.errorf(("got %#v, want %#v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
