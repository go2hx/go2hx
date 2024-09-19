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
function _makePallocBits(_s:stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>):stdgo.Ref<stdgo._internal.runtime.Runtime_PallocBits.PallocBits> {
        var _b = (stdgo.Go.setRef(new stdgo._internal.runtime.Runtime_PallocBits.PallocBits(8, 8, ...[for (i in 0 ... 8) (0 : stdgo.GoUInt64)])) : stdgo.Ref<stdgo._internal.runtime.Runtime_PallocBits.PallocBits>);
        for (__6 => _v in _s) {
            _b.allocRange(_v.i, _v.n);
        };
        return _b;
    }
