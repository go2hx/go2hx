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
function _benchmarkMapAppendAssignInt32(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _n:stdgo.GoInt):Void {
        var _a = ({
            final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo.GoInt>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoInt>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoInt32, stdgo.Slice<stdgo.GoInt>>);
        _b.reportAllocs();
        _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                var _key = ((_i & ((_n - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt) : stdgo.GoInt32);
                _a[_key] = ((_a[_key] ?? (null : stdgo.Slice<stdgo.GoInt>)).__append__(_i));
            });
        };
    }
