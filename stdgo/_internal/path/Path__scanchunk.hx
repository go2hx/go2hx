package stdgo._internal.path;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_2618098:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_2618076:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2617990i32;
                } else if (__value__ == (2617990i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2618032i32;
                    } else {
                        _gotoNext = 2618076i32;
                    };
                } else if (__value__ == (2618032i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 2617990i32;
                } else if (__value__ == (2618076i32)) {
                    _inrange_2618076 = false;
                    _gotoNext = 2618104i32;
                } else if (__value__ == (2618104i32)) {
                    _i_2618098 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 2618111i32;
                } else if (__value__ == (2618111i32)) {
                    if (!scanBreak && ((_i_2618098 < (_pattern.length) : Bool))) {
                        _gotoNext = 2618144i32;
                    } else {
                        _gotoNext = 2618393i32;
                    };
                } else if (__value__ == (2618140i32)) {
                    _i_2618098++;
                    _gotoNext = 2618111i32;
                } else if (__value__ == (2618144i32)) {
                    _gotoNext = 2618148i32;
                } else if (__value__ == (2618148i32)) {
                    {
                        final __value__ = _pattern[(_i_2618098 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 2618170i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 2618277i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 2618307i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 2618338i32;
                        } else {
                            _gotoNext = 2618140i32;
                        };
                    };
                } else if (__value__ == (2618170i32)) {
                    if (((_i_2618098 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 2618260i32;
                    } else {
                        _gotoNext = 2618140i32;
                    };
                } else if (__value__ == (2618260i32)) {
                    _i_2618098++;
                    _gotoNext = 2618140i32;
                } else if (__value__ == (2618277i32)) {
                    _inrange_2618076 = true;
                    _gotoNext = 2618140i32;
                } else if (__value__ == (2618307i32)) {
                    _inrange_2618076 = false;
                    _gotoNext = 2618140i32;
                } else if (__value__ == (2618338i32)) {
                    if (!_inrange_2618076) {
                        _gotoNext = 2618363i32;
                    } else {
                        _gotoNext = 2618140i32;
                    };
                } else if (__value__ == (2618363i32)) {
                    scanBreak = true;
                    _gotoNext = 2618111i32;
                } else if (__value__ == (2618393i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_2618098) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_2618098) : stdgo.GoString)?.__copy__() };
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
