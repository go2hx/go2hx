package _internal.path_test;
import stdgo._internal.path.Path;
import stdgo._internal.path.Path;
function exampleBase():Void {
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.path.Path_base.base(("/a/b" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.path.Path_base.base(("/" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.path.Path_base.base(stdgo.Go.str()?.__copy__())));
    }
