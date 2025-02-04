package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _sq2_416500:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq1_416495:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _signgam_416308:stdgo.GoInt = (0 : stdgo.GoInt);
        var _q_416006:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_415735;
        var _z_416692:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _ip_416326:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _y1_416063:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_416019:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_416538:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_416521:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_416376:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y2_416067:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_415735 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 415826i32;
                } else if (__value__ == (415826i32)) {
                    if (((stdgo._internal.math.Math__isnegint._isNegInt(_x) || stdgo._internal.math.Math_isinf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool)) {
                        _gotoNext = 415836i32;
                    } else if (stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 415898i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 415933i32;
                    } else {
                        _gotoNext = 416006i32;
                    };
                } else if (__value__ == (415836i32)) {
                    return stdgo._internal.math.Math_nan.naN();
                    _gotoNext = 416006i32;
                } else if (__value__ == (415898i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 416006i32;
                } else if (__value__ == (415933i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 415962i32;
                    } else {
                        _gotoNext = 415988i32;
                    };
                } else if (__value__ == (415962i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 415988i32;
                } else if (__value__ == (415988i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 416006i32;
                } else if (__value__ == (416006i32)) {
                    _q_416006 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_416019 = stdgo._internal.math.Math_floor.floor(_q_416006);
                    if ((_q_416006 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 416044i32;
                    } else {
                        _gotoNext = 416692i32;
                    };
                } else if (__value__ == (416044i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 416058i32;
                    } else {
                        _gotoNext = 416308i32;
                    };
                } else if (__value__ == (416058i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_416063 = @:tmpset0 __tmp__._0;
                        _y2_416067 = @:tmpset0 __tmp__._1;
                    };
                    return (_y1_416063 * _y2_416067 : stdgo.GoFloat64);
                    _gotoNext = 416308i32;
                } else if (__value__ == (416308i32)) {
                    _signgam_416308 = (1 : stdgo.GoInt);
                    {
                        _ip_416326 = (_p_416019 : stdgo.GoInt64);
                        if ((_ip_416326 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 416352i32;
                        } else {
                            _gotoNext = 416376i32;
                        };
                    };
                } else if (__value__ == (416352i32)) {
                    _signgam_416308 = (-1 : stdgo.GoInt);
                    _gotoNext = 416376i32;
                } else if (__value__ == (416376i32)) {
                    _z_416376 = (_q_416006 - _p_416019 : stdgo.GoFloat64);
                    if ((_z_416376 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 416400i32;
                    } else {
                        _gotoNext = 416434i32;
                    };
                } else if (__value__ == (416400i32)) {
                    _p_416019 = (_p_416019 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_416376 = (_q_416006 - _p_416019 : stdgo.GoFloat64);
                    _gotoNext = 416434i32;
                } else if (__value__ == (416434i32)) {
                    _z_416376 = (_q_416006 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_416376 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_416376 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 416464i32;
                    } else {
                        _gotoNext = 416495i32;
                    };
                } else if (__value__ == (416464i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_416308);
                    _gotoNext = 416495i32;
                } else if (__value__ == (416495i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_416006);
                        _sq1_416495 = @:tmpset0 __tmp__._0;
                        _sq2_416500 = @:tmpset0 __tmp__._1;
                    };
                    _absz_416521 = stdgo._internal.math.Math_abs.abs(_z_416376);
                    _d_416538 = ((_absz_416521 * _sq1_416495 : stdgo.GoFloat64) * _sq2_416500 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isinf.isInf(_d_416538, (0 : stdgo.GoInt))) {
                        _gotoNext = 416577i32;
                    } else {
                        _gotoNext = 416617i32;
                    };
                } else if (__value__ == (416577i32)) {
                    _z_416376 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_416521 : stdgo.GoFloat64) / _sq1_416495 : stdgo.GoFloat64) / _sq2_416500 : stdgo.GoFloat64);
                    _gotoNext = 416639i32;
                } else if (__value__ == (416617i32)) {
                    _gotoNext = 416617i32;
                    _z_416376 = ((3.141592653589793 : stdgo.GoFloat64) / _d_416538 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 416639i32;
                } else if (__value__ == (416639i32)) {
                    return ((_signgam_416308 : stdgo.GoFloat64) * _z_416376 : stdgo.GoFloat64);
                    _gotoNext = 416692i32;
                } else if (__value__ == (416692i32)) {
                    _z_416692 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 416702i32;
                } else if (__value__ == (416702i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 416713i32;
                    } else {
                        _gotoNext = 416743i32;
                    };
                } else if (__value__ == (416713i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_416692 = (_z_416692 * _x : stdgo.GoFloat64);
                    _gotoNext = 416702i32;
                } else if (__value__ == (416743i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 416743i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 416753i32;
                    } else {
                        _gotoNext = 416819i32;
                    };
                } else if (__value__ == (416753i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 416771i32;
                    } else {
                        _gotoNext = 416793i32;
                    };
                } else if (__value__ == (416771i32)) {
                    _gotoNext = 417149i32;
                } else if (__value__ == (416793i32)) {
                    _z_416692 = (_z_416692 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 416743i32;
                } else if (__value__ == (416819i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 416819i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 416829i32;
                    } else {
                        _gotoNext = 416895i32;
                    };
                } else if (__value__ == (416829i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 416846i32;
                    } else {
                        _gotoNext = 416868i32;
                    };
                } else if (__value__ == (416846i32)) {
                    _gotoNext = 417149i32;
                } else if (__value__ == (416868i32)) {
                    _z_416692 = (_z_416692 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 416819i32;
                } else if (__value__ == (416895i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 416905i32;
                    } else {
                        _gotoNext = 416923i32;
                    };
                } else if (__value__ == (416905i32)) {
                    return _z_416692;
                    _gotoNext = 416923i32;
                } else if (__value__ == (416923i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_416019 = (((((((((((((((((_x * stdgo._internal.math.Math___gamp.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_416006 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamq.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_416692 * _p_416019 : stdgo.GoFloat64) / _q_416006 : stdgo.GoFloat64);
                    _gotoNext = 417149i32;
                } else if (__value__ == (417149i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 417167i32;
                    } else {
                        _gotoNext = 417189i32;
                    };
                } else if (__value__ == (417167i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 417189i32;
                } else if (__value__ == (417189i32)) {
                    return (_z_416692 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
