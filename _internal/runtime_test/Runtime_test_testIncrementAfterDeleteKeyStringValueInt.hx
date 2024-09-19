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
function testIncrementAfterDeleteKeyStringValueInt(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        {};
        var _m = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        _m[stdgo.Go.str()] = (99 : stdgo.GoInt);
        if (_m != null) _m.remove(stdgo.Go.str());
        _m[("x" : stdgo.GoString)] = ((_m[("x" : stdgo.GoString)] ?? (0 : stdgo.GoInt)) + ((1 : stdgo.GoInt)) : stdgo.GoInt);
        {
            var _n2 = (_m[("x" : stdgo.GoString)] ?? (0 : stdgo.GoInt) : stdgo.GoInt);
            if (_n2 != ((1 : stdgo.GoInt))) {
                _t.errorf(("incremented 0 to %d" : stdgo.GoString), stdgo.Go.toInterface(_n2));
            };
        };
    }
