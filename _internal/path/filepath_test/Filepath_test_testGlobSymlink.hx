package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
function testGlobSymlink(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        stdgo._internal.internal.testenv.Testenv_mustHaveSymlink.mustHaveSymlink(stdgo.Go.asInterface(_t));
        var _tmpDir = (_t.tempDir()?.__copy__() : stdgo.GoString);
        for (__8 => _tt in _internal.path.filepath_test.Filepath_test__globSymlinkTests._globSymlinkTests) {
            var _path = (stdgo._internal.path.filepath.Filepath_join.join(_tmpDir?.__copy__(), _tt._path?.__copy__())?.__copy__() : stdgo.GoString);
            var _dest = (stdgo._internal.path.filepath.Filepath_join.join(_tmpDir?.__copy__(), _tt._dest?.__copy__())?.__copy__() : stdgo.GoString);
            var __tmp__ = stdgo._internal.os.Os_create.create(_path?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            {
                var _err = (_f.close() : stdgo.Error);
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            _err = stdgo._internal.os.Os_symlink.symlink(_path?.__copy__(), _dest?.__copy__());
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            if (_tt._brokenLink) {
                stdgo._internal.os.Os_remove.remove(_path?.__copy__());
            };
            var __tmp__ = stdgo._internal.path.filepath.Filepath_glob.glob(_dest?.__copy__()), _matches:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("GlobSymlink error for %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_dest), stdgo.Go.toInterface(_err));
            };
            if (!_internal.path.filepath_test.Filepath_test__contains._contains(_matches, _dest?.__copy__())) {
                _t.errorf(("Glob(%#q) = %#v want %v" : stdgo.GoString), stdgo.Go.toInterface(_dest), stdgo.Go.toInterface(_matches), stdgo.Go.toInterface(_dest));
            };
        };
    }
