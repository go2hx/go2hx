package _internal.path_test;
import stdgo._internal.path.Path;
import stdgo._internal.path.Path;
function exampleClean():Void {
        var _paths = (new stdgo.Slice<stdgo.GoString>(7, 7, ...[("a/c" : stdgo.GoString), ("a//c" : stdgo.GoString), ("a/c/." : stdgo.GoString), ("a/c/b/.." : stdgo.GoString), ("/../a/c" : stdgo.GoString), ("/../a/b/../././/c" : stdgo.GoString), stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (__0 => _p in _paths) {
            stdgo._internal.fmt.Fmt_printf.printf(("Clean(%q) = %q\n" : stdgo.GoString), stdgo.Go.toInterface(_p), stdgo.Go.toInterface(stdgo._internal.path.Path_clean.clean(_p?.__copy__())));
        };
    }
