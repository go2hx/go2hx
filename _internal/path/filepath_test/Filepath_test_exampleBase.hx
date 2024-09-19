package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
function exampleBase():Void {
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("On Unix:" : stdgo.GoString)));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath_base.base(("/foo/bar/baz.js" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath_base.base(("/foo/bar/baz" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath_base.base(("/foo/bar/baz/" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath_base.base(("dev.txt" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath_base.base(("../todo.txt" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath_base.base((".." : stdgo.GoString))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath_base.base(("." : stdgo.GoString))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath_base.base(("/" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath_base.base(stdgo.Go.str()?.__copy__())));
    }
