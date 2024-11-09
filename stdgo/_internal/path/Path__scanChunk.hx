package stdgo._internal.path;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_2686935:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_2686913:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2686827i32;
                } else if (__value__ == (2686827i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2686869i32;
                    } else {
                        _gotoNext = 2686913i32;
                    };
                } else if (__value__ == (2686869i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 2686827i32;
                } else if (__value__ == (2686913i32)) {
                    _inrange_2686913 = false;
                    _gotoNext = 2686941i32;
                } else if (__value__ == (2686941i32)) {
                    _i_2686935 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 2686948i32;
                } else if (__value__ == (2686948i32)) {
                    if (!scanBreak && ((_i_2686935 < (_pattern.length) : Bool))) {
                        _gotoNext = 2686981i32;
                    } else {
                        _gotoNext = 2687230i32;
                    };
                } else if (__value__ == (2686977i32)) {
                    _i_2686935++;
                    _gotoNext = 2686948i32;
                } else if (__value__ == (2686981i32)) {
                    _gotoNext = 2686985i32;
                } else if (__value__ == (2686985i32)) {
                    {
                        final __value__ = _pattern[(_i_2686935 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 2687007i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 2687114i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 2687144i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 2687175i32;
                        } else {
                            _gotoNext = 2686977i32;
                        };
                    };
                } else if (__value__ == (2687007i32)) {
                    if (((_i_2686935 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 2687097i32;
                    } else {
                        _gotoNext = 2686977i32;
                    };
                } else if (__value__ == (2687097i32)) {
                    _i_2686935++;
                    _gotoNext = 2686977i32;
                } else if (__value__ == (2687114i32)) {
                    _inrange_2686913 = true;
                    _gotoNext = 2686977i32;
                } else if (__value__ == (2687144i32)) {
                    _inrange_2686913 = false;
                    _gotoNext = 2686977i32;
                } else if (__value__ == (2687175i32)) {
                    if (!_inrange_2686913) {
                        _gotoNext = 2687200i32;
                    } else {
                        _gotoNext = 2686977i32;
                    };
                } else if (__value__ == (2687200i32)) {
                    scanBreak = true;
                    _gotoNext = 2686948i32;
                } else if (__value__ == (2687230i32)) {
                    return { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_2686935) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_2686935) : stdgo.GoString)?.__copy__() };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
