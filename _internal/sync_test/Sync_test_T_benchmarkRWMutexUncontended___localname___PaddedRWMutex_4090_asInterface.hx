package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
class T_benchmarkRWMutexUncontended___localname___PaddedRWMutex_4090_asInterface {
    @:embedded
    public dynamic function _rUnlockSlow(_nameOff:stdgo.GoInt32):Void __self__.value._rUnlockSlow(_nameOff);
    @:embedded
    public dynamic function unlock():Void __self__.value.unlock();
    @:embedded
    public dynamic function tryRLock():Bool return __self__.value.tryRLock();
    @:embedded
    public dynamic function tryLock():Bool return __self__.value.tryLock();
    @:embedded
    public dynamic function runlock():Void __self__.value.runlock();
    @:embedded
    public dynamic function rlocker():stdgo._internal.sync.Sync_Locker.Locker return __self__.value.rlocker();
    @:embedded
    public dynamic function rlock():Void __self__.value.rlock();
    @:embedded
    public dynamic function lock():Void __self__.value.lock();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.sync_test.Sync_test_T_benchmarkRWMutexUncontended___localname___PaddedRWMutex_4090.T_benchmarkRWMutexUncontended___localname___PaddedRWMutex_4090>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
