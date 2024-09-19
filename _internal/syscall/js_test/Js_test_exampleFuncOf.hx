package _internal.syscall.js_test;
function exampleFuncOf():Void {
        var _cb:stdgo._internal.syscall.js.Js_Func.Func = ({} : stdgo._internal.syscall.js.Js_Func.Func);
        _cb = stdgo._internal.syscall.js.Js_funcOf.funcOf(function(_this:stdgo._internal.syscall.js.Js_Value.Value, _args:stdgo.Slice<stdgo._internal.syscall.js.Js_Value.Value>):stdgo.AnyInterface {
            stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("button clicked" : stdgo.GoString)));
            _cb.release();
            return (null : stdgo.AnyInterface);
        })?.__copy__();
        stdgo._internal.syscall.js.Js_global.global().get(("document" : stdgo.GoString)).call(("getElementById" : stdgo.GoString), stdgo.Go.toInterface(("myButton" : stdgo.GoString))).call(("addEventListener" : stdgo.GoString), stdgo.Go.toInterface(("click" : stdgo.GoString)), stdgo.Go.toInterface(stdgo.Go.asInterface(_cb)));
    }
