package stdgo.sync;
@:structInit @:using(stdgo.sync.Sync.T_poolChain_static_extension) abstract T_poolChain(stdgo._internal.sync.Sync_T_poolChain.T_poolChain) from stdgo._internal.sync.Sync_T_poolChain.T_poolChain to stdgo._internal.sync.Sync_T_poolChain.T_poolChain {
    public var _head(get, set) : T_poolChainElt;
    function get__head():T_poolChainElt return this._head;
    function set__head(v:T_poolChainElt):T_poolChainElt {
        this._head = (v : stdgo.Ref<stdgo._internal.sync.Sync_T_poolChainElt.T_poolChainElt>);
        return v;
    }
    public var _tail(get, set) : T_poolChainElt;
    function get__tail():T_poolChainElt return this._tail;
    function set__tail(v:T_poolChainElt):T_poolChainElt {
        this._tail = (v : stdgo.Ref<stdgo._internal.sync.Sync_T_poolChainElt.T_poolChainElt>);
        return v;
    }
    public function new(?_head:T_poolChainElt, ?_tail:T_poolChainElt) this = new stdgo._internal.sync.Sync_T_poolChain.T_poolChain((_head : stdgo.Ref<stdgo._internal.sync.Sync_T_poolChainElt.T_poolChainElt>), (_tail : stdgo.Ref<stdgo._internal.sync.Sync_T_poolChainElt.T_poolChainElt>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
