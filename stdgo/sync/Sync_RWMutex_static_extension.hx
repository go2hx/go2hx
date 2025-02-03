package stdgo.sync;
class RWMutex_static_extension {
    static public function rLocker(_rw:RWMutex):Locker {
        final _rw = (_rw : stdgo.Ref<stdgo._internal.sync.Sync_RWMutex.RWMutex>);
        return stdgo._internal.sync.Sync_RWMutex_static_extension.RWMutex_static_extension.rLocker(_rw);
    }
    static public function unlock(_rw:RWMutex):Void {
        final _rw = (_rw : stdgo.Ref<stdgo._internal.sync.Sync_RWMutex.RWMutex>);
        stdgo._internal.sync.Sync_RWMutex_static_extension.RWMutex_static_extension.unlock(_rw);
    }
    static public function tryLock(_rw:RWMutex):Bool {
        final _rw = (_rw : stdgo.Ref<stdgo._internal.sync.Sync_RWMutex.RWMutex>);
        return stdgo._internal.sync.Sync_RWMutex_static_extension.RWMutex_static_extension.tryLock(_rw);
    }
    static public function lock(_rw:RWMutex):Void {
        final _rw = (_rw : stdgo.Ref<stdgo._internal.sync.Sync_RWMutex.RWMutex>);
        stdgo._internal.sync.Sync_RWMutex_static_extension.RWMutex_static_extension.lock(_rw);
    }
    static public function _rUnlockSlow(_rw:RWMutex, _r:StdTypes.Int):Void {
        final _rw = (_rw : stdgo.Ref<stdgo._internal.sync.Sync_RWMutex.RWMutex>);
        final _r = (_r : stdgo.GoInt32);
        stdgo._internal.sync.Sync_RWMutex_static_extension.RWMutex_static_extension._rUnlockSlow(_rw, _r);
    }
    static public function rUnlock(_rw:RWMutex):Void {
        final _rw = (_rw : stdgo.Ref<stdgo._internal.sync.Sync_RWMutex.RWMutex>);
        stdgo._internal.sync.Sync_RWMutex_static_extension.RWMutex_static_extension.rUnlock(_rw);
    }
    static public function tryRLock(_rw:RWMutex):Bool {
        final _rw = (_rw : stdgo.Ref<stdgo._internal.sync.Sync_RWMutex.RWMutex>);
        return stdgo._internal.sync.Sync_RWMutex_static_extension.RWMutex_static_extension.tryRLock(_rw);
    }
    static public function rLock(_rw:RWMutex):Void {
        final _rw = (_rw : stdgo.Ref<stdgo._internal.sync.Sync_RWMutex.RWMutex>);
        stdgo._internal.sync.Sync_RWMutex_static_extension.RWMutex_static_extension.rLock(_rw);
    }
}
