package _internal.internal.cpu_test;
import stdgo._internal.internal.cpu.Cpu;
function _runDebugOptionsTest(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _test:stdgo.GoString, _options:stdgo.GoString):Void {
        _internal.internal.cpu_test.Cpu_test_mustHaveDebugOptionsSupport.mustHaveDebugOptionsSupport(_t);
        stdgo._internal.internal.testenv.Testenv_mustHaveExec.mustHaveExec(stdgo.Go.asInterface(_t));
        var _env = ((("GODEBUG=" : stdgo.GoString) + _options?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _cmd = stdgo._internal.os.exec.Exec_command.command(stdgo._internal.os.Os_args.args[(0 : stdgo.GoInt)]?.__copy__(), (("-test.run=" : stdgo.GoString) + _test?.__copy__() : stdgo.GoString)?.__copy__());
        _cmd.env = (_cmd.env.__append__(_env?.__copy__()));
        var __tmp__ = _cmd.combinedOutput(), _output:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("%s with %s: run failed: %v output:\n%s\n" : stdgo.GoString), stdgo.Go.toInterface(_test), stdgo.Go.toInterface(_env), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((_output : stdgo.GoString)));
        };
    }
