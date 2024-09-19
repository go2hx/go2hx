package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testFileAndSymlinkStats(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        stdgo._internal.internal.testenv.Testenv_mustHaveSymlink.mustHaveSymlink(stdgo.Go.asInterface(_t));
        _t.parallel();
        var _tmpdir = (_t.tempDir()?.__copy__() : stdgo.GoString);
        var _file = (stdgo._internal.path.filepath.Filepath_join.join(_tmpdir?.__copy__(), ("file" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        {
            var _err = (stdgo._internal.os.Os_writeFile.writeFile(_file?.__copy__(), (stdgo.Go.str() : stdgo.Slice<stdgo.GoUInt8>), (420u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        _internal.os_test.Os_test__testFileStats._testFileStats(_t, _file?.__copy__());
        var _filelink = (stdgo._internal.path.filepath.Filepath_join.join(_tmpdir?.__copy__(), ("link" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        {
            var _err = (stdgo._internal.os.Os_symlink.symlink(_file?.__copy__(), _filelink?.__copy__()) : stdgo.Error);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        _internal.os_test.Os_test__testSymlinkStats._testSymlinkStats(_t, _filelink?.__copy__(), false);
        _internal.os_test.Os_test__testSymlinkSameFile._testSymlinkSameFile(_t, _file?.__copy__(), _filelink?.__copy__());
        _internal.os_test.Os_test__testSymlinkSameFileOpen._testSymlinkSameFileOpen(_t, _filelink?.__copy__());
        var _linklink = (stdgo._internal.path.filepath.Filepath_join.join(_tmpdir?.__copy__(), ("linklink" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        {
            var _err = (stdgo._internal.os.Os_symlink.symlink(_filelink?.__copy__(), _linklink?.__copy__()) : stdgo.Error);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        _internal.os_test.Os_test__testSymlinkStats._testSymlinkStats(_t, _linklink?.__copy__(), false);
        _internal.os_test.Os_test__testSymlinkSameFile._testSymlinkSameFile(_t, _file?.__copy__(), _linklink?.__copy__());
        _internal.os_test.Os_test__testSymlinkSameFileOpen._testSymlinkSameFileOpen(_t, _linklink?.__copy__());
    }
