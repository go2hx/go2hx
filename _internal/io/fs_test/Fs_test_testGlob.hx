package _internal.io.fs_test;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
function testGlob(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _tt in _internal.io.fs_test.Fs_test__globTests._globTests) {
            var __tmp__ = stdgo._internal.io.fs.Fs_glob.glob(_tt._fs, _tt._pattern?.__copy__()), _matches:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("Glob error for %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_tt._pattern), stdgo.Go.toInterface(_err));
                continue;
            };
            if (!_internal.io.fs_test.Fs_test__contains._contains(_matches, _tt._result?.__copy__())) {
                _t.errorf(("Glob(%#q) = %#v want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._pattern), stdgo.Go.toInterface(_matches), stdgo.Go.toInterface(_tt._result));
            };
        };
        for (__1 => _pattern in (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("no_match" : stdgo.GoString), ("../*/no_match" : stdgo.GoString), ("\\*" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
            var __tmp__ = stdgo._internal.io.fs.Fs_glob.glob(stdgo._internal.os.Os_dirFS.dirFS(("." : stdgo.GoString)), _pattern?.__copy__()), _matches:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("Glob error for %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_pattern), stdgo.Go.toInterface(_err));
                continue;
            };
            if ((_matches.length) != ((0 : stdgo.GoInt))) {
                _t.errorf(("Glob(%#q) = %#v want []" : stdgo.GoString), stdgo.Go.toInterface(_pattern), stdgo.Go.toInterface(_matches));
            };
        };
    }
