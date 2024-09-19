package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function exampleGetenv():Void {
        stdgo._internal.os.Os_setenv.setenv(("NAME" : stdgo.GoString), ("gopher" : stdgo.GoString));
        stdgo._internal.os.Os_setenv.setenv(("BURROW" : stdgo.GoString), ("/usr/gopher" : stdgo.GoString));
        stdgo._internal.fmt.Fmt_printf.printf(("%s lives in %s.\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.os.Os_getenv.getenv(("NAME" : stdgo.GoString))), stdgo.Go.toInterface(stdgo._internal.os.Os_getenv.getenv(("BURROW" : stdgo.GoString))));
    }
