package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function _testErrNotExist(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _name:stdgo.GoString):stdgo.GoString {
        var __tmp__ = stdgo._internal.os.Os_getwd.getwd(), _originalWD:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var __tmp__ = stdgo._internal.os.Os_open.open(_name?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            _f.close();
            return ("Open should have failed" : stdgo.GoString);
        };
        {
            var _s = (_internal.os_test.Os_test__checkErrorPredicate._checkErrorPredicate(("os.IsNotExist" : stdgo.GoString), stdgo._internal.os.Os_isNotExist.isNotExist, _err, stdgo._internal.io.fs.Fs_errNotExist.errNotExist)?.__copy__() : stdgo.GoString);
            if (_s != (stdgo.Go.str())) {
                return _s?.__copy__();
            };
        };
        _err = stdgo._internal.os.Os_chdir.chdir(_name?.__copy__());
        if (_err == null) {
            {
                var _err = (stdgo._internal.os.Os_chdir.chdir(_originalWD?.__copy__()) : stdgo.Error);
                if (_err != null) {
                    _t.fatalf(("Chdir should have failed, failed to restore original working directory: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
            };
            return ("Chdir should have failed, restored original working directory" : stdgo.GoString);
        };
        {
            var _s = (_internal.os_test.Os_test__checkErrorPredicate._checkErrorPredicate(("os.IsNotExist" : stdgo.GoString), stdgo._internal.os.Os_isNotExist.isNotExist, _err, stdgo._internal.io.fs.Fs_errNotExist.errNotExist)?.__copy__() : stdgo.GoString);
            if (_s != (stdgo.Go.str())) {
                return _s?.__copy__();
            };
        };
        return stdgo.Go.str()?.__copy__();
    }
