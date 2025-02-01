package stdgo._internal.path;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var _inrange_2642053:Bool = false;
        var scanBreak = false;
        var _i_2642075:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2641967i32;
                } else if (__value__ == (2641967i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2642009i32;
                    } else {
                        _gotoNext = 2642053i32;
                    };
                } else if (__value__ == (2642009i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 2641967i32;
                } else if (__value__ == (2642053i32)) {
                    _inrange_2642053 = false;
                    _gotoNext = 2642081i32;
                } else if (__value__ == (2642081i32)) {
                    _i_2642075 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 2642088i32;
                } else if (__value__ == (2642088i32)) {
                    if (!scanBreak && ((_i_2642075 < (_pattern.length) : Bool))) {
                        _gotoNext = 2642121i32;
                    } else {
                        _gotoNext = 2642370i32;
                    };
                } else if (__value__ == (2642117i32)) {
                    _i_2642075++;
                    _gotoNext = 2642088i32;
                } else if (__value__ == (2642121i32)) {
                    _gotoNext = 2642125i32;
                } else if (__value__ == (2642125i32)) {
                    {
                        final __value__ = _pattern[(_i_2642075 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 2642147i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 2642254i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 2642284i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 2642315i32;
                        } else {
                            _gotoNext = 2642117i32;
                        };
                    };
                } else if (__value__ == (2642147i32)) {
                    if (((_i_2642075 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 2642237i32;
                    } else {
                        _gotoNext = 2642117i32;
                    };
                } else if (__value__ == (2642237i32)) {
                    _i_2642075++;
                    _gotoNext = 2642117i32;
                } else if (__value__ == (2642254i32)) {
                    _inrange_2642053 = true;
                    _gotoNext = 2642117i32;
                } else if (__value__ == (2642284i32)) {
                    _inrange_2642053 = false;
                    _gotoNext = 2642117i32;
                } else if (__value__ == (2642315i32)) {
                    if (!_inrange_2642053) {
                        _gotoNext = 2642340i32;
                    } else {
                        _gotoNext = 2642117i32;
                    };
                } else if (__value__ == (2642340i32)) {
                    scanBreak = true;
                    _gotoNext = 2642088i32;
                } else if (__value__ == (2642370i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_2642075) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_2642075) : stdgo.GoString)?.__copy__() };
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
