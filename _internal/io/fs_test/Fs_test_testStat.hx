package _internal.io.fs_test;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
function testStat(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _check = (function(_desc:stdgo.GoString, _info:stdgo._internal.io.fs.Fs_FileInfo.FileInfo, _err:stdgo.Error):Void {
            _t.helper();
            if (((_err != null || _info == null : Bool) || (_info.mode() != (302u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : Bool)) {
                var _infoStr = ("<nil>" : stdgo.GoString);
                if (_info != null) {
                    _infoStr = stdgo._internal.fmt.Fmt_sprintf.sprintf(("FileInfo(Mode: %#o)" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_info.mode())))?.__copy__();
                };
                _t.fatalf(("Stat(%s) = %v, %v, want Mode:0456, nil" : stdgo.GoString), stdgo.Go.toInterface(_desc), stdgo.Go.toInterface(_infoStr), stdgo.Go.toInterface(_err));
            };
        } : (stdgo.GoString, stdgo._internal.io.fs.Fs_FileInfo.FileInfo, stdgo.Error) -> Void);
        var __tmp__ = stdgo._internal.io.fs.Fs_stat.stat(stdgo.Go.asInterface((new _internal.io.fs_test.Fs_test_T_statOnly.T_statOnly(stdgo.Go.asInterface(_internal.io.fs_test.Fs_test__testFsys._testFsys)) : _internal.io.fs_test.Fs_test_T_statOnly.T_statOnly)), ("hello.txt" : stdgo.GoString)), _info:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _check(("statOnly" : stdgo.GoString), _info, _err);
        {
            var __tmp__ = stdgo._internal.io.fs.Fs_stat.stat(stdgo.Go.asInterface((new _internal.io.fs_test.Fs_test_T_openOnly.T_openOnly(stdgo.Go.asInterface(_internal.io.fs_test.Fs_test__testFsys._testFsys)) : _internal.io.fs_test.Fs_test_T_openOnly.T_openOnly)), ("hello.txt" : stdgo.GoString));
            _info = __tmp__._0;
            _err = __tmp__._1;
        };
        _check(("openOnly" : stdgo.GoString), _info, _err);
    }
