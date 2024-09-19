package stdgo._internal.mime;
function _clearSyncMap(_m:stdgo.Ref<stdgo._internal.sync.Sync_Map_.Map_>):Void {
        _m.range(function(_k:stdgo.AnyInterface, __4:stdgo.AnyInterface):Bool {
            _m.delete(_k);
            return true;
        });
    }
