package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
function _chtmpdir(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):() -> Void {
        var _restore = null;
        var __tmp__ = stdgo._internal.os.Os_getwd.getwd(), _oldwd:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("chtmpdir: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var __tmp__ = stdgo._internal.os.Os_mkdirTemp.mkdirTemp(stdgo.Go.str()?.__copy__(), ("test" : stdgo.GoString)), _d:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("chtmpdir: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        {
            var _err = (stdgo._internal.os.Os_chdir.chdir(_d?.__copy__()) : stdgo.Error);
            if (_err != null) {
                _t.fatalf(("chtmpdir: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        return function():Void {
            {
                var _err = (stdgo._internal.os.Os_chdir.chdir(_oldwd?.__copy__()) : stdgo.Error);
                if (_err != null) {
                    _t.fatalf(("chtmpdir: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
            };
            stdgo._internal.os.Os_removeAll.removeAll(_d?.__copy__());
        };
    }
