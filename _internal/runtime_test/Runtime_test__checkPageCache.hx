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
function _checkPageCache(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _got:stdgo._internal.runtime.Runtime_PageCache.PageCache, _want:stdgo._internal.runtime.Runtime_PageCache.PageCache):Void {
        if (_got.base() != (_want.base())) {
            _t.errorf(("bad pageCache base: got 0x%x, want 0x%x" : stdgo.GoString), stdgo.Go.toInterface(_got.base()), stdgo.Go.toInterface(_want.base()));
        };
        if (_got.cache() != (_want.cache())) {
            _t.errorf(("bad pageCache bits: got %016x, want %016x" : stdgo.GoString), stdgo.Go.toInterface(_got.base()), stdgo.Go.toInterface(_want.base()));
        };
        if (_got.scav() != (_want.scav())) {
            _t.errorf(("bad pageCache scav: got %016x, want %016x" : stdgo.GoString), stdgo.Go.toInterface(_got.scav()), stdgo.Go.toInterface(_want.scav()));
        };
    }
