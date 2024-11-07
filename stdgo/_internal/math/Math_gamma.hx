package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _sq2_420348:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_420224:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_420174:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _p_419867:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_420386:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_420156:stdgo.GoInt = (0 : stdgo.GoInt);
        var _y2_419915:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_419854:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_419583;
        var _z_420540:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_420369:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_420343:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_419911:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_419583 = (0.5772156649015329 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 419674i32;
                } else if (__value__ == (419674i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 419684i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 419746i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 419781i32;
                    } else {
                        _gotoNext = 419854i32;
                    };
                } else if (__value__ == (419684i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 419854i32;
                } else if (__value__ == (419746i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 419854i32;
                } else if (__value__ == (419781i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 419810i32;
                    } else {
                        _gotoNext = 419836i32;
                    };
                } else if (__value__ == (419810i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 419836i32;
                } else if (__value__ == (419836i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 419854i32;
                } else if (__value__ == (419854i32)) {
                    _q_419854 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_419867 = stdgo._internal.math.Math_floor.floor(_q_419854);
                    if ((_q_419854 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 419892i32;
                    } else {
                        _gotoNext = 420540i32;
                    };
                } else if (__value__ == (419892i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 419906i32;
                    } else {
                        _gotoNext = 420156i32;
                    };
                } else if (__value__ == (419906i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_419911 = __tmp__._0;
                        _y2_419915 = __tmp__._1;
                    };
                    return (_y1_419911 * _y2_419915 : stdgo.GoFloat64);
                    _gotoNext = 420156i32;
                } else if (__value__ == (420156i32)) {
                    _signgam_420156 = (1 : stdgo.GoInt);
                    {
                        _ip_420174 = (_p_419867 : stdgo.GoInt64);
                        if ((_ip_420174 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 420200i32;
                        } else {
                            _gotoNext = 420224i32;
                        };
                    };
                } else if (__value__ == (420200i32)) {
                    _signgam_420156 = (-1 : stdgo.GoInt);
                    _gotoNext = 420224i32;
                } else if (__value__ == (420224i32)) {
                    _z_420224 = (_q_419854 - _p_419867 : stdgo.GoFloat64);
                    if ((_z_420224 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 420248i32;
                    } else {
                        _gotoNext = 420282i32;
                    };
                } else if (__value__ == (420248i32)) {
                    _p_419867 = (_p_419867 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_420224 = (_q_419854 - _p_419867 : stdgo.GoFloat64);
                    _gotoNext = 420282i32;
                } else if (__value__ == (420282i32)) {
                    _z_420224 = (_q_419854 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_420224 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_420224 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 420312i32;
                    } else {
                        _gotoNext = 420343i32;
                    };
                } else if (__value__ == (420312i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_420156);
                    _gotoNext = 420343i32;
                } else if (__value__ == (420343i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_419854);
                        _sq1_420343 = __tmp__._0;
                        _sq2_420348 = __tmp__._1;
                    };
                    _absz_420369 = stdgo._internal.math.Math_abs.abs(_z_420224);
                    _d_420386 = ((_absz_420369 * _sq1_420343 : stdgo.GoFloat64) * _sq2_420348 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_420386, (0 : stdgo.GoInt))) {
                        _gotoNext = 420425i32;
                    } else {
                        _gotoNext = 420465i32;
                    };
                } else if (__value__ == (420425i32)) {
                    _z_420224 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_420369 : stdgo.GoFloat64) / _sq1_420343 : stdgo.GoFloat64) / _sq2_420348 : stdgo.GoFloat64);
                    _gotoNext = 420487i32;
                } else if (__value__ == (420465i32)) {
                    _z_420224 = ((3.141592653589793 : stdgo.GoFloat64) / _d_420386 : stdgo.GoFloat64);
                    _gotoNext = 420487i32;
                } else if (__value__ == (420487i32)) {
                    return ((_signgam_420156 : stdgo.GoFloat64) * _z_420224 : stdgo.GoFloat64);
                    _gotoNext = 420540i32;
                } else if (__value__ == (420540i32)) {
                    _z_420540 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 420550i32;
                } else if (__value__ == (420550i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 420561i32;
                    } else {
                        _gotoNext = 420591i32;
                    };
                } else if (__value__ == (420561i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_420540 = (_z_420540 * _x : stdgo.GoFloat64);
                    _gotoNext = 420550i32;
                } else if (__value__ == (420591i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 420591i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 420601i32;
                    } else {
                        _gotoNext = 420667i32;
                    };
                } else if (__value__ == (420601i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 420619i32;
                    } else {
                        _gotoNext = 420641i32;
                    };
                } else if (__value__ == (420619i32)) {
                    _gotoNext = 420997i32;
                } else if (__value__ == (420641i32)) {
                    _z_420540 = (_z_420540 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 420591i32;
                } else if (__value__ == (420667i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 420667i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 420677i32;
                    } else {
                        _gotoNext = 420743i32;
                    };
                } else if (__value__ == (420677i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 420694i32;
                    } else {
                        _gotoNext = 420716i32;
                    };
                } else if (__value__ == (420694i32)) {
                    _gotoNext = 420997i32;
                } else if (__value__ == (420716i32)) {
                    _z_420540 = (_z_420540 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 420667i32;
                } else if (__value__ == (420743i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 420753i32;
                    } else {
                        _gotoNext = 420771i32;
                    };
                } else if (__value__ == (420753i32)) {
                    return _z_420540;
                    _gotoNext = 420771i32;
                } else if (__value__ == (420771i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_419867 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_419854 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_420540 * _p_419867 : stdgo.GoFloat64) / _q_419854 : stdgo.GoFloat64);
                    _gotoNext = 420997i32;
                } else if (__value__ == (420997i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 421015i32;
                    } else {
                        _gotoNext = 421037i32;
                    };
                } else if (__value__ == (421015i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 421037i32;
                } else if (__value__ == (421037i32)) {
                    return (_z_420540 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
