package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
function exampleIsAbs():Void {
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("On Unix:" : stdgo.GoString)));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath_isAbs.isAbs(("/home/gopher" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath_isAbs.isAbs((".bashrc" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath_isAbs.isAbs((".." : stdgo.GoString))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath_isAbs.isAbs(("." : stdgo.GoString))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath_isAbs.isAbs(("/" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath_isAbs.isAbs(stdgo.Go.str()?.__copy__())));
    }
