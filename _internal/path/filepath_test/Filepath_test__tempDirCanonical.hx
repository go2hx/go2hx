package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
function _tempDirCanonical(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):stdgo.GoString {
        var _dir = (_t.tempDir()?.__copy__() : stdgo.GoString);
        var __tmp__ = stdgo._internal.path.filepath.Filepath_evalSymlinks.evalSymlinks(_dir?.__copy__()), _cdir:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(("tempDirCanonical: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        return _cdir?.__copy__();
    }
