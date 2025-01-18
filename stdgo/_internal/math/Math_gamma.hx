package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _sq1_545332:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_544904:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_544843:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_545337:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_545213:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_545145:stdgo.GoInt = (0 : stdgo.GoInt);
        var _d_545375:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_545358:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_544900:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_545529:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_545163:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _p_544856:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_544572;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_544572 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 544663i32;
                } else if (__value__ == (544663i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 544673i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 544735i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 544770i32;
                    } else {
                        _gotoNext = 544843i32;
                    };
                } else if (__value__ == (544673i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 544843i32;
                } else if (__value__ == (544735i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 544843i32;
                } else if (__value__ == (544770i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 544799i32;
                    } else {
                        _gotoNext = 544825i32;
                    };
                } else if (__value__ == (544799i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 544825i32;
                } else if (__value__ == (544825i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 544843i32;
                } else if (__value__ == (544843i32)) {
                    _q_544843 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_544856 = stdgo._internal.math.Math_floor.floor(_q_544843);
                    if ((_q_544843 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 544881i32;
                    } else {
                        _gotoNext = 545529i32;
                    };
                } else if (__value__ == (544881i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 544895i32;
                    } else {
                        _gotoNext = 545145i32;
                    };
                } else if (__value__ == (544895i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_544900 = @:tmpset0 __tmp__._0;
                        _y2_544904 = @:tmpset0 __tmp__._1;
                    };
                    return (_y1_544900 * _y2_544904 : stdgo.GoFloat64);
                    _gotoNext = 545145i32;
                } else if (__value__ == (545145i32)) {
                    _signgam_545145 = (1 : stdgo.GoInt);
                    {
                        _ip_545163 = (_p_544856 : stdgo.GoInt64);
                        if ((_ip_545163 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 545189i32;
                        } else {
                            _gotoNext = 545213i32;
                        };
                    };
                } else if (__value__ == (545189i32)) {
                    _signgam_545145 = (-1 : stdgo.GoInt);
                    _gotoNext = 545213i32;
                } else if (__value__ == (545213i32)) {
                    _z_545213 = (_q_544843 - _p_544856 : stdgo.GoFloat64);
                    if ((_z_545213 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 545237i32;
                    } else {
                        _gotoNext = 545271i32;
                    };
                } else if (__value__ == (545237i32)) {
                    _p_544856 = (_p_544856 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_545213 = (_q_544843 - _p_544856 : stdgo.GoFloat64);
                    _gotoNext = 545271i32;
                } else if (__value__ == (545271i32)) {
                    _z_545213 = (_q_544843 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_545213 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_545213 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 545301i32;
                    } else {
                        _gotoNext = 545332i32;
                    };
                } else if (__value__ == (545301i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_545145);
                    _gotoNext = 545332i32;
                } else if (__value__ == (545332i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_544843);
                        _sq1_545332 = @:tmpset0 __tmp__._0;
                        _sq2_545337 = @:tmpset0 __tmp__._1;
                    };
                    _absz_545358 = stdgo._internal.math.Math_abs.abs(_z_545213);
                    _d_545375 = ((_absz_545358 * _sq1_545332 : stdgo.GoFloat64) * _sq2_545337 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_545375, (0 : stdgo.GoInt))) {
                        _gotoNext = 545414i32;
                    } else {
                        _gotoNext = 545454i32;
                    };
                } else if (__value__ == (545414i32)) {
                    _z_545213 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_545358 : stdgo.GoFloat64) / _sq1_545332 : stdgo.GoFloat64) / _sq2_545337 : stdgo.GoFloat64);
                    _gotoNext = 545476i32;
                } else if (__value__ == (545454i32)) {
                    _gotoNext = 545454i32;
                    _z_545213 = ((3.141592653589793 : stdgo.GoFloat64) / _d_545375 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 545476i32;
                } else if (__value__ == (545476i32)) {
                    return ((_signgam_545145 : stdgo.GoFloat64) * _z_545213 : stdgo.GoFloat64);
                    _gotoNext = 545529i32;
                } else if (__value__ == (545529i32)) {
                    _z_545529 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 545539i32;
                } else if (__value__ == (545539i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 545550i32;
                    } else {
                        _gotoNext = 545580i32;
                    };
                } else if (__value__ == (545550i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_545529 = (_z_545529 * _x : stdgo.GoFloat64);
                    _gotoNext = 545539i32;
                } else if (__value__ == (545580i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 545580i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 545590i32;
                    } else {
                        _gotoNext = 545656i32;
                    };
                } else if (__value__ == (545590i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 545608i32;
                    } else {
                        _gotoNext = 545630i32;
                    };
                } else if (__value__ == (545608i32)) {
                    _gotoNext = 545986i32;
                } else if (__value__ == (545630i32)) {
                    _z_545529 = (_z_545529 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 545580i32;
                } else if (__value__ == (545656i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 545656i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 545666i32;
                    } else {
                        _gotoNext = 545732i32;
                    };
                } else if (__value__ == (545666i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 545683i32;
                    } else {
                        _gotoNext = 545705i32;
                    };
                } else if (__value__ == (545683i32)) {
                    _gotoNext = 545986i32;
                } else if (__value__ == (545705i32)) {
                    _z_545529 = (_z_545529 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 545656i32;
                } else if (__value__ == (545732i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 545742i32;
                    } else {
                        _gotoNext = 545760i32;
                    };
                } else if (__value__ == (545742i32)) {
                    return _z_545529;
                    _gotoNext = 545760i32;
                } else if (__value__ == (545760i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_544856 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_544843 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_545529 * _p_544856 : stdgo.GoFloat64) / _q_544843 : stdgo.GoFloat64);
                    _gotoNext = 545986i32;
                } else if (__value__ == (545986i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 546004i32;
                    } else {
                        _gotoNext = 546026i32;
                    };
                } else if (__value__ == (546004i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 546026i32;
                } else if (__value__ == (546026i32)) {
                    return (_z_545529 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
