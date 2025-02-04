package stdgo._internal.time;
function _gorootZoneSource(_goroot:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        if (_goroot == ((stdgo.Go.str() : stdgo.GoString))) {
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false };
        };
        return { _0 : (_goroot + ("/lib/time/zoneinfo.zip" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _1 : true };
    }
