package _internal.runtime_test;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unsafe.Unsafe;
function testGdbConst(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _internal.runtime_test.Runtime_test__checkGdbEnvironment._checkGdbEnvironment(_t);
        _t.parallel();
        _internal.runtime_test.Runtime_test__checkGdbVersion._checkGdbVersion(_t);
        var _dir = (_t.tempDir()?.__copy__() : stdgo.GoString);
        var _src = (stdgo._internal.path.filepath.Filepath_join.join(_dir?.__copy__(), ("main.go" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        var _err = (stdgo._internal.os.Os_writeFile.writeFile(_src?.__copy__(), (("\npackage main\n\nconst aConstant int = 42\nconst largeConstant uint64 = ^uint64(0)\nconst minusOne int64 = -1\n\nfunc main() {\n\tprintln(\"hello world\")\n}\n" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), (420u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
        if (_err != null) {
            _t.fatalf(("failed to create file: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var _cmd = stdgo._internal.os.exec.Exec_command.command(stdgo._internal.internal.testenv.Testenv_goToolPath.goToolPath(stdgo.Go.asInterface(_t))?.__copy__(), ("build" : stdgo.GoString), ("-gcflags=all=-N -l" : stdgo.GoString), ("-o" : stdgo.GoString), ("a.exe" : stdgo.GoString), ("main.go" : stdgo.GoString));
        _cmd.dir = _dir?.__copy__();
        var __tmp__ = stdgo._internal.internal.testenv.Testenv_cleanCmdEnv.cleanCmdEnv(_cmd).combinedOutput(), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("building source %v\n%s" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_out));
        };
        var _args = (new stdgo.Slice<stdgo.GoString>(21, 21, ...[
("-nx" : stdgo.GoString),
("-batch" : stdgo.GoString),
("-iex" : stdgo.GoString),
(("add-auto-load-safe-path " : stdgo.GoString) + stdgo._internal.path.filepath.Filepath_join.join(stdgo._internal.internal.testenv.Testenv_goroot.goroot(stdgo.Go.asInterface(_t))?.__copy__(), ("src" : stdgo.GoString), ("runtime" : stdgo.GoString))?.__copy__() : stdgo.GoString)?.__copy__(),
("-ex" : stdgo.GoString),
("set startup-with-shell off" : stdgo.GoString),
("-ex" : stdgo.GoString),
("break main.main" : stdgo.GoString),
("-ex" : stdgo.GoString),
("run" : stdgo.GoString),
("-ex" : stdgo.GoString),
("print main.aConstant" : stdgo.GoString),
("-ex" : stdgo.GoString),
("print main.largeConstant" : stdgo.GoString),
("-ex" : stdgo.GoString),
("print main.minusOne" : stdgo.GoString),
("-ex" : stdgo.GoString),
("print \'runtime.mSpanInUse\'" : stdgo.GoString),
("-ex" : stdgo.GoString),
("print \'runtime._PageSize\'" : stdgo.GoString),
stdgo._internal.path.filepath.Filepath_join.join(_dir?.__copy__(), ("a.exe" : stdgo.GoString))?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>);
        var __tmp__ = stdgo._internal.os.exec.Exec_command.command(("gdb" : stdgo.GoString), ...(_args : Array<stdgo.GoString>)).combinedOutput(), _got:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _t.logf(("gdb output:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_got));
        if (_err != null) {
            _t.fatalf(("gdb exited with error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var _sgot = (stdgo._internal.strings.Strings_replaceAll.replaceAll((_got : stdgo.GoString)?.__copy__(), ("\r\n" : stdgo.GoString), ("\n" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        if (!stdgo._internal.strings.Strings_contains.contains(_sgot?.__copy__(), ("\n$1 = 42\n$2 = 18446744073709551615\n$3 = -1\n$4 = 1 \'\\001\'\n$5 = 8192" : stdgo.GoString))) {
            _t.fatalf(("output mismatch" : stdgo.GoString));
        };
    }
