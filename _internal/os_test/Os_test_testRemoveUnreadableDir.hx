package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testRemoveUnreadableDir(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            final __value__ = ("js" : stdgo.GoString);
            if (__value__ == (("js" : stdgo.GoString))) {
                _t.skipf(("skipping test on %s" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)));
            };
        };
        if (stdgo._internal.os.Os_getuid.getuid() == ((0 : stdgo.GoInt))) {
            _t.skip(stdgo.Go.toInterface(("skipping test when running as root" : stdgo.GoString)));
        };
        _t.parallel();
        var _tempDir = (_t.tempDir()?.__copy__() : stdgo.GoString);
        var _target = (stdgo._internal.path.filepath.Filepath_join.join(_tempDir?.__copy__(), ("d0" : stdgo.GoString), ("d1" : stdgo.GoString), ("d2" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        {
            var _err = (stdgo._internal.os.Os_mkdirAll.mkdirAll(_target?.__copy__(), (493u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err = (stdgo._internal.os.Os_chmod.chmod(_target?.__copy__(), (192u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err = (stdgo._internal.os.Os_removeAll.removeAll(stdgo._internal.path.filepath.Filepath_join.join(_tempDir?.__copy__(), ("d0" : stdgo.GoString))?.__copy__()) : stdgo.Error);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
    }
