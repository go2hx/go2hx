package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
function exampleDir():Void {
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("On Unix:" : stdgo.GoString)));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath_dir.dir(("/foo/bar/baz.js" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath_dir.dir(("/foo/bar/baz" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath_dir.dir(("/foo/bar/baz/" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath_dir.dir(("/dirty//path///" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath_dir.dir(("dev.txt" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath_dir.dir(("../todo.txt" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath_dir.dir((".." : stdgo.GoString))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath_dir.dir(("." : stdgo.GoString))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath_dir.dir(("/" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath_dir.dir(stdgo.Go.str()?.__copy__())));
    }
