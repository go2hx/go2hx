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
function testPageAccounting(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _blocks = (new stdgo.Slice<stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>>((1024 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>>);
        for (_i => _ in _blocks) {
            _blocks[(_i : stdgo.GoInt)] = (stdgo.Go.setRef(new stdgo.GoArray<stdgo.GoUInt8>(65536, 65536, ...[for (i in 0 ... 65536) (0 : stdgo.GoUInt8)])) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>);
        };
        var __tmp__ = stdgo._internal.runtime.Runtime_countPagesInUse.countPagesInUse(), _pagesInUse:stdgo.GoUIntptr = __tmp__._0, _counted:stdgo.GoUIntptr = __tmp__._1;
        if (_pagesInUse != (_counted)) {
            _t.fatalf(("mheap_.pagesInUse is %d, but direct count is %d" : stdgo.GoString), stdgo.Go.toInterface(_pagesInUse), stdgo.Go.toInterface(_counted));
        };
    }
