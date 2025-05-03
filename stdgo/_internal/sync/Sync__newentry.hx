package stdgo._internal.sync;
function _newEntry(_i:stdgo.AnyInterface):stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry> {
        var _e = (stdgo.Go.setRef((new stdgo._internal.sync.Sync_t_entry.T_entry() : stdgo._internal.sync.Sync_t_entry.T_entry)) : stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>);
        //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L106"
        (@:checkr _e ?? throw "null pointer dereference")._p.store((stdgo.Go.setRef(_i) : stdgo.Ref<stdgo.AnyInterface>));
        //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L107"
        return _e;
    }
