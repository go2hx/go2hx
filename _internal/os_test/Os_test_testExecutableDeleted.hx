package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testExecutableDeleted(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        stdgo._internal.internal.testenv.Testenv_mustHaveGoBuild.mustHaveGoBuild(stdgo.Go.asInterface(_t));
        {
            final __value__ = ("js" : stdgo.GoString);
            if (__value__ == (("windows" : stdgo.GoString)) || __value__ == (("plan9" : stdgo.GoString))) {
                _t.skipf(("%v does not support deleting running binary" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)));
            } else if (__value__ == (("openbsd" : stdgo.GoString)) || __value__ == (("freebsd" : stdgo.GoString)) || __value__ == (("aix" : stdgo.GoString))) {
                _t.skipf(("%v does not support reading deleted binary name" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)));
            };
        };
        _t.parallel();
        var _dir = (_t.tempDir()?.__copy__() : stdgo.GoString);
        var _src = (stdgo._internal.path.filepath.Filepath_join.join(_dir?.__copy__(), ("testdel.go" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        var _exe = (stdgo._internal.path.filepath.Filepath_join.join(_dir?.__copy__(), ("testdel.exe" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        var _err = (stdgo._internal.os.Os_writeFile.writeFile(_src?.__copy__(), (("package main\n\nimport (\n\t\"fmt\"\n\t\"os\"\n)\n\nfunc main() {\n\tbefore, err := os.Executable()\n\tif err != nil {\n\t\tfmt.Fprintf(os.Stderr, \"failed to read executable name before deletion: %v\\n\", err)\n\t\tos.Exit(1)\n\t}\n\n\terr = os.Remove(before)\n\tif err != nil {\n\t\tfmt.Fprintf(os.Stderr, \"failed to remove executable: %v\\n\", err)\n\t\tos.Exit(1)\n\t}\n\n\tafter, err := os.Executable()\n\tif err != nil {\n\t\tfmt.Fprintf(os.Stderr, \"failed to read executable name after deletion: %v\\n\", err)\n\t\tos.Exit(1)\n\t}\n\n\tif before != after {\n\t\tfmt.Fprintf(os.Stderr, \"before and after do not match: %v != %v\\n\", before, after)\n\t\tos.Exit(1)\n\t}\n}\n" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), (438u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var __tmp__ = stdgo._internal.internal.testenv.Testenv_command.command(stdgo.Go.asInterface(_t), stdgo._internal.internal.testenv.Testenv_goToolPath.goToolPath(stdgo.Go.asInterface(_t))?.__copy__(), ("build" : stdgo.GoString), ("-o" : stdgo.GoString), _exe?.__copy__(), _src?.__copy__()).combinedOutput(), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _t.logf(("build output:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_out));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = stdgo._internal.internal.testenv.Testenv_command.command(stdgo.Go.asInterface(_t), _exe?.__copy__()).combinedOutput();
            _out = __tmp__._0;
            _err = __tmp__._1;
        };
        _t.logf(("exec output:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_out));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
    }
