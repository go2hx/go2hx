package stdgo.sync;
class PoolDequeue_static_extension {
    static public function popTail(t:stdgo._internal.sync.Sync_PoolDequeue.PoolDequeue):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        return {
            final obj = stdgo._internal.sync.Sync_PoolDequeue_static_extension.PoolDequeue_static_extension.popTail(t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function popHead(t:stdgo._internal.sync.Sync_PoolDequeue.PoolDequeue):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        return {
            final obj = stdgo._internal.sync.Sync_PoolDequeue_static_extension.PoolDequeue_static_extension.popHead(t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function pushHead(t:stdgo._internal.sync.Sync_PoolDequeue.PoolDequeue, _val:stdgo.AnyInterface):Bool {
        final _val = (_val : stdgo.AnyInterface);
        return stdgo._internal.sync.Sync_PoolDequeue_static_extension.PoolDequeue_static_extension.pushHead(t, _val);
    }
}
