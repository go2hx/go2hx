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
function _makePallocData(_alloc:stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>, _scavenged:stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>):stdgo.Ref<stdgo._internal.runtime.Runtime_PallocData.PallocData> {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.runtime.Runtime_PallocData.PallocData)) : stdgo.Ref<stdgo._internal.runtime.Runtime_PallocData.PallocData>);
        for (__6 => _v in _alloc) {
            if (_v.n == ((0u32 : stdgo.GoUInt))) {
                continue;
            };
            _b.allocRange(_v.i, _v.n);
        };
        for (__7 => _v in _scavenged) {
            if (_v.n == ((0u32 : stdgo.GoUInt))) {
                continue;
            };
            _b.scavengedSetRange(_v.i, _v.n);
        };
        return _b;
    }
