package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testErrIsNotExist(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _tmpDir = (_t.tempDir()?.__copy__() : stdgo.GoString);
        var _name = (stdgo._internal.path.filepath.Filepath_join.join(_tmpDir?.__copy__(), ("NotExists" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        {
            var _s = (_internal.os_test.Os_test__testErrNotExist._testErrNotExist(_t, _name?.__copy__())?.__copy__() : stdgo.GoString);
            if (_s != (stdgo.Go.str())) {
                _t.fatal(stdgo.Go.toInterface(_s));
            };
        };
        _name = stdgo._internal.path.filepath.Filepath_join.join(_name?.__copy__(), ("NotExists2" : stdgo.GoString))?.__copy__();
        {
            var _s = (_internal.os_test.Os_test__testErrNotExist._testErrNotExist(_t, _name?.__copy__())?.__copy__() : stdgo.GoString);
            if (_s != (stdgo.Go.str())) {
                _t.fatal(stdgo.Go.toInterface(_s));
            };
        };
    }
