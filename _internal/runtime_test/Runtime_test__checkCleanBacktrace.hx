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
function _checkCleanBacktrace(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _backtrace:stdgo.GoString):Void {
        _backtrace = stdgo._internal.strings.Strings_trimSpace.trimSpace(_backtrace?.__copy__())?.__copy__();
        var _lines = stdgo._internal.strings.Strings_split.split(_backtrace?.__copy__(), ("\n" : stdgo.GoString));
        if ((_lines.length) == ((0 : stdgo.GoInt))) {
            _t.fatalf(("empty backtrace" : stdgo.GoString));
        };
        for (_i => _l in _lines) {
            if (!stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_l?.__copy__(), stdgo._internal.fmt.Fmt_sprintf.sprintf(("#%v  " : stdgo.GoString), stdgo.Go.toInterface(_i))?.__copy__())) {
                _t.fatalf(("malformed backtrace at line %v: %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_l));
            };
        };
    }
