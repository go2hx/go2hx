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
function _useStackPtrs(_n:stdgo.GoInt, _b:Bool):Void {
        if (_b) {
            var _a:stdgo.GoArray<stdgo.Pointer<stdgo.GoInt>> = new stdgo.GoArray<stdgo.Pointer<stdgo.GoInt>>(128, 128, ...[for (i in 0 ... 128) (null : stdgo.Pointer<stdgo.GoInt>)]);
            _a[(_n : stdgo.GoInt)] = stdgo.Go.pointer(_n);
            _n = _a[(0 : stdgo.GoInt)].value;
        };
        if (_n == ((0 : stdgo.GoInt))) {
            return;
        };
        _internal.runtime_test.Runtime_test__useStackPtrs._useStackPtrs((_n - (1 : stdgo.GoInt) : stdgo.GoInt), _b);
    }
