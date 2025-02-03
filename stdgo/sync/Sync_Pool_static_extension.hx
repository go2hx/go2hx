package stdgo.sync;
class Pool_static_extension {
    static public function _pinSlow(_p:Pool):stdgo.Tuple<T_poolLocal, StdTypes.Int> {
        final _p = (_p : stdgo.Ref<stdgo._internal.sync.Sync_Pool.Pool>);
        return {
            final obj = stdgo._internal.sync.Sync_Pool_static_extension.Pool_static_extension._pinSlow(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _pin(_p:Pool):stdgo.Tuple<T_poolLocal, StdTypes.Int> {
        final _p = (_p : stdgo.Ref<stdgo._internal.sync.Sync_Pool.Pool>);
        return {
            final obj = stdgo._internal.sync.Sync_Pool_static_extension.Pool_static_extension._pin(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _getSlow(_p:Pool, _pid:StdTypes.Int):stdgo.AnyInterface {
        final _p = (_p : stdgo.Ref<stdgo._internal.sync.Sync_Pool.Pool>);
        final _pid = (_pid : stdgo.GoInt);
        return stdgo._internal.sync.Sync_Pool_static_extension.Pool_static_extension._getSlow(_p, _pid);
    }
    static public function get(_p:Pool):stdgo.AnyInterface {
        final _p = (_p : stdgo.Ref<stdgo._internal.sync.Sync_Pool.Pool>);
        return stdgo._internal.sync.Sync_Pool_static_extension.Pool_static_extension.get(_p);
    }
    static public function put(_p:Pool, _x:stdgo.AnyInterface):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.sync.Sync_Pool.Pool>);
        final _x = (_x : stdgo.AnyInterface);
        stdgo._internal.sync.Sync_Pool_static_extension.Pool_static_extension.put(_p, _x);
    }
}
