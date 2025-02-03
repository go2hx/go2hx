package stdgo.sync;
class T_poolChain_static_extension {
    static public function _popTail(_c:T_poolChain):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        final _c = (_c : stdgo.Ref<stdgo._internal.sync.Sync_T_poolChain.T_poolChain>);
        return {
            final obj = stdgo._internal.sync.Sync_T_poolChain_static_extension.T_poolChain_static_extension._popTail(_c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _popHead(_c:T_poolChain):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        final _c = (_c : stdgo.Ref<stdgo._internal.sync.Sync_T_poolChain.T_poolChain>);
        return {
            final obj = stdgo._internal.sync.Sync_T_poolChain_static_extension.T_poolChain_static_extension._popHead(_c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _pushHead(_c:T_poolChain, _val:stdgo.AnyInterface):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.sync.Sync_T_poolChain.T_poolChain>);
        final _val = (_val : stdgo.AnyInterface);
        stdgo._internal.sync.Sync_T_poolChain_static_extension.T_poolChain_static_extension._pushHead(_c, _val);
    }
    static public function popTail(_c:T_poolChain):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        final _c = (_c : stdgo.Ref<stdgo._internal.sync.Sync_T_poolChain.T_poolChain>);
        return {
            final obj = stdgo._internal.sync.Sync_T_poolChain_static_extension.T_poolChain_static_extension.popTail(_c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function popHead(_c:T_poolChain):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        final _c = (_c : stdgo.Ref<stdgo._internal.sync.Sync_T_poolChain.T_poolChain>);
        return {
            final obj = stdgo._internal.sync.Sync_T_poolChain_static_extension.T_poolChain_static_extension.popHead(_c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function pushHead(_c:T_poolChain, _val:stdgo.AnyInterface):Bool {
        final _c = (_c : stdgo.Ref<stdgo._internal.sync.Sync_T_poolChain.T_poolChain>);
        final _val = (_val : stdgo.AnyInterface);
        return stdgo._internal.sync.Sync_T_poolChain_static_extension.T_poolChain_static_extension.pushHead(_c, _val);
    }
}
