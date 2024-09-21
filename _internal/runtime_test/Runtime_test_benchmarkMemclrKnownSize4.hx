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
function benchmarkMemclrKnownSize4(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _x:stdgo.GoArray<stdgo.GoInt8> = new stdgo.GoArray<stdgo.GoInt8>(4, 4, ...[for (i in 0 ... 4) (0 : stdgo.GoInt8)]);
        _b.setBytes((4i64 : stdgo.GoInt64));
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                for (_a => _ in _x) {
                    _x[(_a : stdgo.GoInt)] = (0 : stdgo.GoInt8);
                };
            });
        };
        _internal.runtime_test.Runtime_test__memclrSink._memclrSink = (_x.__slice__(0) : stdgo.Slice<stdgo.GoInt8>);
    }
