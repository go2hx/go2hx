package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _z_418502:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_418348:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_418186:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_418118:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sq2_418310:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_418136:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _q_417816:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_417545;
        var _sq1_418305:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_417877:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_417873:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_417829:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_418331:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_417545 = (0.5772156649015329 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 417636i32;
                } else if (__value__ == (417636i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 417646i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 417708i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 417743i32;
                    } else {
                        _gotoNext = 417816i32;
                    };
                } else if (__value__ == (417646i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 417816i32;
                } else if (__value__ == (417708i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 417816i32;
                } else if (__value__ == (417743i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 417772i32;
                    } else {
                        _gotoNext = 417798i32;
                    };
                } else if (__value__ == (417772i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 417798i32;
                } else if (__value__ == (417798i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 417816i32;
                } else if (__value__ == (417816i32)) {
                    _q_417816 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_417829 = stdgo._internal.math.Math_floor.floor(_q_417816);
                    if ((_q_417816 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 417854i32;
                    } else {
                        _gotoNext = 418502i32;
                    };
                } else if (__value__ == (417854i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 417868i32;
                    } else {
                        _gotoNext = 418118i32;
                    };
                } else if (__value__ == (417868i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_417873 = __tmp__._0;
                        _y2_417877 = __tmp__._1;
                    };
                    return (_y1_417873 * _y2_417877 : stdgo.GoFloat64);
                    _gotoNext = 418118i32;
                } else if (__value__ == (418118i32)) {
                    _signgam_418118 = (1 : stdgo.GoInt);
                    {
                        _ip_418136 = (_p_417829 : stdgo.GoInt64);
                        if ((_ip_418136 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 418162i32;
                        } else {
                            _gotoNext = 418186i32;
                        };
                    };
                } else if (__value__ == (418162i32)) {
                    _signgam_418118 = (-1 : stdgo.GoInt);
                    _gotoNext = 418186i32;
                } else if (__value__ == (418186i32)) {
                    _z_418186 = (_q_417816 - _p_417829 : stdgo.GoFloat64);
                    if ((_z_418186 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 418210i32;
                    } else {
                        _gotoNext = 418244i32;
                    };
                } else if (__value__ == (418210i32)) {
                    _p_417829 = (_p_417829 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_418186 = (_q_417816 - _p_417829 : stdgo.GoFloat64);
                    _gotoNext = 418244i32;
                } else if (__value__ == (418244i32)) {
                    _z_418186 = (_q_417816 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_418186 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_418186 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 418274i32;
                    } else {
                        _gotoNext = 418305i32;
                    };
                } else if (__value__ == (418274i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_418118);
                    _gotoNext = 418305i32;
                } else if (__value__ == (418305i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_417816);
                        _sq1_418305 = __tmp__._0;
                        _sq2_418310 = __tmp__._1;
                    };
                    _absz_418331 = stdgo._internal.math.Math_abs.abs(_z_418186);
                    _d_418348 = ((_absz_418331 * _sq1_418305 : stdgo.GoFloat64) * _sq2_418310 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_418348, (0 : stdgo.GoInt))) {
                        _gotoNext = 418387i32;
                    } else {
                        _gotoNext = 418427i32;
                    };
                } else if (__value__ == (418387i32)) {
                    _z_418186 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_418331 : stdgo.GoFloat64) / _sq1_418305 : stdgo.GoFloat64) / _sq2_418310 : stdgo.GoFloat64);
                    _gotoNext = 418449i32;
                } else if (__value__ == (418427i32)) {
                    _z_418186 = ((3.141592653589793 : stdgo.GoFloat64) / _d_418348 : stdgo.GoFloat64);
                    _gotoNext = 418449i32;
                } else if (__value__ == (418449i32)) {
                    return ((_signgam_418118 : stdgo.GoFloat64) * _z_418186 : stdgo.GoFloat64);
                    _gotoNext = 418502i32;
                } else if (__value__ == (418502i32)) {
                    _z_418502 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 418512i32;
                } else if (__value__ == (418512i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 418523i32;
                    } else {
                        _gotoNext = 418553i32;
                    };
                } else if (__value__ == (418523i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_418502 = (_z_418502 * _x : stdgo.GoFloat64);
                    _gotoNext = 418512i32;
                } else if (__value__ == (418553i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 418553i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 418563i32;
                    } else {
                        _gotoNext = 418629i32;
                    };
                } else if (__value__ == (418563i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 418581i32;
                    } else {
                        _gotoNext = 418603i32;
                    };
                } else if (__value__ == (418581i32)) {
                    _gotoNext = 418959i32;
                } else if (__value__ == (418603i32)) {
                    _z_418502 = (_z_418502 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 418553i32;
                } else if (__value__ == (418629i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 418629i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 418639i32;
                    } else {
                        _gotoNext = 418705i32;
                    };
                } else if (__value__ == (418639i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 418656i32;
                    } else {
                        _gotoNext = 418678i32;
                    };
                } else if (__value__ == (418656i32)) {
                    _gotoNext = 418959i32;
                } else if (__value__ == (418678i32)) {
                    _z_418502 = (_z_418502 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 418629i32;
                } else if (__value__ == (418705i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 418715i32;
                    } else {
                        _gotoNext = 418733i32;
                    };
                } else if (__value__ == (418715i32)) {
                    return _z_418502;
                    _gotoNext = 418733i32;
                } else if (__value__ == (418733i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_417829 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_417816 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_418502 * _p_417829 : stdgo.GoFloat64) / _q_417816 : stdgo.GoFloat64);
                    _gotoNext = 418959i32;
                } else if (__value__ == (418959i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 418977i32;
                    } else {
                        _gotoNext = 418999i32;
                    };
                } else if (__value__ == (418977i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 418999i32;
                } else if (__value__ == (418999i32)) {
                    return (_z_418502 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
