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
function _verifyGCInfo(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _name:stdgo.GoString, _p:stdgo.AnyInterface, _mask0:stdgo.Slice<stdgo.GoUInt8>):Void {
        var _mask = stdgo._internal.runtime.Runtime_gcmask.gcmask(_p);
        if (!stdgo._internal.bytes.Bytes_equal.equal(_mask, _mask0)) {
            _t.errorf(("bad GC program for %v:\nwant %+v\ngot  %+v" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_mask0), stdgo.Go.toInterface(_mask));
            return;
        };
    }
