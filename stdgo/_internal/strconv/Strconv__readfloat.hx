package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _sawdigits_5:Bool = false;
        var _loopBreak = false;
        var _expChar_3:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _nd_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_4:Bool = false;
        var _maxMantDigits_2:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _underscores_0:Bool = false;
        var _e_11:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_10:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_9:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _dp_8:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _underscores_0 = false;
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L179"
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2655897i64;
                    } else {
                        _gotoNext = 2655912i64;
                    };
                } else if (__value__ == (2655897i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L180"
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2655912i64;
                } else if (__value__ == (2655912i64)) {
                    _gotoNext = 2655912i64;
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L182"
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2655922i64;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2655947i64;
                    } else {
                        _gotoNext = 2656000i64;
                    };
                } else if (__value__ == (2655922i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L184"
                    _i++;
                    _gotoNext = 2656000i64;
                } else if (__value__ == (2655947i64)) {
                    _neg = true;
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L187"
                    _i++;
                    _gotoNext = 2656000i64;
                } else if (__value__ == (2656000i64)) {
                    _base_1 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2 = (19 : stdgo.GoInt);
                    _expChar_3 = (101 : stdgo.GoUInt8);
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L194"
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2656142i64;
                    } else {
                        _gotoNext = 2656243i64;
                    };
                } else if (__value__ == (2656142i64)) {
                    _base_1 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_3 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2656243i64;
                } else if (__value__ == (2656243i64)) {
                    _sawdot_4 = false;
                    _sawdigits_5 = false;
                    _nd_6 = (0 : stdgo.GoInt);
                    _ndMant_7 = (0 : stdgo.GoInt);
                    _dp_8 = (0 : stdgo.GoInt);
                    _gotoNext = 2656310i64;
                } else if (__value__ == (2656310i64)) {
                    0i64;
                    _loopBreak = false;
                    _gotoNext = 2656317i64;
                } else if (__value__ == (2656317i64)) {
                    //"file://#L0"
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2656339i64;
                    } else {
                        _gotoNext = 2657059i64;
                    };
                } else if (__value__ == (2656339i64)) {
                    _gotoNext = 2656343i64;
                } else if (__value__ == (2656343i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L208"
                    {
                        _c_9 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_9 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2656370i64;
                            } else if (__value__ == (_c_9 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2656422i64;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_9 : Bool) && (_c_9 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2656515i64;
                            } else if (__value__ == (((_base_1 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_9) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_9) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2656807i64;
                            } else {
                                _gotoNext = 2657049i64;
                            };
                        };
                    };
                } else if (__value__ == (2656370i64)) {
                    _underscores_0 = true;
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L207"
                    _i++;
                    _gotoNext = 2656317i64;
                } else if (__value__ == (2656422i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L214"
                    if (_sawdot_4) {
                        _gotoNext = 2656450i64;
                    } else {
                        _gotoNext = 2656475i64;
                    };
                } else if (__value__ == (2656450i64)) {
                    _loopBreak = true;
                    _gotoNext = 2656317i64;
                } else if (__value__ == (2656475i64)) {
                    _sawdot_4 = true;
                    _dp_8 = _nd_6;
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L207"
                    _i++;
                    _gotoNext = 2656317i64;
                } else if (__value__ == (2656515i64)) {
                    _sawdigits_5 = true;
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L223"
                    if (((_c_9 == (48 : stdgo.GoUInt8)) && (_nd_6 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2656588i64;
                    } else {
                        _gotoNext = 2656644i64;
                    };
                } else if (__value__ == (2656588i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L224"
                    _dp_8--;
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L207"
                    _i++;
                    _gotoNext = 2656317i64;
                } else if (__value__ == (2656644i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L227"
                    _nd_6++;
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L228"
                    if ((_ndMant_7 < _maxMantDigits_2 : Bool)) {
                        _gotoNext = 2656678i64;
                    } else if (_c_9 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2656768i64;
                    } else {
                        _gotoNext = 2656795i64;
                    };
                } else if (__value__ == (2656678i64)) {
                    _mantissa = (_mantissa * (_base_1) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_9 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L231"
                    _ndMant_7++;
                    _gotoNext = 2656795i64;
                } else if (__value__ == (2656768i64)) {
                    _trunc = true;
                    _gotoNext = 2656795i64;
                } else if (__value__ == (2656795i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L207"
                    _i++;
                    _gotoNext = 2656317i64;
                } else if (__value__ == (2656807i64)) {
                    _sawdigits_5 = true;
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L239"
                    _nd_6++;
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L240"
                    if ((_ndMant_7 < _maxMantDigits_2 : Bool)) {
                        _gotoNext = 2656919i64;
                    } else {
                        _gotoNext = 2657007i64;
                    };
                } else if (__value__ == (2656919i64)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_9) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L243"
                    _ndMant_7++;
                    _gotoNext = 2657034i64;
                } else if (__value__ == (2657007i64)) {
                    _gotoNext = 2657007i64;
                    _trunc = true;
                    0i64;
                    _gotoNext = 2657034i64;
                } else if (__value__ == (2657034i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L207"
                    _i++;
                    _gotoNext = 2656317i64;
                } else if (__value__ == (2657049i64)) {
                    _gotoNext = 2657059i64;
                } else if (__value__ == (2657059i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L251"
                    if (!_sawdigits_5) {
                        _gotoNext = 2657073i64;
                    } else {
                        _gotoNext = 2657088i64;
                    };
                } else if (__value__ == (2657073i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L252"
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2657088i64;
                } else if (__value__ == (2657088i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L254"
                    if (!_sawdot_4) {
                        _gotoNext = 2657099i64;
                    } else {
                        _gotoNext = 2657116i64;
                    };
                } else if (__value__ == (2657099i64)) {
                    _dp_8 = _nd_6;
                    _gotoNext = 2657116i64;
                } else if (__value__ == (2657116i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L258"
                    if (_base_1 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2657130i64;
                    } else {
                        _gotoNext = 2657375i64;
                    };
                } else if (__value__ == (2657130i64)) {
                    _dp_8 = (_dp_8 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_7 = (_ndMant_7 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2657375i64;
                } else if (__value__ == (2657375i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L268"
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_3) : Bool)) {
                        _gotoNext = 2657415i64;
                    } else if (_base_1 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2657848i64;
                    } else {
                        _gotoNext = 2657889i64;
                    };
                } else if (__value__ == (2657415i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L269"
                    _i++;
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L270"
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2657440i64;
                    } else {
                        _gotoNext = 2657458i64;
                    };
                } else if (__value__ == (2657440i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L271"
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2657458i64;
                } else if (__value__ == (2657458i64)) {
                    _esign_10 = (1 : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L274"
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2657486i64;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2657519i64;
                    } else {
                        _gotoNext = 2657548i64;
                    };
                } else if (__value__ == (2657486i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L275"
                    _i++;
                    _gotoNext = 2657548i64;
                } else if (__value__ == (2657519i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L277"
                    _i++;
                    _esign_10 = (-1 : stdgo.GoInt);
                    _gotoNext = 2657548i64;
                } else if (__value__ == (2657548i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L280"
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2657591i64;
                    } else {
                        _gotoNext = 2657609i64;
                    };
                } else if (__value__ == (2657591i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L281"
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2657609i64;
                } else if (__value__ == (2657609i64)) {
                    _e_11 = (0 : stdgo.GoInt);
                    0i64;
                    _gotoNext = 2657618i64;
                } else if (__value__ == (2657618i64)) {
                    //"file://#L0"
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2657687i64;
                    } else {
                        _gotoNext = 2657810i64;
                    };
                } else if (__value__ == (2657683i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L284"
                    _i++;
                    _gotoNext = 2657618i64;
                } else if (__value__ == (2657687i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L285"
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2657707i64;
                    } else {
                        _gotoNext = 2657753i64;
                    };
                } else if (__value__ == (2657707i64)) {
                    _underscores_0 = true;
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L284"
                    _i++;
                    _gotoNext = 2657618i64;
                } else if (__value__ == (2657753i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L289"
                    if ((_e_11 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2657766i64;
                    } else {
                        _gotoNext = 2657683i64;
                    };
                } else if (__value__ == (2657766i64)) {
                    _e_11 = (((_e_11 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2657683i64;
                } else if (__value__ == (2657810i64)) {
                    _dp_8 = (_dp_8 + ((_e_11 * _esign_10 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2657889i64;
                } else if (__value__ == (2657848i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L296"
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2657889i64;
                } else if (__value__ == (2657889i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L299"
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2657906i64;
                    } else {
                        _gotoNext = 2657933i64;
                    };
                } else if (__value__ == (2657906i64)) {
                    _exp = (_dp_8 - _ndMant_7 : stdgo.GoInt);
                    _gotoNext = 2657933i64;
                } else if (__value__ == (2657933i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L303"
                    if ((_underscores_0 && !stdgo._internal.strconv.Strconv__underscoreok._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2657972i64;
                    } else {
                        _gotoNext = 2657988i64;
                    };
                } else if (__value__ == (2657972i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L304"
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2657988i64;
                } else if (__value__ == (2657988i64)) {
                    _ok = true;
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L308"
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
