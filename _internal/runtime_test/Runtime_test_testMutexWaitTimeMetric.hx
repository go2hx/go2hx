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
function testMutexWaitTimeMetric(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _sample:stdgo.GoArray<stdgo._internal.runtime.metrics.Metrics_Sample.Sample> = new stdgo.GoArray<stdgo._internal.runtime.metrics.Metrics_Sample.Sample>(1, 1, ...[for (i in 0 ... 1) ({} : stdgo._internal.runtime.metrics.Metrics_Sample.Sample)]);
        _sample[(0 : stdgo.GoInt)].name = ("/sync/mutex/wait/total:seconds" : stdgo.GoString);
        var _locks = (new stdgo.Slice<_internal.runtime_test.Runtime_test_T_locker2.T_locker2>(4, 4, ...[stdgo.Go.asInterface((stdgo.Go.setRef(({} : _internal.runtime_test.Runtime_test_T_mutex.T_mutex)) : stdgo.Ref<_internal.runtime_test.Runtime_test_T_mutex.T_mutex>)), stdgo.Go.asInterface((stdgo.Go.setRef(({} : _internal.runtime_test.Runtime_test_T_rwmutexWrite.T_rwmutexWrite)) : stdgo.Ref<_internal.runtime_test.Runtime_test_T_rwmutexWrite.T_rwmutexWrite>)), stdgo.Go.asInterface((stdgo.Go.setRef(({} : _internal.runtime_test.Runtime_test_T_rwmutexReadWrite.T_rwmutexReadWrite)) : stdgo.Ref<_internal.runtime_test.Runtime_test_T_rwmutexReadWrite.T_rwmutexReadWrite>)), stdgo.Go.asInterface((stdgo.Go.setRef(({} : _internal.runtime_test.Runtime_test_T_rwmutexWriteRead.T_rwmutexWriteRead)) : stdgo.Ref<_internal.runtime_test.Runtime_test_T_rwmutexWriteRead.T_rwmutexWriteRead>))]) : stdgo.Slice<_internal.runtime_test.Runtime_test_T_locker2.T_locker2>);
        for (__6 => _lock in _locks) {
            _t.run(stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(_lock)).elem().name()?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                stdgo._internal.runtime.metrics.Metrics_read.read((_sample.__slice__(0) : stdgo.Slice<stdgo._internal.runtime.metrics.Metrics_Sample.Sample>));
                var _before = ((_sample[(0 : stdgo.GoInt)].value.float64() * (1e+09 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo._internal.time.Time_Duration.Duration);
                var _minMutexWaitTime = (_internal.runtime_test.Runtime_test__generateMutexWaitTime._generateMutexWaitTime(_lock) : stdgo._internal.time.Time_Duration.Duration);
                stdgo._internal.runtime.metrics.Metrics_read.read((_sample.__slice__(0) : stdgo.Slice<stdgo._internal.runtime.metrics.Metrics_Sample.Sample>));
                var _after = ((_sample[(0 : stdgo.GoInt)].value.float64() * (1e+09 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo._internal.time.Time_Duration.Duration);
                {
                    var _wt = (_after - _before : stdgo._internal.time.Time_Duration.Duration);
                    if ((_wt < _minMutexWaitTime : Bool)) {
                        _t.errorf(("too little mutex wait time: got %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_wt)), stdgo.Go.toInterface(stdgo.Go.asInterface(_minMutexWaitTime)));
                    };
                };
            });
        };
    }
