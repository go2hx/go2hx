package stdgo._internal.path;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_2626439:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_2626417:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2626331i32;
                } else if (__value__ == (2626331i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2626373i32;
                    } else {
                        _gotoNext = 2626417i32;
                    };
                } else if (__value__ == (2626373i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 2626331i32;
                } else if (__value__ == (2626417i32)) {
                    _inrange_2626417 = false;
                    _gotoNext = 2626445i32;
                } else if (__value__ == (2626445i32)) {
                    _i_2626439 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 2626452i32;
                } else if (__value__ == (2626452i32)) {
                    if (!scanBreak && ((_i_2626439 < (_pattern.length) : Bool))) {
                        _gotoNext = 2626485i32;
                    } else {
                        _gotoNext = 2626734i32;
                    };
                } else if (__value__ == (2626481i32)) {
                    _i_2626439++;
                    _gotoNext = 2626452i32;
                } else if (__value__ == (2626485i32)) {
                    _gotoNext = 2626489i32;
                } else if (__value__ == (2626489i32)) {
                    {
                        final __value__ = _pattern[(_i_2626439 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 2626511i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 2626618i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 2626648i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 2626679i32;
                        } else {
                            _gotoNext = 2626481i32;
                        };
                    };
                } else if (__value__ == (2626511i32)) {
                    if (((_i_2626439 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 2626601i32;
                    } else {
                        _gotoNext = 2626481i32;
                    };
                } else if (__value__ == (2626601i32)) {
                    _i_2626439++;
                    _gotoNext = 2626481i32;
                } else if (__value__ == (2626618i32)) {
                    _inrange_2626417 = true;
                    _gotoNext = 2626481i32;
                } else if (__value__ == (2626648i32)) {
                    _inrange_2626417 = false;
                    _gotoNext = 2626481i32;
                } else if (__value__ == (2626679i32)) {
                    if (!_inrange_2626417) {
                        _gotoNext = 2626704i32;
                    } else {
                        _gotoNext = 2626481i32;
                    };
                } else if (__value__ == (2626704i32)) {
                    scanBreak = true;
                    _gotoNext = 2626452i32;
                } else if (__value__ == (2626734i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_2626439) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_2626439) : stdgo.GoString)?.__copy__() };
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
