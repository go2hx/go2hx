package stdgo._internal.net.http;
function _http2asciiEqualFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        if ((_s.length) != ((_t.length))) {
            return false;
        };
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                if (stdgo._internal.net.http.Http__http2lower._http2lower(_s[(_i : stdgo.GoInt)]) != (stdgo._internal.net.http.Http__http2lower._http2lower(_t[(_i : stdgo.GoInt)]))) {
                    return false;
                };
                _i++;
            };
        };
        return true;
    }
