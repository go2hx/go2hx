package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function exampleExpandEnv():Void {
        stdgo._internal.os.Os_setenv.setenv(("NAME" : stdgo.GoString), ("gopher" : stdgo.GoString));
        stdgo._internal.os.Os_setenv.setenv(("BURROW" : stdgo.GoString), ("/usr/gopher" : stdgo.GoString));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.os.Os_expandEnv.expandEnv(("$NAME lives in ${BURROW}." : stdgo.GoString))));
    }
