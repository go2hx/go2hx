package stdgo._internal.mime;
function _clearSyncMap(_m:stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_>):Void {
        @:check2r _m.range(function(_k:stdgo.AnyInterface, __4:stdgo.AnyInterface):Bool {
            @:check2r _m.delete(_k);
            return true;
        });
    }
