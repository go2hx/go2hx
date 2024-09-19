package stdgo._internal.sync;
@:structInit @:using(stdgo._internal.sync.Sync_T_poolChainElt_static_extension.T_poolChainElt_static_extension) class T_poolChainElt {
    @:embedded
    public var _poolDequeue : stdgo._internal.sync.Sync_T_poolDequeue.T_poolDequeue = ({} : stdgo._internal.sync.Sync_T_poolDequeue.T_poolDequeue);
    public var _next : stdgo.Ref<stdgo._internal.sync.Sync_T_poolChainElt.T_poolChainElt> = (null : stdgo.Ref<stdgo._internal.sync.Sync_T_poolChainElt.T_poolChainElt>);
    public var _prev : stdgo.Ref<stdgo._internal.sync.Sync_T_poolChainElt.T_poolChainElt> = (null : stdgo.Ref<stdgo._internal.sync.Sync_T_poolChainElt.T_poolChainElt>);
    public function new(?_poolDequeue:stdgo._internal.sync.Sync_T_poolDequeue.T_poolDequeue, ?_next:stdgo.Ref<stdgo._internal.sync.Sync_T_poolChainElt.T_poolChainElt>, ?_prev:stdgo.Ref<stdgo._internal.sync.Sync_T_poolChainElt.T_poolChainElt>) {
        if (_poolDequeue != null) this._poolDequeue = _poolDequeue;
        if (_next != null) this._next = _next;
        if (_prev != null) this._prev = _prev;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function popHead():{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return this._poolDequeue.popHead();
    @:embedded
    public function popTail():{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return this._poolDequeue.popTail();
    @:embedded
    public function pushHead(_val:stdgo.AnyInterface):Bool return this._poolDequeue.pushHead(_val);
    @:embedded
    public function _pack(_head:stdgo.GoUInt32, _tail:stdgo.GoUInt32):stdgo.GoUInt64 return this._poolDequeue._pack(_head, _tail);
    @:embedded
    public function _popHead():{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return this._poolDequeue._popHead();
    @:embedded
    public function _popTail():{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return this._poolDequeue._popTail();
    @:embedded
    public function _pushHead(_val:stdgo.AnyInterface):Bool return this._poolDequeue._pushHead(_val);
    @:embedded
    public function _unpack(__0:stdgo.GoUInt64):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; } return this._poolDequeue._unpack(__0);
    public function __copy__() {
        return new T_poolChainElt(_poolDequeue, _next, _prev);
    }
}
