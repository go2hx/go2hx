package stdgo._internal.strconv;
function _underscoreOK(_s:stdgo.GoString):Bool {
        var _saw = (94 : stdgo.GoInt32);
        var _i = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/strconv/atoi.go#L297"
        if ((((_s.length) >= (1 : stdgo.GoInt) : Bool) && (((_s[(0 : stdgo.GoInt)] == (45 : stdgo.GoUInt8)) || (_s[(0 : stdgo.GoInt)] == (43 : stdgo.GoUInt8)) : Bool)) : Bool)) {
            _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        var _hex = (false : Bool);
        //"file:///home/runner/.go/go1.21.3/src/strconv/atoi.go#L303"
        if (((((_s.length) >= (2 : stdgo.GoInt) : Bool) && _s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (((stdgo._internal.strconv.Strconv__lower._lower(_s[(1 : stdgo.GoInt)]) == ((98 : stdgo.GoUInt8)) || stdgo._internal.strconv.Strconv__lower._lower(_s[(1 : stdgo.GoInt)]) == ((111 : stdgo.GoUInt8)) : Bool) || (stdgo._internal.strconv.Strconv__lower._lower(_s[(1 : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) : Bool)) {
            _i = (2 : stdgo.GoInt);
            _saw = (48 : stdgo.GoInt32);
            _hex = stdgo._internal.strconv.Strconv__lower._lower(_s[(1 : stdgo.GoInt)]) == ((120 : stdgo.GoUInt8));
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/atoi.go#L310"
        while ((_i < (_s.length) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/strconv/atoi.go#L312"
            if (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || ((_hex && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) <= (102 : stdgo.GoUInt8) : Bool) : Bool) : Bool)) {
                _saw = (48 : stdgo.GoInt32);
                //"file:///home/runner/.go/go1.21.3/src/strconv/atoi.go#L314"
                {
                    _i++;
                    continue;
                };
            };
//"file:///home/runner/.go/go1.21.3/src/strconv/atoi.go#L317"
            if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/strconv/atoi.go#L318"
                if (_saw != ((48 : stdgo.GoInt32))) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atoi.go#L319"
                    return false;
                };
                _saw = (95 : stdgo.GoInt32);
                //"file:///home/runner/.go/go1.21.3/src/strconv/atoi.go#L322"
                {
                    _i++;
                    continue;
                };
            };
//"file:///home/runner/.go/go1.21.3/src/strconv/atoi.go#L325"
            if (_saw == ((95 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/strconv/atoi.go#L326"
                return false;
            };
_saw = (33 : stdgo.GoInt32);
            _i++;
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/atoi.go#L331"
        return _saw != ((95 : stdgo.GoInt32));
    }
