package stdgo.sync;
@:structInit @:using(stdgo.sync.Sync.T_poolChainElt_static_extension) abstract T_poolChainElt(stdgo._internal.sync.Sync_T_poolChainElt.T_poolChainElt) from stdgo._internal.sync.Sync_T_poolChainElt.T_poolChainElt to stdgo._internal.sync.Sync_T_poolChainElt.T_poolChainElt {
    public var _poolDequeue(get, set) : T_poolDequeue;
    function get__poolDequeue():T_poolDequeue return this._poolDequeue;
    function set__poolDequeue(v:T_poolDequeue):T_poolDequeue {
        this._poolDequeue = v;
        return v;
    }
    public var _next(get, set) : T_poolChainElt;
    function get__next():T_poolChainElt return this._next;
    function set__next(v:T_poolChainElt):T_poolChainElt {
        this._next = (v : stdgo.Ref<stdgo._internal.sync.Sync_T_poolChainElt.T_poolChainElt>);
        return v;
    }
    public var _prev(get, set) : T_poolChainElt;
    function get__prev():T_poolChainElt return this._prev;
    function set__prev(v:T_poolChainElt):T_poolChainElt {
        this._prev = (v : stdgo.Ref<stdgo._internal.sync.Sync_T_poolChainElt.T_poolChainElt>);
        return v;
    }
    public function new(?_poolDequeue:T_poolDequeue, ?_next:T_poolChainElt, ?_prev:T_poolChainElt) this = new stdgo._internal.sync.Sync_T_poolChainElt.T_poolChainElt(_poolDequeue, (_next : stdgo.Ref<stdgo._internal.sync.Sync_T_poolChainElt.T_poolChainElt>), (_prev : stdgo.Ref<stdgo._internal.sync.Sync_T_poolChainElt.T_poolChainElt>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
