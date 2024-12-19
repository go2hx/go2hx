package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _z_337257:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_337207:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _p_336900:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_336616;
        var _y2_336948:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_337189:stdgo.GoInt = (0 : stdgo.GoInt);
        var _y1_336944:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_337402:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_337381:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_337376:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_337419:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_336887:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_337573:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_336616 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 336707i32;
                } else if (__value__ == (336707i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 336717i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 336779i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 336814i32;
                    } else {
                        _gotoNext = 336887i32;
                    };
                } else if (__value__ == (336717i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 336887i32;
                } else if (__value__ == (336779i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 336887i32;
                } else if (__value__ == (336814i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 336843i32;
                    } else {
                        _gotoNext = 336869i32;
                    };
                } else if (__value__ == (336843i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 336869i32;
                } else if (__value__ == (336869i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 336887i32;
                } else if (__value__ == (336887i32)) {
                    _q_336887 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_336900 = stdgo._internal.math.Math_floor.floor(_q_336887);
                    if ((_q_336887 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 336925i32;
                    } else {
                        _gotoNext = 337573i32;
                    };
                } else if (__value__ == (336925i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 336939i32;
                    } else {
                        _gotoNext = 337189i32;
                    };
                } else if (__value__ == (336939i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_336944 = __tmp__._0;
                        _y2_336948 = __tmp__._1;
                    };
                    return (_y1_336944 * _y2_336948 : stdgo.GoFloat64);
                    _gotoNext = 337189i32;
                } else if (__value__ == (337189i32)) {
                    _signgam_337189 = (1 : stdgo.GoInt);
                    {
                        _ip_337207 = (_p_336900 : stdgo.GoInt64);
                        if ((_ip_337207 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 337233i32;
                        } else {
                            _gotoNext = 337257i32;
                        };
                    };
                } else if (__value__ == (337233i32)) {
                    _signgam_337189 = (-1 : stdgo.GoInt);
                    _gotoNext = 337257i32;
                } else if (__value__ == (337257i32)) {
                    _z_337257 = (_q_336887 - _p_336900 : stdgo.GoFloat64);
                    if ((_z_337257 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 337281i32;
                    } else {
                        _gotoNext = 337315i32;
                    };
                } else if (__value__ == (337281i32)) {
                    _p_336900 = (_p_336900 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_337257 = (_q_336887 - _p_336900 : stdgo.GoFloat64);
                    _gotoNext = 337315i32;
                } else if (__value__ == (337315i32)) {
                    _z_337257 = (_q_336887 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_337257 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_337257 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 337345i32;
                    } else {
                        _gotoNext = 337376i32;
                    };
                } else if (__value__ == (337345i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_337189);
                    _gotoNext = 337376i32;
                } else if (__value__ == (337376i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_336887);
                        _sq1_337376 = __tmp__._0;
                        _sq2_337381 = __tmp__._1;
                    };
                    _absz_337402 = stdgo._internal.math.Math_abs.abs(_z_337257);
                    _d_337419 = ((_absz_337402 * _sq1_337376 : stdgo.GoFloat64) * _sq2_337381 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_337419, (0 : stdgo.GoInt))) {
                        _gotoNext = 337458i32;
                    } else {
                        _gotoNext = 337498i32;
                    };
                } else if (__value__ == (337458i32)) {
                    _z_337257 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_337402 : stdgo.GoFloat64) / _sq1_337376 : stdgo.GoFloat64) / _sq2_337381 : stdgo.GoFloat64);
                    _gotoNext = 337520i32;
                } else if (__value__ == (337498i32)) {
                    _gotoNext = 337498i32;
                    _z_337257 = ((3.141592653589793 : stdgo.GoFloat64) / _d_337419 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 337520i32;
                } else if (__value__ == (337520i32)) {
                    return ((_signgam_337189 : stdgo.GoFloat64) * _z_337257 : stdgo.GoFloat64);
                    _gotoNext = 337573i32;
                } else if (__value__ == (337573i32)) {
                    _z_337573 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 337583i32;
                } else if (__value__ == (337583i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 337594i32;
                    } else {
                        _gotoNext = 337624i32;
                    };
                } else if (__value__ == (337594i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_337573 = (_z_337573 * _x : stdgo.GoFloat64);
                    _gotoNext = 337583i32;
                } else if (__value__ == (337624i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 337624i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 337634i32;
                    } else {
                        _gotoNext = 337700i32;
                    };
                } else if (__value__ == (337634i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 337652i32;
                    } else {
                        _gotoNext = 337674i32;
                    };
                } else if (__value__ == (337652i32)) {
                    _gotoNext = 338030i32;
                } else if (__value__ == (337674i32)) {
                    _z_337573 = (_z_337573 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 337624i32;
                } else if (__value__ == (337700i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 337700i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 337710i32;
                    } else {
                        _gotoNext = 337776i32;
                    };
                } else if (__value__ == (337710i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 337727i32;
                    } else {
                        _gotoNext = 337749i32;
                    };
                } else if (__value__ == (337727i32)) {
                    _gotoNext = 338030i32;
                } else if (__value__ == (337749i32)) {
                    _z_337573 = (_z_337573 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 337700i32;
                } else if (__value__ == (337776i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 337786i32;
                    } else {
                        _gotoNext = 337804i32;
                    };
                } else if (__value__ == (337786i32)) {
                    return _z_337573;
                    _gotoNext = 337804i32;
                } else if (__value__ == (337804i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_336900 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_336887 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_337573 * _p_336900 : stdgo.GoFloat64) / _q_336887 : stdgo.GoFloat64);
                    _gotoNext = 338030i32;
                } else if (__value__ == (338030i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 338048i32;
                    } else {
                        _gotoNext = 338070i32;
                    };
                } else if (__value__ == (338048i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 338070i32;
                } else if (__value__ == (338070i32)) {
                    return (_z_337573 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
