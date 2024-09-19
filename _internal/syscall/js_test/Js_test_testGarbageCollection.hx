package _internal.syscall.js_test;
function testGarbageCollection(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _before = (stdgo._internal.syscall.js.Js_jsgo.jsgo.get(("_values" : stdgo.GoString)).length_() : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (1000 : stdgo.GoInt) : Bool), _i++, {
                var __blank__ = (stdgo._internal.syscall.js.Js_global.global().get(("Object" : stdgo.GoString)).new_().call(("toString" : stdgo.GoString)).string() : stdgo.GoString);
                stdgo._internal.runtime.Runtime_gc.gc();
            });
        };
        var _after = (stdgo._internal.syscall.js.Js_jsgo.jsgo.get(("_values" : stdgo.GoString)).length_() : stdgo.GoInt);
        if (((_after - _before : stdgo.GoInt) > (500 : stdgo.GoInt) : Bool)) {
            _t.errorf(("garbage collection ineffective" : stdgo.GoString));
        };
    }
