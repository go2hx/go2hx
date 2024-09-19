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
function _benchmarkMapDeletePointer(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _n:stdgo.GoInt):Void {
        var _i2p = (new stdgo.Slice<stdgo.Pointer<stdgo.GoInt>>((_n : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Pointer<stdgo.GoInt>>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _n : Bool), _i++, {
                _i2p[(_i : stdgo.GoInt)] = stdgo.Go.pointer((0 : stdgo.GoInt));
            });
        };
        var _a = ({
            final x = new stdgo.GoMap.GoPointerMap<stdgo.Pointer<stdgo.GoInt>, stdgo.GoInt>();
            {};
            cast x;
        } : stdgo.GoMap<stdgo.Pointer<stdgo.GoInt>, stdgo.GoInt>);
        _b.resetTimer();
        var _k = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                if ((_a.length) == ((0 : stdgo.GoInt))) {
                    _b.stopTimer();
                    {
                        var _j = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_j < _n : Bool), _j++, {
                            _a[_i2p[(_j : stdgo.GoInt)]] = _j;
                        });
                    };
                    _k = _i;
                    _b.startTimer();
                };
                if (_a != null) _a.remove(_i2p[(_i - _k : stdgo.GoInt)]);
            });
        };
    }
