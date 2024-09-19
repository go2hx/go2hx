package _internal.path_test;
import stdgo._internal.path.Path;
import stdgo._internal.path.Path;
function exampleDir():Void {
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.path.Path_dir.dir(("/a/b/c" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.path.Path_dir.dir(("a/b/c" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.path.Path_dir.dir(("/a/" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.path.Path_dir.dir(("a/" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.path.Path_dir.dir(("/" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.path.Path_dir.dir(stdgo.Go.str()?.__copy__())));
    }
