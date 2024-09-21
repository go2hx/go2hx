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
function testString2Slice(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _s = ("foož" : stdgo.GoString);
        var _b = (_s : stdgo.Slice<stdgo.GoUInt8>);
        if (!_internal.runtime_test.Runtime_test__isZeroed._isZeroed((_b.__slice__((_b.length), _b.capacity) : stdgo.Slice<stdgo.GoUInt8>))) {
            _t.errorf(("extra bytes not zeroed" : stdgo.GoString));
        };
        var _r = (_s : stdgo.Slice<stdgo.GoInt32>);
        if (!_internal.runtime_test.Runtime_test__isZeroedR._isZeroedR((_r.__slice__((_r.length), _r.capacity) : stdgo.Slice<stdgo.GoInt32>))) {
            _t.errorf(("extra runes not zeroed" : stdgo.GoString));
        };
    }
