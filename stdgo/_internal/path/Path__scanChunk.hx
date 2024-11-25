package stdgo._internal.path;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_2691906:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_2691884:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2691798i32;
                } else if (__value__ == (2691798i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2691840i32;
                    } else {
                        _gotoNext = 2691884i32;
                    };
                } else if (__value__ == (2691840i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 2691798i32;
                } else if (__value__ == (2691884i32)) {
                    _inrange_2691884 = false;
                    _gotoNext = 2691912i32;
                } else if (__value__ == (2691912i32)) {
                    _i_2691906 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 2691919i32;
                } else if (__value__ == (2691919i32)) {
                    if (!scanBreak && ((_i_2691906 < (_pattern.length) : Bool))) {
                        _gotoNext = 2691952i32;
                    } else {
                        _gotoNext = 2692201i32;
                    };
                } else if (__value__ == (2691948i32)) {
                    _i_2691906++;
                    _gotoNext = 2691919i32;
                } else if (__value__ == (2691952i32)) {
                    _gotoNext = 2691956i32;
                } else if (__value__ == (2691956i32)) {
                    {
                        final __value__ = _pattern[(_i_2691906 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 2691978i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 2692085i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 2692115i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 2692146i32;
                        } else {
                            _gotoNext = 2691948i32;
                        };
                    };
                } else if (__value__ == (2691978i32)) {
                    if (((_i_2691906 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 2692068i32;
                    } else {
                        _gotoNext = 2691948i32;
                    };
                } else if (__value__ == (2692068i32)) {
                    _i_2691906++;
                    _gotoNext = 2691948i32;
                } else if (__value__ == (2692085i32)) {
                    _inrange_2691884 = true;
                    _gotoNext = 2691948i32;
                } else if (__value__ == (2692115i32)) {
                    _inrange_2691884 = false;
                    _gotoNext = 2691948i32;
                } else if (__value__ == (2692146i32)) {
                    if (!_inrange_2691884) {
                        _gotoNext = 2692171i32;
                    } else {
                        _gotoNext = 2691948i32;
                    };
                } else if (__value__ == (2692171i32)) {
                    scanBreak = true;
                    _gotoNext = 2691919i32;
                } else if (__value__ == (2692201i32)) {
                    return { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_2691906) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_2691906) : stdgo.GoString)?.__copy__() };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
