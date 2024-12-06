package stdgo._internal.path;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_2582528:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_2582506:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2582420i32;
                } else if (__value__ == (2582420i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2582462i32;
                    } else {
                        _gotoNext = 2582506i32;
                    };
                } else if (__value__ == (2582462i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 2582420i32;
                } else if (__value__ == (2582506i32)) {
                    _inrange_2582506 = false;
                    _gotoNext = 2582534i32;
                } else if (__value__ == (2582534i32)) {
                    _i_2582528 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 2582541i32;
                } else if (__value__ == (2582541i32)) {
                    if (!scanBreak && ((_i_2582528 < (_pattern.length) : Bool))) {
                        _gotoNext = 2582574i32;
                    } else {
                        _gotoNext = 2582823i32;
                    };
                } else if (__value__ == (2582570i32)) {
                    _i_2582528++;
                    _gotoNext = 2582541i32;
                } else if (__value__ == (2582574i32)) {
                    _gotoNext = 2582578i32;
                } else if (__value__ == (2582578i32)) {
                    {
                        final __value__ = _pattern[(_i_2582528 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 2582600i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 2582707i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 2582737i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 2582768i32;
                        } else {
                            _gotoNext = 2582570i32;
                        };
                    };
                } else if (__value__ == (2582600i32)) {
                    if (((_i_2582528 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 2582690i32;
                    } else {
                        _gotoNext = 2582570i32;
                    };
                } else if (__value__ == (2582690i32)) {
                    _i_2582528++;
                    _gotoNext = 2582570i32;
                } else if (__value__ == (2582707i32)) {
                    _inrange_2582506 = true;
                    _gotoNext = 2582570i32;
                } else if (__value__ == (2582737i32)) {
                    _inrange_2582506 = false;
                    _gotoNext = 2582570i32;
                } else if (__value__ == (2582768i32)) {
                    if (!_inrange_2582506) {
                        _gotoNext = 2582793i32;
                    } else {
                        _gotoNext = 2582570i32;
                    };
                } else if (__value__ == (2582793i32)) {
                    scanBreak = true;
                    _gotoNext = 2582541i32;
                } else if (__value__ == (2582823i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_2582528) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_2582528) : stdgo.GoString)?.__copy__() };
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
