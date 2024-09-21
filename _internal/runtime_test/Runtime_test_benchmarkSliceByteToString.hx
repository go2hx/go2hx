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
function benchmarkSliceByteToString(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(33 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _n = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_n < (8 : stdgo.GoInt) : Bool), _n++, {
                _b.run(stdgo._internal.strconv.Strconv_itoa.itoa((_buf.length))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                            _internal.runtime_test.Runtime_test__escapeString._escapeString = (_buf : stdgo.GoString)?.__copy__();
                        });
                    };
                });
                _buf = (_buf.__append__(...(_buf : Array<stdgo.GoUInt8>)));
            });
        };
    }
