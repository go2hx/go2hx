package stdgo._internal.path.filepath;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var _inrange_9:Bool = false;
        var scanBreak = false;
        var _i_10:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 4093835i32;
                } else if (__value__ == (4093835i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4093877i32;
                    } else {
                        _gotoNext = 4093921i32;
                    };
                } else if (__value__ == (4093877i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 4093835i32;
                } else if (__value__ == (4093921i32)) {
                    _inrange_9 = false;
                    _gotoNext = 4093949i32;
                } else if (__value__ == (4093949i32)) {
                    _i_10 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 4093956i32;
                } else if (__value__ == (4093956i32)) {
                    if (!scanBreak && ((_i_10 < (_pattern.length) : Bool))) {
                        _gotoNext = 4093989i32;
                    } else {
                        _gotoNext = 4094281i32;
                    };
                } else if (__value__ == (4093985i32)) {
                    _i_10++;
                    _gotoNext = 4093956i32;
                } else if (__value__ == (4093989i32)) {
                    _gotoNext = 4093993i32;
                } else if (__value__ == (4093993i32)) {
                    {
                        final __value__ = _pattern[(_i_10 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 4094015i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 4094165i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 4094195i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 4094226i32;
                        } else {
                            _gotoNext = 4093985i32;
                        };
                    };
                } else if (__value__ == (4094015i32)) {
                    if (true) {
                        _gotoNext = 4094058i32;
                    } else {
                        _gotoNext = 4093985i32;
                    };
                } else if (__value__ == (4094058i32)) {
                    if (((_i_10 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 4094141i32;
                    } else {
                        _gotoNext = 4093985i32;
                    };
                } else if (__value__ == (4094141i32)) {
                    _i_10++;
                    _gotoNext = 4093985i32;
                } else if (__value__ == (4094165i32)) {
                    _inrange_9 = true;
                    _gotoNext = 4093985i32;
                } else if (__value__ == (4094195i32)) {
                    _inrange_9 = false;
                    _gotoNext = 4093985i32;
                } else if (__value__ == (4094226i32)) {
                    if (!_inrange_9) {
                        _gotoNext = 4094251i32;
                    } else {
                        _gotoNext = 4093985i32;
                    };
                } else if (__value__ == (4094251i32)) {
                    scanBreak = true;
                    _gotoNext = 4093956i32;
                } else if (__value__ == (4094281i32)) {
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
