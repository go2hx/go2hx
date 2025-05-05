package stdgo._internal.time;
function _loadTzinfo(_name:stdgo.GoString, _source:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo_read.go#L519"
        if ((((_source.length) >= (6 : stdgo.GoInt) : Bool) && ((_source.__slice__(((_source.length) - (6 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) == ("tzdata" : stdgo.GoString)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo_read.go#L520"
            return stdgo._internal.time.Time__loadtzinfofromtzdata._loadTzinfoFromTzdata(_source?.__copy__(), _name?.__copy__());
        };
        //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo_read.go#L522"
        return stdgo._internal.time.Time__loadtzinfofromdirorzip._loadTzinfoFromDirOrZip(_source?.__copy__(), _name?.__copy__());
    }
