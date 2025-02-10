package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _absz_467298:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_467277:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_466512;
        var _d_467315:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_467272:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_467103:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _signgam_467085:stdgo.GoInt = (0 : stdgo.GoInt);
        var _y2_466844:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_466840:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_466796:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_467469:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_467153:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_466783:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_466512 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 466603i32;
                } else if (__value__ == (466603i32)) {
                    if (((stdgo._internal.math.Math__isnegint._isNegInt(_x) || stdgo._internal.math.Math_isinf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool)) {
                        _gotoNext = 466613i32;
                    } else if (stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 466675i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 466710i32;
                    } else {
                        _gotoNext = 466783i32;
                    };
                } else if (__value__ == (466613i32)) {
                    return stdgo._internal.math.Math_nan.naN();
                    _gotoNext = 466783i32;
                } else if (__value__ == (466675i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 466783i32;
                } else if (__value__ == (466710i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 466739i32;
                    } else {
                        _gotoNext = 466765i32;
                    };
                } else if (__value__ == (466739i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 466765i32;
                } else if (__value__ == (466765i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 466783i32;
                } else if (__value__ == (466783i32)) {
                    _q_466783 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_466796 = stdgo._internal.math.Math_floor.floor(_q_466783);
                    if ((_q_466783 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 466821i32;
                    } else {
                        _gotoNext = 467469i32;
                    };
                } else if (__value__ == (466821i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 466835i32;
                    } else {
                        _gotoNext = 467085i32;
                    };
                } else if (__value__ == (466835i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_466840 = @:tmpset0 __tmp__._0;
                        _y2_466844 = @:tmpset0 __tmp__._1;
                    };
                    return (_y1_466840 * _y2_466844 : stdgo.GoFloat64);
                    _gotoNext = 467085i32;
                } else if (__value__ == (467085i32)) {
                    _signgam_467085 = (1 : stdgo.GoInt);
                    {
                        _ip_467103 = (_p_466796 : stdgo.GoInt64);
                        if ((_ip_467103 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 467129i32;
                        } else {
                            _gotoNext = 467153i32;
                        };
                    };
                } else if (__value__ == (467129i32)) {
                    _signgam_467085 = (-1 : stdgo.GoInt);
                    _gotoNext = 467153i32;
                } else if (__value__ == (467153i32)) {
                    _z_467153 = (_q_466783 - _p_466796 : stdgo.GoFloat64);
                    if ((_z_467153 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 467177i32;
                    } else {
                        _gotoNext = 467211i32;
                    };
                } else if (__value__ == (467177i32)) {
                    _p_466796 = (_p_466796 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_467153 = (_q_466783 - _p_466796 : stdgo.GoFloat64);
                    _gotoNext = 467211i32;
                } else if (__value__ == (467211i32)) {
                    _z_467153 = (_q_466783 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_467153 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_467153 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 467241i32;
                    } else {
                        _gotoNext = 467272i32;
                    };
                } else if (__value__ == (467241i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_467085);
                    _gotoNext = 467272i32;
                } else if (__value__ == (467272i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_466783);
                        _sq1_467272 = @:tmpset0 __tmp__._0;
                        _sq2_467277 = @:tmpset0 __tmp__._1;
                    };
                    _absz_467298 = stdgo._internal.math.Math_abs.abs(_z_467153);
                    _d_467315 = ((_absz_467298 * _sq1_467272 : stdgo.GoFloat64) * _sq2_467277 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isinf.isInf(_d_467315, (0 : stdgo.GoInt))) {
                        _gotoNext = 467354i32;
                    } else {
                        _gotoNext = 467394i32;
                    };
                } else if (__value__ == (467354i32)) {
                    _z_467153 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_467298 : stdgo.GoFloat64) / _sq1_467272 : stdgo.GoFloat64) / _sq2_467277 : stdgo.GoFloat64);
                    _gotoNext = 467416i32;
                } else if (__value__ == (467394i32)) {
                    _gotoNext = 467394i32;
                    _z_467153 = ((3.141592653589793 : stdgo.GoFloat64) / _d_467315 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 467416i32;
                } else if (__value__ == (467416i32)) {
                    return ((_signgam_467085 : stdgo.GoFloat64) * _z_467153 : stdgo.GoFloat64);
                    _gotoNext = 467469i32;
                } else if (__value__ == (467469i32)) {
                    _z_467469 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 467479i32;
                } else if (__value__ == (467479i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 467490i32;
                    } else {
                        _gotoNext = 467520i32;
                    };
                } else if (__value__ == (467490i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_467469 = (_z_467469 * _x : stdgo.GoFloat64);
                    _gotoNext = 467479i32;
                } else if (__value__ == (467520i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 467520i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 467530i32;
                    } else {
                        _gotoNext = 467596i32;
                    };
                } else if (__value__ == (467530i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 467548i32;
                    } else {
                        _gotoNext = 467570i32;
                    };
                } else if (__value__ == (467548i32)) {
                    _gotoNext = 467926i32;
                } else if (__value__ == (467570i32)) {
                    _z_467469 = (_z_467469 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 467520i32;
                } else if (__value__ == (467596i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 467596i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 467606i32;
                    } else {
                        _gotoNext = 467672i32;
                    };
                } else if (__value__ == (467606i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 467623i32;
                    } else {
                        _gotoNext = 467645i32;
                    };
                } else if (__value__ == (467623i32)) {
                    _gotoNext = 467926i32;
                } else if (__value__ == (467645i32)) {
                    _z_467469 = (_z_467469 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 467596i32;
                } else if (__value__ == (467672i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 467682i32;
                    } else {
                        _gotoNext = 467700i32;
                    };
                } else if (__value__ == (467682i32)) {
                    return _z_467469;
                    _gotoNext = 467700i32;
                } else if (__value__ == (467700i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_466796 = (((((((((((((((((_x * stdgo._internal.math.Math___gamp.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_466783 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamq.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_467469 * _p_466796 : stdgo.GoFloat64) / _q_466783 : stdgo.GoFloat64);
                    _gotoNext = 467926i32;
                } else if (__value__ == (467926i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 467944i32;
                    } else {
                        _gotoNext = 467966i32;
                    };
                } else if (__value__ == (467944i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 467966i32;
                } else if (__value__ == (467966i32)) {
                    return (_z_467469 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
