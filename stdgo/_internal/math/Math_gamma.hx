package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _z_411180:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_410988:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_410983:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_410814:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _d_411026:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_410864:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_410796:stdgo.GoInt = (0 : stdgo.GoInt);
        var euler_410223;
        var _p_410507:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_411009:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_410555:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_410551:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_410494:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_410223 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 410314i32;
                } else if (__value__ == (410314i32)) {
                    if (((stdgo._internal.math.Math__isnegint._isNegInt(_x) || stdgo._internal.math.Math_isinf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool)) {
                        _gotoNext = 410324i32;
                    } else if (stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 410386i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 410421i32;
                    } else {
                        _gotoNext = 410494i32;
                    };
                } else if (__value__ == (410324i32)) {
                    return stdgo._internal.math.Math_nan.naN();
                    _gotoNext = 410494i32;
                } else if (__value__ == (410386i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 410494i32;
                } else if (__value__ == (410421i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 410450i32;
                    } else {
                        _gotoNext = 410476i32;
                    };
                } else if (__value__ == (410450i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 410476i32;
                } else if (__value__ == (410476i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 410494i32;
                } else if (__value__ == (410494i32)) {
                    _q_410494 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_410507 = stdgo._internal.math.Math_floor.floor(_q_410494);
                    if ((_q_410494 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 410532i32;
                    } else {
                        _gotoNext = 411180i32;
                    };
                } else if (__value__ == (410532i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 410546i32;
                    } else {
                        _gotoNext = 410796i32;
                    };
                } else if (__value__ == (410546i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_410551 = @:tmpset0 __tmp__._0;
                        _y2_410555 = @:tmpset0 __tmp__._1;
                    };
                    return (_y1_410551 * _y2_410555 : stdgo.GoFloat64);
                    _gotoNext = 410796i32;
                } else if (__value__ == (410796i32)) {
                    _signgam_410796 = (1 : stdgo.GoInt);
                    {
                        _ip_410814 = (_p_410507 : stdgo.GoInt64);
                        if ((_ip_410814 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 410840i32;
                        } else {
                            _gotoNext = 410864i32;
                        };
                    };
                } else if (__value__ == (410840i32)) {
                    _signgam_410796 = (-1 : stdgo.GoInt);
                    _gotoNext = 410864i32;
                } else if (__value__ == (410864i32)) {
                    _z_410864 = (_q_410494 - _p_410507 : stdgo.GoFloat64);
                    if ((_z_410864 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 410888i32;
                    } else {
                        _gotoNext = 410922i32;
                    };
                } else if (__value__ == (410888i32)) {
                    _p_410507 = (_p_410507 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_410864 = (_q_410494 - _p_410507 : stdgo.GoFloat64);
                    _gotoNext = 410922i32;
                } else if (__value__ == (410922i32)) {
                    _z_410864 = (_q_410494 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_410864 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_410864 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 410952i32;
                    } else {
                        _gotoNext = 410983i32;
                    };
                } else if (__value__ == (410952i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_410796);
                    _gotoNext = 410983i32;
                } else if (__value__ == (410983i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_410494);
                        _sq1_410983 = @:tmpset0 __tmp__._0;
                        _sq2_410988 = @:tmpset0 __tmp__._1;
                    };
                    _absz_411009 = stdgo._internal.math.Math_abs.abs(_z_410864);
                    _d_411026 = ((_absz_411009 * _sq1_410983 : stdgo.GoFloat64) * _sq2_410988 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isinf.isInf(_d_411026, (0 : stdgo.GoInt))) {
                        _gotoNext = 411065i32;
                    } else {
                        _gotoNext = 411105i32;
                    };
                } else if (__value__ == (411065i32)) {
                    _z_410864 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_411009 : stdgo.GoFloat64) / _sq1_410983 : stdgo.GoFloat64) / _sq2_410988 : stdgo.GoFloat64);
                    _gotoNext = 411127i32;
                } else if (__value__ == (411105i32)) {
                    _gotoNext = 411105i32;
                    _z_410864 = ((3.141592653589793 : stdgo.GoFloat64) / _d_411026 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 411127i32;
                } else if (__value__ == (411127i32)) {
                    return ((_signgam_410796 : stdgo.GoFloat64) * _z_410864 : stdgo.GoFloat64);
                    _gotoNext = 411180i32;
                } else if (__value__ == (411180i32)) {
                    _z_411180 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 411190i32;
                } else if (__value__ == (411190i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 411201i32;
                    } else {
                        _gotoNext = 411231i32;
                    };
                } else if (__value__ == (411201i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_411180 = (_z_411180 * _x : stdgo.GoFloat64);
                    _gotoNext = 411190i32;
                } else if (__value__ == (411231i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 411231i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 411241i32;
                    } else {
                        _gotoNext = 411307i32;
                    };
                } else if (__value__ == (411241i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 411259i32;
                    } else {
                        _gotoNext = 411281i32;
                    };
                } else if (__value__ == (411259i32)) {
                    _gotoNext = 411637i32;
                } else if (__value__ == (411281i32)) {
                    _z_411180 = (_z_411180 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 411231i32;
                } else if (__value__ == (411307i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 411307i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 411317i32;
                    } else {
                        _gotoNext = 411383i32;
                    };
                } else if (__value__ == (411317i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 411334i32;
                    } else {
                        _gotoNext = 411356i32;
                    };
                } else if (__value__ == (411334i32)) {
                    _gotoNext = 411637i32;
                } else if (__value__ == (411356i32)) {
                    _z_411180 = (_z_411180 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 411307i32;
                } else if (__value__ == (411383i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 411393i32;
                    } else {
                        _gotoNext = 411411i32;
                    };
                } else if (__value__ == (411393i32)) {
                    return _z_411180;
                    _gotoNext = 411411i32;
                } else if (__value__ == (411411i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_410507 = (((((((((((((((((_x * stdgo._internal.math.Math___gamp.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_410494 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamq.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_411180 * _p_410507 : stdgo.GoFloat64) / _q_410494 : stdgo.GoFloat64);
                    _gotoNext = 411637i32;
                } else if (__value__ == (411637i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 411655i32;
                    } else {
                        _gotoNext = 411677i32;
                    };
                } else if (__value__ == (411655i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 411677i32;
                } else if (__value__ == (411677i32)) {
                    return (_z_411180 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
