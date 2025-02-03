package stdgo.crypto.tls;
@:structInit @:using(stdgo.crypto.tls.Tls.T_lruSessionCache_static_extension) abstract T_lruSessionCache(stdgo._internal.crypto.tls.Tls_T_lruSessionCache.T_lruSessionCache) from stdgo._internal.crypto.tls.Tls_T_lruSessionCache.T_lruSessionCache to stdgo._internal.crypto.tls.Tls_T_lruSessionCache.T_lruSessionCache {
    public var mutex(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get_mutex():stdgo._internal.sync.Sync_Mutex.Mutex return this.mutex;
    function set_mutex(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this.mutex = v;
        return v;
    }
    public var _m(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.container.list.List_Element.Element>>;
    function get__m():stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.container.list.List_Element.Element>> return this._m;
    function set__m(v:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.container.list.List_Element.Element>>):stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.container.list.List_Element.Element>> {
        this._m = (v : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.container.list.List_Element.Element>>);
        return v;
    }
    public var _q(get, set) : stdgo._internal.container.list.List_List.List;
    function get__q():stdgo._internal.container.list.List_List.List return this._q;
    function set__q(v:stdgo._internal.container.list.List_List.List):stdgo._internal.container.list.List_List.List {
        this._q = (v : stdgo.Ref<stdgo._internal.container.list.List_List.List>);
        return v;
    }
    public var _capacity(get, set) : StdTypes.Int;
    function get__capacity():StdTypes.Int return this._capacity;
    function set__capacity(v:StdTypes.Int):StdTypes.Int {
        this._capacity = (v : stdgo.GoInt);
        return v;
    }
    public function new(?mutex:stdgo._internal.sync.Sync_Mutex.Mutex, ?_m:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.container.list.List_Element.Element>>, ?_q:stdgo._internal.container.list.List_List.List, ?_capacity:StdTypes.Int) this = new stdgo._internal.crypto.tls.Tls_T_lruSessionCache.T_lruSessionCache(mutex, (_m : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.container.list.List_Element.Element>>), (_q : stdgo.Ref<stdgo._internal.container.list.List_List.List>), (_capacity : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
