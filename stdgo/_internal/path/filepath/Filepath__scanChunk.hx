package stdgo._internal.path.filepath;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_3969777:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_3969755:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3969669i32;
                } else if (__value__ == (3969669i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3969711i32;
                    } else {
                        _gotoNext = 3969755i32;
                    };
                } else if (__value__ == (3969711i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 3969669i32;
                } else if (__value__ == (3969755i32)) {
                    _inrange_3969755 = false;
                    _gotoNext = 3969783i32;
                } else if (__value__ == (3969783i32)) {
                    _i_3969777 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 3969790i32;
                } else if (__value__ == (3969790i32)) {
                    if (!scanBreak && ((_i_3969777 < (_pattern.length) : Bool))) {
                        _gotoNext = 3969823i32;
                    } else {
                        _gotoNext = 3970115i32;
                    };
                } else if (__value__ == (3969819i32)) {
                    _i_3969777++;
                    _gotoNext = 3969790i32;
                } else if (__value__ == (3969823i32)) {
                    _gotoNext = 3969827i32;
                } else if (__value__ == (3969827i32)) {
                    {
                        final __value__ = _pattern[(_i_3969777 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 3969849i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 3969999i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 3970029i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 3970060i32;
                        } else {
                            _gotoNext = 3969819i32;
                        };
                    };
                } else if (__value__ == (3969849i32)) {
                    if (true) {
                        _gotoNext = 3969892i32;
                    } else {
                        _gotoNext = 3969819i32;
                    };
                } else if (__value__ == (3969892i32)) {
                    if (((_i_3969777 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 3969975i32;
                    } else {
                        _gotoNext = 3969819i32;
                    };
                } else if (__value__ == (3969975i32)) {
                    _i_3969777++;
                    _gotoNext = 3969819i32;
                } else if (__value__ == (3969999i32)) {
                    _inrange_3969755 = true;
                    _gotoNext = 3969819i32;
                } else if (__value__ == (3970029i32)) {
                    _inrange_3969755 = false;
                    _gotoNext = 3969819i32;
                } else if (__value__ == (3970060i32)) {
                    if (!_inrange_3969755) {
                        _gotoNext = 3970085i32;
                    } else {
                        _gotoNext = 3969819i32;
                    };
                } else if (__value__ == (3970085i32)) {
                    scanBreak = true;
                    _gotoNext = 3969790i32;
                } else if (__value__ == (3970115i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_3969777) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_3969777) : stdgo.GoString)?.__copy__() };
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
