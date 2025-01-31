package stdgo._internal.path.filepath;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.os.Os;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _ok_3963264:Bool = false;
        var _i_3963204:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_3962819:stdgo.Error = (null : stdgo.Error);
        var _ok_3962815:Bool = false;
        var _chunk_3962564:stdgo.GoString = ("" : stdgo.GoString);
        var _err_3963268:stdgo.Error = (null : stdgo.Error);
        var _t_3963261:stdgo.GoString = ("" : stdgo.GoString);
        var _t_3962812:stdgo.GoString = ("" : stdgo.GoString);
        var _star_3962548:Bool = false;
        var patternBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3962509i32;
                } else if (__value__ == (3962509i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 3962519i32;
                } else if (__value__ == (3962519i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 3962540i32;
                    } else {
                        _gotoNext = 3963570i32;
                    };
                } else if (__value__ == (3962540i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_3962548 = @:tmpset0 __tmp__._0;
                        _chunk_3962564 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_3962548 && (_chunk_3962564 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 3962646i32;
                    } else {
                        _gotoNext = 3962812i32;
                    };
                } else if (__value__ == (3962646i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3962812i32;
                } else if (__value__ == (3962812i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_3962564?.__copy__(), _name?.__copy__());
                        _t_3962812 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_3962815 = @:tmpset0 __tmp__._1;
                        _err_3962819 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_3962815 && (((_t_3962812.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 3963050i32;
                    } else {
                        _gotoNext = 3963082i32;
                    };
                } else if (__value__ == (3963050i32)) {
                    _name = _t_3962812?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 3962519i32;
                } else if (__value__ == (3963082i32)) {
                    if (_err_3962819 != null) {
                        _gotoNext = 3963096i32;
                    } else {
                        _gotoNext = 3963125i32;
                    };
                } else if (__value__ == (3963096i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_3962819 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3963125i32;
                } else if (__value__ == (3963125i32)) {
                    if (_star_3962548) {
                        _gotoNext = 3963133i32;
                    } else {
                        _gotoNext = 3963548i32;
                    };
                } else if (__value__ == (3963133i32)) {
                    _i_3963204 = (0 : stdgo.GoInt);
                    _gotoNext = 3963200i32;
                } else if (__value__ == (3963200i32)) {
                    if (((_i_3963204 < (_name.length) : Bool) && (_name[(_i_3963204 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3963255i32;
                    } else {
                        _gotoNext = 3963548i32;
                    };
                } else if (__value__ == (3963251i32)) {
                    _i_3963204++;
                    _gotoNext = 3963200i32;
                } else if (__value__ == (3963255i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_3962564?.__copy__(), (_name.__slice__((_i_3963204 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_3963261 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_3963264 = @:tmpset0 __tmp__._1;
                        _err_3963268 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_3963264) {
                        _gotoNext = 3963315i32;
                    } else {
                        _gotoNext = 3963492i32;
                    };
                } else if (__value__ == (3963315i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_3963261.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3963422i32;
                    } else {
                        _gotoNext = 3963451i32;
                    };
                } else if (__value__ == (3963422i32)) {
                    _i_3963204++;
                    _gotoNext = 3963200i32;
                } else if (__value__ == (3963451i32)) {
                    _name = _t_3963261?.__copy__();
                    _gotoNext = 3962519i32;
                } else if (__value__ == (3963492i32)) {
                    if (_err_3963268 != null) {
                        _gotoNext = 3963506i32;
                    } else {
                        _gotoNext = 3963251i32;
                    };
                } else if (__value__ == (3963506i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_3963268 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3963251i32;
                } else if (__value__ == (3963548i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3962519i32;
                } else if (__value__ == (3963570i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
