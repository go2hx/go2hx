package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
function testIssue13582(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        stdgo._internal.internal.testenv.Testenv_mustHaveSymlink.mustHaveSymlink(stdgo.Go.asInterface(_t));
        var _tmpDir = (_t.tempDir()?.__copy__() : stdgo.GoString);
        var _dir = (stdgo._internal.path.filepath.Filepath_join.join(_tmpDir?.__copy__(), ("dir" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        var _err = (stdgo._internal.os.Os_mkdir.mkdir(_dir?.__copy__(), (493u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _linkToDir = (stdgo._internal.path.filepath.Filepath_join.join(_tmpDir?.__copy__(), ("link_to_dir" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        _err = stdgo._internal.os.Os_symlink.symlink(_dir?.__copy__(), _linkToDir?.__copy__());
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _file = (stdgo._internal.path.filepath.Filepath_join.join(_linkToDir?.__copy__(), ("file" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        _err = stdgo._internal.os.Os_writeFile.writeFile(_file?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), (420u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _link1 = (stdgo._internal.path.filepath.Filepath_join.join(_linkToDir?.__copy__(), ("link1" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        _err = stdgo._internal.os.Os_symlink.symlink(_file?.__copy__(), _link1?.__copy__());
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _link2 = (stdgo._internal.path.filepath.Filepath_join.join(_linkToDir?.__copy__(), ("link2" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        _err = stdgo._internal.os.Os_symlink.symlink(_link1?.__copy__(), _link2?.__copy__());
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var __tmp__ = stdgo._internal.path.filepath.Filepath_evalSymlinks.evalSymlinks(_tmpDir?.__copy__()), _realTmpDir:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _realDir = (stdgo._internal.path.filepath.Filepath_join.join(_realTmpDir?.__copy__(), ("dir" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        var _realFile = (stdgo._internal.path.filepath.Filepath_join.join(_realDir?.__copy__(), ("file" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        var _tests = (new stdgo.Slice<_internal.path.filepath_test.Filepath_test_T__struct_3.T__struct_3>(5, 5, ...[({ _path : _dir?.__copy__(), _want : _realDir?.__copy__() } : _internal.path.filepath_test.Filepath_test_T__struct_3.T__struct_3), ({ _path : _linkToDir?.__copy__(), _want : _realDir?.__copy__() } : _internal.path.filepath_test.Filepath_test_T__struct_3.T__struct_3), ({ _path : _file?.__copy__(), _want : _realFile?.__copy__() } : _internal.path.filepath_test.Filepath_test_T__struct_3.T__struct_3), ({ _path : _link1?.__copy__(), _want : _realFile?.__copy__() } : _internal.path.filepath_test.Filepath_test_T__struct_3.T__struct_3), ({ _path : _link2?.__copy__(), _want : _realFile?.__copy__() } : _internal.path.filepath_test.Filepath_test_T__struct_3.T__struct_3)].concat([for (i in 5 ... (5 > 5 ? 5 : 5 : stdgo.GoInt).toBasic()) ({ _path : ("" : stdgo.GoString), _want : ("" : stdgo.GoString) } : _internal.path.filepath_test.Filepath_test_T__struct_3.T__struct_3)])) : stdgo.Slice<_internal.path.filepath_test.Filepath_test_T__struct_3.T__struct_3>);
        for (_i => _test in _tests) {
            var __tmp__ = stdgo._internal.path.filepath.Filepath_evalSymlinks.evalSymlinks(_test._path?.__copy__()), _have:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            if (_have != (_test._want)) {
                _t.errorf(("test#%d: EvalSymlinks(%q) returns %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._path), stdgo.Go.toInterface(_have), stdgo.Go.toInterface(_test._want));
            };
        };
    }
