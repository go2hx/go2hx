package stdgo.sync;
class Map__static_extension {
    static public function _dirtyLocked(_m:Map_):Void {
        final _m = (_m : stdgo.Ref<stdgo._internal.sync.Sync_Map_.Map_>);
        stdgo._internal.sync.Sync_Map__static_extension.Map__static_extension._dirtyLocked(_m);
    }
    static public function _missLocked(_m:Map_):Void {
        final _m = (_m : stdgo.Ref<stdgo._internal.sync.Sync_Map_.Map_>);
        stdgo._internal.sync.Sync_Map__static_extension.Map__static_extension._missLocked(_m);
    }
    static public function range(_m:Map_, _f:(stdgo.AnyInterface, stdgo.AnyInterface) -> Bool):Void {
        final _m = (_m : stdgo.Ref<stdgo._internal.sync.Sync_Map_.Map_>);
        final _f = _f;
        stdgo._internal.sync.Sync_Map__static_extension.Map__static_extension.range(_m, _f);
    }
    static public function compareAndDelete(_m:Map_, _key:stdgo.AnyInterface, _old:stdgo.AnyInterface):Bool {
        final _m = (_m : stdgo.Ref<stdgo._internal.sync.Sync_Map_.Map_>);
        final _key = (_key : stdgo.AnyInterface);
        final _old = (_old : stdgo.AnyInterface);
        return stdgo._internal.sync.Sync_Map__static_extension.Map__static_extension.compareAndDelete(_m, _key, _old);
    }
    static public function compareAndSwap(_m:Map_, _key:stdgo.AnyInterface, _old:stdgo.AnyInterface, _new:stdgo.AnyInterface):Bool {
        final _m = (_m : stdgo.Ref<stdgo._internal.sync.Sync_Map_.Map_>);
        final _key = (_key : stdgo.AnyInterface);
        final _old = (_old : stdgo.AnyInterface);
        final _new = (_new : stdgo.AnyInterface);
        return stdgo._internal.sync.Sync_Map__static_extension.Map__static_extension.compareAndSwap(_m, _key, _old, _new);
    }
    static public function swap(_m:Map_, _key:stdgo.AnyInterface, _value:stdgo.AnyInterface):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        final _m = (_m : stdgo.Ref<stdgo._internal.sync.Sync_Map_.Map_>);
        final _key = (_key : stdgo.AnyInterface);
        final _value = (_value : stdgo.AnyInterface);
        return {
            final obj = stdgo._internal.sync.Sync_Map__static_extension.Map__static_extension.swap(_m, _key, _value);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function delete(_m:Map_, _key:stdgo.AnyInterface):Void {
        final _m = (_m : stdgo.Ref<stdgo._internal.sync.Sync_Map_.Map_>);
        final _key = (_key : stdgo.AnyInterface);
        stdgo._internal.sync.Sync_Map__static_extension.Map__static_extension.delete(_m, _key);
    }
    static public function loadAndDelete(_m:Map_, _key:stdgo.AnyInterface):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        final _m = (_m : stdgo.Ref<stdgo._internal.sync.Sync_Map_.Map_>);
        final _key = (_key : stdgo.AnyInterface);
        return {
            final obj = stdgo._internal.sync.Sync_Map__static_extension.Map__static_extension.loadAndDelete(_m, _key);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function loadOrStore(_m:Map_, _key:stdgo.AnyInterface, _value:stdgo.AnyInterface):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        final _m = (_m : stdgo.Ref<stdgo._internal.sync.Sync_Map_.Map_>);
        final _key = (_key : stdgo.AnyInterface);
        final _value = (_value : stdgo.AnyInterface);
        return {
            final obj = stdgo._internal.sync.Sync_Map__static_extension.Map__static_extension.loadOrStore(_m, _key, _value);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function store(_m:Map_, _key:stdgo.AnyInterface, _value:stdgo.AnyInterface):Void {
        final _m = (_m : stdgo.Ref<stdgo._internal.sync.Sync_Map_.Map_>);
        final _key = (_key : stdgo.AnyInterface);
        final _value = (_value : stdgo.AnyInterface);
        stdgo._internal.sync.Sync_Map__static_extension.Map__static_extension.store(_m, _key, _value);
    }
    static public function load(_m:Map_, _key:stdgo.AnyInterface):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        final _m = (_m : stdgo.Ref<stdgo._internal.sync.Sync_Map_.Map_>);
        final _key = (_key : stdgo.AnyInterface);
        return {
            final obj = stdgo._internal.sync.Sync_Map__static_extension.Map__static_extension.load(_m, _key);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _loadReadOnly(_m:Map_):T_readOnly {
        final _m = (_m : stdgo.Ref<stdgo._internal.sync.Sync_Map_.Map_>);
        return stdgo._internal.sync.Sync_Map__static_extension.Map__static_extension._loadReadOnly(_m);
    }
}
