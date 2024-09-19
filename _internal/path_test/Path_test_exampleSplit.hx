package _internal.path_test;
import stdgo._internal.path.Path;
import stdgo._internal.path.Path;
function exampleSplit():Void {
        var _split = (function(_s:stdgo.GoString):Void {
            var __tmp__ = stdgo._internal.path.Path_split.split(_s?.__copy__()), _dir:stdgo.GoString = __tmp__._0, _file:stdgo.GoString = __tmp__._1;
            stdgo._internal.fmt.Fmt_printf.printf(("path.Split(%q) = dir: %q, file: %q\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_file));
        } : stdgo.GoString -> Void);
        _split(("static/myfile.css" : stdgo.GoString));
        _split(("myfile.css" : stdgo.GoString));
        _split(stdgo.Go.str()?.__copy__());
    }
