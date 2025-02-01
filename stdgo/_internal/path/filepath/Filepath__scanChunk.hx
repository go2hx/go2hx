package stdgo._internal.path.filepath;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.os.Os;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_4024255:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_4024233:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 4024147i32;
                } else if (__value__ == (4024147i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4024189i32;
                    } else {
                        _gotoNext = 4024233i32;
                    };
                } else if (__value__ == (4024189i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 4024147i32;
                } else if (__value__ == (4024233i32)) {
                    _inrange_4024233 = false;
                    _gotoNext = 4024261i32;
                } else if (__value__ == (4024261i32)) {
                    _i_4024255 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 4024268i32;
                } else if (__value__ == (4024268i32)) {
                    if (!scanBreak && ((_i_4024255 < (_pattern.length) : Bool))) {
                        _gotoNext = 4024301i32;
                    } else {
                        _gotoNext = 4024593i32;
                    };
                } else if (__value__ == (4024297i32)) {
                    _i_4024255++;
                    _gotoNext = 4024268i32;
                } else if (__value__ == (4024301i32)) {
                    _gotoNext = 4024305i32;
                } else if (__value__ == (4024305i32)) {
                    {
                        final __value__ = _pattern[(_i_4024255 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 4024327i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 4024477i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 4024507i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 4024538i32;
                        } else {
                            _gotoNext = 4024297i32;
                        };
                    };
                } else if (__value__ == (4024327i32)) {
                    if (true) {
                        _gotoNext = 4024370i32;
                    } else {
                        _gotoNext = 4024297i32;
                    };
                } else if (__value__ == (4024370i32)) {
                    if (((_i_4024255 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 4024453i32;
                    } else {
                        _gotoNext = 4024297i32;
                    };
                } else if (__value__ == (4024453i32)) {
                    _i_4024255++;
                    _gotoNext = 4024297i32;
                } else if (__value__ == (4024477i32)) {
                    _inrange_4024233 = true;
                    _gotoNext = 4024297i32;
                } else if (__value__ == (4024507i32)) {
                    _inrange_4024233 = false;
                    _gotoNext = 4024297i32;
                } else if (__value__ == (4024538i32)) {
                    if (!_inrange_4024233) {
                        _gotoNext = 4024563i32;
                    } else {
                        _gotoNext = 4024297i32;
                    };
                } else if (__value__ == (4024563i32)) {
                    scanBreak = true;
                    _gotoNext = 4024268i32;
                } else if (__value__ == (4024593i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_4024255) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_4024255) : stdgo.GoString)?.__copy__() };
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
