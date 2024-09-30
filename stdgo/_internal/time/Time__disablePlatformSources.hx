package stdgo._internal.time;
function _disablePlatformSources():() -> Void {
        var _undo = null;
        stdgo._internal.time.Time__platformZoneSources._platformZoneSources = (null : stdgo.Slice<stdgo.GoString>);
        return function():Void {
            stdgo._internal.time.Time__platformZoneSources._platformZoneSources = stdgo._internal.time.Time__origPlatformZoneSources._origPlatformZoneSources;
        };
    }
