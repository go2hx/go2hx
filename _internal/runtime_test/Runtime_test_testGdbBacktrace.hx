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
function testGdbBacktrace(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (false) {
            stdgo._internal.internal.testenv.Testenv_skipFlaky.skipFlaky(stdgo.Go.asInterface(_t), (15603 : stdgo.GoInt));
        };
        if (((stdgo.Go.typeAssert(((stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.flag.Flag_lookup.lookup(("test.parallel" : stdgo.GoString)).value) : stdgo._internal.flag.Flag_Getter.Getter)) : stdgo._internal.flag.Flag_Getter.Getter).get() : stdgo.GoInt)) : stdgo.GoInt) < (2 : stdgo.GoInt) : Bool)) {
            stdgo._internal.internal.testenv.Testenv_skipFlaky.skipFlaky(stdgo.Go.asInterface(_t), (37405 : stdgo.GoInt));
        };
        _internal.runtime_test.Runtime_test__checkGdbEnvironment._checkGdbEnvironment(_t);
        _t.parallel();
        _internal.runtime_test.Runtime_test__checkGdbVersion._checkGdbVersion(_t);
        var _dir = (_t.tempDir()?.__copy__() : stdgo.GoString);
        var _src = (stdgo._internal.path.filepath.Filepath_join.join(_dir?.__copy__(), ("main.go" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        var _err = (stdgo._internal.os.Os_writeFile.writeFile(_src?.__copy__(), (("\npackage main\n\n//go:noinline\nfunc aaa() bool { return bbb() }\n\n//go:noinline\nfunc bbb() bool { return ccc() }\n\n//go:noinline\nfunc ccc() bool { return ddd() }\n\n//go:noinline\nfunc ddd() bool { return f() }\n\n//go:noinline\nfunc eee() bool { return true }\n\nvar f = eee\n\nfunc main() {\n\t_ = aaa()\n}\n" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), (420u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
        if (_err != null) {
            _t.fatalf(("failed to create file: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var _cmd = stdgo._internal.os.exec.Exec_command.command(stdgo._internal.internal.testenv.Testenv_goToolPath.goToolPath(stdgo.Go.asInterface(_t))?.__copy__(), ("build" : stdgo.GoString), ("-o" : stdgo.GoString), ("a.exe" : stdgo.GoString), ("main.go" : stdgo.GoString));
        _cmd.dir = _dir?.__copy__();
        var __tmp__ = stdgo._internal.internal.testenv.Testenv_cleanCmdEnv.cleanCmdEnv(_cmd).combinedOutput(), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("building source %v\n%s" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_out));
        };
        var _start = (stdgo._internal.time.Time_now.now()?.__copy__() : stdgo._internal.time.Time_Time.Time);
        var _args = (new stdgo.Slice<stdgo.GoString>(15, 15, ...[
("-nx" : stdgo.GoString),
("-batch" : stdgo.GoString),
("-iex" : stdgo.GoString),
(("add-auto-load-safe-path " : stdgo.GoString) + stdgo._internal.path.filepath.Filepath_join.join(stdgo._internal.internal.testenv.Testenv_goroot.goroot(stdgo.Go.asInterface(_t))?.__copy__(), ("src" : stdgo.GoString), ("runtime" : stdgo.GoString))?.__copy__() : stdgo.GoString)?.__copy__(),
("-ex" : stdgo.GoString),
("set startup-with-shell off" : stdgo.GoString),
("-ex" : stdgo.GoString),
("break main.eee" : stdgo.GoString),
("-ex" : stdgo.GoString),
("run" : stdgo.GoString),
("-ex" : stdgo.GoString),
("backtrace" : stdgo.GoString),
("-ex" : stdgo.GoString),
("continue" : stdgo.GoString),
stdgo._internal.path.filepath.Filepath_join.join(_dir?.__copy__(), ("a.exe" : stdgo.GoString))?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>);
        _cmd = stdgo._internal.internal.testenv.Testenv_command.command(stdgo.Go.asInterface(_t), ("gdb" : stdgo.GoString), ...(_args : Array<stdgo.GoString>));
        _cmd.cancel = function():stdgo.Error {
            _t.logf(("GDB command timed out after %v: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.time.Time_since.since(_start?.__copy__()))), stdgo.Go.toInterface(stdgo.Go.asInterface(_cmd)));
            return _cmd.process.kill();
        };
        var __tmp__ = _cmd.combinedOutput(), _got:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _t.logf(("gdb output:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_got));
        if (_err != null) {
            if (stdgo._internal.bytes.Bytes_contains.contains(_got, (("internal-error: wait returned unexpected status 0x0" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>))) {
                stdgo._internal.internal.testenv.Testenv_skipFlaky.skipFlaky(stdgo.Go.asInterface(_t), (43068 : stdgo.GoInt));
            } else if (stdgo._internal.bytes.Bytes_contains.contains(_got, (("Couldn\'t get registers: No such process." : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)) || stdgo._internal.bytes.Bytes_contains.contains(_got, (("Unable to fetch general registers.: No such process." : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)) || stdgo._internal.bytes.Bytes_contains.contains(_got, (("reading register pc (#64): No such process." : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>))) {
                stdgo._internal.internal.testenv.Testenv_skipFlaky.skipFlaky(stdgo.Go.asInterface(_t), (50838 : stdgo.GoInt));
            } else if (stdgo._internal.bytes.Bytes_contains.contains(_got, (("waiting for new child: No child processes." : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>))) {
                stdgo._internal.internal.testenv.Testenv_skipFlaky.skipFlaky(stdgo.Go.asInterface(_t), (60553 : stdgo.GoInt));
            } else if (stdgo._internal.bytes.Bytes_contains.contains(_got, ((" exited normally]\n" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>))) {
                stdgo._internal.internal.testenv.Testenv_skipFlaky.skipFlaky(stdgo.Go.asInterface(_t), (37405 : stdgo.GoInt));
            };
            _t.fatalf(("gdb exited with error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var _bt = (new stdgo.Slice<stdgo.GoString>(6, 6, ...[("eee" : stdgo.GoString), ("ddd" : stdgo.GoString), ("ccc" : stdgo.GoString), ("bbb" : stdgo.GoString), ("aaa" : stdgo.GoString), ("main" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (_i => _name in _bt) {
            var _s = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("#%v.*main\\.%v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_name))?.__copy__() : stdgo.GoString);
            var _re = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(_s?.__copy__());
            {
                var _found = (_re.find(_got) != null : Bool);
                if (!_found) {
                    _t.fatalf(("could not find \'%v\' in backtrace" : stdgo.GoString), stdgo.Go.toInterface(_s));
                };
            };
        };
    }
