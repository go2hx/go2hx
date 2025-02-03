package stdgo._internal.path;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_2653765:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_2653743:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2653657i32;
                } else if (__value__ == (2653657i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2653699i32;
                    } else {
                        _gotoNext = 2653743i32;
                    };
                } else if (__value__ == (2653699i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 2653657i32;
                } else if (__value__ == (2653743i32)) {
                    _inrange_2653743 = false;
                    _gotoNext = 2653771i32;
                } else if (__value__ == (2653771i32)) {
                    _i_2653765 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 2653778i32;
                } else if (__value__ == (2653778i32)) {
                    if (!scanBreak && ((_i_2653765 < (_pattern.length) : Bool))) {
                        _gotoNext = 2653811i32;
                    } else {
                        _gotoNext = 2654060i32;
                    };
                } else if (__value__ == (2653807i32)) {
                    _i_2653765++;
                    _gotoNext = 2653778i32;
                } else if (__value__ == (2653811i32)) {
                    _gotoNext = 2653815i32;
                } else if (__value__ == (2653815i32)) {
                    {
                        final __value__ = _pattern[(_i_2653765 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 2653837i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 2653944i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 2653974i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 2654005i32;
                        } else {
                            _gotoNext = 2653807i32;
                        };
                    };
                } else if (__value__ == (2653837i32)) {
                    if (((_i_2653765 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 2653927i32;
                    } else {
                        _gotoNext = 2653807i32;
                    };
                } else if (__value__ == (2653927i32)) {
                    _i_2653765++;
                    _gotoNext = 2653807i32;
                } else if (__value__ == (2653944i32)) {
                    _inrange_2653743 = true;
                    _gotoNext = 2653807i32;
                } else if (__value__ == (2653974i32)) {
                    _inrange_2653743 = false;
                    _gotoNext = 2653807i32;
                } else if (__value__ == (2654005i32)) {
                    if (!_inrange_2653743) {
                        _gotoNext = 2654030i32;
                    } else {
                        _gotoNext = 2653807i32;
                    };
                } else if (__value__ == (2654030i32)) {
                    scanBreak = true;
                    _gotoNext = 2653778i32;
                } else if (__value__ == (2654060i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_2653765) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_2653765) : stdgo.GoString)?.__copy__() };
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
