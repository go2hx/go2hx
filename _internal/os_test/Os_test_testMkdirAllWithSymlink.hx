package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testMkdirAllWithSymlink(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        stdgo._internal.internal.testenv.Testenv_mustHaveSymlink.mustHaveSymlink(stdgo.Go.asInterface(_t));
        _t.parallel();
        var _tmpDir = (_t.tempDir()?.__copy__() : stdgo.GoString);
        var _dir = ((_tmpDir + ("/dir" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        {
            var _err = (stdgo._internal.os.Os_mkdir.mkdir(_dir?.__copy__(), (493u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
            if (_err != null) {
                _t.fatalf(("Mkdir %s: %s" : stdgo.GoString), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_err));
            };
        };
        var _link = ((_tmpDir + ("/link" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        {
            var _err = (stdgo._internal.os.Os_symlink.symlink(("dir" : stdgo.GoString), _link?.__copy__()) : stdgo.Error);
            if (_err != null) {
                _t.fatalf(("Symlink %s: %s" : stdgo.GoString), stdgo.Go.toInterface(_link), stdgo.Go.toInterface(_err));
            };
        };
        var _path = ((_link + ("/foo" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        {
            var _err = (stdgo._internal.os.Os_mkdirAll.mkdirAll(_path?.__copy__(), (493u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
            if (_err != null) {
                _t.errorf(("MkdirAll %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err));
            };
        };
    }
