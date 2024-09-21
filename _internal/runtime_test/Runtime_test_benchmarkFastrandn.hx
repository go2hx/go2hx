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
function benchmarkFastrandn(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        {
            var _n = ((2u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
            stdgo.Go.cfor((_n <= (5u32 : stdgo.GoUInt32) : Bool), _n++, {
                _b.run(stdgo._internal.strconv.Strconv_itoa.itoa((_n : stdgo.GoInt))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                            _internal.runtime_test.Runtime_test__sink32._sink32 = stdgo._internal.runtime.Runtime_fastrandn.fastrandn(_n);
                        });
                    };
                });
            });
        };
    }
