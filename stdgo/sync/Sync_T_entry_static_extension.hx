package stdgo.sync;
class T_entry_static_extension {
    static public function _tryExpungeLocked(_e:T_entry):Bool {
        final _e = (_e : stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry>);
        return stdgo._internal.sync.Sync_T_entry_static_extension.T_entry_static_extension._tryExpungeLocked(_e);
    }
    static public function _trySwap(_e:T_entry, _i:stdgo.AnyInterface):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        final _e = (_e : stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry>);
        final _i = (_i : stdgo.Ref<stdgo.AnyInterface>);
        return {
            final obj = stdgo._internal.sync.Sync_T_entry_static_extension.T_entry_static_extension._trySwap(_e, _i);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _delete(_e:T_entry):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        final _e = (_e : stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry>);
        return {
            final obj = stdgo._internal.sync.Sync_T_entry_static_extension.T_entry_static_extension._delete(_e);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _tryLoadOrStore(_e:T_entry, _i:stdgo.AnyInterface):stdgo.Tuple.Tuple3<stdgo.AnyInterface, Bool, Bool> {
        final _e = (_e : stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry>);
        final _i = (_i : stdgo.AnyInterface);
        return {
            final obj = stdgo._internal.sync.Sync_T_entry_static_extension.T_entry_static_extension._tryLoadOrStore(_e, _i);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _swapLocked(_e:T_entry, _i:stdgo.AnyInterface):stdgo.AnyInterface {
        final _e = (_e : stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry>);
        final _i = (_i : stdgo.Ref<stdgo.AnyInterface>);
        return stdgo._internal.sync.Sync_T_entry_static_extension.T_entry_static_extension._swapLocked(_e, _i);
    }
    static public function _unexpungeLocked(_e:T_entry):Bool {
        final _e = (_e : stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry>);
        return stdgo._internal.sync.Sync_T_entry_static_extension.T_entry_static_extension._unexpungeLocked(_e);
    }
    static public function _tryCompareAndSwap(_e:T_entry, _old:stdgo.AnyInterface, _new:stdgo.AnyInterface):Bool {
        final _e = (_e : stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry>);
        final _old = (_old : stdgo.AnyInterface);
        final _new = (_new : stdgo.AnyInterface);
        return stdgo._internal.sync.Sync_T_entry_static_extension.T_entry_static_extension._tryCompareAndSwap(_e, _old, _new);
    }
    static public function _load(_e:T_entry):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        final _e = (_e : stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry>);
        return {
            final obj = stdgo._internal.sync.Sync_T_entry_static_extension.T_entry_static_extension._load(_e);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
