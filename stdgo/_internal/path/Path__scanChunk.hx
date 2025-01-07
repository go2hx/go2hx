package stdgo._internal.path;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_3004470:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_3004448:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3004362i32;
                } else if (__value__ == (3004362i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3004404i32;
                    } else {
                        _gotoNext = 3004448i32;
                    };
                } else if (__value__ == (3004404i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 3004362i32;
                } else if (__value__ == (3004448i32)) {
                    _inrange_3004448 = false;
                    _gotoNext = 3004476i32;
                } else if (__value__ == (3004476i32)) {
                    _i_3004470 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 3004483i32;
                } else if (__value__ == (3004483i32)) {
                    if (!scanBreak && ((_i_3004470 < (_pattern.length) : Bool))) {
                        _gotoNext = 3004516i32;
                    } else {
                        _gotoNext = 3004765i32;
                    };
                } else if (__value__ == (3004512i32)) {
                    _i_3004470++;
                    _gotoNext = 3004483i32;
                } else if (__value__ == (3004516i32)) {
                    _gotoNext = 3004520i32;
                } else if (__value__ == (3004520i32)) {
                    {
                        final __value__ = _pattern[(_i_3004470 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 3004542i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 3004649i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 3004679i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 3004710i32;
                        } else {
                            _gotoNext = 3004512i32;
                        };
                    };
                } else if (__value__ == (3004542i32)) {
                    if (((_i_3004470 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 3004632i32;
                    } else {
                        _gotoNext = 3004512i32;
                    };
                } else if (__value__ == (3004632i32)) {
                    _i_3004470++;
                    _gotoNext = 3004512i32;
                } else if (__value__ == (3004649i32)) {
                    _inrange_3004448 = true;
                    _gotoNext = 3004512i32;
                } else if (__value__ == (3004679i32)) {
                    _inrange_3004448 = false;
                    _gotoNext = 3004512i32;
                } else if (__value__ == (3004710i32)) {
                    if (!_inrange_3004448) {
                        _gotoNext = 3004735i32;
                    } else {
                        _gotoNext = 3004512i32;
                    };
                } else if (__value__ == (3004735i32)) {
                    scanBreak = true;
                    _gotoNext = 3004483i32;
                } else if (__value__ == (3004765i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_3004470) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_3004470) : stdgo.GoString)?.__copy__() };
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
