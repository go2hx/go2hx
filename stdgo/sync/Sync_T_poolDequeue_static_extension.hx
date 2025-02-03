package stdgo.sync;
class T_poolDequeue_static_extension {
    static public function _popTail(_d:T_poolDequeue):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        final _d = (_d : stdgo.Ref<stdgo._internal.sync.Sync_T_poolDequeue.T_poolDequeue>);
        return {
            final obj = stdgo._internal.sync.Sync_T_poolDequeue_static_extension.T_poolDequeue_static_extension._popTail(_d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _popHead(_d:T_poolDequeue):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        final _d = (_d : stdgo.Ref<stdgo._internal.sync.Sync_T_poolDequeue.T_poolDequeue>);
        return {
            final obj = stdgo._internal.sync.Sync_T_poolDequeue_static_extension.T_poolDequeue_static_extension._popHead(_d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _pushHead(_d:T_poolDequeue, _val:stdgo.AnyInterface):Bool {
        final _d = (_d : stdgo.Ref<stdgo._internal.sync.Sync_T_poolDequeue.T_poolDequeue>);
        final _val = (_val : stdgo.AnyInterface);
        return stdgo._internal.sync.Sync_T_poolDequeue_static_extension.T_poolDequeue_static_extension._pushHead(_d, _val);
    }
    static public function _pack(_d:T_poolDequeue, _head:std.UInt, _tail:std.UInt):haxe.UInt64 {
        final _d = (_d : stdgo.Ref<stdgo._internal.sync.Sync_T_poolDequeue.T_poolDequeue>);
        final _head = (_head : stdgo.GoUInt32);
        final _tail = (_tail : stdgo.GoUInt32);
        return stdgo._internal.sync.Sync_T_poolDequeue_static_extension.T_poolDequeue_static_extension._pack(_d, _head, _tail);
    }
    static public function _unpack(_d:T_poolDequeue, _ptrs:haxe.UInt64):stdgo.Tuple<std.UInt, std.UInt> {
        final _d = (_d : stdgo.Ref<stdgo._internal.sync.Sync_T_poolDequeue.T_poolDequeue>);
        final _ptrs = (_ptrs : stdgo.GoUInt64);
        return {
            final obj = stdgo._internal.sync.Sync_T_poolDequeue_static_extension.T_poolDequeue_static_extension._unpack(_d, _ptrs);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function popTail(_d:T_poolDequeue):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        final _d = (_d : stdgo.Ref<stdgo._internal.sync.Sync_T_poolDequeue.T_poolDequeue>);
        return {
            final obj = stdgo._internal.sync.Sync_T_poolDequeue_static_extension.T_poolDequeue_static_extension.popTail(_d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function popHead(_d:T_poolDequeue):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        final _d = (_d : stdgo.Ref<stdgo._internal.sync.Sync_T_poolDequeue.T_poolDequeue>);
        return {
            final obj = stdgo._internal.sync.Sync_T_poolDequeue_static_extension.T_poolDequeue_static_extension.popHead(_d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function pushHead(_d:T_poolDequeue, _val:stdgo.AnyInterface):Bool {
        final _d = (_d : stdgo.Ref<stdgo._internal.sync.Sync_T_poolDequeue.T_poolDequeue>);
        final _val = (_val : stdgo.AnyInterface);
        return stdgo._internal.sync.Sync_T_poolDequeue_static_extension.T_poolDequeue_static_extension.pushHead(_d, _val);
    }
}
