package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function exampleErrorf():Void {
        {};
        var _err = (stdgo._internal.fmt.Fmt_errorf.errorf(("user %q (id %d) not found" : stdgo.GoString), stdgo.Go.toInterface(("bueller" : stdgo.GoString)), stdgo.Go.toInterface((17 : stdgo.GoInt))) : stdgo.Error);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_err.error()));
    }
