package stdgo._internal.sync;
function _newEntry(_i:stdgo.AnyInterface):stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry> {
        var _e = (stdgo.Go.setRef((new stdgo._internal.sync.Sync_T_entry.T_entry() : stdgo._internal.sync.Sync_T_entry.T_entry)) : stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry>);
        _e._p.store((stdgo.Go.setRef(_i) : stdgo.Ref<stdgo.AnyInterface>));
        return _e;
    }