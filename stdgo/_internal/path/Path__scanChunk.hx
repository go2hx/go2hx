package stdgo._internal.path;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_2603550:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_2603528:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2603442i32;
                } else if (__value__ == (2603442i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2603484i32;
                    } else {
                        _gotoNext = 2603528i32;
                    };
                } else if (__value__ == (2603484i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 2603442i32;
                } else if (__value__ == (2603528i32)) {
                    _inrange_2603528 = false;
                    _gotoNext = 2603556i32;
                } else if (__value__ == (2603556i32)) {
                    _i_2603550 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 2603563i32;
                } else if (__value__ == (2603563i32)) {
                    if (!scanBreak && ((_i_2603550 < (_pattern.length) : Bool))) {
                        _gotoNext = 2603596i32;
                    } else {
                        _gotoNext = 2603845i32;
                    };
                } else if (__value__ == (2603592i32)) {
                    _i_2603550++;
                    _gotoNext = 2603563i32;
                } else if (__value__ == (2603596i32)) {
                    _gotoNext = 2603600i32;
                } else if (__value__ == (2603600i32)) {
                    {
                        final __value__ = _pattern[(_i_2603550 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 2603622i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 2603729i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 2603759i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 2603790i32;
                        } else {
                            _gotoNext = 2603592i32;
                        };
                    };
                } else if (__value__ == (2603622i32)) {
                    if (((_i_2603550 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 2603712i32;
                    } else {
                        _gotoNext = 2603592i32;
                    };
                } else if (__value__ == (2603712i32)) {
                    _i_2603550++;
                    _gotoNext = 2603592i32;
                } else if (__value__ == (2603729i32)) {
                    _inrange_2603528 = true;
                    _gotoNext = 2603592i32;
                } else if (__value__ == (2603759i32)) {
                    _inrange_2603528 = false;
                    _gotoNext = 2603592i32;
                } else if (__value__ == (2603790i32)) {
                    if (!_inrange_2603528) {
                        _gotoNext = 2603815i32;
                    } else {
                        _gotoNext = 2603592i32;
                    };
                } else if (__value__ == (2603815i32)) {
                    scanBreak = true;
                    _gotoNext = 2603563i32;
                } else if (__value__ == (2603845i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_2603550) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_2603550) : stdgo.GoString)?.__copy__() };
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
