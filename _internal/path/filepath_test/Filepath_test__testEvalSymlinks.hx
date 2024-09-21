package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
function _testEvalSymlinks(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _path:stdgo.GoString, _want:stdgo.GoString):Void {
        var __tmp__ = stdgo._internal.path.filepath.Filepath_evalSymlinks.evalSymlinks(_path?.__copy__()), _have:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(("EvalSymlinks(%q) error: %v" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err));
            return;
        };
        if (stdgo._internal.path.filepath.Filepath_clean.clean(_have?.__copy__()) != (stdgo._internal.path.filepath.Filepath_clean.clean(_want?.__copy__()))) {
            _t.errorf(("EvalSymlinks(%q) returns %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_have), stdgo.Go.toInterface(_want));
        };
    }
