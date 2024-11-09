package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _z_410924:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_411240:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_411069:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_410567:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_410554:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_411048:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_411043:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_410856:stdgo.GoInt = (0 : stdgo.GoInt);
        var _y2_410615:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_411086:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_410874:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _y1_410611:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_410283;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_410283 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 410374i32;
                } else if (__value__ == (410374i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 410384i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 410446i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 410481i32;
                    } else {
                        _gotoNext = 410554i32;
                    };
                } else if (__value__ == (410384i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 410554i32;
                } else if (__value__ == (410446i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 410554i32;
                } else if (__value__ == (410481i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 410510i32;
                    } else {
                        _gotoNext = 410536i32;
                    };
                } else if (__value__ == (410510i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 410536i32;
                } else if (__value__ == (410536i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 410554i32;
                } else if (__value__ == (410554i32)) {
                    _q_410554 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_410567 = stdgo._internal.math.Math_floor.floor(_q_410554);
                    if ((_q_410554 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 410592i32;
                    } else {
                        _gotoNext = 411240i32;
                    };
                } else if (__value__ == (410592i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 410606i32;
                    } else {
                        _gotoNext = 410856i32;
                    };
                } else if (__value__ == (410606i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_410611 = __tmp__._0;
                        _y2_410615 = __tmp__._1;
                    };
                    return (_y1_410611 * _y2_410615 : stdgo.GoFloat64);
                    _gotoNext = 410856i32;
                } else if (__value__ == (410856i32)) {
                    _signgam_410856 = (1 : stdgo.GoInt);
                    {
                        _ip_410874 = (_p_410567 : stdgo.GoInt64);
                        if ((_ip_410874 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 410900i32;
                        } else {
                            _gotoNext = 410924i32;
                        };
                    };
                } else if (__value__ == (410900i32)) {
                    _signgam_410856 = (-1 : stdgo.GoInt);
                    _gotoNext = 410924i32;
                } else if (__value__ == (410924i32)) {
                    _z_410924 = (_q_410554 - _p_410567 : stdgo.GoFloat64);
                    if ((_z_410924 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 410948i32;
                    } else {
                        _gotoNext = 410982i32;
                    };
                } else if (__value__ == (410948i32)) {
                    _p_410567 = (_p_410567 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_410924 = (_q_410554 - _p_410567 : stdgo.GoFloat64);
                    _gotoNext = 410982i32;
                } else if (__value__ == (410982i32)) {
                    _z_410924 = (_q_410554 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_410924 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_410924 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 411012i32;
                    } else {
                        _gotoNext = 411043i32;
                    };
                } else if (__value__ == (411012i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_410856);
                    _gotoNext = 411043i32;
                } else if (__value__ == (411043i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_410554);
                        _sq1_411043 = __tmp__._0;
                        _sq2_411048 = __tmp__._1;
                    };
                    _absz_411069 = stdgo._internal.math.Math_abs.abs(_z_410924);
                    _d_411086 = ((_absz_411069 * _sq1_411043 : stdgo.GoFloat64) * _sq2_411048 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_411086, (0 : stdgo.GoInt))) {
                        _gotoNext = 411125i32;
                    } else {
                        _gotoNext = 411165i32;
                    };
                } else if (__value__ == (411125i32)) {
                    _z_410924 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_411069 : stdgo.GoFloat64) / _sq1_411043 : stdgo.GoFloat64) / _sq2_411048 : stdgo.GoFloat64);
                    _gotoNext = 411187i32;
                } else if (__value__ == (411165i32)) {
                    _gotoNext = 411165i32;
                    _z_410924 = ((3.141592653589793 : stdgo.GoFloat64) / _d_411086 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 411187i32;
                } else if (__value__ == (411187i32)) {
                    return ((_signgam_410856 : stdgo.GoFloat64) * _z_410924 : stdgo.GoFloat64);
                    _gotoNext = 411240i32;
                } else if (__value__ == (411240i32)) {
                    _z_411240 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 411250i32;
                } else if (__value__ == (411250i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 411261i32;
                    } else {
                        _gotoNext = 411291i32;
                    };
                } else if (__value__ == (411261i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_411240 = (_z_411240 * _x : stdgo.GoFloat64);
                    _gotoNext = 411250i32;
                } else if (__value__ == (411291i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 411291i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 411301i32;
                    } else {
                        _gotoNext = 411367i32;
                    };
                } else if (__value__ == (411301i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 411319i32;
                    } else {
                        _gotoNext = 411341i32;
                    };
                } else if (__value__ == (411319i32)) {
                    _gotoNext = 411697i32;
                } else if (__value__ == (411341i32)) {
                    _z_411240 = (_z_411240 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 411291i32;
                } else if (__value__ == (411367i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 411367i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 411377i32;
                    } else {
                        _gotoNext = 411443i32;
                    };
                } else if (__value__ == (411377i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 411394i32;
                    } else {
                        _gotoNext = 411416i32;
                    };
                } else if (__value__ == (411394i32)) {
                    _gotoNext = 411697i32;
                } else if (__value__ == (411416i32)) {
                    _z_411240 = (_z_411240 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 411367i32;
                } else if (__value__ == (411443i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 411453i32;
                    } else {
                        _gotoNext = 411471i32;
                    };
                } else if (__value__ == (411453i32)) {
                    return _z_411240;
                    _gotoNext = 411471i32;
                } else if (__value__ == (411471i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_410567 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_410554 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_411240 * _p_410567 : stdgo.GoFloat64) / _q_410554 : stdgo.GoFloat64);
                    _gotoNext = 411697i32;
                } else if (__value__ == (411697i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 411715i32;
                    } else {
                        _gotoNext = 411737i32;
                    };
                } else if (__value__ == (411715i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 411737i32;
                } else if (__value__ == (411737i32)) {
                    return (_z_411240 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
