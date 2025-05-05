package stdgo._internal.time;
function _loadTzinfoFromDirOrZip(_dir:stdgo.GoString, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo_read.go#L366"
        if ((((_dir.length) > (4 : stdgo.GoInt) : Bool) && ((_dir.__slice__(((_dir.length) - (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) == (".zip" : stdgo.GoString)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo_read.go#L367"
            return stdgo._internal.time.Time__loadtzinfofromzip._loadTzinfoFromZip(_dir?.__copy__(), _name?.__copy__());
        };
        //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo_read.go#L369"
        if (_dir != ((stdgo.Go.str() : stdgo.GoString))) {
            _name = ((_dir + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _name?.__copy__() : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo_read.go#L372"
        return stdgo._internal.time.Time__readfile._readFile(_name?.__copy__());
    }
