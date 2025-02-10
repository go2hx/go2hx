package stdgo._internal.path.filepath;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_3949955:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_3949933:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3949847i32;
                } else if (__value__ == (3949847i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3949889i32;
                    } else {
                        _gotoNext = 3949933i32;
                    };
                } else if (__value__ == (3949889i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 3949847i32;
                } else if (__value__ == (3949933i32)) {
                    _inrange_3949933 = false;
                    _gotoNext = 3949961i32;
                } else if (__value__ == (3949961i32)) {
                    _i_3949955 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 3949968i32;
                } else if (__value__ == (3949968i32)) {
                    if (!scanBreak && ((_i_3949955 < (_pattern.length) : Bool))) {
                        _gotoNext = 3950001i32;
                    } else {
                        _gotoNext = 3950293i32;
                    };
                } else if (__value__ == (3949997i32)) {
                    _i_3949955++;
                    _gotoNext = 3949968i32;
                } else if (__value__ == (3950001i32)) {
                    _gotoNext = 3950005i32;
                } else if (__value__ == (3950005i32)) {
                    {
                        final __value__ = _pattern[(_i_3949955 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 3950027i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 3950177i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 3950207i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 3950238i32;
                        } else {
                            _gotoNext = 3949997i32;
                        };
                    };
                } else if (__value__ == (3950027i32)) {
                    if (true) {
                        _gotoNext = 3950070i32;
                    } else {
                        _gotoNext = 3949997i32;
                    };
                } else if (__value__ == (3950070i32)) {
                    if (((_i_3949955 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 3950153i32;
                    } else {
                        _gotoNext = 3949997i32;
                    };
                } else if (__value__ == (3950153i32)) {
                    _i_3949955++;
                    _gotoNext = 3949997i32;
                } else if (__value__ == (3950177i32)) {
                    _inrange_3949933 = true;
                    _gotoNext = 3949997i32;
                } else if (__value__ == (3950207i32)) {
                    _inrange_3949933 = false;
                    _gotoNext = 3949997i32;
                } else if (__value__ == (3950238i32)) {
                    if (!_inrange_3949933) {
                        _gotoNext = 3950263i32;
                    } else {
                        _gotoNext = 3949997i32;
                    };
                } else if (__value__ == (3950263i32)) {
                    scanBreak = true;
                    _gotoNext = 3949968i32;
                } else if (__value__ == (3950293i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_3949955) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_3949955) : stdgo.GoString)?.__copy__() };
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
