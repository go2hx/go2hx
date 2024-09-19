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
@:structInit @:using(_internal.runtime_test.Runtime_test_T_benchmarkRWMutexUncontended___localname___PaddedRWMutex_3347_static_extension.T_benchmarkRWMutexUncontended___localname___PaddedRWMutex_3347_static_extension) class T_benchmarkRWMutexUncontended___localname___PaddedRWMutex_3347 {
    @:embedded
    public var rwmutex : stdgo._internal.runtime.Runtime_RWMutex.RWMutex = ({} : stdgo._internal.runtime.Runtime_RWMutex.RWMutex);
    public var _pad : stdgo.GoArray<stdgo.GoUInt32> = new stdgo.GoArray<stdgo.GoUInt32>(32, 32, ...[for (i in 0 ... 32) (0 : stdgo.GoUInt32)]);
    public function new(?rwmutex:stdgo._internal.runtime.Runtime_RWMutex.RWMutex, ?_pad:stdgo.GoArray<stdgo.GoUInt32>) {
        if (rwmutex != null) this.rwmutex = rwmutex;
        if (_pad != null) this._pad = _pad;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function lock() this.rwmutex.lock();
    @:embedded
    public function rlock() this.rwmutex.rlock();
    @:embedded
    public function runlock() this.rwmutex.runlock();
    @:embedded
    public function unlock() this.rwmutex.unlock();
    public function __copy__() {
        return new T_benchmarkRWMutexUncontended___localname___PaddedRWMutex_3347(rwmutex, _pad);
    }
}
