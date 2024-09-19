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
function testG0StackOverflow(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        stdgo._internal.internal.testenv.Testenv_mustHaveExec.mustHaveExec(stdgo.Go.asInterface(_t));
        {
            final __value__ = ("js" : stdgo.GoString);
            if (__value__ == (("android" : stdgo.GoString)) || __value__ == (("darwin" : stdgo.GoString)) || __value__ == (("dragonfly" : stdgo.GoString)) || __value__ == (("freebsd" : stdgo.GoString)) || __value__ == (("ios" : stdgo.GoString)) || __value__ == (("linux" : stdgo.GoString)) || __value__ == (("netbsd" : stdgo.GoString)) || __value__ == (("openbsd" : stdgo.GoString))) {
                _t.skipf(("g0 stack is wrong on pthread platforms (see golang.org/issue/26061)" : stdgo.GoString));
            };
        };
        if (stdgo._internal.os.Os_getenv.getenv(("TEST_G0_STACK_OVERFLOW" : stdgo.GoString)) != (("1" : stdgo.GoString))) {
            var _cmd = stdgo._internal.internal.testenv.Testenv_cleanCmdEnv.cleanCmdEnv(stdgo._internal.os.exec.Exec_command.command(stdgo._internal.os.Os_args.args[(0 : stdgo.GoInt)]?.__copy__(), ("-test.run=TestG0StackOverflow" : stdgo.GoString), ("-test.v" : stdgo.GoString)));
            _cmd.env = (_cmd.env.__append__(("TEST_G0_STACK_OVERFLOW=1" : stdgo.GoString)));
            var __tmp__ = _cmd.combinedOutput(), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            {
                var _n = (stdgo._internal.strings.Strings_count.count((_out : stdgo.GoString)?.__copy__(), ("morestack on g0\n" : stdgo.GoString)) : stdgo.GoInt);
                if (_n != ((1 : stdgo.GoInt))) {
                    _t.fatalf(("%s\n(exit status %v)" : stdgo.GoString), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_err));
                };
            };
            if (true) {
                {
                    var _want = ("PC=" : stdgo.GoString);
                    if (!stdgo._internal.strings.Strings_contains.contains((_out : stdgo.GoString)?.__copy__(), _want?.__copy__())) {
                        _t.errorf(("output does not contain %q:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_out));
                    };
                };
            };
            return;
        };
        stdgo._internal.runtime.Runtime_g0stackOverflow.g0stackOverflow();
    }
