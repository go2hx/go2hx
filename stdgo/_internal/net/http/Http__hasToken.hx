package stdgo._internal.net.http;
function _hasToken(_v:stdgo.GoString, _token:stdgo.GoString):Bool {
        if ((((_token.length) > (_v.length) : Bool) || (_token == stdgo.Go.str()) : Bool)) {
            return false;
        };
        if (_v == (_token)) {
            return true;
        };
        {
            var _sp = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_sp <= ((_v.length) - (_token.length) : stdgo.GoInt) : Bool), _sp++, {
                {
                    var _b = (_v[(_sp : stdgo.GoInt)] : stdgo.GoUInt8);
                    if (((_b != _token[(0 : stdgo.GoInt)]) && ((_b | (32 : stdgo.GoUInt8) : stdgo.GoUInt8) != _token[(0 : stdgo.GoInt)]) : Bool)) {
                        continue;
                    };
                };
                if (((_sp > (0 : stdgo.GoInt) : Bool) && !stdgo._internal.net.http.Http__isTokenBoundary._isTokenBoundary(_v[(_sp - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
                    continue;
                };
                {
                    var _endPos = (_sp + (_token.length) : stdgo.GoInt);
                    if (((_endPos != (_v.length)) && !stdgo._internal.net.http.Http__isTokenBoundary._isTokenBoundary(_v[(_endPos : stdgo.GoInt)]) : Bool)) {
                        continue;
                    };
                };
                if (stdgo._internal.net.http.internal.ascii.Ascii_equalFold.equalFold((_v.__slice__(_sp, (_sp + (_token.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _token?.__copy__())) {
                    return true;
                };
            });
        };
        return false;
    }
