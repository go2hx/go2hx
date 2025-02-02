package stdgo._internal.strconv;
function _underscoreOK(_s:stdgo.GoString):Bool {
        var _saw = (94 : stdgo.GoInt32);
        var _i = (0 : stdgo.GoInt);
        if ((((_s.length) >= (1 : stdgo.GoInt) : Bool) && (((_s[(0 : stdgo.GoInt)] == (45 : stdgo.GoUInt8)) || (_s[(0 : stdgo.GoInt)] == (43 : stdgo.GoUInt8)) : Bool)) : Bool)) {
            _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        var _hex = (false : Bool);
        if (((((_s.length) >= (2 : stdgo.GoInt) : Bool) && _s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (((stdgo._internal.strconv.Strconv__lower._lower(_s[(1 : stdgo.GoInt)]) == ((98 : stdgo.GoUInt8)) || stdgo._internal.strconv.Strconv__lower._lower(_s[(1 : stdgo.GoInt)]) == ((111 : stdgo.GoUInt8)) : Bool) || (stdgo._internal.strconv.Strconv__lower._lower(_s[(1 : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) : Bool)) {
            _i = (2 : stdgo.GoInt);
            _saw = (48 : stdgo.GoInt32);
            _hex = stdgo._internal.strconv.Strconv__lower._lower(_s[(1 : stdgo.GoInt)]) == ((120 : stdgo.GoUInt8));
        };
        while ((_i < (_s.length) : Bool)) {
            if (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || ((_hex && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) <= (102 : stdgo.GoUInt8) : Bool) : Bool) : Bool)) {
                _saw = (48 : stdgo.GoInt32);
                {
                    _i++;
                    continue;
                };
            };
if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                if (_saw != ((48 : stdgo.GoInt32))) {
                    return false;
                };
                _saw = (95 : stdgo.GoInt32);
                {
                    _i++;
                    continue;
                };
            };
if (_saw == ((95 : stdgo.GoInt32))) {
                return false;
            };
_saw = (33 : stdgo.GoInt32);
            _i++;
        };
        return _saw != ((95 : stdgo.GoInt32));
    }
