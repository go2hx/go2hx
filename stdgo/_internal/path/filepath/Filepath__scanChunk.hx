package stdgo._internal.path.filepath;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_4052568:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_4052546:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 4052460i32;
                } else if (__value__ == (4052460i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4052502i32;
                    } else {
                        _gotoNext = 4052546i32;
                    };
                } else if (__value__ == (4052502i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 4052460i32;
                } else if (__value__ == (4052546i32)) {
                    _inrange_4052546 = false;
                    _gotoNext = 4052574i32;
                } else if (__value__ == (4052574i32)) {
                    _i_4052568 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 4052581i32;
                } else if (__value__ == (4052581i32)) {
                    if (!scanBreak && ((_i_4052568 < (_pattern.length) : Bool))) {
                        _gotoNext = 4052614i32;
                    } else {
                        _gotoNext = 4052906i32;
                    };
                } else if (__value__ == (4052610i32)) {
                    _i_4052568++;
                    _gotoNext = 4052581i32;
                } else if (__value__ == (4052614i32)) {
                    _gotoNext = 4052618i32;
                } else if (__value__ == (4052618i32)) {
                    {
                        final __value__ = _pattern[(_i_4052568 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 4052640i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 4052790i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 4052820i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 4052851i32;
                        } else {
                            _gotoNext = 4052610i32;
                        };
                    };
                } else if (__value__ == (4052640i32)) {
                    if (true) {
                        _gotoNext = 4052683i32;
                    } else {
                        _gotoNext = 4052610i32;
                    };
                } else if (__value__ == (4052683i32)) {
                    if (((_i_4052568 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 4052766i32;
                    } else {
                        _gotoNext = 4052610i32;
                    };
                } else if (__value__ == (4052766i32)) {
                    _i_4052568++;
                    _gotoNext = 4052610i32;
                } else if (__value__ == (4052790i32)) {
                    _inrange_4052546 = true;
                    _gotoNext = 4052610i32;
                } else if (__value__ == (4052820i32)) {
                    _inrange_4052546 = false;
                    _gotoNext = 4052610i32;
                } else if (__value__ == (4052851i32)) {
                    if (!_inrange_4052546) {
                        _gotoNext = 4052876i32;
                    } else {
                        _gotoNext = 4052610i32;
                    };
                } else if (__value__ == (4052876i32)) {
                    scanBreak = true;
                    _gotoNext = 4052581i32;
                } else if (__value__ == (4052906i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_4052568) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_4052568) : stdgo.GoString)?.__copy__() };
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
