package stdgo._internal.path;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_2945470:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_2945448:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2945362i32;
                } else if (__value__ == (2945362i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2945404i32;
                    } else {
                        _gotoNext = 2945448i32;
                    };
                } else if (__value__ == (2945404i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 2945362i32;
                } else if (__value__ == (2945448i32)) {
                    _inrange_2945448 = false;
                    _gotoNext = 2945476i32;
                } else if (__value__ == (2945476i32)) {
                    _i_2945470 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 2945483i32;
                } else if (__value__ == (2945483i32)) {
                    if (!scanBreak && ((_i_2945470 < (_pattern.length) : Bool))) {
                        _gotoNext = 2945516i32;
                    } else {
                        _gotoNext = 2945765i32;
                    };
                } else if (__value__ == (2945512i32)) {
                    _i_2945470++;
                    _gotoNext = 2945483i32;
                } else if (__value__ == (2945516i32)) {
                    _gotoNext = 2945520i32;
                } else if (__value__ == (2945520i32)) {
                    {
                        final __value__ = _pattern[(_i_2945470 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 2945542i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 2945649i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 2945679i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 2945710i32;
                        } else {
                            _gotoNext = 2945512i32;
                        };
                    };
                } else if (__value__ == (2945542i32)) {
                    if (((_i_2945470 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 2945632i32;
                    } else {
                        _gotoNext = 2945512i32;
                    };
                } else if (__value__ == (2945632i32)) {
                    _i_2945470++;
                    _gotoNext = 2945512i32;
                } else if (__value__ == (2945649i32)) {
                    _inrange_2945448 = true;
                    _gotoNext = 2945512i32;
                } else if (__value__ == (2945679i32)) {
                    _inrange_2945448 = false;
                    _gotoNext = 2945512i32;
                } else if (__value__ == (2945710i32)) {
                    if (!_inrange_2945448) {
                        _gotoNext = 2945735i32;
                    } else {
                        _gotoNext = 2945512i32;
                    };
                } else if (__value__ == (2945735i32)) {
                    scanBreak = true;
                    _gotoNext = 2945483i32;
                } else if (__value__ == (2945765i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_2945470) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_2945470) : stdgo.GoString)?.__copy__() };
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
