package stdgo._internal.strconv;
function canBackquote(_s:stdgo.GoString):Bool {
        while (((_s.length) > (0 : stdgo.GoInt) : Bool)) {
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_s?.__copy__()), _r:stdgo.GoInt32 = __tmp__._0, _wid:stdgo.GoInt = __tmp__._1;
            _s = (_s.__slice__(_wid) : stdgo.GoString)?.__copy__();
            if ((_wid > (1 : stdgo.GoInt) : Bool)) {
                if (_r == ((65279 : stdgo.GoInt32))) {
                    return false;
                };
                continue;
            };
            if (_r == ((65533 : stdgo.GoInt32))) {
                return false;
            };
            if ((((((_r < (32 : stdgo.GoInt32) : Bool) && (_r != (9 : stdgo.GoInt32)) : Bool)) || _r == ((96 : stdgo.GoInt32)) : Bool) || (_r == (127 : stdgo.GoInt32)) : Bool)) {
                return false;
            };
        };
        return true;
    }
