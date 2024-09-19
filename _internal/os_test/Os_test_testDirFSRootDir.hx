package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testDirFSRootDir(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _t.parallel();
        var __tmp__ = stdgo._internal.os.Os_getwd.getwd(), _cwd:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        _cwd = (_cwd.__slice__((stdgo._internal.path.filepath.Filepath_volumeName.volumeName(_cwd?.__copy__()).length)) : stdgo.GoString)?.__copy__();
        _cwd = stdgo._internal.path.filepath.Filepath_toSlash.toSlash(_cwd?.__copy__())?.__copy__();
        _cwd = stdgo._internal.strings.Strings_trimPrefix.trimPrefix(_cwd?.__copy__(), ("/" : stdgo.GoString))?.__copy__();
        var _d = (stdgo._internal.os.Os_dirFS.dirFS(("/" : stdgo.GoString)) : stdgo._internal.io.fs.Fs_FS.FS);
        var __tmp__ = _d.open((_cwd + ("/testdata/dirfs/a" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__()), _f:stdgo._internal.io.fs.Fs_File.File = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        _f.close();
    }
