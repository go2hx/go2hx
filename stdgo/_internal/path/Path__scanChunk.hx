package stdgo._internal.path;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var _i_2974766:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_2974744:Bool = false;
        var scanBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2974658i32;
                } else if (__value__ == (2974658i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2974700i32;
                    } else {
                        _gotoNext = 2974744i32;
                    };
                } else if (__value__ == (2974700i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 2974658i32;
                } else if (__value__ == (2974744i32)) {
                    _inrange_2974744 = false;
                    _gotoNext = 2974772i32;
                } else if (__value__ == (2974772i32)) {
                    _i_2974766 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 2974779i32;
                } else if (__value__ == (2974779i32)) {
                    if (!scanBreak && ((_i_2974766 < (_pattern.length) : Bool))) {
                        _gotoNext = 2974812i32;
                    } else {
                        _gotoNext = 2975061i32;
                    };
                } else if (__value__ == (2974808i32)) {
                    _i_2974766++;
                    _gotoNext = 2974779i32;
                } else if (__value__ == (2974812i32)) {
                    _gotoNext = 2974816i32;
                } else if (__value__ == (2974816i32)) {
                    {
                        final __value__ = _pattern[(_i_2974766 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 2974838i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 2974945i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 2974975i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 2975006i32;
                        } else {
                            _gotoNext = 2974808i32;
                        };
                    };
                } else if (__value__ == (2974838i32)) {
                    if (((_i_2974766 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 2974928i32;
                    } else {
                        _gotoNext = 2974808i32;
                    };
                } else if (__value__ == (2974928i32)) {
                    _i_2974766++;
                    _gotoNext = 2974808i32;
                } else if (__value__ == (2974945i32)) {
                    _inrange_2974744 = true;
                    _gotoNext = 2974808i32;
                } else if (__value__ == (2974975i32)) {
                    _inrange_2974744 = false;
                    _gotoNext = 2974808i32;
                } else if (__value__ == (2975006i32)) {
                    if (!_inrange_2974744) {
                        _gotoNext = 2975031i32;
                    } else {
                        _gotoNext = 2974808i32;
                    };
                } else if (__value__ == (2975031i32)) {
                    scanBreak = true;
                    _gotoNext = 2974779i32;
                } else if (__value__ == (2975061i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_2974766) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_2974766) : stdgo.GoString)?.__copy__() };
                        _star = __tmp__._0;
                        _chunk = __tmp__._1;
                        _rest = __tmp__._2;
                        __tmp__;
                    };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
