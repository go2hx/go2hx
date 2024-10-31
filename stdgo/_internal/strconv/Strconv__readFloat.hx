package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        stdgo._internal.internal.Macro.controlFlow({
            var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
            var _underscores = (false : Bool);
            if ((_i >= (_s.length) : Bool)) {
                return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
            };
            if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                _i++;
            } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                _neg = true;
                _i++;
            };
            var _base = ((10i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            var _maxMantDigits = (19 : stdgo.GoInt);
            var _expChar = ((101 : stdgo.GoUInt8) : stdgo.GoUInt8);
            if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                _base = (16i64 : stdgo.GoUInt64);
                _maxMantDigits = (16 : stdgo.GoInt);
                _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                _expChar = (112 : stdgo.GoUInt8);
                _hex = true;
            };
            var _sawdot = (false : Bool);
            var _sawdigits = (false : Bool);
            var _nd = (0 : stdgo.GoInt);
            var _ndMant = (0 : stdgo.GoInt);
            var _dp = (0 : stdgo.GoInt);
            @:label("loop") while ((_i < (_s.length) : Bool)) {
                {
                    var _c = (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
                    {
                        var __continue__ = false;
                        var __switchIndex__ = -1;
                        var __run__ = true;
                        while (__run__) {
                            __run__ = false;
                            {
                                final __value__ = true;
                                if (__value__ == (_c == (95 : stdgo.GoUInt8))) {
                                    _underscores = true;
                                    {
                                        __continue__ = true;
                                        break;
                                    };
                                    break;
                                } else if (__value__ == (_c == (46 : stdgo.GoUInt8))) {
                                    if (_sawdot) {
                                        @:jump("loop") break;
                                    };
                                    _sawdot = true;
                                    _dp = _nd;
                                    {
                                        __continue__ = true;
                                        break;
                                    };
                                    break;
                                } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                    _sawdigits = true;
                                    if (((_c == (48 : stdgo.GoUInt8)) && (_nd == (0 : stdgo.GoInt)) : Bool)) {
                                        _dp--;
                                        {
                                            __continue__ = true;
                                            break;
                                        };
                                    };
                                    _nd++;
                                    if ((_ndMant < _maxMantDigits : Bool)) {
                                        _mantissa = (_mantissa * (_base) : stdgo.GoUInt64);
                                        _mantissa = (_mantissa + (((_c - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                                        _ndMant++;
                                    } else if (_c != ((48 : stdgo.GoUInt8))) {
                                        _trunc = true;
                                    };
                                    {
                                        __continue__ = true;
                                        break;
                                    };
                                    break;
                                } else if (__value__ == (((_base == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                    _sawdigits = true;
                                    _nd++;
                                    if ((_ndMant < _maxMantDigits : Bool)) {
                                        _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                                        _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                                        _ndMant++;
                                    } else {
                                        _trunc = true;
                                    };
                                    {
                                        __continue__ = true;
                                        break;
                                    };
                                    break;
                                };
                            };
                            break;
                        };
                        if (__continue__) {
                            _i++;
                            continue;
                        };
                    };
                };
break;
                _i++;
            };
            if (!_sawdigits) {
                return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
            };
            if (!_sawdot) {
                _dp = _nd;
            };
            if (_base == ((16i64 : stdgo.GoUInt64))) {
                _dp = (_dp * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                _ndMant = (_ndMant * ((4 : stdgo.GoInt)) : stdgo.GoInt);
            };
            if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar) : Bool)) {
                _i++;
                if ((_i >= (_s.length) : Bool)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                };
                var _esign = (1 : stdgo.GoInt);
                if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                    _i++;
                } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                    _i++;
                    _esign = (-1 : stdgo.GoInt);
                };
                if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                };
                var _e = (0 : stdgo.GoInt);
                while (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _underscores = true;
                        {
                            _i++;
                            continue;
                        };
                    };
if ((_e < (10000 : stdgo.GoInt) : Bool)) {
                        _e = (((_e * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    };
                    _i++;
                };
                _dp = (_dp + ((_e * _esign : stdgo.GoInt)) : stdgo.GoInt);
            } else if (_base == ((16i64 : stdgo.GoUInt64))) {
                return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
            };
            if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                _exp = (_dp - _ndMant : stdgo.GoInt);
            };
            if ((_underscores && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
            };
            _ok = true;
            return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
        });
    }
