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
function testIncrementAfterDeleteValueInt(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        {};
        var _m = ({
            final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>);
        _m[(12 : stdgo.GoInt)] = (99 : stdgo.GoInt);
        if (_m != null) _m.remove((12 : stdgo.GoInt));
        (_m[(13 : stdgo.GoInt)] != null ? _m[(13 : stdgo.GoInt)]++ : (0 : stdgo.GoInt));
        {
            var _n2 = (_m[(13 : stdgo.GoInt)] ?? (0 : stdgo.GoInt) : stdgo.GoInt);
            if (_n2 != ((1 : stdgo.GoInt))) {
                _t.errorf(("incremented 0 to %d" : stdgo.GoString), stdgo.Go.toInterface(_n2));
            };
        };
    }
