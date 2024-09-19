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
function testGdbAutotmpTypes(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _internal.runtime_test.Runtime_test__checkGdbEnvironment._checkGdbEnvironment(_t);
        _t.parallel();
        _internal.runtime_test.Runtime_test__checkGdbVersion._checkGdbVersion(_t);
        if ((false && stdgo._internal.testing.Testing_short.short() : Bool)) {
            _t.skip(stdgo.Go.toInterface(("TestGdbAutotmpTypes is too slow on aix/ppc64" : stdgo.GoString)));
        };
        var _dir = (_t.tempDir()?.__copy__() : stdgo.GoString);
        var _src = (stdgo._internal.path.filepath.Filepath_join.join(_dir?.__copy__(), ("main.go" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        var _err = (stdgo._internal.os.Os_writeFile.writeFile(_src?.__copy__(), (("\npackage main\n\ntype astruct struct {\n\ta, b int\n}\n\nfunc main() {\n\tvar iface interface{} = map[string]astruct{}\n\tvar iface2 interface{} = []astruct{}\n\tprintln(iface, iface2)\n}\n" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), (420u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
        if (_err != null) {
            _t.fatalf(("failed to create file: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var _cmd = stdgo._internal.os.exec.Exec_command.command(stdgo._internal.internal.testenv.Testenv_goToolPath.goToolPath(stdgo.Go.asInterface(_t))?.__copy__(), ("build" : stdgo.GoString), ("-gcflags=all=-N -l" : stdgo.GoString), ("-o" : stdgo.GoString), ("a.exe" : stdgo.GoString), ("main.go" : stdgo.GoString));
        _cmd.dir = _dir?.__copy__();
        var __tmp__ = stdgo._internal.internal.testenv.Testenv_cleanCmdEnv.cleanCmdEnv(_cmd).combinedOutput(), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("building source %v\n%s" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_out));
        };
        var _args = (new stdgo.Slice<stdgo.GoString>(17, 17, ...[
("-nx" : stdgo.GoString),
("-batch" : stdgo.GoString),
("-iex" : stdgo.GoString),
(("add-auto-load-safe-path " : stdgo.GoString) + stdgo._internal.path.filepath.Filepath_join.join(stdgo._internal.internal.testenv.Testenv_goroot.goroot(stdgo.Go.asInterface(_t))?.__copy__(), ("src" : stdgo.GoString), ("runtime" : stdgo.GoString))?.__copy__() : stdgo.GoString)?.__copy__(),
("-ex" : stdgo.GoString),
("set startup-with-shell off" : stdgo.GoString),
("-ex" : stdgo.GoString),
("set scheduler-locking off" : stdgo.GoString),
("-ex" : stdgo.GoString),
("break main.main" : stdgo.GoString),
("-ex" : stdgo.GoString),
("run" : stdgo.GoString),
("-ex" : stdgo.GoString),
("step" : stdgo.GoString),
("-ex" : stdgo.GoString),
("info types astruct" : stdgo.GoString),
stdgo._internal.path.filepath.Filepath_join.join(_dir?.__copy__(), ("a.exe" : stdgo.GoString))?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>);
        var __tmp__ = stdgo._internal.os.exec.Exec_command.command(("gdb" : stdgo.GoString), ...(_args : Array<stdgo.GoString>)).combinedOutput(), _got:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _t.logf(("gdb output:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_got));
        if (_err != null) {
            _t.fatalf(("gdb exited with error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var _sgot = ((_got : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _types = (new stdgo.Slice<stdgo.GoString>(5, 5, ...[("[]main.astruct;" : stdgo.GoString), ("bucket<string,main.astruct>;" : stdgo.GoString), ("hash<string,main.astruct>;" : stdgo.GoString), ("main.astruct;" : stdgo.GoString), ("hash<string,main.astruct> * map[string]main.astruct;" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (__48 => _name in _types) {
            if (!stdgo._internal.strings.Strings_contains.contains(_sgot?.__copy__(), _name?.__copy__())) {
                _t.fatalf(("could not find %s in \'info typrs astruct\' output" : stdgo.GoString), stdgo.Go.toInterface(_name));
            };
        };
    }
