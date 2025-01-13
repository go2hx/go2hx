package stdgo._internal.path;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_2598115:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_2598093:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2598007i32;
                } else if (__value__ == (2598007i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2598049i32;
                    } else {
                        _gotoNext = 2598093i32;
                    };
                } else if (__value__ == (2598049i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 2598007i32;
                } else if (__value__ == (2598093i32)) {
                    _inrange_2598093 = false;
                    _gotoNext = 2598121i32;
                } else if (__value__ == (2598121i32)) {
                    _i_2598115 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 2598128i32;
                } else if (__value__ == (2598128i32)) {
                    if (!scanBreak && ((_i_2598115 < (_pattern.length) : Bool))) {
                        _gotoNext = 2598161i32;
                    } else {
                        _gotoNext = 2598410i32;
                    };
                } else if (__value__ == (2598157i32)) {
                    _i_2598115++;
                    _gotoNext = 2598128i32;
                } else if (__value__ == (2598161i32)) {
                    _gotoNext = 2598165i32;
                } else if (__value__ == (2598165i32)) {
                    {
                        final __value__ = _pattern[(_i_2598115 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 2598187i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 2598294i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 2598324i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 2598355i32;
                        } else {
                            _gotoNext = 2598157i32;
                        };
                    };
                } else if (__value__ == (2598187i32)) {
                    if (((_i_2598115 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 2598277i32;
                    } else {
                        _gotoNext = 2598157i32;
                    };
                } else if (__value__ == (2598277i32)) {
                    _i_2598115++;
                    _gotoNext = 2598157i32;
                } else if (__value__ == (2598294i32)) {
                    _inrange_2598093 = true;
                    _gotoNext = 2598157i32;
                } else if (__value__ == (2598324i32)) {
                    _inrange_2598093 = false;
                    _gotoNext = 2598157i32;
                } else if (__value__ == (2598355i32)) {
                    if (!_inrange_2598093) {
                        _gotoNext = 2598380i32;
                    } else {
                        _gotoNext = 2598157i32;
                    };
                } else if (__value__ == (2598380i32)) {
                    scanBreak = true;
                    _gotoNext = 2598128i32;
                } else if (__value__ == (2598410i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_2598115) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_2598115) : stdgo.GoString)?.__copy__() };
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
