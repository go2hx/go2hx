package stdgo._internal.time;
import stdgo._internal.unsafe.Unsafe;
function _loadTzinfo(_name:stdgo.GoString, _source:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        if ((((_source.length) >= (6 : stdgo.GoInt) : Bool) && ((_source.__slice__(((_source.length) - (6 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) == ("tzdata" : stdgo.GoString)) : Bool)) {
            return stdgo._internal.time.Time__loadTzinfoFromTzdata._loadTzinfoFromTzdata(_source?.__copy__(), _name?.__copy__());
        };
        return stdgo._internal.time.Time__loadTzinfoFromDirOrZip._loadTzinfoFromDirOrZip(_source?.__copy__(), _name?.__copy__());
    }