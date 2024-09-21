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
function _makeMatrix(_n:stdgo.GoInt):_internal.runtime_test.Runtime_test_Matrix.Matrix {
        var _m = (new stdgo.Slice<stdgo.Slice<stdgo.GoFloat64>>((_n : stdgo.GoInt).toBasic(), 0) : _internal.runtime_test.Runtime_test_Matrix.Matrix);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _n : Bool), _i++, {
                _m[(_i : stdgo.GoInt)] = (new stdgo.Slice<stdgo.GoFloat64>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < _n : Bool), _j++, {
                        _m[(_i : stdgo.GoInt)][(_j : stdgo.GoInt)] = (((_i * _n : stdgo.GoInt) + _j : stdgo.GoInt) : stdgo.GoFloat64);
                    });
                };
            });
        };
        return _m;
    }
