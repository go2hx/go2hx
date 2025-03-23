package stdgo._internal.path.filepath;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_10:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_9:Bool = false;
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    0i32;
                    _gotoNext = 4157492i32;
                } else if (__value__ == (4157492i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4157534i32;
                    } else {
                        _gotoNext = 4157578i32;
                    };
                } else if (__value__ == (4157534i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 4157492i32;
                } else if (__value__ == (4157578i32)) {
                    _inrange_9 = false;
                    _gotoNext = 4157606i32;
                } else if (__value__ == (4157606i32)) {
                    _i_10 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 4157613i32;
                } else if (__value__ == (4157613i32)) {
                    if (!scanBreak && ((_i_10 < (_pattern.length) : Bool))) {
                        _gotoNext = 4157646i32;
                    } else {
                        _gotoNext = 4157938i32;
                    };
                } else if (__value__ == (4157642i32)) {
                    _i_10++;
                    _gotoNext = 4157613i32;
                } else if (__value__ == (4157646i32)) {
                    _gotoNext = 4157650i32;
                } else if (__value__ == (4157650i32)) {
                    {
                        final __value__ = _pattern[(_i_10 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 4157672i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 4157822i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 4157852i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 4157883i32;
                        } else {
                            _gotoNext = 4157642i32;
                        };
                    };
                } else if (__value__ == (4157672i32)) {
                    if (true) {
                        _gotoNext = 4157715i32;
                    } else {
                        _gotoNext = 4157642i32;
                    };
                } else if (__value__ == (4157715i32)) {
                    if (((_i_10 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 4157798i32;
                    } else {
                        _gotoNext = 4157642i32;
                    };
                } else if (__value__ == (4157798i32)) {
                    _i_10++;
                    _gotoNext = 4157642i32;
                } else if (__value__ == (4157822i32)) {
                    _inrange_9 = true;
                    _gotoNext = 4157642i32;
                } else if (__value__ == (4157852i32)) {
                    _inrange_9 = false;
                    _gotoNext = 4157642i32;
                } else if (__value__ == (4157883i32)) {
                    if (!_inrange_9) {
                        _gotoNext = 4157908i32;
                    } else {
                        _gotoNext = 4157642i32;
                    };
                } else if (__value__ == (4157908i32)) {
                    scanBreak = true;
                    _gotoNext = 4157613i32;
                } else if (__value__ == (4157938i32)) {
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
