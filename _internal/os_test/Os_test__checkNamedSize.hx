package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function _checkNamedSize(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _path:stdgo.GoString, _size:stdgo.GoInt64):Void {
        var __tmp__ = stdgo._internal.os.Os_stat.stat(_path?.__copy__()), _dir:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("Stat %q (looking for size %d): %s" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_size), stdgo.Go.toInterface(_err));
        };
        if (_dir.size() != (_size)) {
            _t.errorf(("Stat %q: size %d want %d" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_dir.size()), stdgo.Go.toInterface(_size));
        };
    }
