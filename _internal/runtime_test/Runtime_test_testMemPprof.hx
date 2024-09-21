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
function testMemPprof(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            stdgo._internal.internal.testenv.Testenv_mustHaveGoRun.mustHaveGoRun(stdgo.Go.asInterface(_t));
            var __tmp__ = _internal.runtime_test.Runtime_test__buildTestProg._buildTestProg(_t, ("testprog" : stdgo.GoString)), _exe:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            var __tmp__ = stdgo._internal.internal.testenv.Testenv_cleanCmdEnv.cleanCmdEnv(stdgo._internal.os.exec.Exec_command.command(_exe?.__copy__(), ("MemProf" : stdgo.GoString))).combinedOutput(), _got:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("testprog failed: %s, output:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_got));
            };
            var _fn = (stdgo._internal.strings.Strings_trimSpace.trimSpace((_got : stdgo.GoString)?.__copy__())?.__copy__() : stdgo.GoString);
            {
                var _a0 = _fn;
                __deferstack__.unshift(() -> stdgo._internal.os.Os_remove.remove(_a0?.__copy__()));
            };
            {
                var _try = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_try < (2 : stdgo.GoInt) : Bool), _try++, {
                    var _cmd = stdgo._internal.internal.testenv.Testenv_cleanCmdEnv.cleanCmdEnv(stdgo._internal.os.exec.Exec_command.command(stdgo._internal.internal.testenv.Testenv_goToolPath.goToolPath(stdgo.Go.asInterface(_t))?.__copy__(), ("tool" : stdgo.GoString), ("pprof" : stdgo.GoString), ("-alloc_space" : stdgo.GoString), ("-top" : stdgo.GoString)));
                    if (_try == ((0 : stdgo.GoInt))) {
                        _cmd.args = (_cmd.args.__append__(_exe?.__copy__(), _fn?.__copy__()));
                    } else {
                        _cmd.args = (_cmd.args.__append__(_fn?.__copy__()));
                    };
                    var _found = (false : Bool);
                    for (_i => _e in _cmd.env) {
                        if (stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_e?.__copy__(), ("PPROF_TMPDIR=" : stdgo.GoString))) {
                            _cmd.env[(_i : stdgo.GoInt)] = (("PPROF_TMPDIR=" : stdgo.GoString) + stdgo._internal.os.Os_tempDir.tempDir()?.__copy__() : stdgo.GoString)?.__copy__();
                            _found = true;
                            break;
                        };
                    };
                    if (!_found) {
                        _cmd.env = (_cmd.env.__append__((("PPROF_TMPDIR=" : stdgo.GoString) + stdgo._internal.os.Os_tempDir.tempDir()?.__copy__() : stdgo.GoString)?.__copy__()));
                    };
                    var __tmp__ = _cmd.combinedOutput(), _top:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    _t.logf(("%s:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_cmd.args), stdgo.Go.toInterface(_top));
                    if (_err != null) {
                        _t.error(stdgo.Go.toInterface(_err));
                    } else if (!stdgo._internal.bytes.Bytes_contains.contains(_top, (("MemProf" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>))) {
                        _t.error(stdgo.Go.toInterface(("missing MemProf in pprof output" : stdgo.GoString)));
                    };
                });
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
