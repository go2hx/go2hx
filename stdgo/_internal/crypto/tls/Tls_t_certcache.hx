package stdgo._internal.crypto.tls;
@:structInit @:using(stdgo._internal.crypto.tls.Tls_t_certcache_static_extension.T_certCache_static_extension) class T_certCache {
    @:embedded
    public var map_ : stdgo._internal.sync.Sync_map_.Map_ = ({} : stdgo._internal.sync.Sync_map_.Map_);
    public function new(?map_:stdgo._internal.sync.Sync_map_.Map_) {
        if (map_ != null) this.map_ = map_;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var compareAndDelete(get, never) : (stdgo.AnyInterface, stdgo.AnyInterface) -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_compareAndDelete():(stdgo.AnyInterface, stdgo.AnyInterface) -> Bool return @:check32 this.map_.compareAndDelete;
    public var compareAndSwap(get, never) : (stdgo.AnyInterface, stdgo.AnyInterface, stdgo.AnyInterface) -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_compareAndSwap():(stdgo.AnyInterface, stdgo.AnyInterface, stdgo.AnyInterface) -> Bool return @:check32 this.map_.compareAndSwap;
    public var delete(get, never) : stdgo.AnyInterface -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_delete():stdgo.AnyInterface -> Void return @:check32 this.map_.delete;
    public var load(get, never) : stdgo.AnyInterface -> { var _0 : stdgo.AnyInterface; var _1 : Bool; };
    @:embedded
    @:embeddededffieldsffun
    public function get_load():stdgo.AnyInterface -> { var _0 : stdgo.AnyInterface; var _1 : Bool; } return @:check32 this.map_.load;
    public var loadAndDelete(get, never) : stdgo.AnyInterface -> { var _0 : stdgo.AnyInterface; var _1 : Bool; };
    @:embedded
    @:embeddededffieldsffun
    public function get_loadAndDelete():stdgo.AnyInterface -> { var _0 : stdgo.AnyInterface; var _1 : Bool; } return @:check32 this.map_.loadAndDelete;
    public var loadOrStore(get, never) : (stdgo.AnyInterface, stdgo.AnyInterface) -> { var _0 : stdgo.AnyInterface; var _1 : Bool; };
    @:embedded
    @:embeddededffieldsffun
    public function get_loadOrStore():(stdgo.AnyInterface, stdgo.AnyInterface) -> { var _0 : stdgo.AnyInterface; var _1 : Bool; } return @:check32 this.map_.loadOrStore;
    public var range(get, never) : ((stdgo.AnyInterface, stdgo.AnyInterface) -> Bool) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_range():((stdgo.AnyInterface, stdgo.AnyInterface) -> Bool) -> Void return @:check32 this.map_.range;
    public var store(get, never) : (stdgo.AnyInterface, stdgo.AnyInterface) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_store():(stdgo.AnyInterface, stdgo.AnyInterface) -> Void return @:check32 this.map_.store;
    public var swap(get, never) : (stdgo.AnyInterface, stdgo.AnyInterface) -> { var _0 : stdgo.AnyInterface; var _1 : Bool; };
    @:embedded
    @:embeddededffieldsffun
    public function get_swap():(stdgo.AnyInterface, stdgo.AnyInterface) -> { var _0 : stdgo.AnyInterface; var _1 : Bool; } return @:check32 this.map_.swap;
    public var _dirtyLocked(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__dirtyLocked():() -> Void return @:check32 this.map_._dirtyLocked;
    public var _loadReadOnly(get, never) : () -> stdgo._internal.sync.Sync_t_readonly.T_readOnly;
    @:embedded
    @:embeddededffieldsffun
    public function get__loadReadOnly():() -> stdgo._internal.sync.Sync_t_readonly.T_readOnly return @:check32 this.map_._loadReadOnly;
    public var _missLocked(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__missLocked():() -> Void return @:check32 this.map_._missLocked;
    public function __copy__() {
        return new T_certCache(map_);
    }
}
