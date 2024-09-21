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
function testRuntimePanic(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        stdgo._internal.internal.testenv.Testenv_mustHaveExec.mustHaveExec(stdgo.Go.asInterface(_t));
        var _cmd = stdgo._internal.internal.testenv.Testenv_cleanCmdEnv.cleanCmdEnv(stdgo._internal.os.exec.Exec_command.command(stdgo._internal.os.Os_args.args[(0 : stdgo.GoInt)]?.__copy__(), ("-test.run=TestRuntimePanic" : stdgo.GoString)));
        _cmd.env = (_cmd.env.__append__(("GO_TEST_RUNTIME_PANIC=1" : stdgo.GoString)));
        var __tmp__ = _cmd.combinedOutput(), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _t.logf(("%s" : stdgo.GoString), stdgo.Go.toInterface(_out));
        if (_err == null) {
            _t.error(stdgo.Go.toInterface(("child process did not fail" : stdgo.GoString)));
        } else {
            var _want = ("runtime.unexportedPanicForTesting" : stdgo.GoString);
            if (!stdgo._internal.bytes.Bytes_contains.contains(_out, (_want : stdgo.Slice<stdgo.GoUInt8>))) {
                _t.errorf(("output did not contain expected string %q" : stdgo.GoString), stdgo.Go.toInterface(_want));
            };
        };
    }
