package stdgo._internal.path;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_2654434:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_2654412:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2654326i32;
                } else if (__value__ == (2654326i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2654368i32;
                    } else {
                        _gotoNext = 2654412i32;
                    };
                } else if (__value__ == (2654368i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 2654326i32;
                } else if (__value__ == (2654412i32)) {
                    _inrange_2654412 = false;
                    _gotoNext = 2654440i32;
                } else if (__value__ == (2654440i32)) {
                    _i_2654434 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 2654447i32;
                } else if (__value__ == (2654447i32)) {
                    if (!scanBreak && ((_i_2654434 < (_pattern.length) : Bool))) {
                        _gotoNext = 2654480i32;
                    } else {
                        _gotoNext = 2654729i32;
                    };
                } else if (__value__ == (2654476i32)) {
                    _i_2654434++;
                    _gotoNext = 2654447i32;
                } else if (__value__ == (2654480i32)) {
                    _gotoNext = 2654484i32;
                } else if (__value__ == (2654484i32)) {
                    {
                        final __value__ = _pattern[(_i_2654434 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 2654506i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 2654613i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 2654643i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 2654674i32;
                        } else {
                            _gotoNext = 2654476i32;
                        };
                    };
                } else if (__value__ == (2654506i32)) {
                    if (((_i_2654434 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 2654596i32;
                    } else {
                        _gotoNext = 2654476i32;
                    };
                } else if (__value__ == (2654596i32)) {
                    _i_2654434++;
                    _gotoNext = 2654476i32;
                } else if (__value__ == (2654613i32)) {
                    _inrange_2654412 = true;
                    _gotoNext = 2654476i32;
                } else if (__value__ == (2654643i32)) {
                    _inrange_2654412 = false;
                    _gotoNext = 2654476i32;
                } else if (__value__ == (2654674i32)) {
                    if (!_inrange_2654412) {
                        _gotoNext = 2654699i32;
                    } else {
                        _gotoNext = 2654476i32;
                    };
                } else if (__value__ == (2654699i32)) {
                    scanBreak = true;
                    _gotoNext = 2654447i32;
                } else if (__value__ == (2654729i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_2654434) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_2654434) : stdgo.GoString)?.__copy__() };
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
