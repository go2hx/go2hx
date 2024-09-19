package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
function exampleSplit():Void {
        var _paths = (new stdgo.Slice<stdgo.GoString>(4, 4, ...[("/home/arnie/amelia.jpg" : stdgo.GoString), ("/mnt/photos/" : stdgo.GoString), ("rabbit.jpg" : stdgo.GoString), ("/usr/local//go" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("On Unix:" : stdgo.GoString)));
        for (__0 => _p in _paths) {
            var __tmp__ = stdgo._internal.path.filepath.Filepath_split.split(_p?.__copy__()), _dir:stdgo.GoString = __tmp__._0, _file:stdgo.GoString = __tmp__._1;
            stdgo._internal.fmt.Fmt_printf.printf(("input: %q\n\tdir: %q\n\tfile: %q\n" : stdgo.GoString), stdgo.Go.toInterface(_p), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_file));
        };
    }
