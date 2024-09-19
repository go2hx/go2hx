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
function benchmarkCompareStringEqual(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _bytes = (("Hello Gophers!" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        var __0 = ((_bytes : stdgo.GoString)?.__copy__() : stdgo.GoString), __1 = ((_bytes : stdgo.GoString)?.__copy__() : stdgo.GoString);
var _s2 = __1, _s1 = __0;
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                if (_s1 != (_s2)) {
                    _b.fatal(stdgo.Go.toInterface(("s1 != s2" : stdgo.GoString)));
                };
            });
        };
    }
