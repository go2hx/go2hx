package stdgo._internal.path;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_2557030:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_2557008:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2556922i32;
                } else if (__value__ == (2556922i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2556964i32;
                    } else {
                        _gotoNext = 2557008i32;
                    };
                } else if (__value__ == (2556964i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 2556922i32;
                } else if (__value__ == (2557008i32)) {
                    _inrange_2557008 = false;
                    _gotoNext = 2557036i32;
                } else if (__value__ == (2557036i32)) {
                    _i_2557030 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 2557043i32;
                } else if (__value__ == (2557043i32)) {
                    if (!scanBreak && ((_i_2557030 < (_pattern.length) : Bool))) {
                        _gotoNext = 2557076i32;
                    } else {
                        _gotoNext = 2557325i32;
                    };
                } else if (__value__ == (2557072i32)) {
                    _i_2557030++;
                    _gotoNext = 2557043i32;
                } else if (__value__ == (2557076i32)) {
                    _gotoNext = 2557080i32;
                } else if (__value__ == (2557080i32)) {
                    {
                        final __value__ = _pattern[(_i_2557030 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 2557102i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 2557209i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 2557239i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 2557270i32;
                        } else {
                            _gotoNext = 2557072i32;
                        };
                    };
                } else if (__value__ == (2557102i32)) {
                    if (((_i_2557030 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 2557192i32;
                    } else {
                        _gotoNext = 2557072i32;
                    };
                } else if (__value__ == (2557192i32)) {
                    _i_2557030++;
                    _gotoNext = 2557072i32;
                } else if (__value__ == (2557209i32)) {
                    _inrange_2557008 = true;
                    _gotoNext = 2557072i32;
                } else if (__value__ == (2557239i32)) {
                    _inrange_2557008 = false;
                    _gotoNext = 2557072i32;
                } else if (__value__ == (2557270i32)) {
                    if (!_inrange_2557008) {
                        _gotoNext = 2557295i32;
                    } else {
                        _gotoNext = 2557072i32;
                    };
                } else if (__value__ == (2557295i32)) {
                    scanBreak = true;
                    _gotoNext = 2557043i32;
                } else if (__value__ == (2557325i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_2557030) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_2557030) : stdgo.GoString)?.__copy__() };
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
