package stdgo._internal.path.filepath;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_3994741:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_3994719:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3994633i32;
                } else if (__value__ == (3994633i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3994675i32;
                    } else {
                        _gotoNext = 3994719i32;
                    };
                } else if (__value__ == (3994675i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 3994633i32;
                } else if (__value__ == (3994719i32)) {
                    _inrange_3994719 = false;
                    _gotoNext = 3994747i32;
                } else if (__value__ == (3994747i32)) {
                    _i_3994741 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 3994754i32;
                } else if (__value__ == (3994754i32)) {
                    if (!scanBreak && ((_i_3994741 < (_pattern.length) : Bool))) {
                        _gotoNext = 3994787i32;
                    } else {
                        _gotoNext = 3995079i32;
                    };
                } else if (__value__ == (3994783i32)) {
                    _i_3994741++;
                    _gotoNext = 3994754i32;
                } else if (__value__ == (3994787i32)) {
                    _gotoNext = 3994791i32;
                } else if (__value__ == (3994791i32)) {
                    {
                        final __value__ = _pattern[(_i_3994741 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 3994813i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 3994963i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 3994993i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 3995024i32;
                        } else {
                            _gotoNext = 3994783i32;
                        };
                    };
                } else if (__value__ == (3994813i32)) {
                    if (true) {
                        _gotoNext = 3994856i32;
                    } else {
                        _gotoNext = 3994783i32;
                    };
                } else if (__value__ == (3994856i32)) {
                    if (((_i_3994741 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 3994939i32;
                    } else {
                        _gotoNext = 3994783i32;
                    };
                } else if (__value__ == (3994939i32)) {
                    _i_3994741++;
                    _gotoNext = 3994783i32;
                } else if (__value__ == (3994963i32)) {
                    _inrange_3994719 = true;
                    _gotoNext = 3994783i32;
                } else if (__value__ == (3994993i32)) {
                    _inrange_3994719 = false;
                    _gotoNext = 3994783i32;
                } else if (__value__ == (3995024i32)) {
                    if (!_inrange_3994719) {
                        _gotoNext = 3995049i32;
                    } else {
                        _gotoNext = 3994783i32;
                    };
                } else if (__value__ == (3995049i32)) {
                    scanBreak = true;
                    _gotoNext = 3994754i32;
                } else if (__value__ == (3995079i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_3994741) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_3994741) : stdgo.GoString)?.__copy__() };
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
