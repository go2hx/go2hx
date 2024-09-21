package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
function testRelativeSymlinkToAbsolute(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        stdgo._internal.internal.testenv.Testenv_mustHaveSymlink.mustHaveSymlink(stdgo.Go.asInterface(_t));
        var _tmpDir = (_t.tempDir()?.__copy__() : stdgo.GoString);
        _internal.path.filepath_test.Filepath_test__chdir._chdir(_t, _tmpDir?.__copy__());
        {
            var _err = (stdgo._internal.os.Os_symlink.symlink(_tmpDir?.__copy__(), ("link" : stdgo.GoString)) : stdgo.Error);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        _t.logf(("os.Symlink(%q, \"link\")" : stdgo.GoString), stdgo.Go.toInterface(_tmpDir));
        var __tmp__ = stdgo._internal.path.filepath.Filepath_evalSymlinks.evalSymlinks(("link" : stdgo.GoString)), _p:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("EvalSymlinks(\"link\"): %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var __tmp__ = stdgo._internal.path.filepath.Filepath_evalSymlinks.evalSymlinks(_tmpDir?.__copy__()), _want:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("EvalSymlinks(%q): %v" : stdgo.GoString), stdgo.Go.toInterface(_tmpDir), stdgo.Go.toInterface(_err));
        };
        if (_p != (_want)) {
            _t.errorf(("EvalSymlinks(\"link\") = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_p), stdgo.Go.toInterface(_want));
        };
        _t.logf(("EvalSymlinks(\"link\") = %q" : stdgo.GoString), stdgo.Go.toInterface(_p));
    }
