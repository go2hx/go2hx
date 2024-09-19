package stdgo._internal.net.http;
function _isCookieDomainName(_s:stdgo.GoString):Bool {
        if ((_s.length) == ((0 : stdgo.GoInt))) {
            return false;
        };
        if (((_s.length) > (255 : stdgo.GoInt) : Bool)) {
            return false;
        };
        if (_s[(0 : stdgo.GoInt)] == ((46 : stdgo.GoUInt8))) {
            _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        var _last = ((46 : stdgo.GoUInt8) : stdgo.GoUInt8);
        var _ok = (false : Bool);
        var _partlen = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_s.length) : Bool), _i++, {
                var _c = (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
                if (((((97 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (122 : stdgo.GoUInt8) : Bool) : Bool) || (((65 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (90 : stdgo.GoUInt8) : Bool) : Bool) : Bool)) {
                    _ok = true;
                    _partlen++;
                } else if ((((48 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                    _partlen++;
                } else if (_c == ((45 : stdgo.GoUInt8))) {
                    if (_last == ((46 : stdgo.GoUInt8))) {
                        return false;
                    };
                    _partlen++;
                } else if (_c == ((46 : stdgo.GoUInt8))) {
                    if (((_last == (46 : stdgo.GoUInt8)) || (_last == (45 : stdgo.GoUInt8)) : Bool)) {
                        return false;
                    };
                    if (((_partlen > (63 : stdgo.GoInt) : Bool) || (_partlen == (0 : stdgo.GoInt)) : Bool)) {
                        return false;
                    };
                    _partlen = (0 : stdgo.GoInt);
                } else {
                    return false;
                };
                _last = _c;
            });
        };
        if (((_last == (45 : stdgo.GoUInt8)) || (_partlen > (63 : stdgo.GoInt) : Bool) : Bool)) {
            return false;
        };
        return _ok;
    }
