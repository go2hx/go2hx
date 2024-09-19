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
function benchmarkHashStringSpeed(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _strings = (new stdgo.Slice<stdgo.GoString>((10 : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                _strings[(_i : stdgo.GoInt)] = stdgo._internal.fmt.Fmt_sprintf.sprintf(("string#%d" : stdgo.GoString), stdgo.Go.toInterface(_i))?.__copy__();
            });
        };
        var _sum = (0 : stdgo.GoInt);
        var _m = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                _m[_strings[(_i : stdgo.GoInt)]] = (0 : stdgo.GoInt);
            });
        };
        var _idx = (0 : stdgo.GoInt);
        _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _sum = (_sum + ((_m[_strings[(_idx : stdgo.GoInt)]] ?? (0 : stdgo.GoInt))) : stdgo.GoInt);
                _idx++;
                if (_idx == ((10 : stdgo.GoInt))) {
                    _idx = (0 : stdgo.GoInt);
                };
            });
        };
    }
