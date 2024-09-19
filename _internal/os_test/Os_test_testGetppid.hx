package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testGetppid(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (false) {
            _t.skipf(("skipping test on plan9; see issue 8206" : stdgo.GoString));
        };
        if (stdgo._internal.os.Os_getenv.getenv(("GO_WANT_HELPER_PROCESS" : stdgo.GoString)) == (("1" : stdgo.GoString))) {
            stdgo._internal.fmt.Fmt_print.print(stdgo.Go.toInterface(stdgo._internal.os.Os_getppid.getppid()));
            stdgo._internal.os.Os_exit.exit((0 : stdgo.GoInt));
        };
        stdgo._internal.internal.testenv.Testenv_mustHaveExec.mustHaveExec(stdgo.Go.asInterface(_t));
        _t.parallel();
        var _cmd = stdgo._internal.internal.testenv.Testenv_command.command(stdgo.Go.asInterface(_t), stdgo._internal.os.Os_args.args[(0 : stdgo.GoInt)]?.__copy__(), ("-test.run=TestGetppid" : stdgo.GoString));
        _cmd.env = (stdgo._internal.os.Os_environ_.environ_().__append__(("GO_WANT_HELPER_PROCESS=1" : stdgo.GoString)));
        var __tmp__ = _cmd.combinedOutput(), _output:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("Failed to spawn child process: %v %q" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((_output : stdgo.GoString)));
        };
        var _childPpid = ((_output : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _ourPid = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%d" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.os.Os_getpid.getpid()))?.__copy__() : stdgo.GoString);
        if (_childPpid != (_ourPid)) {
            _t.fatalf(("Child process reports parent process id \'%v\', expected \'%v\'" : stdgo.GoString), stdgo.Go.toInterface(_childPpid), stdgo.Go.toInterface(_ourPid));
        };
    }
