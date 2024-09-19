package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
function testGlobError(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _bad = (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("[]" : stdgo.GoString), ("nonexist/[]" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (__0 => _pattern in _bad) {
            {
                var __tmp__ = stdgo._internal.path.filepath.Filepath_glob.glob(_pattern?.__copy__()), __1:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath_errBadPattern.errBadPattern))) {
                    _t.errorf(("Glob(%#q) returned err=%v, want ErrBadPattern" : stdgo.GoString), stdgo.Go.toInterface(_pattern), stdgo.Go.toInterface(_err));
                };
            };
        };
    }
