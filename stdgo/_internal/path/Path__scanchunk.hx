package stdgo._internal.path;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_2868512:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_2868490:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2868404i32;
                } else if (__value__ == (2868404i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2868446i32;
                    } else {
                        _gotoNext = 2868490i32;
                    };
                } else if (__value__ == (2868446i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 2868404i32;
                } else if (__value__ == (2868490i32)) {
                    _inrange_2868490 = false;
                    _gotoNext = 2868518i32;
                } else if (__value__ == (2868518i32)) {
                    _i_2868512 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 2868525i32;
                } else if (__value__ == (2868525i32)) {
                    if (!scanBreak && ((_i_2868512 < (_pattern.length) : Bool))) {
                        _gotoNext = 2868558i32;
                    } else {
                        _gotoNext = 2868807i32;
                    };
                } else if (__value__ == (2868554i32)) {
                    _i_2868512++;
                    _gotoNext = 2868525i32;
                } else if (__value__ == (2868558i32)) {
                    _gotoNext = 2868562i32;
                } else if (__value__ == (2868562i32)) {
                    {
                        final __value__ = _pattern[(_i_2868512 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 2868584i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 2868691i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 2868721i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 2868752i32;
                        } else {
                            _gotoNext = 2868554i32;
                        };
                    };
                } else if (__value__ == (2868584i32)) {
                    if (((_i_2868512 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 2868674i32;
                    } else {
                        _gotoNext = 2868554i32;
                    };
                } else if (__value__ == (2868674i32)) {
                    _i_2868512++;
                    _gotoNext = 2868554i32;
                } else if (__value__ == (2868691i32)) {
                    _inrange_2868490 = true;
                    _gotoNext = 2868554i32;
                } else if (__value__ == (2868721i32)) {
                    _inrange_2868490 = false;
                    _gotoNext = 2868554i32;
                } else if (__value__ == (2868752i32)) {
                    if (!_inrange_2868490) {
                        _gotoNext = 2868777i32;
                    } else {
                        _gotoNext = 2868554i32;
                    };
                } else if (__value__ == (2868777i32)) {
                    scanBreak = true;
                    _gotoNext = 2868525i32;
                } else if (__value__ == (2868807i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_2868512) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_2868512) : stdgo.GoString)?.__copy__() };
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
