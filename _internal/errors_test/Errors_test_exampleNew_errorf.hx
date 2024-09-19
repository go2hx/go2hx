package _internal.errors_test;
function exampleNew_errorf():Void {
        {};
        var _err = (stdgo._internal.fmt.Fmt_errorf.errorf(("user %q (id %d) not found" : stdgo.GoString), stdgo.Go.toInterface(("bimmler" : stdgo.GoString)), stdgo.Go.toInterface((17 : stdgo.GoInt))) : stdgo.Error);
        if (_err != null) {
            stdgo._internal.fmt.Fmt_print.print(stdgo.Go.toInterface(_err));
        };
    }
