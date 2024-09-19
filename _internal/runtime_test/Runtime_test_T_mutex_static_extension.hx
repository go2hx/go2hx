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
@:keep @:allow(_internal.runtime_test.Runtime_test.T_mutex_asInterface) class T_mutex_static_extension {
    @:keep
    static public function unlock2( _m:stdgo.Ref<_internal.runtime_test.Runtime_test_T_mutex.T_mutex>):Void {
        @:recv var _m:stdgo.Ref<_internal.runtime_test.Runtime_test_T_mutex.T_mutex> = _m;
        _m._mu.unlock();
    }
    @:keep
    static public function lock2( _m:stdgo.Ref<_internal.runtime_test.Runtime_test_T_mutex.T_mutex>):Void {
        @:recv var _m:stdgo.Ref<_internal.runtime_test.Runtime_test_T_mutex.T_mutex> = _m;
        _m._mu.lock();
    }
    @:keep
    static public function unlock1( _m:stdgo.Ref<_internal.runtime_test.Runtime_test_T_mutex.T_mutex>):Void {
        @:recv var _m:stdgo.Ref<_internal.runtime_test.Runtime_test_T_mutex.T_mutex> = _m;
        _m._mu.unlock();
    }
    @:keep
    static public function lock1( _m:stdgo.Ref<_internal.runtime_test.Runtime_test_T_mutex.T_mutex>):Void {
        @:recv var _m:stdgo.Ref<_internal.runtime_test.Runtime_test_T_mutex.T_mutex> = _m;
        _m._mu.lock();
    }
}
