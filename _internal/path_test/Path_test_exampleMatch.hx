package _internal.path_test;
import stdgo._internal.path.Path;
import stdgo._internal.path.Path;
function exampleMatch():Void {
        ({
            var __tmp__ = stdgo._internal.path.Path_match.match(("abc" : stdgo.GoString), ("abc" : stdgo.GoString));
            stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface((__tmp__._0 : Bool)), stdgo.Go.toInterface((__tmp__._1 : stdgo.Error)));
        });
        ({
            var __tmp__ = stdgo._internal.path.Path_match.match(("a*" : stdgo.GoString), ("abc" : stdgo.GoString));
            stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface((__tmp__._0 : Bool)), stdgo.Go.toInterface((__tmp__._1 : stdgo.Error)));
        });
        ({
            var __tmp__ = stdgo._internal.path.Path_match.match(("a*/b" : stdgo.GoString), ("a/c/b" : stdgo.GoString));
            stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface((__tmp__._0 : Bool)), stdgo.Go.toInterface((__tmp__._1 : stdgo.Error)));
        });
    }
