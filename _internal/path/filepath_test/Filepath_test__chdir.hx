package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
function _chdir(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _dir:stdgo.GoString):Void {
        var __tmp__ = stdgo._internal.os.Os_getwd.getwd(), _olddir:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("getwd %s: %v" : stdgo.GoString), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_err));
        };
        {
            var _err = (stdgo._internal.os.Os_chdir.chdir(_dir?.__copy__()) : stdgo.Error);
            if (_err != null) {
                _t.fatalf(("chdir %s: %v" : stdgo.GoString), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_err));
            };
        };
        _t.cleanup(function():Void {
            {
                var _err = (stdgo._internal.os.Os_chdir.chdir(_olddir?.__copy__()) : stdgo.Error);
                if (_err != null) {
                    _t.errorf(("restore original working directory %s: %v" : stdgo.GoString), stdgo.Go.toInterface(_olddir), stdgo.Go.toInterface(_err));
                    Sys.exit((1 : stdgo.GoInt));
                };
            };
        });
    }
