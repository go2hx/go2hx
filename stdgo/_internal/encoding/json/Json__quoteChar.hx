package stdgo._internal.encoding.json;
function _quoteChar(_c:stdgo.GoUInt8):stdgo.GoString {
        if (_c == ((39 : stdgo.GoUInt8))) {
            return ("\'\\\'\'" : stdgo.GoString);
        };
        if (_c == ((34 : stdgo.GoUInt8))) {
            return ("\'\"\'" : stdgo.GoString);
        };
        var _s = (stdgo._internal.strconv.Strconv_quote.quote((_c : stdgo.GoString)?.__copy__())?.__copy__() : stdgo.GoString);
        return ((("\'" : stdgo.GoString) + (_s.__slice__((1 : stdgo.GoInt), ((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("\'" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
