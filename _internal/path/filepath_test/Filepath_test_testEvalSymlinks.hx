package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
function testEvalSymlinks(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        stdgo._internal.internal.testenv.Testenv_mustHaveSymlink.mustHaveSymlink(stdgo.Go.asInterface(_t));
        var _tmpDir = (_t.tempDir()?.__copy__() : stdgo.GoString);
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            var __tmp__ = stdgo._internal.path.filepath.Filepath_evalSymlinks.evalSymlinks(_tmpDir?.__copy__());
            _tmpDir = __tmp__._0?.__copy__();
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("eval symlink for tmp dir:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        for (__8 => _d in _internal.path.filepath_test.Filepath_test_evalSymlinksTestDirs.evalSymlinksTestDirs) {
            var _err:stdgo.Error = (null : stdgo.Error);
            var _path = (_internal.path.filepath_test.Filepath_test__simpleJoin._simpleJoin(_tmpDir?.__copy__(), _d._path?.__copy__())?.__copy__() : stdgo.GoString);
            if (_d._dest == (stdgo.Go.str())) {
                _err = stdgo._internal.os.Os_mkdir.mkdir(_path?.__copy__(), (493u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode));
            } else {
                _err = stdgo._internal.os.Os_symlink.symlink(_d._dest?.__copy__(), _path?.__copy__());
            };
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        for (__9 => _test in _internal.path.filepath_test.Filepath_test_evalSymlinksTests.evalSymlinksTests) {
            var _path = (_internal.path.filepath_test.Filepath_test__simpleJoin._simpleJoin(_tmpDir?.__copy__(), _test._path?.__copy__())?.__copy__() : stdgo.GoString);
            var _dest = (_internal.path.filepath_test.Filepath_test__simpleJoin._simpleJoin(_tmpDir?.__copy__(), _test._dest?.__copy__())?.__copy__() : stdgo.GoString);
            if ((stdgo._internal.path.filepath.Filepath_isAbs.isAbs(_test._dest?.__copy__()) || stdgo._internal.os.Os_isPathSeparator.isPathSeparator(_test._dest[(0 : stdgo.GoInt)]) : Bool)) {
                _dest = _test._dest?.__copy__();
            };
            _internal.path.filepath_test.Filepath_test__testEvalSymlinks._testEvalSymlinks(_t, _path?.__copy__(), _dest?.__copy__());
            _internal.path.filepath_test.Filepath_test__testEvalSymlinksAfterChdir._testEvalSymlinksAfterChdir(_t, _path?.__copy__(), ("." : stdgo.GoString), ("." : stdgo.GoString));
            if (false) {
                var _volDot = ((stdgo._internal.path.filepath.Filepath_volumeName.volumeName(_tmpDir?.__copy__()) + ("." : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                _internal.path.filepath_test.Filepath_test__testEvalSymlinksAfterChdir._testEvalSymlinksAfterChdir(_t, _path?.__copy__(), _volDot?.__copy__(), _volDot?.__copy__());
            };
            var _dotdotPath = (_internal.path.filepath_test.Filepath_test__simpleJoin._simpleJoin((".." : stdgo.GoString), _test._dest?.__copy__())?.__copy__() : stdgo.GoString);
            if ((stdgo._internal.path.filepath.Filepath_isAbs.isAbs(_test._dest?.__copy__()) || stdgo._internal.os.Os_isPathSeparator.isPathSeparator(_test._dest[(0 : stdgo.GoInt)]) : Bool)) {
                _dotdotPath = _test._dest?.__copy__();
            };
            _internal.path.filepath_test.Filepath_test__testEvalSymlinksAfterChdir._testEvalSymlinksAfterChdir(_t, _internal.path.filepath_test.Filepath_test__simpleJoin._simpleJoin(_tmpDir?.__copy__(), ("test" : stdgo.GoString))?.__copy__(), _internal.path.filepath_test.Filepath_test__simpleJoin._simpleJoin((".." : stdgo.GoString), _test._path?.__copy__())?.__copy__(), _dotdotPath?.__copy__());
            _internal.path.filepath_test.Filepath_test__testEvalSymlinksAfterChdir._testEvalSymlinksAfterChdir(_t, _tmpDir?.__copy__(), _test._path?.__copy__(), _test._dest?.__copy__());
        };
    }
