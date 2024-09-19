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
function benchmarkChanSem(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        {};
        var _myc = (new stdgo.Chan<_internal.runtime_test.Runtime_test_T_benchmarkChanSem___localname___Empty_22985.T_benchmarkChanSem___localname___Empty_22985>((stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs((0 : stdgo.GoInt)) : stdgo.GoInt).toBasic(), () -> ({} : _internal.runtime_test.Runtime_test_T_benchmarkChanSem___localname___Empty_22985.T_benchmarkChanSem___localname___Empty_22985)) : stdgo.Chan<_internal.runtime_test.Runtime_test_T_benchmarkChanSem___localname___Empty_22985.T_benchmarkChanSem___localname___Empty_22985>);
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB>):Void {
            while (_pb.next()) {
                _myc.__send__((new _internal.runtime_test.Runtime_test_T_benchmarkChanSem___localname___Empty_22985.T_benchmarkChanSem___localname___Empty_22985() : _internal.runtime_test.Runtime_test_T_benchmarkChanSem___localname___Empty_22985.T_benchmarkChanSem___localname___Empty_22985));
                _myc.__get__();
            };
        });
    }
