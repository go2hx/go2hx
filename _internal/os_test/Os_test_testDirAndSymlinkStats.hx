package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testDirAndSymlinkStats(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
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
        _internal.os_test.Os_test__testDirStats._testDirStats(_t, _dir?.__copy__());
        var _dirlink = (stdgo._internal.path.filepath.Filepath_join.join(_tmpdir?.__copy__(), ("link" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        {
            var _err = (stdgo._internal.os.Os_symlink.symlink(_dir?.__copy__(), _dirlink?.__copy__()) : stdgo.Error);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        _internal.os_test.Os_test__testSymlinkStats._testSymlinkStats(_t, _dirlink?.__copy__(), true);
        _internal.os_test.Os_test__testSymlinkSameFile._testSymlinkSameFile(_t, _dir?.__copy__(), _dirlink?.__copy__());
        _internal.os_test.Os_test__testSymlinkSameFileOpen._testSymlinkSameFileOpen(_t, _dirlink?.__copy__());
        var _linklink = (stdgo._internal.path.filepath.Filepath_join.join(_tmpdir?.__copy__(), ("linklink" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        {
            var _err = (stdgo._internal.os.Os_symlink.symlink(_dirlink?.__copy__(), _linklink?.__copy__()) : stdgo.Error);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        _internal.os_test.Os_test__testSymlinkStats._testSymlinkStats(_t, _linklink?.__copy__(), true);
        _internal.os_test.Os_test__testSymlinkSameFile._testSymlinkSameFile(_t, _dir?.__copy__(), _linklink?.__copy__());
        _internal.os_test.Os_test__testSymlinkSameFileOpen._testSymlinkSameFileOpen(_t, _linklink?.__copy__());
    }
