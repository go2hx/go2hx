package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
function exampleRel():Void {
        var _paths = (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("/a/b/c" : stdgo.GoString), ("/b/c" : stdgo.GoString), ("./b/c" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _base = ("/a" : stdgo.GoString);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("On Unix:" : stdgo.GoString)));
        for (__0 => _p in _paths) {
            var __tmp__ = stdgo._internal.path.filepath.Filepath_rel.rel(_base?.__copy__(), _p?.__copy__()), _rel:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            stdgo._internal.fmt.Fmt_printf.printf(("%q: %q %v\n" : stdgo.GoString), stdgo.Go.toInterface(_p), stdgo.Go.toInterface(_rel), stdgo.Go.toInterface(_err));
        };
    }
