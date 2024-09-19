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
function _benchmarkRepeatedLookup(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _lookupKeySize:stdgo.GoInt):Void {
        var _m = ({
            final x = new stdgo.GoMap.GoStringMap<Bool>();
            x.__defaultValue__ = () -> false;
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, Bool>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (64 : stdgo.GoInt) : Bool), _i++, {
                _m[stdgo._internal.fmt.Fmt_sprintf.sprintf(("some key %d" : stdgo.GoString), stdgo.Go.toInterface(_i))] = true;
            });
        };
        var _base = (stdgo._internal.strings.Strings_repeat.repeat(("x" : stdgo.GoString), (_lookupKeySize - (1 : stdgo.GoInt) : stdgo.GoInt))?.__copy__() : stdgo.GoString);
        var _key1 = ((_base + ("1" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _key2 = ((_base + ("2" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_b.n / (4 : stdgo.GoInt) : stdgo.GoInt) : Bool), _i++, {
                var __blank__ = (_m[_key1] ?? false);
                var __blank__ = (_m[_key1] ?? false);
                var __blank__ = (_m[_key2] ?? false);
                var __blank__ = (_m[_key2] ?? false);
            });
        };
    }
