package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
function testDriveLetterInEvalSymlinks(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (true) {
            return;
        };
        var __tmp__ = stdgo._internal.os.Os_getwd.getwd(), _wd:stdgo.GoString = __tmp__._0, __0:stdgo.Error = __tmp__._1;
        if (((_wd.length) < (3 : stdgo.GoInt) : Bool)) {
            _t.errorf(("Current directory path %q is too short" : stdgo.GoString), stdgo.Go.toInterface(_wd));
        };
        var _lp = (stdgo._internal.strings.Strings_toLower.toLower(_wd?.__copy__())?.__copy__() : stdgo.GoString);
        var _up = (stdgo._internal.strings.Strings_toUpper.toUpper(_wd?.__copy__())?.__copy__() : stdgo.GoString);
        var __tmp__ = stdgo._internal.path.filepath.Filepath_evalSymlinks.evalSymlinks(_lp?.__copy__()), _flp:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("EvalSymlinks(%q) failed: %q" : stdgo.GoString), stdgo.Go.toInterface(_lp), stdgo.Go.toInterface(_err));
        };
        var __tmp__ = stdgo._internal.path.filepath.Filepath_evalSymlinks.evalSymlinks(_up?.__copy__()), _fup:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("EvalSymlinks(%q) failed: %q" : stdgo.GoString), stdgo.Go.toInterface(_up), stdgo.Go.toInterface(_err));
        };
        if (_flp != (_fup)) {
            _t.errorf(("Results of EvalSymlinks do not match: %q and %q" : stdgo.GoString), stdgo.Go.toInterface(_flp), stdgo.Go.toInterface(_fup));
        };
    }
