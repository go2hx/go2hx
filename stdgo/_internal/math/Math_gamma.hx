package stdgo._internal.math;
import stdgo._internal.math.bits.Bits;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _y2_404514:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_404182;
        var _z_405139:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_404823:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_404773:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _signgam_404755:stdgo.GoInt = (0 : stdgo.GoInt);
        var _y1_404510:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_404466:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_404453:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_404985:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_404942:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_404968:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_404947:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_404182 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 404273i32;
                } else if (__value__ == (404273i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 404283i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 404345i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 404380i32;
                    } else {
                        _gotoNext = 404453i32;
                    };
                } else if (__value__ == (404283i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 404453i32;
                } else if (__value__ == (404345i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 404453i32;
                } else if (__value__ == (404380i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 404409i32;
                    } else {
                        _gotoNext = 404435i32;
                    };
                } else if (__value__ == (404409i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 404435i32;
                } else if (__value__ == (404435i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 404453i32;
                } else if (__value__ == (404453i32)) {
                    _q_404453 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_404466 = stdgo._internal.math.Math_floor.floor(_q_404453);
                    if ((_q_404453 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 404491i32;
                    } else {
                        _gotoNext = 405139i32;
                    };
                } else if (__value__ == (404491i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 404505i32;
                    } else {
                        _gotoNext = 404755i32;
                    };
                } else if (__value__ == (404505i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_404510 = @:tmpset0 __tmp__._0;
                        _y2_404514 = @:tmpset0 __tmp__._1;
                    };
                    return (_y1_404510 * _y2_404514 : stdgo.GoFloat64);
                    _gotoNext = 404755i32;
                } else if (__value__ == (404755i32)) {
                    _signgam_404755 = (1 : stdgo.GoInt);
                    {
                        _ip_404773 = (_p_404466 : stdgo.GoInt64);
                        if ((_ip_404773 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 404799i32;
                        } else {
                            _gotoNext = 404823i32;
                        };
                    };
                } else if (__value__ == (404799i32)) {
                    _signgam_404755 = (-1 : stdgo.GoInt);
                    _gotoNext = 404823i32;
                } else if (__value__ == (404823i32)) {
                    _z_404823 = (_q_404453 - _p_404466 : stdgo.GoFloat64);
                    if ((_z_404823 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 404847i32;
                    } else {
                        _gotoNext = 404881i32;
                    };
                } else if (__value__ == (404847i32)) {
                    _p_404466 = (_p_404466 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_404823 = (_q_404453 - _p_404466 : stdgo.GoFloat64);
                    _gotoNext = 404881i32;
                } else if (__value__ == (404881i32)) {
                    _z_404823 = (_q_404453 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_404823 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_404823 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 404911i32;
                    } else {
                        _gotoNext = 404942i32;
                    };
                } else if (__value__ == (404911i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_404755);
                    _gotoNext = 404942i32;
                } else if (__value__ == (404942i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_404453);
                        _sq1_404942 = @:tmpset0 __tmp__._0;
                        _sq2_404947 = @:tmpset0 __tmp__._1;
                    };
                    _absz_404968 = stdgo._internal.math.Math_abs.abs(_z_404823);
                    _d_404985 = ((_absz_404968 * _sq1_404942 : stdgo.GoFloat64) * _sq2_404947 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_404985, (0 : stdgo.GoInt))) {
                        _gotoNext = 405024i32;
                    } else {
                        _gotoNext = 405064i32;
                    };
                } else if (__value__ == (405024i32)) {
                    _z_404823 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_404968 : stdgo.GoFloat64) / _sq1_404942 : stdgo.GoFloat64) / _sq2_404947 : stdgo.GoFloat64);
                    _gotoNext = 405086i32;
                } else if (__value__ == (405064i32)) {
                    _gotoNext = 405064i32;
                    _z_404823 = ((3.141592653589793 : stdgo.GoFloat64) / _d_404985 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 405086i32;
                } else if (__value__ == (405086i32)) {
                    return ((_signgam_404755 : stdgo.GoFloat64) * _z_404823 : stdgo.GoFloat64);
                    _gotoNext = 405139i32;
                } else if (__value__ == (405139i32)) {
                    _z_405139 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 405149i32;
                } else if (__value__ == (405149i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 405160i32;
                    } else {
                        _gotoNext = 405190i32;
                    };
                } else if (__value__ == (405160i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_405139 = (_z_405139 * _x : stdgo.GoFloat64);
                    _gotoNext = 405149i32;
                } else if (__value__ == (405190i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 405190i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 405200i32;
                    } else {
                        _gotoNext = 405266i32;
                    };
                } else if (__value__ == (405200i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 405218i32;
                    } else {
                        _gotoNext = 405240i32;
                    };
                } else if (__value__ == (405218i32)) {
                    _gotoNext = 405596i32;
                } else if (__value__ == (405240i32)) {
                    _z_405139 = (_z_405139 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 405190i32;
                } else if (__value__ == (405266i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 405266i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 405276i32;
                    } else {
                        _gotoNext = 405342i32;
                    };
                } else if (__value__ == (405276i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 405293i32;
                    } else {
                        _gotoNext = 405315i32;
                    };
                } else if (__value__ == (405293i32)) {
                    _gotoNext = 405596i32;
                } else if (__value__ == (405315i32)) {
                    _z_405139 = (_z_405139 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 405266i32;
                } else if (__value__ == (405342i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 405352i32;
                    } else {
                        _gotoNext = 405370i32;
                    };
                } else if (__value__ == (405352i32)) {
                    return _z_405139;
                    _gotoNext = 405370i32;
                } else if (__value__ == (405370i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_404466 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_404453 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_405139 * _p_404466 : stdgo.GoFloat64) / _q_404453 : stdgo.GoFloat64);
                    _gotoNext = 405596i32;
                } else if (__value__ == (405596i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 405614i32;
                    } else {
                        _gotoNext = 405636i32;
                    };
                } else if (__value__ == (405614i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 405636i32;
                } else if (__value__ == (405636i32)) {
                    return (_z_405139 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
