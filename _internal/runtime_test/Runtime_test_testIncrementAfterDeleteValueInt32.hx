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
function testIncrementAfterDeleteValueInt32(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        {};
        var _m = ({
            final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt32>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt32);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt32>);
        _m[(12 : stdgo.GoInt)] = (99 : stdgo.GoInt32);
        if (_m != null) _m.remove((12 : stdgo.GoInt));
        (_m[(13 : stdgo.GoInt)] != null ? _m[(13 : stdgo.GoInt)]++ : (0 : stdgo.GoInt32));
        {
            var _n2 = (_m[(13 : stdgo.GoInt)] ?? (0 : stdgo.GoInt32) : stdgo.GoInt32);
            if (_n2 != ((1 : stdgo.GoInt32))) {
                _t.errorf(("incremented 0 to %d" : stdgo.GoString), stdgo.Go.toInterface(_n2));
            };
        };
    }
