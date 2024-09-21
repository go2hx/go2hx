package _internal.syscall.js_test;
function testZeroValue(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _v:stdgo._internal.syscall.js.Js_Value.Value = ({} : stdgo._internal.syscall.js.Js_Value.Value);
        if (!_v.isUndefined()) {
            _t.error(stdgo.Go.toInterface(("zero js.Value is not js.Undefined()" : stdgo.GoString)));
        };
    }
