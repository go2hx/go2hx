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
function benchmarkClearFat40(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _p = (stdgo.Go.setRef(new stdgo.GoArray<stdgo.GoUInt32>(10, 10, ...[for (i in 0 ... 10) (0 : stdgo.GoUInt32)])) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt32>>);
        stdgo._internal.runtime.Runtime_escape.escape(_p);
        _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _p = (new stdgo.GoArray<stdgo.GoUInt32>(10, 10, ...[]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt32>)?.__copy__();
            });
        };
    }