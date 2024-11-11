package stdgo._internal.path;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_2828273:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_2828251:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2828165i32;
                } else if (__value__ == (2828165i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2828207i32;
                    } else {
                        _gotoNext = 2828251i32;
                    };
                } else if (__value__ == (2828207i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 2828165i32;
                } else if (__value__ == (2828251i32)) {
                    _inrange_2828251 = false;
                    _gotoNext = 2828279i32;
                } else if (__value__ == (2828279i32)) {
                    _i_2828273 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 2828286i32;
                } else if (__value__ == (2828286i32)) {
                    if (!scanBreak && ((_i_2828273 < (_pattern.length) : Bool))) {
                        _gotoNext = 2828319i32;
                    } else {
                        _gotoNext = 2828568i32;
                    };
                } else if (__value__ == (2828315i32)) {
                    _i_2828273++;
                    _gotoNext = 2828286i32;
                } else if (__value__ == (2828319i32)) {
                    _gotoNext = 2828323i32;
                } else if (__value__ == (2828323i32)) {
                    {
                        final __value__ = _pattern[(_i_2828273 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 2828345i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 2828452i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 2828482i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 2828513i32;
                        } else {
                            _gotoNext = 2828315i32;
                        };
                    };
                } else if (__value__ == (2828345i32)) {
                    if (((_i_2828273 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 2828435i32;
                    } else {
                        _gotoNext = 2828315i32;
                    };
                } else if (__value__ == (2828435i32)) {
                    _i_2828273++;
                    _gotoNext = 2828315i32;
                } else if (__value__ == (2828452i32)) {
                    _inrange_2828251 = true;
                    _gotoNext = 2828315i32;
                } else if (__value__ == (2828482i32)) {
                    _inrange_2828251 = false;
                    _gotoNext = 2828315i32;
                } else if (__value__ == (2828513i32)) {
                    if (!_inrange_2828251) {
                        _gotoNext = 2828538i32;
                    } else {
                        _gotoNext = 2828315i32;
                    };
                } else if (__value__ == (2828538i32)) {
                    scanBreak = true;
                    _gotoNext = 2828286i32;
                } else if (__value__ == (2828568i32)) {
                    return { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_2828273) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_2828273) : stdgo.GoString)?.__copy__() };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
