package stdgo._internal.sync;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.internal.race.Race;
import stdgo._internal.runtime.Runtime;
@:structInit @:using(stdgo._internal.sync.Sync_T_poolChain_static_extension.T_poolChain_static_extension) class T_poolChain {
    public var _head : stdgo.Ref<stdgo._internal.sync.Sync_T_poolChainElt.T_poolChainElt> = (null : stdgo.Ref<stdgo._internal.sync.Sync_T_poolChainElt.T_poolChainElt>);
    public var _tail : stdgo.Ref<stdgo._internal.sync.Sync_T_poolChainElt.T_poolChainElt> = (null : stdgo.Ref<stdgo._internal.sync.Sync_T_poolChainElt.T_poolChainElt>);
    public function new(?_head:stdgo.Ref<stdgo._internal.sync.Sync_T_poolChainElt.T_poolChainElt>, ?_tail:stdgo.Ref<stdgo._internal.sync.Sync_T_poolChainElt.T_poolChainElt>) {
        if (_head != null) this._head = _head;
        if (_tail != null) this._tail = _tail;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_poolChain(_head, _tail);
    }
}
