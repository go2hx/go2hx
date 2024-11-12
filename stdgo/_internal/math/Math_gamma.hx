package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _p_385131:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_385612:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_385607:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_385438:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _signgam_385420:stdgo.GoInt = (0 : stdgo.GoInt);
        var _y1_385175:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_385804:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_385650:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_385633:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_385488:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_385179:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_385118:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_384847;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_384847 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 384938i32;
                } else if (__value__ == (384938i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 384948i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 385010i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 385045i32;
                    } else {
                        _gotoNext = 385118i32;
                    };
                } else if (__value__ == (384948i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 385118i32;
                } else if (__value__ == (385010i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 385118i32;
                } else if (__value__ == (385045i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 385074i32;
                    } else {
                        _gotoNext = 385100i32;
                    };
                } else if (__value__ == (385074i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 385100i32;
                } else if (__value__ == (385100i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 385118i32;
                } else if (__value__ == (385118i32)) {
                    _q_385118 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_385131 = stdgo._internal.math.Math_floor.floor(_q_385118);
                    if ((_q_385118 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 385156i32;
                    } else {
                        _gotoNext = 385804i32;
                    };
                } else if (__value__ == (385156i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 385170i32;
                    } else {
                        _gotoNext = 385420i32;
                    };
                } else if (__value__ == (385170i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_385175 = __tmp__._0;
                        _y2_385179 = __tmp__._1;
                    };
                    return (_y1_385175 * _y2_385179 : stdgo.GoFloat64);
                    _gotoNext = 385420i32;
                } else if (__value__ == (385420i32)) {
                    _signgam_385420 = (1 : stdgo.GoInt);
                    {
                        _ip_385438 = (_p_385131 : stdgo.GoInt64);
                        if ((_ip_385438 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 385464i32;
                        } else {
                            _gotoNext = 385488i32;
                        };
                    };
                } else if (__value__ == (385464i32)) {
                    _signgam_385420 = (-1 : stdgo.GoInt);
                    _gotoNext = 385488i32;
                } else if (__value__ == (385488i32)) {
                    _z_385488 = (_q_385118 - _p_385131 : stdgo.GoFloat64);
                    if ((_z_385488 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 385512i32;
                    } else {
                        _gotoNext = 385546i32;
                    };
                } else if (__value__ == (385512i32)) {
                    _p_385131 = (_p_385131 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_385488 = (_q_385118 - _p_385131 : stdgo.GoFloat64);
                    _gotoNext = 385546i32;
                } else if (__value__ == (385546i32)) {
                    _z_385488 = (_q_385118 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_385488 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_385488 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 385576i32;
                    } else {
                        _gotoNext = 385607i32;
                    };
                } else if (__value__ == (385576i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_385420);
                    _gotoNext = 385607i32;
                } else if (__value__ == (385607i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_385118);
                        _sq1_385607 = __tmp__._0;
                        _sq2_385612 = __tmp__._1;
                    };
                    _absz_385633 = stdgo._internal.math.Math_abs.abs(_z_385488);
                    _d_385650 = ((_absz_385633 * _sq1_385607 : stdgo.GoFloat64) * _sq2_385612 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_385650, (0 : stdgo.GoInt))) {
                        _gotoNext = 385689i32;
                    } else {
                        _gotoNext = 385729i32;
                    };
                } else if (__value__ == (385689i32)) {
                    _z_385488 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_385633 : stdgo.GoFloat64) / _sq1_385607 : stdgo.GoFloat64) / _sq2_385612 : stdgo.GoFloat64);
                    _gotoNext = 385751i32;
                } else if (__value__ == (385729i32)) {
                    _gotoNext = 385729i32;
                    _z_385488 = ((3.141592653589793 : stdgo.GoFloat64) / _d_385650 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 385751i32;
                } else if (__value__ == (385751i32)) {
                    return ((_signgam_385420 : stdgo.GoFloat64) * _z_385488 : stdgo.GoFloat64);
                    _gotoNext = 385804i32;
                } else if (__value__ == (385804i32)) {
                    _z_385804 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 385814i32;
                } else if (__value__ == (385814i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 385825i32;
                    } else {
                        _gotoNext = 385855i32;
                    };
                } else if (__value__ == (385825i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_385804 = (_z_385804 * _x : stdgo.GoFloat64);
                    _gotoNext = 385814i32;
                } else if (__value__ == (385855i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 385855i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 385865i32;
                    } else {
                        _gotoNext = 385931i32;
                    };
                } else if (__value__ == (385865i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 385883i32;
                    } else {
                        _gotoNext = 385905i32;
                    };
                } else if (__value__ == (385883i32)) {
                    _gotoNext = 386261i32;
                } else if (__value__ == (385905i32)) {
                    _z_385804 = (_z_385804 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 385855i32;
                } else if (__value__ == (385931i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 385931i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 385941i32;
                    } else {
                        _gotoNext = 386007i32;
                    };
                } else if (__value__ == (385941i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 385958i32;
                    } else {
                        _gotoNext = 385980i32;
                    };
                } else if (__value__ == (385958i32)) {
                    _gotoNext = 386261i32;
                } else if (__value__ == (385980i32)) {
                    _z_385804 = (_z_385804 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 385931i32;
                } else if (__value__ == (386007i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 386017i32;
                    } else {
                        _gotoNext = 386035i32;
                    };
                } else if (__value__ == (386017i32)) {
                    return _z_385804;
                    _gotoNext = 386035i32;
                } else if (__value__ == (386035i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_385131 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_385118 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_385804 * _p_385131 : stdgo.GoFloat64) / _q_385118 : stdgo.GoFloat64);
                    _gotoNext = 386261i32;
                } else if (__value__ == (386261i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 386279i32;
                    } else {
                        _gotoNext = 386301i32;
                    };
                } else if (__value__ == (386279i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 386301i32;
                } else if (__value__ == (386301i32)) {
                    return (_z_385804 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
