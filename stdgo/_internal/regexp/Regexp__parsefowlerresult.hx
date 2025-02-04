package stdgo._internal.regexp;
function _parseFowlerResult(_s:stdgo.GoString):{ var _0 : Bool; var _1 : Bool; var _2 : Bool; var _3 : stdgo.Slice<stdgo.GoInt>; } {
        var _ok = false, _compiled = false, _matched = false, _pos = (null : stdgo.Slice<stdgo.GoInt>);
        if (_s == ((stdgo.Go.str() : stdgo.GoString))) {
            _ok = true;
            _compiled = true;
            _matched = true;
            return { _0 : _ok, _1 : _compiled, _2 : _matched, _3 : _pos };
        } else if (_s == (("NOMATCH" : stdgo.GoString))) {
            _ok = true;
            _compiled = true;
            _matched = false;
            return { _0 : _ok, _1 : _compiled, _2 : _matched, _3 : _pos };
        } else if ((((65 : stdgo.GoUInt8) <= _s[(0 : stdgo.GoInt)] : Bool) && (_s[(0 : stdgo.GoInt)] <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
            _ok = true;
            _compiled = false;
            return { _0 : _ok, _1 : _compiled, _2 : _matched, _3 : _pos };
        };
        _compiled = true;
        var _x:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
        while (_s != ((stdgo.Go.str() : stdgo.GoString))) {
            var _end:stdgo.GoUInt8 = (41 : stdgo.GoUInt8);
            if (((_x.length) % (2 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                if (_s[(0 : stdgo.GoInt)] != ((40 : stdgo.GoUInt8))) {
                    _ok = false;
                    return { _0 : _ok, _1 : _compiled, _2 : _matched, _3 : _pos };
                };
                _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                _end = (44 : stdgo.GoUInt8);
            };
            var _i = (0 : stdgo.GoInt);
            while (((_i < (_s.length) : Bool) && (_s[(_i : stdgo.GoInt)] != _end) : Bool)) {
                _i++;
            };
            if (((_i == (0 : stdgo.GoInt)) || (_i == (_s.length)) : Bool)) {
                _ok = false;
                return { _0 : _ok, _1 : _compiled, _2 : _matched, _3 : _pos };
            };
            var _v = (-1 : stdgo.GoInt);
            var _err:stdgo.Error = (null : stdgo.Error);
            if ((_s.__slice__(0, _i) : stdgo.GoString) != (("?" : stdgo.GoString))) {
                {
                    var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__());
                    _v = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    _ok = false;
                    return { _0 : _ok, _1 : _compiled, _2 : _matched, _3 : _pos };
                };
            };
            _x = (_x.__append__(_v));
            _s = (_s.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        if (((_x.length) % (2 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            _ok = false;
            return { _0 : _ok, _1 : _compiled, _2 : _matched, _3 : _pos };
        };
        _ok = true;
        _matched = true;
        _pos = _x;
        return { _0 : _ok, _1 : _compiled, _2 : _matched, _3 : _pos };
    }
