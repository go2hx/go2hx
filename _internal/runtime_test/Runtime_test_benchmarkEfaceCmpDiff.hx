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
function benchmarkEfaceCmpDiff(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _x = (5 : stdgo.GoInt);
        _internal.runtime_test.Runtime_test__efaceCmp1._efaceCmp1 = stdgo.Go.toInterface(stdgo.Go.pointer(_x));
        var _y = (6 : stdgo.GoInt);
        _internal.runtime_test.Runtime_test__efaceCmp2._efaceCmp2 = stdgo.Go.toInterface(stdgo.Go.pointer(_y));
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < (100 : stdgo.GoInt) : Bool), _j++, {
                        if (_internal.runtime_test.Runtime_test__efaceCmp1._efaceCmp1 == (_internal.runtime_test.Runtime_test__efaceCmp2._efaceCmp2)) {
                            _b.fatal(stdgo.Go.toInterface(("bad comparison" : stdgo.GoString)));
                        };
                    });
                };
            });
        };
    }
