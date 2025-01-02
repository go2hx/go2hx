package stdgo._internal.crypto.tls;
@:structInit @:using(stdgo._internal.crypto.tls.Tls_T_certCache_static_extension.T_certCache_static_extension) class T_certCache {
    @:embedded
    public var map_ : stdgo._internal.sync.Sync_Map_.Map_ = ({} : stdgo._internal.sync.Sync_Map_.Map_);
    public function new(?map_:stdgo._internal.sync.Sync_Map_.Map_) {
        if (map_ != null) this.map_ = map_;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var compareAndDelete(get, never) : (stdgo.AnyInterface, stdgo.AnyInterface) -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_compareAndDelete():(stdgo.AnyInterface, stdgo.AnyInterface) -> Bool return @:check3 (this.map_ ?? throw "null pointer derefrence").compareAndDelete;
    public var compareAndSwap(get, never) : (stdgo.AnyInterface, stdgo.AnyInterface, stdgo.AnyInterface) -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_compareAndSwap():(stdgo.AnyInterface, stdgo.AnyInterface, stdgo.AnyInterface) -> Bool return @:check3 (this.map_ ?? throw "null pointer derefrence").compareAndSwap;
    public var delete(get, never) : stdgo.AnyInterface -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_delete():stdgo.AnyInterface -> Void return @:check3 (this.map_ ?? throw "null pointer derefrence").delete;
    public var load(get, never) : stdgo.AnyInterface -> { var _0 : stdgo.AnyInterface; var _1 : Bool; };
    @:embedded
    @:embeddededffieldsffun
    public function get_load():stdgo.AnyInterface -> { var _0 : stdgo.AnyInterface; var _1 : Bool; } return @:check3 (this.map_ ?? throw "null pointer derefrence").load;
    public var loadAndDelete(get, never) : stdgo.AnyInterface -> { var _0 : stdgo.AnyInterface; var _1 : Bool; };
    @:embedded
    @:embeddededffieldsffun
    public function get_loadAndDelete():stdgo.AnyInterface -> { var _0 : stdgo.AnyInterface; var _1 : Bool; } return @:check3 (this.map_ ?? throw "null pointer derefrence").loadAndDelete;
    public var loadOrStore(get, never) : (stdgo.AnyInterface, stdgo.AnyInterface) -> { var _0 : stdgo.AnyInterface; var _1 : Bool; };
    @:embedded
    @:embeddededffieldsffun
    public function get_loadOrStore():(stdgo.AnyInterface, stdgo.AnyInterface) -> { var _0 : stdgo.AnyInterface; var _1 : Bool; } return @:check3 (this.map_ ?? throw "null pointer derefrence").loadOrStore;
    public var range(get, never) : ((stdgo.AnyInterface, stdgo.AnyInterface) -> Bool) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_range():((stdgo.AnyInterface, stdgo.AnyInterface) -> Bool) -> Void return @:check3 (this.map_ ?? throw "null pointer derefrence").range;
    public var store(get, never) : (stdgo.AnyInterface, stdgo.AnyInterface) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_store():(stdgo.AnyInterface, stdgo.AnyInterface) -> Void return @:check3 (this.map_ ?? throw "null pointer derefrence").store;
    public var swap(get, never) : (stdgo.AnyInterface, stdgo.AnyInterface) -> { var _0 : stdgo.AnyInterface; var _1 : Bool; };
    @:embedded
    @:embeddededffieldsffun
    public function get_swap():(stdgo.AnyInterface, stdgo.AnyInterface) -> { var _0 : stdgo.AnyInterface; var _1 : Bool; } return @:check3 (this.map_ ?? throw "null pointer derefrence").swap;
    public var _dirtyLocked(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__dirtyLocked():() -> Void return @:check3 (this.map_ ?? throw "null pointer derefrence")._dirtyLocked;
    public var _loadReadOnly(get, never) : () -> stdgo._internal.sync.Sync_T_readOnly.T_readOnly;
    @:embedded
    @:embeddededffieldsffun
    public function get__loadReadOnly():() -> stdgo._internal.sync.Sync_T_readOnly.T_readOnly return @:check3 (this.map_ ?? throw "null pointer derefrence")._loadReadOnly;
    public var _missLocked(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__missLocked():() -> Void return @:check3 (this.map_ ?? throw "null pointer derefrence")._missLocked;
    public function __copy__() {
        return new T_certCache(map_);
    }
}
