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
function benchmarkAppendSpecialCase(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _b.stopTimer();
        var _x = (new stdgo.Slice<stdgo.GoInt>((0 : stdgo.GoInt).toBasic(), (20 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        _b.startTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = (_x.__slice__((0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < (20 : stdgo.GoInt) : Bool), _j++, {
                        if (((_x.length) < _x.capacity : Bool)) {
                            _x = (_x.__slice__(0, ((_x.length) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
                            _x[((_x.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] = _j;
                        } else {
                            _x = (_x.__append__(_j));
                        };
                    });
                };
            });
        };
    }
