package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function exampleLookupEnv():Void {
        var _show = (function(_key:stdgo.GoString):Void {
            var __tmp__ = stdgo._internal.os.Os_lookupEnv.lookupEnv(_key?.__copy__()), _val:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                stdgo._internal.fmt.Fmt_printf.printf(("%s not set\n" : stdgo.GoString), stdgo.Go.toInterface(_key));
            } else {
                stdgo._internal.fmt.Fmt_printf.printf(("%s=%s\n" : stdgo.GoString), stdgo.Go.toInterface(_key), stdgo.Go.toInterface(_val));
            };
        } : stdgo.GoString -> Void);
        stdgo._internal.os.Os_setenv.setenv(("SOME_KEY" : stdgo.GoString), ("value" : stdgo.GoString));
        stdgo._internal.os.Os_setenv.setenv(("EMPTY_KEY" : stdgo.GoString), stdgo.Go.str()?.__copy__());
        _show(("SOME_KEY" : stdgo.GoString));
        _show(("EMPTY_KEY" : stdgo.GoString));
        _show(("MISSING_KEY" : stdgo.GoString));
    }
