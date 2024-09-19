package _internal.errors_test;
function exampleJoin():Void {
        var _err1 = (stdgo._internal.errors.Errors_new_.new_(("err1" : stdgo.GoString)) : stdgo.Error);
        var _err2 = (stdgo._internal.errors.Errors_new_.new_(("err2" : stdgo.GoString)) : stdgo.Error);
        var _err = (stdgo._internal.errors.Errors_join.join(_err1, _err2) : stdgo.Error);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_err));
        if (stdgo._internal.errors.Errors_is_.is_(_err, _err1)) {
            stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("err is err1" : stdgo.GoString)));
        };
        if (stdgo._internal.errors.Errors_is_.is_(_err, _err2)) {
            stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("err is err2" : stdgo.GoString)));
        };
    }
