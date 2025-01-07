package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _y1_362485:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_362960:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_362943:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_362922:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_362748:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _y2_362489:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_362428:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_362798:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_362441:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_362917:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_362157;
        var _z_363114:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_362730:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_362157 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 362248i32;
                } else if (__value__ == (362248i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 362258i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 362320i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 362355i32;
                    } else {
                        _gotoNext = 362428i32;
                    };
                } else if (__value__ == (362258i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 362428i32;
                } else if (__value__ == (362320i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 362428i32;
                } else if (__value__ == (362355i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 362384i32;
                    } else {
                        _gotoNext = 362410i32;
                    };
                } else if (__value__ == (362384i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 362410i32;
                } else if (__value__ == (362410i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 362428i32;
                } else if (__value__ == (362428i32)) {
                    _q_362428 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_362441 = stdgo._internal.math.Math_floor.floor(_q_362428);
                    if ((_q_362428 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 362466i32;
                    } else {
                        _gotoNext = 363114i32;
                    };
                } else if (__value__ == (362466i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 362480i32;
                    } else {
                        _gotoNext = 362730i32;
                    };
                } else if (__value__ == (362480i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_362485 = __tmp__._0;
                        _y2_362489 = __tmp__._1;
                    };
                    return (_y1_362485 * _y2_362489 : stdgo.GoFloat64);
                    _gotoNext = 362730i32;
                } else if (__value__ == (362730i32)) {
                    _signgam_362730 = (1 : stdgo.GoInt);
                    {
                        _ip_362748 = (_p_362441 : stdgo.GoInt64);
                        if ((_ip_362748 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 362774i32;
                        } else {
                            _gotoNext = 362798i32;
                        };
                    };
                } else if (__value__ == (362774i32)) {
                    _signgam_362730 = (-1 : stdgo.GoInt);
                    _gotoNext = 362798i32;
                } else if (__value__ == (362798i32)) {
                    _z_362798 = (_q_362428 - _p_362441 : stdgo.GoFloat64);
                    if ((_z_362798 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 362822i32;
                    } else {
                        _gotoNext = 362856i32;
                    };
                } else if (__value__ == (362822i32)) {
                    _p_362441 = (_p_362441 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_362798 = (_q_362428 - _p_362441 : stdgo.GoFloat64);
                    _gotoNext = 362856i32;
                } else if (__value__ == (362856i32)) {
                    _z_362798 = (_q_362428 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_362798 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_362798 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 362886i32;
                    } else {
                        _gotoNext = 362917i32;
                    };
                } else if (__value__ == (362886i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_362730);
                    _gotoNext = 362917i32;
                } else if (__value__ == (362917i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_362428);
                        _sq1_362917 = __tmp__._0;
                        _sq2_362922 = __tmp__._1;
                    };
                    _absz_362943 = stdgo._internal.math.Math_abs.abs(_z_362798);
                    _d_362960 = ((_absz_362943 * _sq1_362917 : stdgo.GoFloat64) * _sq2_362922 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_362960, (0 : stdgo.GoInt))) {
                        _gotoNext = 362999i32;
                    } else {
                        _gotoNext = 363039i32;
                    };
                } else if (__value__ == (362999i32)) {
                    _z_362798 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_362943 : stdgo.GoFloat64) / _sq1_362917 : stdgo.GoFloat64) / _sq2_362922 : stdgo.GoFloat64);
                    _gotoNext = 363061i32;
                } else if (__value__ == (363039i32)) {
                    _gotoNext = 363039i32;
                    _z_362798 = ((3.141592653589793 : stdgo.GoFloat64) / _d_362960 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 363061i32;
                } else if (__value__ == (363061i32)) {
                    return ((_signgam_362730 : stdgo.GoFloat64) * _z_362798 : stdgo.GoFloat64);
                    _gotoNext = 363114i32;
                } else if (__value__ == (363114i32)) {
                    _z_363114 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 363124i32;
                } else if (__value__ == (363124i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 363135i32;
                    } else {
                        _gotoNext = 363165i32;
                    };
                } else if (__value__ == (363135i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_363114 = (_z_363114 * _x : stdgo.GoFloat64);
                    _gotoNext = 363124i32;
                } else if (__value__ == (363165i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 363165i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 363175i32;
                    } else {
                        _gotoNext = 363241i32;
                    };
                } else if (__value__ == (363175i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 363193i32;
                    } else {
                        _gotoNext = 363215i32;
                    };
                } else if (__value__ == (363193i32)) {
                    _gotoNext = 363571i32;
                } else if (__value__ == (363215i32)) {
                    _z_363114 = (_z_363114 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 363165i32;
                } else if (__value__ == (363241i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 363241i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 363251i32;
                    } else {
                        _gotoNext = 363317i32;
                    };
                } else if (__value__ == (363251i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 363268i32;
                    } else {
                        _gotoNext = 363290i32;
                    };
                } else if (__value__ == (363268i32)) {
                    _gotoNext = 363571i32;
                } else if (__value__ == (363290i32)) {
                    _z_363114 = (_z_363114 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 363241i32;
                } else if (__value__ == (363317i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 363327i32;
                    } else {
                        _gotoNext = 363345i32;
                    };
                } else if (__value__ == (363327i32)) {
                    return _z_363114;
                    _gotoNext = 363345i32;
                } else if (__value__ == (363345i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_362441 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_362428 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_363114 * _p_362441 : stdgo.GoFloat64) / _q_362428 : stdgo.GoFloat64);
                    _gotoNext = 363571i32;
                } else if (__value__ == (363571i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 363589i32;
                    } else {
                        _gotoNext = 363611i32;
                    };
                } else if (__value__ == (363589i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 363611i32;
                } else if (__value__ == (363611i32)) {
                    return (_z_363114 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
