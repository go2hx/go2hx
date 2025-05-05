package stdgo._internal.mime;
function _clearSyncMap(_m:stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/mime/type.go#L26"
        _m.range(function(_k:stdgo.AnyInterface, __4:stdgo.AnyInterface):Bool {
            //"file:///home/runner/.go/go1.21.3/src/mime/type.go#L27"
            _m.delete(_k);
            //"file:///home/runner/.go/go1.21.3/src/mime/type.go#L28"
            return true;
        });
    }
