package stdgo._internal.sync;
@:keep class PoolDequeue_static_extension {
    static public function popTail(t:PoolDequeue):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return t.popTail();
    static public function popHead(t:PoolDequeue):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return t.popHead();
    static public function pushHead(t:PoolDequeue, _val:stdgo.AnyInterface):Bool return t.pushHead(_val);
}
