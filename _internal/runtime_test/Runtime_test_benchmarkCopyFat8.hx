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
function benchmarkCopyFat8(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _x:stdgo.GoArray<stdgo.GoUInt32> = new stdgo.GoArray<stdgo.GoUInt32>(2, 2, ...[for (i in 0 ... 2) (0 : stdgo.GoUInt32)]);
        var _p = (stdgo.Go.setRef(new stdgo.GoArray<stdgo.GoUInt32>(2, 2, ...[for (i in 0 ... 2) (0 : stdgo.GoUInt32)])) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt32>>);
        stdgo._internal.runtime.Runtime_escape.escape(_p);
        _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _p = _x?.__copy__();
            });
        };
    }
