package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _sq1_386266:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_386097:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _signgam_386079:stdgo.GoInt = (0 : stdgo.GoInt);
        var _absz_386292:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_385838:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_386463:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_386271:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_385834:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_385790:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_385777:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_385506;
        var _d_386309:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_386147:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_385506 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 385597i32;
                } else if (__value__ == (385597i32)) {
                    if (((stdgo._internal.math.Math__isnegint._isNegInt(_x) || stdgo._internal.math.Math_isinf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool)) {
                        _gotoNext = 385607i32;
                    } else if (stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 385669i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 385704i32;
                    } else {
                        _gotoNext = 385777i32;
                    };
                } else if (__value__ == (385607i32)) {
                    return stdgo._internal.math.Math_nan.naN();
                    _gotoNext = 385777i32;
                } else if (__value__ == (385669i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 385777i32;
                } else if (__value__ == (385704i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 385733i32;
                    } else {
                        _gotoNext = 385759i32;
                    };
                } else if (__value__ == (385733i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 385759i32;
                } else if (__value__ == (385759i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 385777i32;
                } else if (__value__ == (385777i32)) {
                    _q_385777 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_385790 = stdgo._internal.math.Math_floor.floor(_q_385777);
                    if ((_q_385777 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 385815i32;
                    } else {
                        _gotoNext = 386463i32;
                    };
                } else if (__value__ == (385815i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 385829i32;
                    } else {
                        _gotoNext = 386079i32;
                    };
                } else if (__value__ == (385829i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_385834 = @:tmpset0 __tmp__._0;
                        _y2_385838 = @:tmpset0 __tmp__._1;
                    };
                    return (_y1_385834 * _y2_385838 : stdgo.GoFloat64);
                    _gotoNext = 386079i32;
                } else if (__value__ == (386079i32)) {
                    _signgam_386079 = (1 : stdgo.GoInt);
                    {
                        _ip_386097 = (_p_385790 : stdgo.GoInt64);
                        if ((_ip_386097 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 386123i32;
                        } else {
                            _gotoNext = 386147i32;
                        };
                    };
                } else if (__value__ == (386123i32)) {
                    _signgam_386079 = (-1 : stdgo.GoInt);
                    _gotoNext = 386147i32;
                } else if (__value__ == (386147i32)) {
                    _z_386147 = (_q_385777 - _p_385790 : stdgo.GoFloat64);
                    if ((_z_386147 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 386171i32;
                    } else {
                        _gotoNext = 386205i32;
                    };
                } else if (__value__ == (386171i32)) {
                    _p_385790 = (_p_385790 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_386147 = (_q_385777 - _p_385790 : stdgo.GoFloat64);
                    _gotoNext = 386205i32;
                } else if (__value__ == (386205i32)) {
                    _z_386147 = (_q_385777 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_386147 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_386147 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 386235i32;
                    } else {
                        _gotoNext = 386266i32;
                    };
                } else if (__value__ == (386235i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_386079);
                    _gotoNext = 386266i32;
                } else if (__value__ == (386266i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_385777);
                        _sq1_386266 = @:tmpset0 __tmp__._0;
                        _sq2_386271 = @:tmpset0 __tmp__._1;
                    };
                    _absz_386292 = stdgo._internal.math.Math_abs.abs(_z_386147);
                    _d_386309 = ((_absz_386292 * _sq1_386266 : stdgo.GoFloat64) * _sq2_386271 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isinf.isInf(_d_386309, (0 : stdgo.GoInt))) {
                        _gotoNext = 386348i32;
                    } else {
                        _gotoNext = 386388i32;
                    };
                } else if (__value__ == (386348i32)) {
                    _z_386147 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_386292 : stdgo.GoFloat64) / _sq1_386266 : stdgo.GoFloat64) / _sq2_386271 : stdgo.GoFloat64);
                    _gotoNext = 386410i32;
                } else if (__value__ == (386388i32)) {
                    _gotoNext = 386388i32;
                    _z_386147 = ((3.141592653589793 : stdgo.GoFloat64) / _d_386309 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 386410i32;
                } else if (__value__ == (386410i32)) {
                    return ((_signgam_386079 : stdgo.GoFloat64) * _z_386147 : stdgo.GoFloat64);
                    _gotoNext = 386463i32;
                } else if (__value__ == (386463i32)) {
                    _z_386463 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 386473i32;
                } else if (__value__ == (386473i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 386484i32;
                    } else {
                        _gotoNext = 386514i32;
                    };
                } else if (__value__ == (386484i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_386463 = (_z_386463 * _x : stdgo.GoFloat64);
                    _gotoNext = 386473i32;
                } else if (__value__ == (386514i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 386514i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 386524i32;
                    } else {
                        _gotoNext = 386590i32;
                    };
                } else if (__value__ == (386524i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 386542i32;
                    } else {
                        _gotoNext = 386564i32;
                    };
                } else if (__value__ == (386542i32)) {
                    _gotoNext = 386920i32;
                } else if (__value__ == (386564i32)) {
                    _z_386463 = (_z_386463 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 386514i32;
                } else if (__value__ == (386590i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 386590i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 386600i32;
                    } else {
                        _gotoNext = 386666i32;
                    };
                } else if (__value__ == (386600i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 386617i32;
                    } else {
                        _gotoNext = 386639i32;
                    };
                } else if (__value__ == (386617i32)) {
                    _gotoNext = 386920i32;
                } else if (__value__ == (386639i32)) {
                    _z_386463 = (_z_386463 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 386590i32;
                } else if (__value__ == (386666i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 386676i32;
                    } else {
                        _gotoNext = 386694i32;
                    };
                } else if (__value__ == (386676i32)) {
                    return _z_386463;
                    _gotoNext = 386694i32;
                } else if (__value__ == (386694i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_385790 = (((((((((((((((((_x * stdgo._internal.math.Math___gamp.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_385777 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamq.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_386463 * _p_385790 : stdgo.GoFloat64) / _q_385777 : stdgo.GoFloat64);
                    _gotoNext = 386920i32;
                } else if (__value__ == (386920i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 386938i32;
                    } else {
                        _gotoNext = 386960i32;
                    };
                } else if (__value__ == (386938i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 386960i32;
                } else if (__value__ == (386960i32)) {
                    return (_z_386463 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
