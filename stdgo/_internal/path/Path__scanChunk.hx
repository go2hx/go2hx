package stdgo._internal.path;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_2773614:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_2773592:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2773506i32;
                } else if (__value__ == (2773506i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2773548i32;
                    } else {
                        _gotoNext = 2773592i32;
                    };
                } else if (__value__ == (2773548i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 2773506i32;
                } else if (__value__ == (2773592i32)) {
                    _inrange_2773592 = false;
                    _gotoNext = 2773620i32;
                } else if (__value__ == (2773620i32)) {
                    _i_2773614 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 2773627i32;
                } else if (__value__ == (2773627i32)) {
                    if (!scanBreak && ((_i_2773614 < (_pattern.length) : Bool))) {
                        _gotoNext = 2773660i32;
                    } else {
                        _gotoNext = 2773909i32;
                    };
                } else if (__value__ == (2773656i32)) {
                    _i_2773614++;
                    _gotoNext = 2773627i32;
                } else if (__value__ == (2773660i32)) {
                    _gotoNext = 2773664i32;
                } else if (__value__ == (2773664i32)) {
                    {
                        final __value__ = _pattern[(_i_2773614 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 2773686i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 2773793i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 2773823i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 2773854i32;
                        } else {
                            _gotoNext = 2773656i32;
                        };
                    };
                } else if (__value__ == (2773686i32)) {
                    if (((_i_2773614 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 2773776i32;
                    } else {
                        _gotoNext = 2773656i32;
                    };
                } else if (__value__ == (2773776i32)) {
                    _i_2773614++;
                    _gotoNext = 2773656i32;
                } else if (__value__ == (2773793i32)) {
                    _inrange_2773592 = true;
                    _gotoNext = 2773656i32;
                } else if (__value__ == (2773823i32)) {
                    _inrange_2773592 = false;
                    _gotoNext = 2773656i32;
                } else if (__value__ == (2773854i32)) {
                    if (!_inrange_2773592) {
                        _gotoNext = 2773879i32;
                    } else {
                        _gotoNext = 2773656i32;
                    };
                } else if (__value__ == (2773879i32)) {
                    scanBreak = true;
                    _gotoNext = 2773627i32;
                } else if (__value__ == (2773909i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_2773614) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_2773614) : stdgo.GoString)?.__copy__() };
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
