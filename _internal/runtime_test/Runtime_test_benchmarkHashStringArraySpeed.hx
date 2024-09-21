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
function benchmarkHashStringArraySpeed(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _stringpairs = (new stdgo.Slice<stdgo.GoArray<stdgo.GoString>>((10 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((10 : stdgo.GoInt).toBasic() > 0 ? (10 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) new stdgo.GoArray<stdgo.GoString>(2, 2, ...[for (i in 0 ... 2) ("" : stdgo.GoString)])]) : stdgo.Slice<stdgo.GoArray<stdgo.GoString>>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < (2 : stdgo.GoInt) : Bool), _j++, {
                        _stringpairs[(_i : stdgo.GoInt)][(_j : stdgo.GoInt)] = stdgo._internal.fmt.Fmt_sprintf.sprintf(("string#%d/%d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_j))?.__copy__();
                    });
                };
            });
        };
        var _sum = (0 : stdgo.GoInt);
        var _m = ({
            final x = new stdgo.GoMap.GoObjectMap<stdgo.GoArray<stdgo.GoString>, stdgo.GoInt>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, 2));
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            cast x;
        } : stdgo.GoMap<stdgo.GoArray<stdgo.GoString>, stdgo.GoInt>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                _m[_stringpairs[(_i : stdgo.GoInt)]] = (0 : stdgo.GoInt);
            });
        };
        var _idx = (0 : stdgo.GoInt);
        _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _sum = (_sum + ((_m[_stringpairs[(_idx : stdgo.GoInt)]] ?? (0 : stdgo.GoInt))) : stdgo.GoInt);
                _idx++;
                if (_idx == ((10 : stdgo.GoInt))) {
                    _idx = (0 : stdgo.GoInt);
                };
            });
        };
    }
