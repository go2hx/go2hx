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
function testTimePprof(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                final __value__ = ("js" : stdgo.GoString);
                if (__value__ == (("aix" : stdgo.GoString)) || __value__ == (("darwin" : stdgo.GoString)) || __value__ == (("illumos" : stdgo.GoString)) || __value__ == (("openbsd" : stdgo.GoString)) || __value__ == (("solaris" : stdgo.GoString))) {
                    _t.skipf(("skipping on %s because nanotime calls libc" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)));
                };
            };
            var _fn = (_internal.runtime_test.Runtime_test__runTestProg._runTestProg(_t, ("testprog" : stdgo.GoString), ("TimeProf" : stdgo.GoString), ("GOTRACEBACK=crash" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            _fn = stdgo._internal.strings.Strings_trimSpace.trimSpace(_fn?.__copy__())?.__copy__();
            {
                var _a0 = _fn;
                __deferstack__.unshift(() -> stdgo._internal.os.Os_remove.remove(_a0?.__copy__()));
            };
            var _cmd = stdgo._internal.internal.testenv.Testenv_cleanCmdEnv.cleanCmdEnv(stdgo._internal.os.exec.Exec_command.command(stdgo._internal.internal.testenv.Testenv_goToolPath.goToolPath(stdgo.Go.asInterface(_t))?.__copy__(), ("tool" : stdgo.GoString), ("pprof" : stdgo.GoString), ("-top" : stdgo.GoString), ("-nodecount=1" : stdgo.GoString), _fn?.__copy__()));
            _cmd.env = (_cmd.env.__append__((("PPROF_TMPDIR=" : stdgo.GoString) + stdgo._internal.os.Os_tempDir.tempDir()?.__copy__() : stdgo.GoString)?.__copy__()));
            var __tmp__ = _cmd.combinedOutput(), _top:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            _t.logf(("%s" : stdgo.GoString), stdgo.Go.toInterface(_top));
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
            } else if (stdgo._internal.bytes.Bytes_contains.contains(_top, (("ExternalCode" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>))) {
                _t.error(stdgo.Go.toInterface(("profiler refers to ExternalCode" : stdgo.GoString)));
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
