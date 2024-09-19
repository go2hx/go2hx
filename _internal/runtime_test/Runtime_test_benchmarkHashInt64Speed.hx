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
function benchmarkHashInt64Speed(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _ints = (new stdgo.Slice<stdgo.GoInt64>((10 : stdgo.GoInt).toBasic(), 0).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                _ints[(_i : stdgo.GoInt)] = (_i : stdgo.GoInt64);
            });
        };
        var _sum = (0 : stdgo.GoInt);
        var _m = ({
            final x = new stdgo.GoMap.GoInt64Map<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoInt64, stdgo.GoInt>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                _m[_ints[(_i : stdgo.GoInt)]] = (0 : stdgo.GoInt);
            });
        };
        var _idx = (0 : stdgo.GoInt);
        _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _sum = (_sum + ((_m[_ints[(_idx : stdgo.GoInt)]] ?? (0 : stdgo.GoInt))) : stdgo.GoInt);
                _idx++;
                if (_idx == ((10 : stdgo.GoInt))) {
                    _idx = (0 : stdgo.GoInt);
                };
            });
        };
    }
