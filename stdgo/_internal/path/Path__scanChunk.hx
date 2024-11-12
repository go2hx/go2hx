package stdgo._internal.path;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_2732032:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_2732010:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2731924i32;
                } else if (__value__ == (2731924i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2731966i32;
                    } else {
                        _gotoNext = 2732010i32;
                    };
                } else if (__value__ == (2731966i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 2731924i32;
                } else if (__value__ == (2732010i32)) {
                    _inrange_2732010 = false;
                    _gotoNext = 2732038i32;
                } else if (__value__ == (2732038i32)) {
                    _i_2732032 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 2732045i32;
                } else if (__value__ == (2732045i32)) {
                    if (!scanBreak && ((_i_2732032 < (_pattern.length) : Bool))) {
                        _gotoNext = 2732078i32;
                    } else {
                        _gotoNext = 2732327i32;
                    };
                } else if (__value__ == (2732074i32)) {
                    _i_2732032++;
                    _gotoNext = 2732045i32;
                } else if (__value__ == (2732078i32)) {
                    _gotoNext = 2732082i32;
                } else if (__value__ == (2732082i32)) {
                    {
                        final __value__ = _pattern[(_i_2732032 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 2732104i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 2732211i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 2732241i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 2732272i32;
                        } else {
                            _gotoNext = 2732074i32;
                        };
                    };
                } else if (__value__ == (2732104i32)) {
                    if (((_i_2732032 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 2732194i32;
                    } else {
                        _gotoNext = 2732074i32;
                    };
                } else if (__value__ == (2732194i32)) {
                    _i_2732032++;
                    _gotoNext = 2732074i32;
                } else if (__value__ == (2732211i32)) {
                    _inrange_2732010 = true;
                    _gotoNext = 2732074i32;
                } else if (__value__ == (2732241i32)) {
                    _inrange_2732010 = false;
                    _gotoNext = 2732074i32;
                } else if (__value__ == (2732272i32)) {
                    if (!_inrange_2732010) {
                        _gotoNext = 2732297i32;
                    } else {
                        _gotoNext = 2732074i32;
                    };
                } else if (__value__ == (2732297i32)) {
                    scanBreak = true;
                    _gotoNext = 2732045i32;
                } else if (__value__ == (2732327i32)) {
                    return { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_2732032) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_2732032) : stdgo.GoString)?.__copy__() };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
