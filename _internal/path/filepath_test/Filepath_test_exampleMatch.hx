package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
function exampleMatch():Void {
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("On Unix:" : stdgo.GoString)));
        ({
            var __tmp__ = stdgo._internal.path.filepath.Filepath_match.match(("/home/catch/*" : stdgo.GoString), ("/home/catch/foo" : stdgo.GoString));
            stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface((__tmp__._0 : Bool)), stdgo.Go.toInterface((__tmp__._1 : stdgo.Error)));
        });
        ({
            var __tmp__ = stdgo._internal.path.filepath.Filepath_match.match(("/home/catch/*" : stdgo.GoString), ("/home/catch/foo/bar" : stdgo.GoString));
            stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface((__tmp__._0 : Bool)), stdgo.Go.toInterface((__tmp__._1 : stdgo.Error)));
        });
        ({
            var __tmp__ = stdgo._internal.path.filepath.Filepath_match.match(("/home/?opher" : stdgo.GoString), ("/home/gopher" : stdgo.GoString));
            stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface((__tmp__._0 : Bool)), stdgo.Go.toInterface((__tmp__._1 : stdgo.Error)));
        });
        ({
            var __tmp__ = stdgo._internal.path.filepath.Filepath_match.match(("/home/\\*" : stdgo.GoString), ("/home/*" : stdgo.GoString));
            stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface((__tmp__._0 : Bool)), stdgo.Go.toInterface((__tmp__._1 : stdgo.Error)));
        });
    }
