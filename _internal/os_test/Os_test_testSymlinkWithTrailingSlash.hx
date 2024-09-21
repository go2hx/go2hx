package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testSymlinkWithTrailingSlash(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        stdgo._internal.internal.testenv.Testenv_mustHaveSymlink.mustHaveSymlink(stdgo.Go.asInterface(_t));
        _t.parallel();
        var _tmpdir = (_t.tempDir()?.__copy__() : stdgo.GoString);
        var _dir = (stdgo._internal.path.filepath.Filepath_join.join(_tmpdir?.__copy__(), ("dir" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        {
            var _err = (stdgo._internal.os.Os_mkdir.mkdir(_dir?.__copy__(), (511u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        var _dirlink = (stdgo._internal.path.filepath.Filepath_join.join(_tmpdir?.__copy__(), ("link" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        {
            var _err = (stdgo._internal.os.Os_symlink.symlink(_dir?.__copy__(), _dirlink?.__copy__()) : stdgo.Error);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        var _dirlinkWithSlash = ((_dirlink + ((47 : stdgo.GoInt32) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        _internal.os_test.Os_test__testDirStats._testDirStats(_t, _dirlinkWithSlash?.__copy__());
        var __tmp__ = stdgo._internal.os.Os_stat.stat(_dir?.__copy__()), _fi1:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(_err));
            return;
        };
        var __tmp__ = stdgo._internal.os.Os_stat.stat(_dirlinkWithSlash?.__copy__()), _fi2:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(_err));
            return;
        };
        if (!stdgo._internal.os.Os_sameFile.sameFile(_fi1, _fi2)) {
            _t.errorf(("os.Stat(%q) and os.Stat(%q) are not the same file" : stdgo.GoString), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_dirlinkWithSlash));
        };
    }
