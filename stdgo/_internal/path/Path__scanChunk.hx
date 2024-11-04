package stdgo._internal.path;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var _i_2875268:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_2875246:Bool = false;
        var scanBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2875160i32;
                } else if (__value__ == (2875160i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2875202i32;
                    } else {
                        _gotoNext = 2875246i32;
                    };
                } else if (__value__ == (2875202i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 2875160i32;
                } else if (__value__ == (2875246i32)) {
                    _inrange_2875246 = false;
                    _gotoNext = 2875274i32;
                } else if (__value__ == (2875274i32)) {
                    _i_2875268 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 2875281i32;
                } else if (__value__ == (2875281i32)) {
                    if (!scanBreak && ((_i_2875268 < (_pattern.length) : Bool))) {
                        _gotoNext = 2875314i32;
                    } else {
                        _gotoNext = 2875563i32;
                    };
                } else if (__value__ == (2875310i32)) {
                    _i_2875268++;
                    _gotoNext = 2875281i32;
                } else if (__value__ == (2875314i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2875318i32;
                } else if (__value__ == (2875318i32)) {
                    {
                        final __value__ = _pattern[(_i_2875268 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 2875340i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 2875447i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 2875477i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 2875508i32;
                        } else {
                            _gotoNext = 2875310i32;
                        };
                    };
                } else if (__value__ == (2875340i32)) {
                    if (((_i_2875268 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 2875430i32;
                    } else {
                        _gotoNext = 2875310i32;
                    };
                } else if (__value__ == (2875430i32)) {
                    _i_2875268++;
                    _gotoNext = 2875310i32;
                } else if (__value__ == (2875447i32)) {
                    _inrange_2875246 = true;
                    _gotoNext = 2875310i32;
                } else if (__value__ == (2875477i32)) {
                    _inrange_2875246 = false;
                    _gotoNext = 2875310i32;
                } else if (__value__ == (2875508i32)) {
                    if (!_inrange_2875246) {
                        _gotoNext = 2875533i32;
                    } else {
                        _gotoNext = 2875310i32;
                    };
                } else if (__value__ == (2875533i32)) {
                    scanBreak = true;
                    _gotoNext = 2875281i32;
                } else if (__value__ == (2875563i32)) {
                    return { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_2875268) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_2875268) : stdgo.GoString)?.__copy__() };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
