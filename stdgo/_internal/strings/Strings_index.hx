package stdgo._internal.strings;
function index(_s:stdgo.GoString, _substr:stdgo.GoString):stdgo.GoInt {
        var _n = (_substr.length : stdgo.GoInt);
        if (_n == ((0 : stdgo.GoInt))) {
            return (0 : stdgo.GoInt);
        } else if (_n == ((1 : stdgo.GoInt))) {
            return stdgo._internal.strings.Strings_indexbyte.indexByte(_s?.__copy__(), _substr[(0 : stdgo.GoInt)]);
        } else if (_n == ((_s.length))) {
            if (_substr == (_s)) {
                return (0 : stdgo.GoInt);
            };
            return (-1 : stdgo.GoInt);
        } else if ((_n > (_s.length) : Bool)) {
            return (-1 : stdgo.GoInt);
        } else if ((_n <= stdgo._internal.internal.bytealg.Bytealg_maxlen.maxLen : Bool)) {
            if (((_s.length) <= (0 : stdgo.GoInt) : Bool)) {
                return stdgo._internal.internal.bytealg.Bytealg_indexstring.indexString(_s?.__copy__(), _substr?.__copy__());
            };
            var _c0 = (_substr[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
            var _c1 = (_substr[(1 : stdgo.GoInt)] : stdgo.GoUInt8);
            var _i = (0 : stdgo.GoInt);
            var _t = (((_s.length) - _n : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
            var _fails = (0 : stdgo.GoInt);
            while ((_i < _t : Bool)) {
                if (_s[(_i : stdgo.GoInt)] != (_c0)) {
                    var _o = (stdgo._internal.strings.Strings_indexbyte.indexByte((_s.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt), _t) : stdgo.GoString)?.__copy__(), _c0) : stdgo.GoInt);
                    if ((_o < (0 : stdgo.GoInt) : Bool)) {
                        return (-1 : stdgo.GoInt);
                    };
                    _i = (_i + ((_o + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
                };
                if (((_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] == _c1) && ((_s.__slice__(_i, (_i + _n : stdgo.GoInt)) : stdgo.GoString) == _substr) : Bool)) {
                    return _i;
                };
                _fails++;
                _i++;
                if ((_fails > stdgo._internal.internal.bytealg.Bytealg_cutover.cutover(_i) : Bool)) {
                    var _r = (stdgo._internal.internal.bytealg.Bytealg_indexstring.indexString((_s.__slice__(_i) : stdgo.GoString)?.__copy__(), _substr?.__copy__()) : stdgo.GoInt);
                    if ((_r >= (0 : stdgo.GoInt) : Bool)) {
                        return (_r + _i : stdgo.GoInt);
                    };
                    return (-1 : stdgo.GoInt);
                };
            };
            return (-1 : stdgo.GoInt);
        };
        var _c0 = (_substr[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
        var _c1 = (_substr[(1 : stdgo.GoInt)] : stdgo.GoUInt8);
        var _i = (0 : stdgo.GoInt);
        var _t = (((_s.length) - _n : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
        var _fails = (0 : stdgo.GoInt);
        while ((_i < _t : Bool)) {
            if (_s[(_i : stdgo.GoInt)] != (_c0)) {
                var _o = (stdgo._internal.strings.Strings_indexbyte.indexByte((_s.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt), _t) : stdgo.GoString)?.__copy__(), _c0) : stdgo.GoInt);
                if ((_o < (0 : stdgo.GoInt) : Bool)) {
                    return (-1 : stdgo.GoInt);
                };
                _i = (_i + ((_o + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            };
            if (((_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] == _c1) && ((_s.__slice__(_i, (_i + _n : stdgo.GoInt)) : stdgo.GoString) == _substr) : Bool)) {
                return _i;
            };
            _i++;
            _fails++;
            if (((_fails >= ((4 : stdgo.GoInt) + (_i >> (4i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt) : Bool) && (_i < _t : Bool) : Bool)) {
                var _j = (stdgo._internal.internal.bytealg.Bytealg_indexrabinkarp.indexRabinKarp((_s.__slice__(_i) : stdgo.GoString)?.__copy__(), _substr?.__copy__()) : stdgo.GoInt);
                if ((_j < (0 : stdgo.GoInt) : Bool)) {
                    return (-1 : stdgo.GoInt);
                };
                return (_i + _j : stdgo.GoInt);
            };
        };
        return (-1 : stdgo.GoInt);
    }
