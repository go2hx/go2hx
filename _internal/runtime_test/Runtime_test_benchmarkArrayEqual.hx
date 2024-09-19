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
function benchmarkArrayEqual(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _a1 = (new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[
(1 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8),
(6 : stdgo.GoUInt8),
(7 : stdgo.GoUInt8),
(8 : stdgo.GoUInt8),
(9 : stdgo.GoUInt8),
(10 : stdgo.GoUInt8),
(11 : stdgo.GoUInt8),
(12 : stdgo.GoUInt8),
(13 : stdgo.GoUInt8),
(14 : stdgo.GoUInt8),
(15 : stdgo.GoUInt8),
(16 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__();
        var _a2 = (new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[
(1 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8),
(6 : stdgo.GoUInt8),
(7 : stdgo.GoUInt8),
(8 : stdgo.GoUInt8),
(9 : stdgo.GoUInt8),
(10 : stdgo.GoUInt8),
(11 : stdgo.GoUInt8),
(12 : stdgo.GoUInt8),
(13 : stdgo.GoUInt8),
(14 : stdgo.GoUInt8),
(15 : stdgo.GoUInt8),
(16 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__();
        _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                if (stdgo.Go.toInterface(_a1) != stdgo.Go.toInterface(_a2)) {
                    _b.fatal(stdgo.Go.toInterface(("not equal" : stdgo.GoString)));
                };
            });
        };
    }
