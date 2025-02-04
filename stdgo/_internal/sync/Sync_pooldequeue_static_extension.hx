package stdgo._internal.sync;
@:keep class PoolDequeue_static_extension {
    @:interfacetypeffun
    static public function popTail(t:stdgo._internal.sync.Sync_pooldequeue.PoolDequeue):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return t.popTail();
    @:interfacetypeffun
    static public function popHead(t:stdgo._internal.sync.Sync_pooldequeue.PoolDequeue):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return t.popHead();
    @:interfacetypeffun
    static public function pushHead(t:stdgo._internal.sync.Sync_pooldequeue.PoolDequeue, _val:stdgo.AnyInterface):Bool return t.pushHead(_val);
}
