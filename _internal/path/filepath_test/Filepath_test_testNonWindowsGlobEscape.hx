package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
function testNonWindowsGlobEscape(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (false) {
            _t.skipf(("skipping non-windows specific test" : stdgo.GoString));
        };
        var _pattern = ("\\match.go" : stdgo.GoString);
        var _want = (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("match.go" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        var __tmp__ = stdgo._internal.path.filepath.Filepath_glob.glob(_pattern?.__copy__()), _matches:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("Glob error for %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_pattern), stdgo.Go.toInterface(_err));
        };
        if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(_matches), stdgo.Go.toInterface(_want))) {
            _t.fatalf(("Glob(%#q) = %v want %v" : stdgo.GoString), stdgo.Go.toInterface(_pattern), stdgo.Go.toInterface(_matches), stdgo.Go.toInterface(_want));
        };
    }
