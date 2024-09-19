package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testUserHomeDir(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _t.parallel();
        var __tmp__ = stdgo._internal.os.Os_userHomeDir.userHomeDir(), _dir:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_dir == stdgo.Go.str()) && (_err == null) : Bool)) {
            _t.fatal(stdgo.Go.toInterface(("UserHomeDir returned an empty string but no error" : stdgo.GoString)));
        };
        if (_err != null) {
            _t.skipf(("skipping: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var __tmp__ = stdgo._internal.os.Os_stat.stat(_dir?.__copy__()), _fi:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            if (stdgo._internal.os.Os_isNotExist.isNotExist(_err)) {
                _t.log(stdgo.Go.toInterface(_err));
                return;
            };
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        if (!_fi.isDir()) {
            _t.fatalf(("dir %s is not directory; type = %v" : stdgo.GoString), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(stdgo.Go.asInterface(_fi.mode())));
        };
    }
