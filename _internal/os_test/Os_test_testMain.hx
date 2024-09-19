package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testMain(_m:stdgo.Ref<stdgo._internal.testing.Testing_M.M>):Void {
        if (stdgo._internal.os.Os_getenv.getenv(("GO_OS_TEST_DRAIN_STDIN" : stdgo.GoString)) == (("1" : stdgo.GoString))) {
            stdgo._internal.os.Os_stdout.stdout.close();
            stdgo._internal.io.Io_copy.copy(stdgo._internal.io.Io_discard.discard, stdgo.Go.asInterface(stdgo._internal.os.Os_stdin.stdin));
            stdgo._internal.os.Os_exit.exit((0 : stdgo.GoInt));
        };
        stdgo._internal.os.Os_exit.exit(_m.run());
    }
