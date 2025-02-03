package stdgo._internal.path;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_2671409:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_2671387:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2671301i32;
                } else if (__value__ == (2671301i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2671343i32;
                    } else {
                        _gotoNext = 2671387i32;
                    };
                } else if (__value__ == (2671343i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 2671301i32;
                } else if (__value__ == (2671387i32)) {
                    _inrange_2671387 = false;
                    _gotoNext = 2671415i32;
                } else if (__value__ == (2671415i32)) {
                    _i_2671409 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 2671422i32;
                } else if (__value__ == (2671422i32)) {
                    if (!scanBreak && ((_i_2671409 < (_pattern.length) : Bool))) {
                        _gotoNext = 2671455i32;
                    } else {
                        _gotoNext = 2671704i32;
                    };
                } else if (__value__ == (2671451i32)) {
                    _i_2671409++;
                    _gotoNext = 2671422i32;
                } else if (__value__ == (2671455i32)) {
                    _gotoNext = 2671459i32;
                } else if (__value__ == (2671459i32)) {
                    {
                        final __value__ = _pattern[(_i_2671409 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 2671481i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 2671588i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 2671618i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 2671649i32;
                        } else {
                            _gotoNext = 2671451i32;
                        };
                    };
                } else if (__value__ == (2671481i32)) {
                    if (((_i_2671409 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 2671571i32;
                    } else {
                        _gotoNext = 2671451i32;
                    };
                } else if (__value__ == (2671571i32)) {
                    _i_2671409++;
                    _gotoNext = 2671451i32;
                } else if (__value__ == (2671588i32)) {
                    _inrange_2671387 = true;
                    _gotoNext = 2671451i32;
                } else if (__value__ == (2671618i32)) {
                    _inrange_2671387 = false;
                    _gotoNext = 2671451i32;
                } else if (__value__ == (2671649i32)) {
                    if (!_inrange_2671387) {
                        _gotoNext = 2671674i32;
                    } else {
                        _gotoNext = 2671451i32;
                    };
                } else if (__value__ == (2671674i32)) {
                    scanBreak = true;
                    _gotoNext = 2671422i32;
                } else if (__value__ == (2671704i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_2671409) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_2671409) : stdgo.GoString)?.__copy__() };
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
