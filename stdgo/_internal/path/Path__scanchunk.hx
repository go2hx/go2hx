package stdgo._internal.path;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_11:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_10:Bool = false;
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    0i64;
                    _gotoNext = 2627142i64;
                } else if (__value__ == (2627142i64)) {
                    //"file://#L0"
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2627184i64;
                    } else {
                        _gotoNext = 2627228i64;
                    };
                } else if (__value__ == (2627184i64)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 2627142i64;
                } else if (__value__ == (2627228i64)) {
                    _inrange_10 = false;
                    _gotoNext = 2627256i64;
                } else if (__value__ == (2627256i64)) {
                    _i_11 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 2627263i64;
                } else if (__value__ == (2627263i64)) {
                    //"file://#L0"
                    if (!scanBreak && ((_i_11 < (_pattern.length) : Bool))) {
                        _gotoNext = 2627296i64;
                    } else {
                        _gotoNext = 2627545i64;
                    };
                } else if (__value__ == (2627292i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/path/match.go#L100"
                    _i_11++;
                    _gotoNext = 2627263i64;
                } else if (__value__ == (2627296i64)) {
                    _gotoNext = 2627300i64;
                } else if (__value__ == (2627300i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/path/match.go#L101"
                    {
                        final __value__ = _pattern[(_i_11 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 2627322i64;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 2627429i64;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 2627459i64;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 2627490i64;
                        } else {
                            _gotoNext = 2627292i64;
                        };
                    };
                } else if (__value__ == (2627322i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/path/match.go#L104"
                    if (((_i_11 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 2627412i64;
                    } else {
                        _gotoNext = 2627292i64;
                    };
                } else if (__value__ == (2627412i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/path/match.go#L105"
                    _i_11++;
                    _gotoNext = 2627292i64;
                } else if (__value__ == (2627429i64)) {
                    _inrange_10 = true;
                    _gotoNext = 2627292i64;
                } else if (__value__ == (2627459i64)) {
                    _inrange_10 = false;
                    _gotoNext = 2627292i64;
                } else if (__value__ == (2627490i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/path/match.go#L112"
                    if (!_inrange_10) {
                        _gotoNext = 2627515i64;
                    } else {
                        _gotoNext = 2627292i64;
                    };
                } else if (__value__ == (2627515i64)) {
                    scanBreak = true;
                    _gotoNext = 2627263i64;
                } else if (__value__ == (2627545i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/path/match.go#L117"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_11) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_11) : stdgo.GoString)?.__copy__() };
                        _star = __tmp__._0;
                        _chunk = __tmp__._1;
                        _rest = __tmp__._2;
                        __tmp__;
                    };
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
