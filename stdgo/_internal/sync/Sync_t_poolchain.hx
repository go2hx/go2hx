package stdgo._internal.sync;
@:structInit @:using(stdgo._internal.sync.Sync_t_poolchain_static_extension.T_poolChain_static_extension) class T_poolChain {
    public var _head : stdgo.Ref<stdgo._internal.sync.Sync_t_poolchainelt.T_poolChainElt> = (null : stdgo.Ref<stdgo._internal.sync.Sync_t_poolchainelt.T_poolChainElt>);
    public var _tail : stdgo.Ref<stdgo._internal.sync.Sync_t_poolchainelt.T_poolChainElt> = (null : stdgo.Ref<stdgo._internal.sync.Sync_t_poolchainelt.T_poolChainElt>);
    public function new(?_head:stdgo.Ref<stdgo._internal.sync.Sync_t_poolchainelt.T_poolChainElt>, ?_tail:stdgo.Ref<stdgo._internal.sync.Sync_t_poolchainelt.T_poolChainElt>) {
        if (_head != null) this._head = _head;
        if (_tail != null) this._tail = _tail;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_poolChain(_head, _tail);
    }
}
