package stdgo._internal.path;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_2631773:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_2631751:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2631665i32;
                } else if (__value__ == (2631665i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2631707i32;
                    } else {
                        _gotoNext = 2631751i32;
                    };
                } else if (__value__ == (2631707i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 2631665i32;
                } else if (__value__ == (2631751i32)) {
                    _inrange_2631751 = false;
                    _gotoNext = 2631779i32;
                } else if (__value__ == (2631779i32)) {
                    _i_2631773 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 2631786i32;
                } else if (__value__ == (2631786i32)) {
                    if (!scanBreak && ((_i_2631773 < (_pattern.length) : Bool))) {
                        _gotoNext = 2631819i32;
                    } else {
                        _gotoNext = 2632068i32;
                    };
                } else if (__value__ == (2631815i32)) {
                    _i_2631773++;
                    _gotoNext = 2631786i32;
                } else if (__value__ == (2631819i32)) {
                    _gotoNext = 2631823i32;
                } else if (__value__ == (2631823i32)) {
                    {
                        final __value__ = _pattern[(_i_2631773 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 2631845i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 2631952i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 2631982i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 2632013i32;
                        } else {
                            _gotoNext = 2631815i32;
                        };
                    };
                } else if (__value__ == (2631845i32)) {
                    if (((_i_2631773 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 2631935i32;
                    } else {
                        _gotoNext = 2631815i32;
                    };
                } else if (__value__ == (2631935i32)) {
                    _i_2631773++;
                    _gotoNext = 2631815i32;
                } else if (__value__ == (2631952i32)) {
                    _inrange_2631751 = true;
                    _gotoNext = 2631815i32;
                } else if (__value__ == (2631982i32)) {
                    _inrange_2631751 = false;
                    _gotoNext = 2631815i32;
                } else if (__value__ == (2632013i32)) {
                    if (!_inrange_2631751) {
                        _gotoNext = 2632038i32;
                    } else {
                        _gotoNext = 2631815i32;
                    };
                } else if (__value__ == (2632038i32)) {
                    scanBreak = true;
                    _gotoNext = 2631786i32;
                } else if (__value__ == (2632068i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_2631773) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_2631773) : stdgo.GoString)?.__copy__() };
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
