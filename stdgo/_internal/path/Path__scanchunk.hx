package stdgo._internal.path;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_2640373:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_2640351:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2640265i32;
                } else if (__value__ == (2640265i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2640307i32;
                    } else {
                        _gotoNext = 2640351i32;
                    };
                } else if (__value__ == (2640307i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 2640265i32;
                } else if (__value__ == (2640351i32)) {
                    _inrange_2640351 = false;
                    _gotoNext = 2640379i32;
                } else if (__value__ == (2640379i32)) {
                    _i_2640373 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 2640386i32;
                } else if (__value__ == (2640386i32)) {
                    if (!scanBreak && ((_i_2640373 < (_pattern.length) : Bool))) {
                        _gotoNext = 2640419i32;
                    } else {
                        _gotoNext = 2640668i32;
                    };
                } else if (__value__ == (2640415i32)) {
                    _i_2640373++;
                    _gotoNext = 2640386i32;
                } else if (__value__ == (2640419i32)) {
                    _gotoNext = 2640423i32;
                } else if (__value__ == (2640423i32)) {
                    {
                        final __value__ = _pattern[(_i_2640373 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 2640445i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 2640552i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 2640582i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 2640613i32;
                        } else {
                            _gotoNext = 2640415i32;
                        };
                    };
                } else if (__value__ == (2640445i32)) {
                    if (((_i_2640373 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 2640535i32;
                    } else {
                        _gotoNext = 2640415i32;
                    };
                } else if (__value__ == (2640535i32)) {
                    _i_2640373++;
                    _gotoNext = 2640415i32;
                } else if (__value__ == (2640552i32)) {
                    _inrange_2640351 = true;
                    _gotoNext = 2640415i32;
                } else if (__value__ == (2640582i32)) {
                    _inrange_2640351 = false;
                    _gotoNext = 2640415i32;
                } else if (__value__ == (2640613i32)) {
                    if (!_inrange_2640351) {
                        _gotoNext = 2640638i32;
                    } else {
                        _gotoNext = 2640415i32;
                    };
                } else if (__value__ == (2640638i32)) {
                    scanBreak = true;
                    _gotoNext = 2640386i32;
                } else if (__value__ == (2640668i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_2640373) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_2640373) : stdgo.GoString)?.__copy__() };
                        _star = __tmp__._0;
                        _chunk = __tmp__._1;
                        _rest = __tmp__._2;
                        __tmp__;
                    };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
