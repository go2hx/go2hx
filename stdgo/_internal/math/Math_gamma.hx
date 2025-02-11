package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _p_380233:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_380220:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_380906:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_380735:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_380277:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_380281:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_379949;
        var _d_380752:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_380709:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_380590:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_380540:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _signgam_380522:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sq2_380714:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_379949 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 380040i32;
                } else if (__value__ == (380040i32)) {
                    if (((stdgo._internal.math.Math__isnegint._isNegInt(_x) || stdgo._internal.math.Math_isinf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool)) {
                        _gotoNext = 380050i32;
                    } else if (stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 380112i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 380147i32;
                    } else {
                        _gotoNext = 380220i32;
                    };
                } else if (__value__ == (380050i32)) {
                    return stdgo._internal.math.Math_nan.naN();
                    _gotoNext = 380220i32;
                } else if (__value__ == (380112i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 380220i32;
                } else if (__value__ == (380147i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 380176i32;
                    } else {
                        _gotoNext = 380202i32;
                    };
                } else if (__value__ == (380176i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 380202i32;
                } else if (__value__ == (380202i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 380220i32;
                } else if (__value__ == (380220i32)) {
                    _q_380220 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_380233 = stdgo._internal.math.Math_floor.floor(_q_380220);
                    if ((_q_380220 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 380258i32;
                    } else {
                        _gotoNext = 380906i32;
                    };
                } else if (__value__ == (380258i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 380272i32;
                    } else {
                        _gotoNext = 380522i32;
                    };
                } else if (__value__ == (380272i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_380277 = @:tmpset0 __tmp__._0;
                        _y2_380281 = @:tmpset0 __tmp__._1;
                    };
                    return (_y1_380277 * _y2_380281 : stdgo.GoFloat64);
                    _gotoNext = 380522i32;
                } else if (__value__ == (380522i32)) {
                    _signgam_380522 = (1 : stdgo.GoInt);
                    {
                        _ip_380540 = (_p_380233 : stdgo.GoInt64);
                        if ((_ip_380540 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 380566i32;
                        } else {
                            _gotoNext = 380590i32;
                        };
                    };
                } else if (__value__ == (380566i32)) {
                    _signgam_380522 = (-1 : stdgo.GoInt);
                    _gotoNext = 380590i32;
                } else if (__value__ == (380590i32)) {
                    _z_380590 = (_q_380220 - _p_380233 : stdgo.GoFloat64);
                    if ((_z_380590 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 380614i32;
                    } else {
                        _gotoNext = 380648i32;
                    };
                } else if (__value__ == (380614i32)) {
                    _p_380233 = (_p_380233 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_380590 = (_q_380220 - _p_380233 : stdgo.GoFloat64);
                    _gotoNext = 380648i32;
                } else if (__value__ == (380648i32)) {
                    _z_380590 = (_q_380220 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_380590 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_380590 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 380678i32;
                    } else {
                        _gotoNext = 380709i32;
                    };
                } else if (__value__ == (380678i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_380522);
                    _gotoNext = 380709i32;
                } else if (__value__ == (380709i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_380220);
                        _sq1_380709 = @:tmpset0 __tmp__._0;
                        _sq2_380714 = @:tmpset0 __tmp__._1;
                    };
                    _absz_380735 = stdgo._internal.math.Math_abs.abs(_z_380590);
                    _d_380752 = ((_absz_380735 * _sq1_380709 : stdgo.GoFloat64) * _sq2_380714 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isinf.isInf(_d_380752, (0 : stdgo.GoInt))) {
                        _gotoNext = 380791i32;
                    } else {
                        _gotoNext = 380831i32;
                    };
                } else if (__value__ == (380791i32)) {
                    _z_380590 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_380735 : stdgo.GoFloat64) / _sq1_380709 : stdgo.GoFloat64) / _sq2_380714 : stdgo.GoFloat64);
                    _gotoNext = 380853i32;
                } else if (__value__ == (380831i32)) {
                    _gotoNext = 380831i32;
                    _z_380590 = ((3.141592653589793 : stdgo.GoFloat64) / _d_380752 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 380853i32;
                } else if (__value__ == (380853i32)) {
                    return ((_signgam_380522 : stdgo.GoFloat64) * _z_380590 : stdgo.GoFloat64);
                    _gotoNext = 380906i32;
                } else if (__value__ == (380906i32)) {
                    _z_380906 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 380916i32;
                } else if (__value__ == (380916i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 380927i32;
                    } else {
                        _gotoNext = 380957i32;
                    };
                } else if (__value__ == (380927i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_380906 = (_z_380906 * _x : stdgo.GoFloat64);
                    _gotoNext = 380916i32;
                } else if (__value__ == (380957i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 380957i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 380967i32;
                    } else {
                        _gotoNext = 381033i32;
                    };
                } else if (__value__ == (380967i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 380985i32;
                    } else {
                        _gotoNext = 381007i32;
                    };
                } else if (__value__ == (380985i32)) {
                    _gotoNext = 381363i32;
                } else if (__value__ == (381007i32)) {
                    _z_380906 = (_z_380906 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 380957i32;
                } else if (__value__ == (381033i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 381033i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 381043i32;
                    } else {
                        _gotoNext = 381109i32;
                    };
                } else if (__value__ == (381043i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 381060i32;
                    } else {
                        _gotoNext = 381082i32;
                    };
                } else if (__value__ == (381060i32)) {
                    _gotoNext = 381363i32;
                } else if (__value__ == (381082i32)) {
                    _z_380906 = (_z_380906 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 381033i32;
                } else if (__value__ == (381109i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 381119i32;
                    } else {
                        _gotoNext = 381137i32;
                    };
                } else if (__value__ == (381119i32)) {
                    return _z_380906;
                    _gotoNext = 381137i32;
                } else if (__value__ == (381137i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_380233 = (((((((((((((((((_x * stdgo._internal.math.Math___gamp.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_380220 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamq.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_380906 * _p_380233 : stdgo.GoFloat64) / _q_380220 : stdgo.GoFloat64);
                    _gotoNext = 381363i32;
                } else if (__value__ == (381363i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 381381i32;
                    } else {
                        _gotoNext = 381403i32;
                    };
                } else if (__value__ == (381381i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 381403i32;
                } else if (__value__ == (381403i32)) {
                    return (_z_380906 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
