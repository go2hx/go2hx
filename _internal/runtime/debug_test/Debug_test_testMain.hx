package _internal.runtime.debug_test;
import stdgo._internal.runtime.debug.Debug;
import stdgo._internal.runtime.debug.Debug;
import stdgo._internal.runtime.debug.Debug;
function testMain(_m:stdgo.Ref<stdgo._internal.testing.Testing_M.M>):Void {
        if (stdgo._internal.os.Os_getenv.getenv(("GO_RUNTIME_DEBUG_TEST_DUMP_GOROOT" : stdgo.GoString)) != (stdgo.Go.str())) {
            stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.runtime.Runtime_goroot.goroot()));
            Sys.exit((0 : stdgo.GoInt));
        };
        Sys.exit(_m.run());
    }
