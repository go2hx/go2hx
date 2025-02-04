package stdgo._internal.time;
function resetLocalOnceForTest():Void {
        stdgo._internal.time.Time__localonce._localOnce = (new stdgo._internal.sync.Sync_once.Once() : stdgo._internal.sync.Sync_once.Once);
        stdgo._internal.time.Time__localloc._localLoc = (new stdgo._internal.time.Time_location.Location() : stdgo._internal.time.Time_location.Location);
    }
