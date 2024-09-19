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
function _benchmarkSyscall(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _work:stdgo.GoInt, _excess:stdgo.GoInt):Void {
        _b.setParallelism(_excess);
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB>):Void {
            var _foo = (42 : stdgo.GoInt);
            while (_pb.next()) {
                stdgo._internal.runtime.Runtime_entersyscall.entersyscall();
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _work : Bool), _i++, {
                        _foo = (_foo * ((2 : stdgo.GoInt)) : stdgo.GoInt);
                        _foo = (_foo / ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    });
                };
                stdgo._internal.runtime.Runtime_exitsyscall.exitsyscall();
            };
            var __blank__ = _foo;
        });
    }
