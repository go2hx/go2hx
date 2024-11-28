package stdgo._internal.path;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_2579673:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_2579651:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2579565i32;
                } else if (__value__ == (2579565i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2579607i32;
                    } else {
                        _gotoNext = 2579651i32;
                    };
                } else if (__value__ == (2579607i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 2579565i32;
                } else if (__value__ == (2579651i32)) {
                    _inrange_2579651 = false;
                    _gotoNext = 2579679i32;
                } else if (__value__ == (2579679i32)) {
                    _i_2579673 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 2579686i32;
                } else if (__value__ == (2579686i32)) {
                    if (!scanBreak && ((_i_2579673 < (_pattern.length) : Bool))) {
                        _gotoNext = 2579719i32;
                    } else {
                        _gotoNext = 2579968i32;
                    };
                } else if (__value__ == (2579715i32)) {
                    _i_2579673++;
                    _gotoNext = 2579686i32;
                } else if (__value__ == (2579719i32)) {
                    _gotoNext = 2579723i32;
                } else if (__value__ == (2579723i32)) {
                    {
                        final __value__ = _pattern[(_i_2579673 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 2579745i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 2579852i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 2579882i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 2579913i32;
                        } else {
                            _gotoNext = 2579715i32;
                        };
                    };
                } else if (__value__ == (2579745i32)) {
                    if (((_i_2579673 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 2579835i32;
                    } else {
                        _gotoNext = 2579715i32;
                    };
                } else if (__value__ == (2579835i32)) {
                    _i_2579673++;
                    _gotoNext = 2579715i32;
                } else if (__value__ == (2579852i32)) {
                    _inrange_2579651 = true;
                    _gotoNext = 2579715i32;
                } else if (__value__ == (2579882i32)) {
                    _inrange_2579651 = false;
                    _gotoNext = 2579715i32;
                } else if (__value__ == (2579913i32)) {
                    if (!_inrange_2579651) {
                        _gotoNext = 2579938i32;
                    } else {
                        _gotoNext = 2579715i32;
                    };
                } else if (__value__ == (2579938i32)) {
                    scanBreak = true;
                    _gotoNext = 2579686i32;
                } else if (__value__ == (2579968i32)) {
                    return { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_2579673) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_2579673) : stdgo.GoString)?.__copy__() };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
