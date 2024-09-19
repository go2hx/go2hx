package stdgo._internal.crypto.tls;
@:structInit @:using(stdgo._internal.crypto.tls.Tls_T_certCache_static_extension.T_certCache_static_extension) class T_certCache {
    @:embedded
    public var map_ : stdgo._internal.sync.Sync_Map_.Map_ = ({} : stdgo._internal.sync.Sync_Map_.Map_);
    public function new(?map_:stdgo._internal.sync.Sync_Map_.Map_) {
        if (map_ != null) this.map_ = map_;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function compareAndDelete(_parsedName:stdgo.AnyInterface, _constraint:stdgo.AnyInterface):Bool return this.map_.compareAndDelete(_parsedName, _constraint);
    @:embedded
    public function compareAndSwap(_key:stdgo.AnyInterface, _old:stdgo.AnyInterface, _new:stdgo.AnyInterface):Bool return this.map_.compareAndSwap(_key, _old, _new);
    @:embedded
    public function delete(_key:stdgo.AnyInterface) this.map_.delete(_key);
    @:embedded
    public function load(_key:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return this.map_.load(_key);
    @:embedded
    public function loadAndDelete(_key:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return this.map_.loadAndDelete(_key);
    @:embedded
    public function loadOrStore(_parsedName:stdgo.AnyInterface, _constraint:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return this.map_.loadOrStore(_parsedName, _constraint);
    @:embedded
    public function range(_f:(stdgo.AnyInterface, stdgo.AnyInterface) -> Bool) this.map_.range(_f);
    @:embedded
    public function store(_parsedName:stdgo.AnyInterface, _constraint:stdgo.AnyInterface) this.map_.store(_parsedName, _constraint);
    @:embedded
    public function swap(_parsedName:stdgo.AnyInterface, _constraint:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return this.map_.swap(_parsedName, _constraint);
    @:embedded
    public function _dirtyLocked() this.map_._dirtyLocked();
    @:embedded
    public function _loadReadOnly():stdgo._internal.sync.Sync_T_readOnly.T_readOnly return this.map_._loadReadOnly();
    @:embedded
    public function _missLocked() this.map_._missLocked();
    public function __copy__() {
        return new T_certCache(map_);
    }
}
