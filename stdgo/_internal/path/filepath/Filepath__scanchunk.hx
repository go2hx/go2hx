package stdgo._internal.path.filepath;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var _inrange_4068403:Bool = false;
        var scanBreak = false;
        var _i_4068425:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 4068317i32;
                } else if (__value__ == (4068317i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4068359i32;
                    } else {
                        _gotoNext = 4068403i32;
                    };
                } else if (__value__ == (4068359i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 4068317i32;
                } else if (__value__ == (4068403i32)) {
                    _inrange_4068403 = false;
                    _gotoNext = 4068431i32;
                } else if (__value__ == (4068431i32)) {
                    _i_4068425 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 4068438i32;
                } else if (__value__ == (4068438i32)) {
                    if (!scanBreak && ((_i_4068425 < (_pattern.length) : Bool))) {
                        _gotoNext = 4068471i32;
                    } else {
                        _gotoNext = 4068763i32;
                    };
                } else if (__value__ == (4068467i32)) {
                    _i_4068425++;
                    _gotoNext = 4068438i32;
                } else if (__value__ == (4068471i32)) {
                    _gotoNext = 4068475i32;
                } else if (__value__ == (4068475i32)) {
                    {
                        final __value__ = _pattern[(_i_4068425 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 4068497i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 4068647i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 4068677i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 4068708i32;
                        } else {
                            _gotoNext = 4068467i32;
                        };
                    };
                } else if (__value__ == (4068497i32)) {
                    if (true) {
                        _gotoNext = 4068540i32;
                    } else {
                        _gotoNext = 4068467i32;
                    };
                } else if (__value__ == (4068540i32)) {
                    if (((_i_4068425 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 4068623i32;
                    } else {
                        _gotoNext = 4068467i32;
                    };
                } else if (__value__ == (4068623i32)) {
                    _i_4068425++;
                    _gotoNext = 4068467i32;
                } else if (__value__ == (4068647i32)) {
                    _inrange_4068403 = true;
                    _gotoNext = 4068467i32;
                } else if (__value__ == (4068677i32)) {
                    _inrange_4068403 = false;
                    _gotoNext = 4068467i32;
                } else if (__value__ == (4068708i32)) {
                    if (!_inrange_4068403) {
                        _gotoNext = 4068733i32;
                    } else {
                        _gotoNext = 4068467i32;
                    };
                } else if (__value__ == (4068733i32)) {
                    scanBreak = true;
                    _gotoNext = 4068438i32;
                } else if (__value__ == (4068763i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_4068425) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_4068425) : stdgo.GoString)?.__copy__() };
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
