package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
function testGlob(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _tt in _internal.path.filepath_test.Filepath_test__globTests._globTests) {
            var _pattern = (_tt._pattern?.__copy__() : stdgo.GoString);
            var _result = (_tt._result?.__copy__() : stdgo.GoString);
            if (false) {
                _pattern = stdgo._internal.path.filepath.Filepath_clean.clean(_pattern?.__copy__())?.__copy__();
                _result = stdgo._internal.path.filepath.Filepath_clean.clean(_result?.__copy__())?.__copy__();
            };
            var __tmp__ = stdgo._internal.path.filepath.Filepath_glob.glob(_pattern?.__copy__()), _matches:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("Glob error for %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_pattern), stdgo.Go.toInterface(_err));
                continue;
            };
            if (!_internal.path.filepath_test.Filepath_test__contains._contains(_matches, _result?.__copy__())) {
                _t.errorf(("Glob(%#q) = %#v want %v" : stdgo.GoString), stdgo.Go.toInterface(_pattern), stdgo.Go.toInterface(_matches), stdgo.Go.toInterface(_result));
            };
        };
        for (__1 => _pattern in (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("no_match" : stdgo.GoString), ("../*/no_match" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
            var __tmp__ = stdgo._internal.path.filepath.Filepath_glob.glob(_pattern?.__copy__()), _matches:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("Glob error for %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_pattern), stdgo.Go.toInterface(_err));
                continue;
            };
            if ((_matches.length) != ((0 : stdgo.GoInt))) {
                _t.errorf(("Glob(%#q) = %#v want []" : stdgo.GoString), stdgo.Go.toInterface(_pattern), stdgo.Go.toInterface(_matches));
            };
        };
    }
