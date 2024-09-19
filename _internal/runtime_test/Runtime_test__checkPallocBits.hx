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
function _checkPallocBits(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _got:stdgo.Ref<stdgo._internal.runtime.Runtime_PallocBits.PallocBits>, _want:stdgo.Ref<stdgo._internal.runtime.Runtime_PallocBits.PallocBits>):Bool {
        var _d = stdgo._internal.runtime.Runtime_diffPallocBits.diffPallocBits(_got, _want);
        if ((_d.length) != ((0 : stdgo.GoInt))) {
            _t.errorf(("%d range(s) different" : stdgo.GoString), stdgo.Go.toInterface((_d.length)));
            for (__14 => _bits in _d) {
                _t.logf(("\t@ bit index %d" : stdgo.GoString), stdgo.Go.toInterface(_bits.i));
                _t.logf(("\t|  got: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.runtime.Runtime_stringifyPallocBits.stringifyPallocBits(_got, _bits?.__copy__())));
                _t.logf(("\t| want: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.runtime.Runtime_stringifyPallocBits.stringifyPallocBits(_want, _bits?.__copy__())));
            };
            return false;
        };
        return true;
    }
