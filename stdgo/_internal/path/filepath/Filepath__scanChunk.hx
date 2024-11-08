package stdgo._internal.path.filepath;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_3968023:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_3968001:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3967915i32;
                } else if (__value__ == (3967915i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3967957i32;
                    } else {
                        _gotoNext = 3968001i32;
                    };
                } else if (__value__ == (3967957i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 3967915i32;
                } else if (__value__ == (3968001i32)) {
                    _inrange_3968001 = false;
                    _gotoNext = 3968029i32;
                } else if (__value__ == (3968029i32)) {
                    _i_3968023 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 3968036i32;
                } else if (__value__ == (3968036i32)) {
                    if (!scanBreak && ((_i_3968023 < (_pattern.length) : Bool))) {
                        _gotoNext = 3968069i32;
                    } else {
                        _gotoNext = 3968361i32;
                    };
                } else if (__value__ == (3968065i32)) {
                    _i_3968023++;
                    _gotoNext = 3968036i32;
                } else if (__value__ == (3968069i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3968073i32;
                } else if (__value__ == (3968073i32)) {
                    {
                        final __value__ = _pattern[(_i_3968023 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 3968095i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 3968245i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 3968275i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 3968306i32;
                        } else {
                            _gotoNext = 3968065i32;
                        };
                    };
                } else if (__value__ == (3968095i32)) {
                    if (true) {
                        _gotoNext = 3968138i32;
                    } else {
                        _gotoNext = 3968065i32;
                    };
                } else if (__value__ == (3968138i32)) {
                    if (((_i_3968023 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 3968221i32;
                    } else {
                        _gotoNext = 3968065i32;
                    };
                } else if (__value__ == (3968221i32)) {
                    _i_3968023++;
                    _gotoNext = 3968065i32;
                } else if (__value__ == (3968245i32)) {
                    _inrange_3968001 = true;
                    _gotoNext = 3968065i32;
                } else if (__value__ == (3968275i32)) {
                    _inrange_3968001 = false;
                    _gotoNext = 3968065i32;
                } else if (__value__ == (3968306i32)) {
                    if (!_inrange_3968001) {
                        _gotoNext = 3968331i32;
                    } else {
                        _gotoNext = 3968065i32;
                    };
                } else if (__value__ == (3968331i32)) {
                    scanBreak = true;
                    _gotoNext = 3968036i32;
                } else if (__value__ == (3968361i32)) {
                    return { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_3968023) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_3968023) : stdgo.GoString)?.__copy__() };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
