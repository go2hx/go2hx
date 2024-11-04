package stdgo._internal.net.http;
function _parseCookieValue(_raw:stdgo.GoString, _allowDoubleQuote:Bool):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        if ((((_allowDoubleQuote && ((_raw.length) > (1 : stdgo.GoInt) : Bool) : Bool) && _raw[(0 : stdgo.GoInt)] == ((34 : stdgo.GoUInt8)) : Bool) && (_raw[((_raw.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (34 : stdgo.GoUInt8)) : Bool)) {
            _raw = (_raw.__slice__((1 : stdgo.GoInt), ((_raw.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_raw.length) : Bool)) {
                if (!stdgo._internal.net.http.Http__validCookieValueByte._validCookieValueByte(_raw[(_i : stdgo.GoInt)])) {
                    return { _0 : stdgo.Go.str().__copy__(), _1 : false };
                };
                _i++;
            };
        };
        return { _0 : _raw?.__copy__(), _1 : true };
    }
