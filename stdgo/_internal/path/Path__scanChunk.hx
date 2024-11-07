package stdgo._internal.path;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var _i_2829901:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_2829879:Bool = false;
        var scanBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2829793i32;
                } else if (__value__ == (2829793i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2829835i32;
                    } else {
                        _gotoNext = 2829879i32;
                    };
                } else if (__value__ == (2829835i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 2829793i32;
                } else if (__value__ == (2829879i32)) {
                    _inrange_2829879 = false;
                    _gotoNext = 2829907i32;
                } else if (__value__ == (2829907i32)) {
                    _i_2829901 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 2829914i32;
                } else if (__value__ == (2829914i32)) {
                    if (!scanBreak && ((_i_2829901 < (_pattern.length) : Bool))) {
                        _gotoNext = 2829947i32;
                    } else {
                        _gotoNext = 2830196i32;
                    };
                } else if (__value__ == (2829943i32)) {
                    _i_2829901++;
                    _gotoNext = 2829914i32;
                } else if (__value__ == (2829947i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2829951i32;
                } else if (__value__ == (2829951i32)) {
                    {
                        final __value__ = _pattern[(_i_2829901 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 2829973i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 2830080i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 2830110i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 2830141i32;
                        } else {
                            _gotoNext = 2829943i32;
                        };
                    };
                } else if (__value__ == (2829973i32)) {
                    if (((_i_2829901 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 2830063i32;
                    } else {
                        _gotoNext = 2829943i32;
                    };
                } else if (__value__ == (2830063i32)) {
                    _i_2829901++;
                    _gotoNext = 2829943i32;
                } else if (__value__ == (2830080i32)) {
                    _inrange_2829879 = true;
                    _gotoNext = 2829943i32;
                } else if (__value__ == (2830110i32)) {
                    _inrange_2829879 = false;
                    _gotoNext = 2829943i32;
                } else if (__value__ == (2830141i32)) {
                    if (!_inrange_2829879) {
                        _gotoNext = 2830166i32;
                    } else {
                        _gotoNext = 2829943i32;
                    };
                } else if (__value__ == (2830166i32)) {
                    scanBreak = true;
                    _gotoNext = 2829914i32;
                } else if (__value__ == (2830196i32)) {
                    return { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_2829901) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_2829901) : stdgo.GoString)?.__copy__() };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
