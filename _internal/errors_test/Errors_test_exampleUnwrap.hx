package _internal.errors_test;
function exampleUnwrap():Void {
        var _err1 = (stdgo._internal.errors.Errors_new_.new_(("error1" : stdgo.GoString)) : stdgo.Error);
        var _err2 = (stdgo._internal.fmt.Fmt_errorf.errorf(("error2: [%w]" : stdgo.GoString), stdgo.Go.toInterface(_err1)) : stdgo.Error);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_err2));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.errors.Errors_unwrap.unwrap(_err2)));
    }
