package stdgo._internal.time;
function _loadTzinfoFromDirOrZip(_dir:stdgo.GoString, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        if ((((_dir.length) > (4 : stdgo.GoInt) : Bool) && ((_dir.__slice__(((_dir.length) - (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) == (".zip" : stdgo.GoString)) : Bool)) {
            return stdgo._internal.time.Time__loadTzinfoFromZip._loadTzinfoFromZip(_dir?.__copy__(), _name?.__copy__());
        };
        if (_dir != (stdgo.Go.str())) {
            _name = ((_dir + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _name?.__copy__() : stdgo.GoString)?.__copy__();
        };
        return stdgo._internal.time.Time__readFile._readFile(_name?.__copy__());
    }
