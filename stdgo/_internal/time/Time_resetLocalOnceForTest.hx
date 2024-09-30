package stdgo._internal.time;
function resetLocalOnceForTest():Void {
        stdgo._internal.time.Time__localOnce._localOnce = (new stdgo._internal.sync.Sync_Once.Once() : stdgo._internal.sync.Sync_Once.Once);
        stdgo._internal.time.Time__localLoc._localLoc = (new stdgo._internal.time.Time_Location.Location() : stdgo._internal.time.Time_Location.Location);
    }
