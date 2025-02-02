package stdgo._internal.time;
function resetZoneinfoForTesting():Void {
        stdgo._internal.time.Time__zoneinfo._zoneinfo = (null : stdgo.Pointer<stdgo.GoString>);
        stdgo._internal.time.Time__zoneinfoOnce._zoneinfoOnce = (new stdgo._internal.sync.Sync_Once.Once() : stdgo._internal.sync.Sync_Once.Once);
    }
