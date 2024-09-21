package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function _checkSize(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _f:stdgo.Ref<stdgo._internal.os.Os_File.File>, _size:stdgo.GoInt64):Void {
        _t.helper();
        var __tmp__ = _f.stat(), _dir:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("Stat %q (looking for size %d): %s" : stdgo.GoString), stdgo.Go.toInterface(_f.name()), stdgo.Go.toInterface(_size), stdgo.Go.toInterface(_err));
        };
        if (_dir.size() != (_size)) {
            _t.errorf(("Stat %q: size %d want %d" : stdgo.GoString), stdgo.Go.toInterface(_f.name()), stdgo.Go.toInterface(_dir.size()), stdgo.Go.toInterface(_size));
        };
    }
