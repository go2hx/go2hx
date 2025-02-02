package stdgo._internal.math;
import stdgo._internal.math.bits.Bits;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _z_454675:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_454625:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _y1_454362:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_454318:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_454799:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_454305:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_454794:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_454607:stdgo.GoInt = (0 : stdgo.GoInt);
        var _y2_454366:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_454991:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_454837:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_454820:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_454034;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_454034 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 454125i32;
                } else if (__value__ == (454125i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 454135i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 454197i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 454232i32;
                    } else {
                        _gotoNext = 454305i32;
                    };
                } else if (__value__ == (454135i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 454305i32;
                } else if (__value__ == (454197i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 454305i32;
                } else if (__value__ == (454232i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 454261i32;
                    } else {
                        _gotoNext = 454287i32;
                    };
                } else if (__value__ == (454261i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 454287i32;
                } else if (__value__ == (454287i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 454305i32;
                } else if (__value__ == (454305i32)) {
                    _q_454305 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_454318 = stdgo._internal.math.Math_floor.floor(_q_454305);
                    if ((_q_454305 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 454343i32;
                    } else {
                        _gotoNext = 454991i32;
                    };
                } else if (__value__ == (454343i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 454357i32;
                    } else {
                        _gotoNext = 454607i32;
                    };
                } else if (__value__ == (454357i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_454362 = @:tmpset0 __tmp__._0;
                        _y2_454366 = @:tmpset0 __tmp__._1;
                    };
                    return (_y1_454362 * _y2_454366 : stdgo.GoFloat64);
                    _gotoNext = 454607i32;
                } else if (__value__ == (454607i32)) {
                    _signgam_454607 = (1 : stdgo.GoInt);
                    {
                        _ip_454625 = (_p_454318 : stdgo.GoInt64);
                        if ((_ip_454625 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 454651i32;
                        } else {
                            _gotoNext = 454675i32;
                        };
                    };
                } else if (__value__ == (454651i32)) {
                    _signgam_454607 = (-1 : stdgo.GoInt);
                    _gotoNext = 454675i32;
                } else if (__value__ == (454675i32)) {
                    _z_454675 = (_q_454305 - _p_454318 : stdgo.GoFloat64);
                    if ((_z_454675 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 454699i32;
                    } else {
                        _gotoNext = 454733i32;
                    };
                } else if (__value__ == (454699i32)) {
                    _p_454318 = (_p_454318 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_454675 = (_q_454305 - _p_454318 : stdgo.GoFloat64);
                    _gotoNext = 454733i32;
                } else if (__value__ == (454733i32)) {
                    _z_454675 = (_q_454305 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_454675 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_454675 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 454763i32;
                    } else {
                        _gotoNext = 454794i32;
                    };
                } else if (__value__ == (454763i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_454607);
                    _gotoNext = 454794i32;
                } else if (__value__ == (454794i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_454305);
                        _sq1_454794 = @:tmpset0 __tmp__._0;
                        _sq2_454799 = @:tmpset0 __tmp__._1;
                    };
                    _absz_454820 = stdgo._internal.math.Math_abs.abs(_z_454675);
                    _d_454837 = ((_absz_454820 * _sq1_454794 : stdgo.GoFloat64) * _sq2_454799 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_454837, (0 : stdgo.GoInt))) {
                        _gotoNext = 454876i32;
                    } else {
                        _gotoNext = 454916i32;
                    };
                } else if (__value__ == (454876i32)) {
                    _z_454675 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_454820 : stdgo.GoFloat64) / _sq1_454794 : stdgo.GoFloat64) / _sq2_454799 : stdgo.GoFloat64);
                    _gotoNext = 454938i32;
                } else if (__value__ == (454916i32)) {
                    _gotoNext = 454916i32;
                    _z_454675 = ((3.141592653589793 : stdgo.GoFloat64) / _d_454837 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 454938i32;
                } else if (__value__ == (454938i32)) {
                    return ((_signgam_454607 : stdgo.GoFloat64) * _z_454675 : stdgo.GoFloat64);
                    _gotoNext = 454991i32;
                } else if (__value__ == (454991i32)) {
                    _z_454991 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 455001i32;
                } else if (__value__ == (455001i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 455012i32;
                    } else {
                        _gotoNext = 455042i32;
                    };
                } else if (__value__ == (455012i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_454991 = (_z_454991 * _x : stdgo.GoFloat64);
                    _gotoNext = 455001i32;
                } else if (__value__ == (455042i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 455042i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 455052i32;
                    } else {
                        _gotoNext = 455118i32;
                    };
                } else if (__value__ == (455052i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 455070i32;
                    } else {
                        _gotoNext = 455092i32;
                    };
                } else if (__value__ == (455070i32)) {
                    _gotoNext = 455448i32;
                } else if (__value__ == (455092i32)) {
                    _z_454991 = (_z_454991 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 455042i32;
                } else if (__value__ == (455118i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 455118i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 455128i32;
                    } else {
                        _gotoNext = 455194i32;
                    };
                } else if (__value__ == (455128i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 455145i32;
                    } else {
                        _gotoNext = 455167i32;
                    };
                } else if (__value__ == (455145i32)) {
                    _gotoNext = 455448i32;
                } else if (__value__ == (455167i32)) {
                    _z_454991 = (_z_454991 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 455118i32;
                } else if (__value__ == (455194i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 455204i32;
                    } else {
                        _gotoNext = 455222i32;
                    };
                } else if (__value__ == (455204i32)) {
                    return _z_454991;
                    _gotoNext = 455222i32;
                } else if (__value__ == (455222i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_454318 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_454305 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_454991 * _p_454318 : stdgo.GoFloat64) / _q_454305 : stdgo.GoFloat64);
                    _gotoNext = 455448i32;
                } else if (__value__ == (455448i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 455466i32;
                    } else {
                        _gotoNext = 455488i32;
                    };
                } else if (__value__ == (455466i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 455488i32;
                } else if (__value__ == (455488i32)) {
                    return (_z_454991 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
