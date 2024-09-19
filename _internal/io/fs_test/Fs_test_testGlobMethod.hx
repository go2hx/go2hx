package _internal.io.fs_test;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
function testGlobMethod(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _check = function(_desc:stdgo.GoString, _names:stdgo.Slice<stdgo.GoString>, _err:stdgo.Error):Void {
            _t.helper();
            if (((_err != null || (_names.length) != ((1 : stdgo.GoInt)) : Bool) || (_names[(0 : stdgo.GoInt)] != ("hello.txt" : stdgo.GoString)) : Bool)) {
                _t.errorf(("Glob(%s) = %v, %v, want %v, nil" : stdgo.GoString), stdgo.Go.toInterface(_desc), stdgo.Go.toInterface(_names), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoString>(1, 1, ...[("hello.txt" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)));
            };
        };
        var __tmp__ = stdgo._internal.io.fs.Fs_glob.glob(stdgo.Go.asInterface((new _internal.io.fs_test.Fs_test_T_globOnly.T_globOnly(stdgo.Go.asInterface(_internal.io.fs_test.Fs_test__testFsys._testFsys)) : _internal.io.fs_test.Fs_test_T_globOnly.T_globOnly)), ("*.txt" : stdgo.GoString)), _names:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _check(("readDirOnly" : stdgo.GoString), _names, _err);
        {
            var __tmp__ = stdgo._internal.io.fs.Fs_glob.glob(stdgo.Go.asInterface((new _internal.io.fs_test.Fs_test_T_openOnly.T_openOnly(stdgo.Go.asInterface(_internal.io.fs_test.Fs_test__testFsys._testFsys)) : _internal.io.fs_test.Fs_test_T_openOnly.T_openOnly)), ("*.txt" : stdgo.GoString));
            _names = __tmp__._0;
            _err = __tmp__._1;
        };
        _check(("openOnly" : stdgo.GoString), _names, _err);
    }
