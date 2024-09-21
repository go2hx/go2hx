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
function testMapOperatorAssignment(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _m = ({
            final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>);
        _m[(0 : stdgo.GoInt)] = (12345 : stdgo.GoInt);
        _m[(0 : stdgo.GoInt)] = ((_m[(0 : stdgo.GoInt)] ?? (0 : stdgo.GoInt)) + ((67890 : stdgo.GoInt)) : stdgo.GoInt);
        _m[(0 : stdgo.GoInt)] = ((_m[(0 : stdgo.GoInt)] ?? (0 : stdgo.GoInt)) / ((123 : stdgo.GoInt)) : stdgo.GoInt);
        _m[(0 : stdgo.GoInt)] = ((_m[(0 : stdgo.GoInt)] ?? (0 : stdgo.GoInt)) % ((456 : stdgo.GoInt)) : stdgo.GoInt);
        {};
        {
            var _got = (_m[(0 : stdgo.GoInt)] ?? (0 : stdgo.GoInt) : stdgo.GoInt);
            if (_got != ((196 : stdgo.GoInt))) {
                _t.errorf(("got %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface((196 : stdgo.GoInt)));
            };
        };
    }
