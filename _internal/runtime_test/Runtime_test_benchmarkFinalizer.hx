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
function benchmarkFinalizer(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        {};
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB>):Void {
            var _data:stdgo.GoArray<stdgo.Pointer<stdgo.GoInt>> = new stdgo.GoArray<stdgo.Pointer<stdgo.GoInt>>(1000, 1000, ...[for (i in 0 ... 1000) (null : stdgo.Pointer<stdgo.GoInt>)]);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (1000 : stdgo.GoInt) : Bool), _i++, {
                    _data[(_i : stdgo.GoInt)] = stdgo.Go.pointer((0 : stdgo.GoInt));
                });
            };
            while (_pb.next()) {
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < (1000 : stdgo.GoInt) : Bool), _i++, {
                        stdgo._internal.runtime.Runtime_setFinalizer.setFinalizer(stdgo.Go.toInterface(_data[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_internal.runtime_test.Runtime_test__fin._fin));
                    });
                };
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < (1000 : stdgo.GoInt) : Bool), _i++, {
                        stdgo._internal.runtime.Runtime_setFinalizer.setFinalizer(stdgo.Go.toInterface(_data[(_i : stdgo.GoInt)]), (null : stdgo.AnyInterface));
                    });
                };
            };
        });
    }
