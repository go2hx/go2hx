package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function exampleFprintln():Void {
        {};
        var __tmp__ = stdgo._internal.fmt.Fmt_fprintln.fprintln(stdgo.Go.asInterface(stdgo._internal.os.Os_stdout.stdout), stdgo.Go.toInterface(("Kim" : stdgo.GoString)), stdgo.Go.toInterface(("is" : stdgo.GoString)), stdgo.Go.toInterface((22 : stdgo.GoInt)), stdgo.Go.toInterface(("years old." : stdgo.GoString))), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("Fprintln: %v\n" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_n), stdgo.Go.toInterface(("bytes written." : stdgo.GoString)));
    }
