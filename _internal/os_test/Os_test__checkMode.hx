package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function _checkMode(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _path:stdgo.GoString, _mode:stdgo._internal.io.fs.Fs_FileMode.FileMode):Void {
        var __tmp__ = stdgo._internal.os.Os_stat.stat(_path?.__copy__()), _dir:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("Stat %q (looking for mode %#o): %s" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(stdgo.Go.asInterface(_mode)), stdgo.Go.toInterface(_err));
        };
        if ((_dir.mode() & (511u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode) : stdgo._internal.io.fs.Fs_FileMode.FileMode) != (_mode)) {
            _t.errorf(("Stat %q: mode %#o want %#o" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(stdgo.Go.asInterface(_dir.mode())), stdgo.Go.toInterface(stdgo.Go.asInterface(_mode)));
        };
    }
