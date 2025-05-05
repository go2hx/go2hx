package stdgo._internal.time;
function _gorootZoneSource(_goroot:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo_goroot.go#L10"
        if (_goroot == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo_goroot.go#L11"
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false };
        };
        //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo_goroot.go#L13"
        return { _0 : (_goroot + ("/lib/time/zoneinfo.zip" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _1 : true };
    }
