package stdgo._internal.path;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_2954086:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_2954064:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2953978i32;
                } else if (__value__ == (2953978i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2954020i32;
                    } else {
                        _gotoNext = 2954064i32;
                    };
                } else if (__value__ == (2954020i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 2953978i32;
                } else if (__value__ == (2954064i32)) {
                    _inrange_2954064 = false;
                    _gotoNext = 2954092i32;
                } else if (__value__ == (2954092i32)) {
                    _i_2954086 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 2954099i32;
                } else if (__value__ == (2954099i32)) {
                    if (!scanBreak && ((_i_2954086 < (_pattern.length) : Bool))) {
                        _gotoNext = 2954132i32;
                    } else {
                        _gotoNext = 2954381i32;
                    };
                } else if (__value__ == (2954128i32)) {
                    _i_2954086++;
                    _gotoNext = 2954099i32;
                } else if (__value__ == (2954132i32)) {
                    _gotoNext = 2954136i32;
                } else if (__value__ == (2954136i32)) {
                    {
                        final __value__ = _pattern[(_i_2954086 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 2954158i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 2954265i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 2954295i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 2954326i32;
                        } else {
                            _gotoNext = 2954128i32;
                        };
                    };
                } else if (__value__ == (2954158i32)) {
                    if (((_i_2954086 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 2954248i32;
                    } else {
                        _gotoNext = 2954128i32;
                    };
                } else if (__value__ == (2954248i32)) {
                    _i_2954086++;
                    _gotoNext = 2954128i32;
                } else if (__value__ == (2954265i32)) {
                    _inrange_2954064 = true;
                    _gotoNext = 2954128i32;
                } else if (__value__ == (2954295i32)) {
                    _inrange_2954064 = false;
                    _gotoNext = 2954128i32;
                } else if (__value__ == (2954326i32)) {
                    if (!_inrange_2954064) {
                        _gotoNext = 2954351i32;
                    } else {
                        _gotoNext = 2954128i32;
                    };
                } else if (__value__ == (2954351i32)) {
                    scanBreak = true;
                    _gotoNext = 2954099i32;
                } else if (__value__ == (2954381i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_2954086) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_2954086) : stdgo.GoString)?.__copy__() };
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
