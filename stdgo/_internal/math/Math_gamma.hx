package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _ip_457963:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _y1_457700:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_458329:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_458158:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_458132:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_458013:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_457643:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_458175:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_457945:stdgo.GoInt = (0 : stdgo.GoInt);
        var _p_457656:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_458137:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_457704:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_457372;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_457372 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 457463i32;
                } else if (__value__ == (457463i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 457473i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 457535i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 457570i32;
                    } else {
                        _gotoNext = 457643i32;
                    };
                } else if (__value__ == (457473i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 457643i32;
                } else if (__value__ == (457535i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 457643i32;
                } else if (__value__ == (457570i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 457599i32;
                    } else {
                        _gotoNext = 457625i32;
                    };
                } else if (__value__ == (457599i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 457625i32;
                } else if (__value__ == (457625i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 457643i32;
                } else if (__value__ == (457643i32)) {
                    _q_457643 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_457656 = stdgo._internal.math.Math_floor.floor(_q_457643);
                    if ((_q_457643 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 457681i32;
                    } else {
                        _gotoNext = 458329i32;
                    };
                } else if (__value__ == (457681i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 457695i32;
                    } else {
                        _gotoNext = 457945i32;
                    };
                } else if (__value__ == (457695i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_457700 = __tmp__._0;
                        _y2_457704 = __tmp__._1;
                    };
                    return (_y1_457700 * _y2_457704 : stdgo.GoFloat64);
                    _gotoNext = 457945i32;
                } else if (__value__ == (457945i32)) {
                    _signgam_457945 = (1 : stdgo.GoInt);
                    {
                        _ip_457963 = (_p_457656 : stdgo.GoInt64);
                        if ((_ip_457963 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 457989i32;
                        } else {
                            _gotoNext = 458013i32;
                        };
                    };
                } else if (__value__ == (457989i32)) {
                    _signgam_457945 = (-1 : stdgo.GoInt);
                    _gotoNext = 458013i32;
                } else if (__value__ == (458013i32)) {
                    _z_458013 = (_q_457643 - _p_457656 : stdgo.GoFloat64);
                    if ((_z_458013 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 458037i32;
                    } else {
                        _gotoNext = 458071i32;
                    };
                } else if (__value__ == (458037i32)) {
                    _p_457656 = (_p_457656 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_458013 = (_q_457643 - _p_457656 : stdgo.GoFloat64);
                    _gotoNext = 458071i32;
                } else if (__value__ == (458071i32)) {
                    _z_458013 = (_q_457643 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_458013 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_458013 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 458101i32;
                    } else {
                        _gotoNext = 458132i32;
                    };
                } else if (__value__ == (458101i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_457945);
                    _gotoNext = 458132i32;
                } else if (__value__ == (458132i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_457643);
                        _sq1_458132 = __tmp__._0;
                        _sq2_458137 = __tmp__._1;
                    };
                    _absz_458158 = stdgo._internal.math.Math_abs.abs(_z_458013);
                    _d_458175 = ((_absz_458158 * _sq1_458132 : stdgo.GoFloat64) * _sq2_458137 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_458175, (0 : stdgo.GoInt))) {
                        _gotoNext = 458214i32;
                    } else {
                        _gotoNext = 458254i32;
                    };
                } else if (__value__ == (458214i32)) {
                    _z_458013 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_458158 : stdgo.GoFloat64) / _sq1_458132 : stdgo.GoFloat64) / _sq2_458137 : stdgo.GoFloat64);
                    _gotoNext = 458276i32;
                } else if (__value__ == (458254i32)) {
                    _gotoNext = 458254i32;
                    _z_458013 = ((3.141592653589793 : stdgo.GoFloat64) / _d_458175 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 458276i32;
                } else if (__value__ == (458276i32)) {
                    return ((_signgam_457945 : stdgo.GoFloat64) * _z_458013 : stdgo.GoFloat64);
                    _gotoNext = 458329i32;
                } else if (__value__ == (458329i32)) {
                    _z_458329 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 458339i32;
                } else if (__value__ == (458339i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 458350i32;
                    } else {
                        _gotoNext = 458380i32;
                    };
                } else if (__value__ == (458350i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_458329 = (_z_458329 * _x : stdgo.GoFloat64);
                    _gotoNext = 458339i32;
                } else if (__value__ == (458380i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 458380i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 458390i32;
                    } else {
                        _gotoNext = 458456i32;
                    };
                } else if (__value__ == (458390i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 458408i32;
                    } else {
                        _gotoNext = 458430i32;
                    };
                } else if (__value__ == (458408i32)) {
                    _gotoNext = 458786i32;
                } else if (__value__ == (458430i32)) {
                    _z_458329 = (_z_458329 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 458380i32;
                } else if (__value__ == (458456i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 458456i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 458466i32;
                    } else {
                        _gotoNext = 458532i32;
                    };
                } else if (__value__ == (458466i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 458483i32;
                    } else {
                        _gotoNext = 458505i32;
                    };
                } else if (__value__ == (458483i32)) {
                    _gotoNext = 458786i32;
                } else if (__value__ == (458505i32)) {
                    _z_458329 = (_z_458329 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 458456i32;
                } else if (__value__ == (458532i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 458542i32;
                    } else {
                        _gotoNext = 458560i32;
                    };
                } else if (__value__ == (458542i32)) {
                    return _z_458329;
                    _gotoNext = 458560i32;
                } else if (__value__ == (458560i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_457656 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_457643 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_458329 * _p_457656 : stdgo.GoFloat64) / _q_457643 : stdgo.GoFloat64);
                    _gotoNext = 458786i32;
                } else if (__value__ == (458786i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 458804i32;
                    } else {
                        _gotoNext = 458826i32;
                    };
                } else if (__value__ == (458804i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 458826i32;
                } else if (__value__ == (458826i32)) {
                    return (_z_458329 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
