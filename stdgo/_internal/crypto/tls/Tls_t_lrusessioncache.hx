package stdgo._internal.crypto.tls;
@:structInit @:using(stdgo._internal.crypto.tls.Tls_t_lrusessioncache_static_extension.T_lruSessionCache_static_extension) class T_lruSessionCache {
    @:embedded
    public var mutex : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _m : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.container.list.List_element.Element>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.container.list.List_element.Element>>);
    public var _q : stdgo.Ref<stdgo._internal.container.list.List_list.List> = (null : stdgo.Ref<stdgo._internal.container.list.List_list.List>);
    public var _capacity : stdgo.GoInt = 0;
    public function new(?mutex:stdgo._internal.sync.Sync_mutex.Mutex, ?_m:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.container.list.List_element.Element>>, ?_q:stdgo.Ref<stdgo._internal.container.list.List_list.List>, ?_capacity:stdgo.GoInt) {
        if (mutex != null) this.mutex = mutex;
        if (_m != null) this._m = _m;
        if (_q != null) this._q = _q;
        if (_capacity != null) this._capacity = _capacity;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var lock(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_lock():() -> Void return @:check32 this.mutex.lock;
    public var tryLock(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_tryLock():() -> Bool return @:check32 this.mutex.tryLock;
    public var unlock(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_unlock():() -> Void return @:check32 this.mutex.unlock;
    public var _lockSlow(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__lockSlow():() -> Void return @:check32 this.mutex._lockSlow;
    public var _unlockSlow(get, never) : stdgo.GoInt32 -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__unlockSlow():stdgo.GoInt32 -> Void return @:check32 this.mutex._unlockSlow;
    public function __copy__() {
        return new T_lruSessionCache(mutex, _m, _q, _capacity);
    }
}
