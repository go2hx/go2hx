package stdgo._internal.path;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_2701653:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_2701631:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2701545i32;
                } else if (__value__ == (2701545i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2701587i32;
                    } else {
                        _gotoNext = 2701631i32;
                    };
                } else if (__value__ == (2701587i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 2701545i32;
                } else if (__value__ == (2701631i32)) {
                    _inrange_2701631 = false;
                    _gotoNext = 2701659i32;
                } else if (__value__ == (2701659i32)) {
                    _i_2701653 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 2701666i32;
                } else if (__value__ == (2701666i32)) {
                    if (!scanBreak && ((_i_2701653 < (_pattern.length) : Bool))) {
                        _gotoNext = 2701699i32;
                    } else {
                        _gotoNext = 2701948i32;
                    };
                } else if (__value__ == (2701695i32)) {
                    _i_2701653++;
                    _gotoNext = 2701666i32;
                } else if (__value__ == (2701699i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2701703i32;
                } else if (__value__ == (2701703i32)) {
                    {
                        final __value__ = _pattern[(_i_2701653 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 2701725i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 2701832i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 2701862i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 2701893i32;
                        } else {
                            _gotoNext = 2701695i32;
                        };
                    };
                } else if (__value__ == (2701725i32)) {
                    if (((_i_2701653 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 2701815i32;
                    } else {
                        _gotoNext = 2701695i32;
                    };
                } else if (__value__ == (2701815i32)) {
                    _i_2701653++;
                    _gotoNext = 2701695i32;
                } else if (__value__ == (2701832i32)) {
                    _inrange_2701631 = true;
                    _gotoNext = 2701695i32;
                } else if (__value__ == (2701862i32)) {
                    _inrange_2701631 = false;
                    _gotoNext = 2701695i32;
                } else if (__value__ == (2701893i32)) {
                    if (!_inrange_2701631) {
                        _gotoNext = 2701918i32;
                    } else {
                        _gotoNext = 2701695i32;
                    };
                } else if (__value__ == (2701918i32)) {
                    scanBreak = true;
                    _gotoNext = 2701666i32;
                } else if (__value__ == (2701948i32)) {
                    return { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_2701653) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_2701653) : stdgo.GoString)?.__copy__() };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
