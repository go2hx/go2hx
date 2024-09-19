package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
function exampleExt():Void {
        stdgo._internal.fmt.Fmt_printf.printf(("No dots: %q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath_ext.ext(("index" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt_printf.printf(("One dot: %q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath_ext.ext(("index.js" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt_printf.printf(("Two dots: %q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath_ext.ext(("main.test.js" : stdgo.GoString))));
    }
