package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function _sameFile(_fn1:stdgo.GoString, _fn2:stdgo.GoString):Bool {
        var __tmp__ = stdgo._internal.os.Os_stat.stat(_fn1?.__copy__()), _fi1:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return false;
        };
        var __tmp__ = stdgo._internal.os.Os_stat.stat(_fn2?.__copy__()), _fi2:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return false;
        };
        return stdgo._internal.os.Os_sameFile.sameFile(_fi1, _fi2);
    }
