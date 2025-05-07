package stdgo._internal.path.filepath;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var _i_10:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_9:Bool = false;
        var scanBreak = false;
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    0i64;
                    _gotoNext = 4009275i64;
                } else if (__value__ == (4009275i64)) {
                    //"file://#L0"
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4009317i64;
                    } else {
                        _gotoNext = 4009361i64;
                    };
                } else if (__value__ == (4009317i64)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 4009275i64;
                } else if (__value__ == (4009361i64)) {
                    _inrange_9 = false;
                    _gotoNext = 4009389i64;
                } else if (__value__ == (4009389i64)) {
                    _i_10 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 4009396i64;
                } else if (__value__ == (4009396i64)) {
                    //"file://#L0"
                    if (!scanBreak && ((_i_10 < (_pattern.length) : Bool))) {
                        _gotoNext = 4009429i64;
                    } else {
                        _gotoNext = 4009721i64;
                    };
                } else if (__value__ == (4009425i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/path/filepath/match.go#L98"
                    _i_10++;
                    _gotoNext = 4009396i64;
                } else if (__value__ == (4009429i64)) {
                    _gotoNext = 4009433i64;
                } else if (__value__ == (4009433i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/path/filepath/match.go#L99"
                    {
                        final __value__ = _pattern[(_i_10 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 4009455i64;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 4009605i64;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 4009635i64;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 4009666i64;
                        } else {
                            _gotoNext = 4009425i64;
                        };
                    };
                } else if (__value__ == (4009455i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/path/filepath/match.go#L101"
                    if (true) {
                        _gotoNext = 4009498i64;
                    } else {
                        _gotoNext = 4009425i64;
                    };
                } else if (__value__ == (4009498i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/path/filepath/match.go#L103"
                    if (((_i_10 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 4009581i64;
                    } else {
                        _gotoNext = 4009425i64;
                    };
                } else if (__value__ == (4009581i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/path/filepath/match.go#L104"
                    _i_10++;
                    _gotoNext = 4009425i64;
                } else if (__value__ == (4009605i64)) {
                    _inrange_9 = true;
                    _gotoNext = 4009425i64;
                } else if (__value__ == (4009635i64)) {
                    _inrange_9 = false;
                    _gotoNext = 4009425i64;
                } else if (__value__ == (4009666i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/path/filepath/match.go#L112"
                    if (!_inrange_9) {
                        _gotoNext = 4009691i64;
                    } else {
                        _gotoNext = 4009425i64;
                    };
                } else if (__value__ == (4009691i64)) {
                    scanBreak = true;
                    _gotoNext = 4009396i64;
                } else if (__value__ == (4009721i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/path/filepath/match.go#L117"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_10) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_10) : stdgo.GoString)?.__copy__() };
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
