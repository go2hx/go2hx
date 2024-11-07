package stdgo._internal.path;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_2626964:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_2626942:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2626856i32;
                } else if (__value__ == (2626856i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2626898i32;
                    } else {
                        _gotoNext = 2626942i32;
                    };
                } else if (__value__ == (2626898i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 2626856i32;
                } else if (__value__ == (2626942i32)) {
                    _inrange_2626942 = false;
                    _gotoNext = 2626970i32;
                } else if (__value__ == (2626970i32)) {
                    _i_2626964 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 2626977i32;
                } else if (__value__ == (2626977i32)) {
                    if (!scanBreak && ((_i_2626964 < (_pattern.length) : Bool))) {
                        _gotoNext = 2627010i32;
                    } else {
                        _gotoNext = 2627259i32;
                    };
                } else if (__value__ == (2627006i32)) {
                    _i_2626964++;
                    _gotoNext = 2626977i32;
                } else if (__value__ == (2627010i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2627014i32;
                } else if (__value__ == (2627014i32)) {
                    {
                        final __value__ = _pattern[(_i_2626964 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 2627036i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 2627143i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 2627173i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 2627204i32;
                        } else {
                            _gotoNext = 2627006i32;
                        };
                    };
                } else if (__value__ == (2627036i32)) {
                    if (((_i_2626964 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 2627126i32;
                    } else {
                        _gotoNext = 2627006i32;
                    };
                } else if (__value__ == (2627126i32)) {
                    _i_2626964++;
                    _gotoNext = 2627006i32;
                } else if (__value__ == (2627143i32)) {
                    _inrange_2626942 = true;
                    _gotoNext = 2627006i32;
                } else if (__value__ == (2627173i32)) {
                    _inrange_2626942 = false;
                    _gotoNext = 2627006i32;
                } else if (__value__ == (2627204i32)) {
                    if (!_inrange_2626942) {
                        _gotoNext = 2627229i32;
                    } else {
                        _gotoNext = 2627006i32;
                    };
                } else if (__value__ == (2627229i32)) {
                    scanBreak = true;
                    _gotoNext = 2626977i32;
                } else if (__value__ == (2627259i32)) {
                    return { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_2626964) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_2626964) : stdgo.GoString)?.__copy__() };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
