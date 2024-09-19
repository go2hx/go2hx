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
function benchmarkGoMemclr(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _internal.runtime_test.Runtime_test__benchmarkSizes._benchmarkSizes(_b, (new stdgo.Slice<stdgo.GoInt>(4, 4, ...[(5 : stdgo.GoInt), (16 : stdgo.GoInt), (64 : stdgo.GoInt), (256 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _n:stdgo.GoInt):Void {
            var _x = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    for (_j => _ in _x) {
                        _x[(_j : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
                    };
                });
            };
        });
    }
