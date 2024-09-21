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
@:keep @:allow(_internal.runtime_test.Runtime_test.T_rwmutexWriteRead_asInterface) class T_rwmutexWriteRead_static_extension {
    @:keep
    static public function unlock2( _m:stdgo.Ref<_internal.runtime_test.Runtime_test_T_rwmutexWriteRead.T_rwmutexWriteRead>):Void {
        @:recv var _m:stdgo.Ref<_internal.runtime_test.Runtime_test_T_rwmutexWriteRead.T_rwmutexWriteRead> = _m;
        _m._mu.runlock();
    }
    @:keep
    static public function lock2( _m:stdgo.Ref<_internal.runtime_test.Runtime_test_T_rwmutexWriteRead.T_rwmutexWriteRead>):Void {
        @:recv var _m:stdgo.Ref<_internal.runtime_test.Runtime_test_T_rwmutexWriteRead.T_rwmutexWriteRead> = _m;
        _m._mu.rlock();
    }
    @:keep
    static public function unlock1( _m:stdgo.Ref<_internal.runtime_test.Runtime_test_T_rwmutexWriteRead.T_rwmutexWriteRead>):Void {
        @:recv var _m:stdgo.Ref<_internal.runtime_test.Runtime_test_T_rwmutexWriteRead.T_rwmutexWriteRead> = _m;
        _m._mu.unlock();
    }
    @:keep
    static public function lock1( _m:stdgo.Ref<_internal.runtime_test.Runtime_test_T_rwmutexWriteRead.T_rwmutexWriteRead>):Void {
        @:recv var _m:stdgo.Ref<_internal.runtime_test.Runtime_test_T_rwmutexWriteRead.T_rwmutexWriteRead> = _m;
        _m._mu.lock();
    }
}
