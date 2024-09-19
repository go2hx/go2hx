package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function _testSymlinkSameFile(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _path:stdgo.GoString, _link:stdgo.GoString):Void {
        var __tmp__ = stdgo._internal.os.Os_stat.stat(_path?.__copy__()), _pathfi:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(_err));
            return;
        };
        var __tmp__ = stdgo._internal.os.Os_stat.stat(_link?.__copy__()), _linkfi:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(_err));
            return;
        };
        if (!stdgo._internal.os.Os_sameFile.sameFile(_pathfi, _linkfi)) {
            _t.errorf(("os.Stat(%q) and os.Stat(%q) are not the same file" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_link));
        };
        {
            var __tmp__ = stdgo._internal.os.Os_lstat.lstat(_link?.__copy__());
            _linkfi = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(_err));
            return;
        };
        if (stdgo._internal.os.Os_sameFile.sameFile(_pathfi, _linkfi)) {
            _t.errorf(("os.Stat(%q) and os.Lstat(%q) are the same file" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_link));
        };
    }
