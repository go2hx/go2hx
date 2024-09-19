package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testStatDirModeExec(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (false) {
            _t.skip(stdgo.Go.toInterface(("Chmod is not supported on js" : stdgo.GoString)));
        };
        _t.parallel();
        {};
        var _path = (_t.tempDir()?.__copy__() : stdgo.GoString);
        {
            var _err = (stdgo._internal.os.Os_chmod.chmod(_path?.__copy__(), (511u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
            if (_err != null) {
                _t.fatalf(("Chmod %q 0777: %v" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err));
            };
        };
        var __tmp__ = stdgo._internal.os.Os_stat.stat(_path?.__copy__()), _dir:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("Stat %q (looking for mode %#o): %s" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface((73 : stdgo.GoInt)), stdgo.Go.toInterface(_err));
        };
        if ((_dir.mode() & (73u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode) : stdgo._internal.io.fs.Fs_FileMode.FileMode) != ((73u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode))) {
            _t.errorf(("Stat %q: mode %#o want %#o" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(stdgo.Go.asInterface((_dir.mode() & (73u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode) : stdgo._internal.io.fs.Fs_FileMode.FileMode))), stdgo.Go.toInterface((73 : stdgo.GoInt)));
        };
    }
