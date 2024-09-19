package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testStatDirWithTrailingSlash(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _t.parallel();
        var _path = (_t.tempDir()?.__copy__() : stdgo.GoString);
        {
            var __tmp__ = stdgo._internal.os.Os_stat.stat(_path?.__copy__()), __16:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("stat %s failed: %s" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err));
            };
        };
        _path = (_path + (("/" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        {
            var __tmp__ = stdgo._internal.os.Os_stat.stat(_path?.__copy__()), __17:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("stat %s failed: %s" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err));
            };
        };
    }
