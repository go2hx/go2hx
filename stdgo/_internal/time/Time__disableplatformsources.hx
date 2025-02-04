package stdgo._internal.time;
function _disablePlatformSources():() -> Void {
        var _undo = null;
        stdgo._internal.time.Time__platformzonesources._platformZoneSources = (null : stdgo.Slice<stdgo.GoString>);
        return _undo = function():Void {
            stdgo._internal.time.Time__platformzonesources._platformZoneSources = stdgo._internal.time.Time__origplatformzonesources._origPlatformZoneSources;
        };
    }
