package stdgo._internal.path;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var _inrange_2707390:Bool = false;
        var scanBreak = false;
        var _i_2707412:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2707304i32;
                } else if (__value__ == (2707304i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2707346i32;
                    } else {
                        _gotoNext = 2707390i32;
                    };
                } else if (__value__ == (2707346i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 2707304i32;
                } else if (__value__ == (2707390i32)) {
                    _inrange_2707390 = false;
                    _gotoNext = 2707418i32;
                } else if (__value__ == (2707418i32)) {
                    _i_2707412 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 2707425i32;
                } else if (__value__ == (2707425i32)) {
                    if (!scanBreak && ((_i_2707412 < (_pattern.length) : Bool))) {
                        _gotoNext = 2707458i32;
                    } else {
                        _gotoNext = 2707707i32;
                    };
                } else if (__value__ == (2707454i32)) {
                    _i_2707412++;
                    _gotoNext = 2707425i32;
                } else if (__value__ == (2707458i32)) {
                    _gotoNext = 2707462i32;
                } else if (__value__ == (2707462i32)) {
                    {
                        final __value__ = _pattern[(_i_2707412 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 2707484i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 2707591i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 2707621i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 2707652i32;
                        } else {
                            _gotoNext = 2707454i32;
                        };
                    };
                } else if (__value__ == (2707484i32)) {
                    if (((_i_2707412 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 2707574i32;
                    } else {
                        _gotoNext = 2707454i32;
                    };
                } else if (__value__ == (2707574i32)) {
                    _i_2707412++;
                    _gotoNext = 2707454i32;
                } else if (__value__ == (2707591i32)) {
                    _inrange_2707390 = true;
                    _gotoNext = 2707454i32;
                } else if (__value__ == (2707621i32)) {
                    _inrange_2707390 = false;
                    _gotoNext = 2707454i32;
                } else if (__value__ == (2707652i32)) {
                    if (!_inrange_2707390) {
                        _gotoNext = 2707677i32;
                    } else {
                        _gotoNext = 2707454i32;
                    };
                } else if (__value__ == (2707677i32)) {
                    scanBreak = true;
                    _gotoNext = 2707425i32;
                } else if (__value__ == (2707707i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_2707412) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_2707412) : stdgo.GoString)?.__copy__() };
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
