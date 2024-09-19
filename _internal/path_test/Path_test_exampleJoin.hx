package _internal.path_test;
import stdgo._internal.path.Path;
import stdgo._internal.path.Path;
function exampleJoin():Void {
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.path.Path_join.join(("a" : stdgo.GoString), ("b" : stdgo.GoString), ("c" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.path.Path_join.join(("a" : stdgo.GoString), ("b/c" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.path.Path_join.join(("a/b" : stdgo.GoString), ("c" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.path.Path_join.join(("a/b" : stdgo.GoString), ("../../../xyz" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.path.Path_join.join(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__())));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.path.Path_join.join(("a" : stdgo.GoString), stdgo.Go.str()?.__copy__())));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.path.Path_join.join(stdgo.Go.str()?.__copy__(), ("a" : stdgo.GoString))));
    }
