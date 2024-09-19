package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
function exampleJoin():Void {
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("On Unix:" : stdgo.GoString)));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath_join.join(("a" : stdgo.GoString), ("b" : stdgo.GoString), ("c" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath_join.join(("a" : stdgo.GoString), ("b/c" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath_join.join(("a/b" : stdgo.GoString), ("c" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath_join.join(("a/b" : stdgo.GoString), ("/c" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath_join.join(("a/b" : stdgo.GoString), ("../../../xyz" : stdgo.GoString))));
    }
