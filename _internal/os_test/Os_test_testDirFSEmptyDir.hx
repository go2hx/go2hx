package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testDirFSEmptyDir(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _t.parallel();
        var _d = (stdgo._internal.os.Os_dirFS.dirFS(stdgo.Go.str()?.__copy__()) : stdgo._internal.io.fs.Fs_FS.FS);
        var __tmp__ = stdgo._internal.os.Os_getwd.getwd(), _cwd:stdgo.GoString = __tmp__._0, __8:stdgo.Error = __tmp__._1;
        for (__9 => _path in (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("testdata/dirfs/a" : stdgo.GoString), (stdgo._internal.path.filepath.Filepath_toSlash.toSlash(_cwd?.__copy__()) + ("/testdata/dirfs/a" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
            var __tmp__ = _d.open(_path?.__copy__()), __10:stdgo._internal.io.fs.Fs_File.File = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _t.fatalf(("DirFS(\"\").Open(%q) succeeded" : stdgo.GoString), stdgo.Go.toInterface(_path));
            };
        };
    }
