package _internal.internal.testenv_test;
function testGoToolLocation(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        stdgo._internal.internal.testenv.Testenv_mustHaveGoBuild.mustHaveGoBuild(stdgo.Go.asInterface(_t));
        var _exeSuffix:stdgo.GoString = ("" : stdgo.GoString);
        if (false) {
            _exeSuffix = (".exe" : stdgo.GoString);
        };
        var _relWant = ((("../../../bin/go" : stdgo.GoString) + _exeSuffix?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var __tmp__ = stdgo._internal.path.filepath.Filepath_abs.abs(_relWant?.__copy__()), _absWant:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var __tmp__ = stdgo._internal.os.Os_stat.stat(_absWant?.__copy__()), _wantInfo:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        _t.logf(("found go tool at %q (%q)" : stdgo.GoString), stdgo.Go.toInterface(_relWant), stdgo.Go.toInterface(_absWant));
        var __tmp__ = stdgo._internal.internal.testenv.Testenv_goTool.goTool(), _goTool:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("testenv.GoTool(): %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        _t.logf(("testenv.GoTool() = %q" : stdgo.GoString), stdgo.Go.toInterface(_goTool));
        var __tmp__ = stdgo._internal.os.Os_stat.stat(_goTool?.__copy__()), _gotInfo:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        if (!stdgo._internal.os.Os_sameFile.sameFile(_wantInfo, _gotInfo)) {
            _t.fatalf(("%q is not the same file as %q" : stdgo.GoString), stdgo.Go.toInterface(_absWant), stdgo.Go.toInterface(_goTool));
        };
    }
