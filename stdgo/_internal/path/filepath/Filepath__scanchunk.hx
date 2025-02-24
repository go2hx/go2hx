package stdgo._internal.path.filepath;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_10:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_9:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 4036896i32;
                } else if (__value__ == (4036896i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4036938i32;
                    } else {
                        _gotoNext = 4036982i32;
                    };
                } else if (__value__ == (4036938i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 4036896i32;
                } else if (__value__ == (4036982i32)) {
                    _inrange_9 = false;
                    _gotoNext = 4037010i32;
                } else if (__value__ == (4037010i32)) {
                    _i_10 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 4037017i32;
                } else if (__value__ == (4037017i32)) {
                    if (!scanBreak && ((_i_10 < (_pattern.length) : Bool))) {
                        _gotoNext = 4037050i32;
                    } else {
                        _gotoNext = 4037342i32;
                    };
                } else if (__value__ == (4037046i32)) {
                    _i_10++;
                    _gotoNext = 4037017i32;
                } else if (__value__ == (4037050i32)) {
                    _gotoNext = 4037054i32;
                } else if (__value__ == (4037054i32)) {
                    {
                        final __value__ = _pattern[(_i_10 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 4037076i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 4037226i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 4037256i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 4037287i32;
                        } else {
                            _gotoNext = 4037046i32;
                        };
                    };
                } else if (__value__ == (4037076i32)) {
                    if (true) {
                        _gotoNext = 4037119i32;
                    } else {
                        _gotoNext = 4037046i32;
                    };
                } else if (__value__ == (4037119i32)) {
                    if (((_i_10 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 4037202i32;
                    } else {
                        _gotoNext = 4037046i32;
                    };
                } else if (__value__ == (4037202i32)) {
                    _i_10++;
                    _gotoNext = 4037046i32;
                } else if (__value__ == (4037226i32)) {
                    _inrange_9 = true;
                    _gotoNext = 4037046i32;
                } else if (__value__ == (4037256i32)) {
                    _inrange_9 = false;
                    _gotoNext = 4037046i32;
                } else if (__value__ == (4037287i32)) {
                    if (!_inrange_9) {
                        _gotoNext = 4037312i32;
                    } else {
                        _gotoNext = 4037046i32;
                    };
                } else if (__value__ == (4037312i32)) {
                    scanBreak = true;
                    _gotoNext = 4037017i32;
                } else if (__value__ == (4037342i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_10) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_10) : stdgo.GoString)?.__copy__() };
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
