package stdgo._internal.path.filepath;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var _i_10:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_9:Bool = false;
        var scanBreak = false;
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    0i32;
                    _gotoNext = 4071160i32;
                } else if (__value__ == (4071160i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4071202i32;
                    } else {
                        _gotoNext = 4071246i32;
                    };
                } else if (__value__ == (4071202i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 4071160i32;
                } else if (__value__ == (4071246i32)) {
                    _inrange_9 = false;
                    _gotoNext = 4071274i32;
                } else if (__value__ == (4071274i32)) {
                    _i_10 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 4071281i32;
                } else if (__value__ == (4071281i32)) {
                    if (!scanBreak && ((_i_10 < (_pattern.length) : Bool))) {
                        _gotoNext = 4071314i32;
                    } else {
                        _gotoNext = 4071606i32;
                    };
                } else if (__value__ == (4071310i32)) {
                    _i_10++;
                    _gotoNext = 4071281i32;
                } else if (__value__ == (4071314i32)) {
                    _gotoNext = 4071318i32;
                } else if (__value__ == (4071318i32)) {
                    {
                        final __value__ = _pattern[(_i_10 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 4071340i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 4071490i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 4071520i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 4071551i32;
                        } else {
                            _gotoNext = 4071310i32;
                        };
                    };
                } else if (__value__ == (4071340i32)) {
                    if (true) {
                        _gotoNext = 4071383i32;
                    } else {
                        _gotoNext = 4071310i32;
                    };
                } else if (__value__ == (4071383i32)) {
                    if (((_i_10 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 4071466i32;
                    } else {
                        _gotoNext = 4071310i32;
                    };
                } else if (__value__ == (4071466i32)) {
                    _i_10++;
                    _gotoNext = 4071310i32;
                } else if (__value__ == (4071490i32)) {
                    _inrange_9 = true;
                    _gotoNext = 4071310i32;
                } else if (__value__ == (4071520i32)) {
                    _inrange_9 = false;
                    _gotoNext = 4071310i32;
                } else if (__value__ == (4071551i32)) {
                    if (!_inrange_9) {
                        _gotoNext = 4071576i32;
                    } else {
                        _gotoNext = 4071310i32;
                    };
                } else if (__value__ == (4071576i32)) {
                    scanBreak = true;
                    _gotoNext = 4071281i32;
                } else if (__value__ == (4071606i32)) {
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_10) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_10) : stdgo.GoString)?.__copy__() };
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
