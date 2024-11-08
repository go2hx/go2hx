package stdgo._internal.path;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_2630946:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_2630924:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2630838i32;
                } else if (__value__ == (2630838i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2630880i32;
                    } else {
                        _gotoNext = 2630924i32;
                    };
                } else if (__value__ == (2630880i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 2630838i32;
                } else if (__value__ == (2630924i32)) {
                    _inrange_2630924 = false;
                    _gotoNext = 2630952i32;
                } else if (__value__ == (2630952i32)) {
                    _i_2630946 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 2630959i32;
                } else if (__value__ == (2630959i32)) {
                    if (!scanBreak && ((_i_2630946 < (_pattern.length) : Bool))) {
                        _gotoNext = 2630992i32;
                    } else {
                        _gotoNext = 2631241i32;
                    };
                } else if (__value__ == (2630988i32)) {
                    _i_2630946++;
                    _gotoNext = 2630959i32;
                } else if (__value__ == (2630992i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2630996i32;
                } else if (__value__ == (2630996i32)) {
                    {
                        final __value__ = _pattern[(_i_2630946 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 2631018i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 2631125i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 2631155i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 2631186i32;
                        } else {
                            _gotoNext = 2630988i32;
                        };
                    };
                } else if (__value__ == (2631018i32)) {
                    if (((_i_2630946 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 2631108i32;
                    } else {
                        _gotoNext = 2630988i32;
                    };
                } else if (__value__ == (2631108i32)) {
                    _i_2630946++;
                    _gotoNext = 2630988i32;
                } else if (__value__ == (2631125i32)) {
                    _inrange_2630924 = true;
                    _gotoNext = 2630988i32;
                } else if (__value__ == (2631155i32)) {
                    _inrange_2630924 = false;
                    _gotoNext = 2630988i32;
                } else if (__value__ == (2631186i32)) {
                    if (!_inrange_2630924) {
                        _gotoNext = 2631211i32;
                    } else {
                        _gotoNext = 2630988i32;
                    };
                } else if (__value__ == (2631211i32)) {
                    scanBreak = true;
                    _gotoNext = 2630959i32;
                } else if (__value__ == (2631241i32)) {
                    return { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_2630946) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_2630946) : stdgo.GoString)?.__copy__() };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
