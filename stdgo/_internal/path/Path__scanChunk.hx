package stdgo._internal.path;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_2572670:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_2572648:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2572562i32;
                } else if (__value__ == (2572562i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2572604i32;
                    } else {
                        _gotoNext = 2572648i32;
                    };
                } else if (__value__ == (2572604i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 2572562i32;
                } else if (__value__ == (2572648i32)) {
                    _inrange_2572648 = false;
                    _gotoNext = 2572676i32;
                } else if (__value__ == (2572676i32)) {
                    _i_2572670 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 2572683i32;
                } else if (__value__ == (2572683i32)) {
                    if (!scanBreak && ((_i_2572670 < (_pattern.length) : Bool))) {
                        _gotoNext = 2572716i32;
                    } else {
                        _gotoNext = 2572965i32;
                    };
                } else if (__value__ == (2572712i32)) {
                    _i_2572670++;
                    _gotoNext = 2572683i32;
                } else if (__value__ == (2572716i32)) {
                    _gotoNext = 2572720i32;
                } else if (__value__ == (2572720i32)) {
                    {
                        final __value__ = _pattern[(_i_2572670 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 2572742i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 2572849i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 2572879i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 2572910i32;
                        } else {
                            _gotoNext = 2572712i32;
                        };
                    };
                } else if (__value__ == (2572742i32)) {
                    if (((_i_2572670 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 2572832i32;
                    } else {
                        _gotoNext = 2572712i32;
                    };
                } else if (__value__ == (2572832i32)) {
                    _i_2572670++;
                    _gotoNext = 2572712i32;
                } else if (__value__ == (2572849i32)) {
                    _inrange_2572648 = true;
                    _gotoNext = 2572712i32;
                } else if (__value__ == (2572879i32)) {
                    _inrange_2572648 = false;
                    _gotoNext = 2572712i32;
                } else if (__value__ == (2572910i32)) {
                    if (!_inrange_2572648) {
                        _gotoNext = 2572935i32;
                    } else {
                        _gotoNext = 2572712i32;
                    };
                } else if (__value__ == (2572935i32)) {
                    scanBreak = true;
                    _gotoNext = 2572683i32;
                } else if (__value__ == (2572965i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_2572670) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_2572670) : stdgo.GoString)?.__copy__() };
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
