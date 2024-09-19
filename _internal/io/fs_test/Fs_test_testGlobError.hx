package _internal.io.fs_test;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
function testGlobError(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _bad = (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("[]" : stdgo.GoString), ("nonexist/[]" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (__0 => _pattern in _bad) {
            var __tmp__ = stdgo._internal.io.fs.Fs_glob.glob(stdgo._internal.os.Os_dirFS.dirFS(("." : stdgo.GoString)), _pattern?.__copy__()), __1:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.path.Path_errBadPattern.errBadPattern))) {
                _t.errorf(("Glob(fs, %#q) returned err=%v, want path.ErrBadPattern" : stdgo.GoString), stdgo.Go.toInterface(_pattern), stdgo.Go.toInterface(_err));
            };
        };
    }
