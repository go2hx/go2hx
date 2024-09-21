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
function _small(_stop:stdgo.Chan<stdgo.GoInt>, _x:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):stdgo.GoInt {
        for (_i => _ in _x) {
            _x[(_i : stdgo.GoInt)] = (_i : stdgo.GoUInt8);
        };
        var _sum = (0 : stdgo.GoInt);
        for (_i => _ in _x) {
            _sum = (_sum + ((_x[(_i : stdgo.GoInt)] : stdgo.GoInt)) : stdgo.GoInt);
        };
        _internal.runtime_test.Runtime_test__nonleaf._nonleaf(_stop);
        return _sum;
    }
