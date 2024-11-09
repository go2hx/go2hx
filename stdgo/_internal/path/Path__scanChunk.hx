package stdgo._internal.path;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_2912862:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_2912840:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2912754i32;
                } else if (__value__ == (2912754i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2912796i32;
                    } else {
                        _gotoNext = 2912840i32;
                    };
                } else if (__value__ == (2912796i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 2912754i32;
                } else if (__value__ == (2912840i32)) {
                    _inrange_2912840 = false;
                    _gotoNext = 2912868i32;
                } else if (__value__ == (2912868i32)) {
                    _i_2912862 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 2912875i32;
                } else if (__value__ == (2912875i32)) {
                    if (!scanBreak && ((_i_2912862 < (_pattern.length) : Bool))) {
                        _gotoNext = 2912908i32;
                    } else {
                        _gotoNext = 2913157i32;
                    };
                } else if (__value__ == (2912904i32)) {
                    _i_2912862++;
                    _gotoNext = 2912875i32;
                } else if (__value__ == (2912908i32)) {
                    _gotoNext = 2912912i32;
                } else if (__value__ == (2912912i32)) {
                    {
                        final __value__ = _pattern[(_i_2912862 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 2912934i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 2913041i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 2913071i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 2913102i32;
                        } else {
                            _gotoNext = 2912904i32;
                        };
                    };
                } else if (__value__ == (2912934i32)) {
                    if (((_i_2912862 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 2913024i32;
                    } else {
                        _gotoNext = 2912904i32;
                    };
                } else if (__value__ == (2913024i32)) {
                    _i_2912862++;
                    _gotoNext = 2912904i32;
                } else if (__value__ == (2913041i32)) {
                    _inrange_2912840 = true;
                    _gotoNext = 2912904i32;
                } else if (__value__ == (2913071i32)) {
                    _inrange_2912840 = false;
                    _gotoNext = 2912904i32;
                } else if (__value__ == (2913102i32)) {
                    if (!_inrange_2912840) {
                        _gotoNext = 2913127i32;
                    } else {
                        _gotoNext = 2912904i32;
                    };
                } else if (__value__ == (2913127i32)) {
                    scanBreak = true;
                    _gotoNext = 2912875i32;
                } else if (__value__ == (2913157i32)) {
                    return { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_2912862) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_2912862) : stdgo.GoString)?.__copy__() };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
