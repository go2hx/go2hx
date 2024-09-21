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
function benchmarkClearFat14(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _p = (stdgo.Go.setRef(new stdgo.GoArray<stdgo.GoUInt8>(14, 14, ...[for (i in 0 ... 14) (0 : stdgo.GoUInt8)])) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>);
        stdgo._internal.runtime.Runtime_escape.escape(_p);
        _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _p = (new stdgo.GoArray<stdgo.GoUInt8>(14, 14, ...[]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__();
            });
        };
    }
