package stdgo._internal.crypto.tls;
@:structInit @:using(stdgo._internal.crypto.tls.Tls_T_lruSessionCache_static_extension.T_lruSessionCache_static_extension) class T_lruSessionCache {
    @:embedded
    public var mutex : stdgo._internal.sync.Sync_Mutex.Mutex = ({} : stdgo._internal.sync.Sync_Mutex.Mutex);
    public var _m : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.container.list.List_Element.Element>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.container.list.List_Element.Element>>);
    public var _q : stdgo.Ref<stdgo._internal.container.list.List_List.List> = (null : stdgo.Ref<stdgo._internal.container.list.List_List.List>);
    public var _capacity : stdgo.GoInt = 0;
    public function new(?mutex:stdgo._internal.sync.Sync_Mutex.Mutex, ?_m:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.container.list.List_Element.Element>>, ?_q:stdgo.Ref<stdgo._internal.container.list.List_List.List>, ?_capacity:stdgo.GoInt) {
        if (mutex != null) this.mutex = mutex;
        if (_m != null) this._m = _m;
        if (_q != null) this._q = _q;
        if (_capacity != null) this._capacity = _capacity;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function lock() this.mutex.lock();
    @:embedded
    public function tryLock():Bool return this.mutex.tryLock();
    @:embedded
    public function unlock() this.mutex.unlock();
    @:embedded
    public function _lockSlow() this.mutex._lockSlow();
    @:embedded
    public function _unlockSlow(__0:stdgo.GoInt32) this.mutex._unlockSlow(__0);
    public function __copy__() {
        return new T_lruSessionCache(mutex, _m, _q, _capacity);
    }
}
