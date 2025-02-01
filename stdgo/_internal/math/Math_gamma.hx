package stdgo._internal.math;
import stdgo._internal.math.bits.Bits;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _z_474519:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_474210:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_474835:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_474638:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_474469:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _p_474162:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_473878;
        var _d_474681:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_474664:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_474643:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_474451:stdgo.GoInt = (0 : stdgo.GoInt);
        var _y1_474206:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_474149:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_473878 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 473969i32;
                } else if (__value__ == (473969i32)) {
                    if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                        _gotoNext = 473979i32;
                    } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 474041i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 474076i32;
                    } else {
                        _gotoNext = 474149i32;
                    };
                } else if (__value__ == (473979i32)) {
                    return stdgo._internal.math.Math_naN.naN();
                    _gotoNext = 474149i32;
                } else if (__value__ == (474041i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 474149i32;
                } else if (__value__ == (474076i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 474105i32;
                    } else {
                        _gotoNext = 474131i32;
                    };
                } else if (__value__ == (474105i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 474131i32;
                } else if (__value__ == (474131i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 474149i32;
                } else if (__value__ == (474149i32)) {
                    _q_474149 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_474162 = stdgo._internal.math.Math_floor.floor(_q_474149);
                    if ((_q_474149 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 474187i32;
                    } else {
                        _gotoNext = 474835i32;
                    };
                } else if (__value__ == (474187i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 474201i32;
                    } else {
                        _gotoNext = 474451i32;
                    };
                } else if (__value__ == (474201i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_474206 = @:tmpset0 __tmp__._0;
                        _y2_474210 = @:tmpset0 __tmp__._1;
                    };
                    return (_y1_474206 * _y2_474210 : stdgo.GoFloat64);
                    _gotoNext = 474451i32;
                } else if (__value__ == (474451i32)) {
                    _signgam_474451 = (1 : stdgo.GoInt);
                    {
                        _ip_474469 = (_p_474162 : stdgo.GoInt64);
                        if ((_ip_474469 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 474495i32;
                        } else {
                            _gotoNext = 474519i32;
                        };
                    };
                } else if (__value__ == (474495i32)) {
                    _signgam_474451 = (-1 : stdgo.GoInt);
                    _gotoNext = 474519i32;
                } else if (__value__ == (474519i32)) {
                    _z_474519 = (_q_474149 - _p_474162 : stdgo.GoFloat64);
                    if ((_z_474519 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 474543i32;
                    } else {
                        _gotoNext = 474577i32;
                    };
                } else if (__value__ == (474543i32)) {
                    _p_474162 = (_p_474162 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_474519 = (_q_474149 - _p_474162 : stdgo.GoFloat64);
                    _gotoNext = 474577i32;
                } else if (__value__ == (474577i32)) {
                    _z_474519 = (_q_474149 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_474519 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_474519 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 474607i32;
                    } else {
                        _gotoNext = 474638i32;
                    };
                } else if (__value__ == (474607i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_474451);
                    _gotoNext = 474638i32;
                } else if (__value__ == (474638i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_474149);
                        _sq1_474638 = @:tmpset0 __tmp__._0;
                        _sq2_474643 = @:tmpset0 __tmp__._1;
                    };
                    _absz_474664 = stdgo._internal.math.Math_abs.abs(_z_474519);
                    _d_474681 = ((_absz_474664 * _sq1_474638 : stdgo.GoFloat64) * _sq2_474643 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isInf.isInf(_d_474681, (0 : stdgo.GoInt))) {
                        _gotoNext = 474720i32;
                    } else {
                        _gotoNext = 474760i32;
                    };
                } else if (__value__ == (474720i32)) {
                    _z_474519 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_474664 : stdgo.GoFloat64) / _sq1_474638 : stdgo.GoFloat64) / _sq2_474643 : stdgo.GoFloat64);
                    _gotoNext = 474782i32;
                } else if (__value__ == (474760i32)) {
                    _gotoNext = 474760i32;
                    _z_474519 = ((3.141592653589793 : stdgo.GoFloat64) / _d_474681 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 474782i32;
                } else if (__value__ == (474782i32)) {
                    return ((_signgam_474451 : stdgo.GoFloat64) * _z_474519 : stdgo.GoFloat64);
                    _gotoNext = 474835i32;
                } else if (__value__ == (474835i32)) {
                    _z_474835 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 474845i32;
                } else if (__value__ == (474845i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 474856i32;
                    } else {
                        _gotoNext = 474886i32;
                    };
                } else if (__value__ == (474856i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_474835 = (_z_474835 * _x : stdgo.GoFloat64);
                    _gotoNext = 474845i32;
                } else if (__value__ == (474886i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 474886i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 474896i32;
                    } else {
                        _gotoNext = 474962i32;
                    };
                } else if (__value__ == (474896i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 474914i32;
                    } else {
                        _gotoNext = 474936i32;
                    };
                } else if (__value__ == (474914i32)) {
                    _gotoNext = 475292i32;
                } else if (__value__ == (474936i32)) {
                    _z_474835 = (_z_474835 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 474886i32;
                } else if (__value__ == (474962i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 474962i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 474972i32;
                    } else {
                        _gotoNext = 475038i32;
                    };
                } else if (__value__ == (474972i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 474989i32;
                    } else {
                        _gotoNext = 475011i32;
                    };
                } else if (__value__ == (474989i32)) {
                    _gotoNext = 475292i32;
                } else if (__value__ == (475011i32)) {
                    _z_474835 = (_z_474835 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 474962i32;
                } else if (__value__ == (475038i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 475048i32;
                    } else {
                        _gotoNext = 475066i32;
                    };
                } else if (__value__ == (475048i32)) {
                    return _z_474835;
                    _gotoNext = 475066i32;
                } else if (__value__ == (475066i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_474162 = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_474149 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_474835 * _p_474162 : stdgo.GoFloat64) / _q_474149 : stdgo.GoFloat64);
                    _gotoNext = 475292i32;
                } else if (__value__ == (475292i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 475310i32;
                    } else {
                        _gotoNext = 475332i32;
                    };
                } else if (__value__ == (475310i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 475332i32;
                } else if (__value__ == (475332i32)) {
                    return (_z_474835 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
