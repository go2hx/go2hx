package stdgo.sync;
class Mutex_static_extension {
    static public function _unlockSlow(_m:Mutex, _new:StdTypes.Int):Void {
        final _m = (_m : stdgo.Ref<stdgo._internal.sync.Sync_Mutex.Mutex>);
        final _new = (_new : stdgo.GoInt32);
        stdgo._internal.sync.Sync_Mutex_static_extension.Mutex_static_extension._unlockSlow(_m, _new);
    }
    static public function unlock(_m:Mutex):Void {
        final _m = (_m : stdgo.Ref<stdgo._internal.sync.Sync_Mutex.Mutex>);
        stdgo._internal.sync.Sync_Mutex_static_extension.Mutex_static_extension.unlock(_m);
    }
    static public function _lockSlow(_m:Mutex):Void {
        final _m = (_m : stdgo.Ref<stdgo._internal.sync.Sync_Mutex.Mutex>);
        stdgo._internal.sync.Sync_Mutex_static_extension.Mutex_static_extension._lockSlow(_m);
    }
    static public function tryLock(_m:Mutex):Bool {
        final _m = (_m : stdgo.Ref<stdgo._internal.sync.Sync_Mutex.Mutex>);
        return stdgo._internal.sync.Sync_Mutex_static_extension.Mutex_static_extension.tryLock(_m);
    }
    static public function lock(_m:Mutex):Void {
        final _m = (_m : stdgo.Ref<stdgo._internal.sync.Sync_Mutex.Mutex>);
        stdgo._internal.sync.Sync_Mutex_static_extension.Mutex_static_extension.lock(_m);
    }
}
