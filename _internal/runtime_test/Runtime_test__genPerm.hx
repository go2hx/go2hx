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
function _genPerm(_h:stdgo.Ref<_internal.runtime_test.Runtime_test_HashSet.HashSet>, _b:stdgo.Slice<stdgo.GoUInt8>, _s:stdgo.Slice<stdgo.GoUInt32>, _n:stdgo.GoInt):Void {
        _h._addB((_b.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>));
        if (_n == ((_b.length))) {
            return;
        };
        for (__6 => _v in _s) {
            _b[(_n : stdgo.GoInt)] = (_v : stdgo.GoUInt8);
            _b[(_n + (1 : stdgo.GoInt) : stdgo.GoInt)] = ((_v >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
            _b[(_n + (2 : stdgo.GoInt) : stdgo.GoInt)] = ((_v >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
            _b[(_n + (3 : stdgo.GoInt) : stdgo.GoInt)] = ((_v >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
            _internal.runtime_test.Runtime_test__genPerm._genPerm(_h, _b, _s, (_n + (4 : stdgo.GoInt) : stdgo.GoInt));
        };
    }
