package stdgo._internal.net;
@:structInit @:using(stdgo._internal.net.Net_t_ipv6zonecache_static_extension.T_ipv6ZoneCache_static_extension) class T_ipv6ZoneCache {
    @:embedded
    public var rWMutex : stdgo._internal.sync.Sync_rwmutex.RWMutex = ({} : stdgo._internal.sync.Sync_rwmutex.RWMutex);
    public function new(?rWMutex:stdgo._internal.sync.Sync_rwmutex.RWMutex) {
        if (rWMutex != null) this.rWMutex = rWMutex;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var lock(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_lock():() -> Void return @:check32 this.rWMutex.lock;
    public var rLock(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_rLock():() -> Void return @:check32 this.rWMutex.rLock;
    public var rLocker(get, never) : () -> stdgo._internal.sync.Sync_locker.Locker;
    @:embedded
    @:embeddededffieldsffun
    public function get_rLocker():() -> stdgo._internal.sync.Sync_locker.Locker return @:check32 this.rWMutex.rLocker;
    public var rUnlock(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_rUnlock():() -> Void return @:check32 this.rWMutex.rUnlock;
    public var tryLock(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_tryLock():() -> Bool return @:check32 this.rWMutex.tryLock;
    public var tryRLock(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_tryRLock():() -> Bool return @:check32 this.rWMutex.tryRLock;
    public var unlock(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_unlock():() -> Void return @:check32 this.rWMutex.unlock;
    public var _rUnlockSlow(get, never) : stdgo.GoInt32 -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__rUnlockSlow():stdgo.GoInt32 -> Void return @:check32 this.rWMutex._rUnlockSlow;
    public function __copy__() {
        return new T_ipv6ZoneCache(rWMutex);
    }
}
