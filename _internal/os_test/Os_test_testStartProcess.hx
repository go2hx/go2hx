package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testStartProcess(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        stdgo._internal.internal.testenv.Testenv_mustHaveExec.mustHaveExec(stdgo.Go.asInterface(_t));
        _t.parallel();
        var __0:stdgo.GoString = ("" : stdgo.GoString), __1:stdgo.GoString = ("" : stdgo.GoString);
var _cmd = __1, _dir = __0;
        var _args:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        {
            final __value__ = ("js" : stdgo.GoString);
            if (__value__ == (("android" : stdgo.GoString))) {
                _t.skip(stdgo.Go.toInterface(("android doesn\'t have /bin/pwd" : stdgo.GoString)));
            } else if (__value__ == (("windows" : stdgo.GoString))) {
                _cmd = stdgo._internal.os.Os_getenv.getenv(("COMSPEC" : stdgo.GoString))?.__copy__();
                _dir = stdgo._internal.os.Os_getenv.getenv(("SystemRoot" : stdgo.GoString))?.__copy__();
                _args = (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("/c" : stdgo.GoString), ("cd" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
            } else {
                var _err:stdgo.Error = (null : stdgo.Error);
                {
                    var __tmp__ = stdgo._internal.os.exec.Exec_lookPath.lookPath(("pwd" : stdgo.GoString));
                    _cmd = __tmp__._0?.__copy__();
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    _t.fatalf(("Can\'t find pwd: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
                _dir = ("/" : stdgo.GoString);
                _args = (new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>);
                _t.logf(("Testing with %v" : stdgo.GoString), stdgo.Go.toInterface(_cmd));
            };
        };
        var __tmp__ = stdgo._internal.path.filepath.Filepath_split.split(_cmd?.__copy__()), _cmddir:stdgo.GoString = __tmp__._0, _cmdbase:stdgo.GoString = __tmp__._1;
        _args = ((new stdgo.Slice<stdgo.GoString>(1, 1, ...[_cmdbase?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>).__append__(...(_args : Array<stdgo.GoString>)));
        _t.run(("absolute" : stdgo.GoString), _internal.os_test.Os_test__testStartProcess._testStartProcess(_dir?.__copy__(), _cmd?.__copy__(), _args, _dir?.__copy__()));
        _t.run(("relative" : stdgo.GoString), _internal.os_test.Os_test__testStartProcess._testStartProcess(_cmddir?.__copy__(), _cmdbase?.__copy__(), _args, _cmddir?.__copy__()));
    }
