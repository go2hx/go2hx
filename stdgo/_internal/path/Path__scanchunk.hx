package stdgo._internal.path;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_11:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_10:Bool = false;
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    0i32;
                    _gotoNext = 2643204i32;
                } else if (__value__ == (2643204i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2643246i32;
                    } else {
                        _gotoNext = 2643290i32;
                    };
                } else if (__value__ == (2643246i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 2643204i32;
                } else if (__value__ == (2643290i32)) {
                    _inrange_10 = false;
                    _gotoNext = 2643318i32;
                } else if (__value__ == (2643318i32)) {
                    _i_11 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 2643325i32;
                } else if (__value__ == (2643325i32)) {
                    if (!scanBreak && ((_i_11 < (_pattern.length) : Bool))) {
                        _gotoNext = 2643358i32;
                    } else {
                        _gotoNext = 2643607i32;
                    };
                } else if (__value__ == (2643354i32)) {
                    _i_11++;
                    _gotoNext = 2643325i32;
                } else if (__value__ == (2643358i32)) {
                    _gotoNext = 2643362i32;
                } else if (__value__ == (2643362i32)) {
                    {
                        final __value__ = _pattern[(_i_11 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 2643384i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 2643491i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 2643521i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 2643552i32;
                        } else {
                            _gotoNext = 2643354i32;
                        };
                    };
                } else if (__value__ == (2643384i32)) {
                    if (((_i_11 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 2643474i32;
                    } else {
                        _gotoNext = 2643354i32;
                    };
                } else if (__value__ == (2643474i32)) {
                    _i_11++;
                    _gotoNext = 2643354i32;
                } else if (__value__ == (2643491i32)) {
                    _inrange_10 = true;
                    _gotoNext = 2643354i32;
                } else if (__value__ == (2643521i32)) {
                    _inrange_10 = false;
                    _gotoNext = 2643354i32;
                } else if (__value__ == (2643552i32)) {
                    if (!_inrange_10) {
                        _gotoNext = 2643577i32;
                    } else {
                        _gotoNext = 2643354i32;
                    };
                } else if (__value__ == (2643577i32)) {
                    scanBreak = true;
                    _gotoNext = 2643325i32;
                } else if (__value__ == (2643607i32)) {
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_11) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_11) : stdgo.GoString)?.__copy__() };
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
