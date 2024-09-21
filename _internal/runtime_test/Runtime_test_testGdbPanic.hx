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
function testGdbPanic(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _internal.runtime_test.Runtime_test__checkGdbEnvironment._checkGdbEnvironment(_t);
        _t.parallel();
        _internal.runtime_test.Runtime_test__checkGdbVersion._checkGdbVersion(_t);
        if (false) {
            _t.skip(stdgo.Go.toInterface(("no signals on windows" : stdgo.GoString)));
        };
        var _dir = (_t.tempDir()?.__copy__() : stdgo.GoString);
        var _src = (stdgo._internal.path.filepath.Filepath_join.join(_dir?.__copy__(), ("main.go" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        var _err = (stdgo._internal.os.Os_writeFile.writeFile(_src?.__copy__(), (("\npackage main\n\nimport \"runtime/debug\"\n\nfunc main() {\n\tdebug.SetTraceback(\"crash\")\n\tcrash()\n}\n\nfunc crash() {\n\tpanic(\"panic!\")\n}\n" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), (420u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
        if (_err != null) {
            _t.fatalf(("failed to create file: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var _cmd = stdgo._internal.os.exec.Exec_command.command(stdgo._internal.internal.testenv.Testenv_goToolPath.goToolPath(stdgo.Go.asInterface(_t))?.__copy__(), ("build" : stdgo.GoString), ("-o" : stdgo.GoString), ("a.exe" : stdgo.GoString), ("main.go" : stdgo.GoString));
        _cmd.dir = _dir?.__copy__();
        var __tmp__ = stdgo._internal.internal.testenv.Testenv_cleanCmdEnv.cleanCmdEnv(_cmd).combinedOutput(), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("building source %v\n%s" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_out));
        };
        var _args = (new stdgo.Slice<stdgo.GoString>(11, 11, ...[
("-nx" : stdgo.GoString),
("-batch" : stdgo.GoString),
("-iex" : stdgo.GoString),
(("add-auto-load-safe-path " : stdgo.GoString) + stdgo._internal.path.filepath.Filepath_join.join(stdgo._internal.internal.testenv.Testenv_goroot.goroot(stdgo.Go.asInterface(_t))?.__copy__(), ("src" : stdgo.GoString), ("runtime" : stdgo.GoString))?.__copy__() : stdgo.GoString)?.__copy__(),
("-ex" : stdgo.GoString),
("set startup-with-shell off" : stdgo.GoString),
("-ex" : stdgo.GoString),
("run" : stdgo.GoString),
("-ex" : stdgo.GoString),
("backtrace" : stdgo.GoString),
stdgo._internal.path.filepath.Filepath_join.join(_dir?.__copy__(), ("a.exe" : stdgo.GoString))?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>);
        var __tmp__ = stdgo._internal.os.exec.Exec_command.command(("gdb" : stdgo.GoString), ...(_args : Array<stdgo.GoString>)).combinedOutput(), _got:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _t.logf(("gdb output:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_got));
        if (_err != null) {
            _t.fatalf(("gdb exited with error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var _bt = (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("crash" : stdgo.GoString), ("main" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (__48 => _name in _bt) {
            var _s = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("(#.* .* in )?main\\.%v" : stdgo.GoString), stdgo.Go.toInterface(_name))?.__copy__() : stdgo.GoString);
            var _re = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(_s?.__copy__());
            {
                var _found = (_re.find(_got) != null : Bool);
                if (!_found) {
                    _t.fatalf(("could not find \'%v\' in backtrace" : stdgo.GoString), stdgo.Go.toInterface(_s));
                };
            };
        };
    }
