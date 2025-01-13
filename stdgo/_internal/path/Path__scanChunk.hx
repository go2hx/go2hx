package stdgo._internal.path;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_2780108:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_2780086:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2780000i32;
                } else if (__value__ == (2780000i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2780042i32;
                    } else {
                        _gotoNext = 2780086i32;
                    };
                } else if (__value__ == (2780042i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 2780000i32;
                } else if (__value__ == (2780086i32)) {
                    _inrange_2780086 = false;
                    _gotoNext = 2780114i32;
                } else if (__value__ == (2780114i32)) {
                    _i_2780108 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 2780121i32;
                } else if (__value__ == (2780121i32)) {
                    if (!scanBreak && ((_i_2780108 < (_pattern.length) : Bool))) {
                        _gotoNext = 2780154i32;
                    } else {
                        _gotoNext = 2780403i32;
                    };
                } else if (__value__ == (2780150i32)) {
                    _i_2780108++;
                    _gotoNext = 2780121i32;
                } else if (__value__ == (2780154i32)) {
                    _gotoNext = 2780158i32;
                } else if (__value__ == (2780158i32)) {
                    {
                        final __value__ = _pattern[(_i_2780108 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 2780180i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 2780287i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 2780317i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 2780348i32;
                        } else {
                            _gotoNext = 2780150i32;
                        };
                    };
                } else if (__value__ == (2780180i32)) {
                    if (((_i_2780108 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 2780270i32;
                    } else {
                        _gotoNext = 2780150i32;
                    };
                } else if (__value__ == (2780270i32)) {
                    _i_2780108++;
                    _gotoNext = 2780150i32;
                } else if (__value__ == (2780287i32)) {
                    _inrange_2780086 = true;
                    _gotoNext = 2780150i32;
                } else if (__value__ == (2780317i32)) {
                    _inrange_2780086 = false;
                    _gotoNext = 2780150i32;
                } else if (__value__ == (2780348i32)) {
                    if (!_inrange_2780086) {
                        _gotoNext = 2780373i32;
                    } else {
                        _gotoNext = 2780150i32;
                    };
                } else if (__value__ == (2780373i32)) {
                    scanBreak = true;
                    _gotoNext = 2780121i32;
                } else if (__value__ == (2780403i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_2780108) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_2780108) : stdgo.GoString)?.__copy__() };
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
