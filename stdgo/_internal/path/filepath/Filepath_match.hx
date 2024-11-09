package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _t_3974969:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_3974721:stdgo.GoString = ("" : stdgo.GoString);
        var _ok_3975421:Bool = false;
        var _t_3975418:stdgo.GoString = ("" : stdgo.GoString);
        var _i_3975361:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_3974972:Bool = false;
        var _star_3974705:Bool = false;
        var patternBreak = false;
        var _err_3975425:stdgo.Error = (null : stdgo.Error);
        var _err_3974976:stdgo.Error = (null : stdgo.Error);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3974666i32;
                } else if (__value__ == (3974666i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 3974676i32;
                } else if (__value__ == (3974676i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 3974697i32;
                    } else {
                        _gotoNext = 3975727i32;
                    };
                } else if (__value__ == (3974697i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_3974705 = __tmp__._0;
                        _chunk_3974721 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_3974705 && (_chunk_3974721 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 3974803i32;
                    } else {
                        _gotoNext = 3974969i32;
                    };
                } else if (__value__ == (3974803i32)) {
                    return { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                    _gotoNext = 3974969i32;
                } else if (__value__ == (3974969i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_3974721?.__copy__(), _name?.__copy__());
                        _t_3974969 = __tmp__._0?.__copy__();
                        _ok_3974972 = __tmp__._1;
                        _err_3974976 = __tmp__._2;
                    };
                    if ((_ok_3974972 && (((_t_3974969.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 3975207i32;
                    } else {
                        _gotoNext = 3975239i32;
                    };
                } else if (__value__ == (3975207i32)) {
                    _name = _t_3974969?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 3974676i32;
                } else if (__value__ == (3975239i32)) {
                    if (_err_3974976 != null) {
                        _gotoNext = 3975253i32;
                    } else {
                        _gotoNext = 3975282i32;
                    };
                } else if (__value__ == (3975253i32)) {
                    return { _0 : false, _1 : _err_3974976 };
                    _gotoNext = 3975282i32;
                } else if (__value__ == (3975282i32)) {
                    if (_star_3974705) {
                        _gotoNext = 3975290i32;
                    } else {
                        _gotoNext = 3975705i32;
                    };
                } else if (__value__ == (3975290i32)) {
                    _i_3975361 = (0 : stdgo.GoInt);
                    _gotoNext = 3975357i32;
                } else if (__value__ == (3975357i32)) {
                    if (((_i_3975361 < (_name.length) : Bool) && (_name[(_i_3975361 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3975412i32;
                    } else {
                        _gotoNext = 3975705i32;
                    };
                } else if (__value__ == (3975408i32)) {
                    _i_3975361++;
                    _gotoNext = 3975357i32;
                } else if (__value__ == (3975412i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_3974721?.__copy__(), (_name.__slice__((_i_3975361 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_3975418 = __tmp__._0?.__copy__();
                        _ok_3975421 = __tmp__._1;
                        _err_3975425 = __tmp__._2;
                    };
                    if (_ok_3975421) {
                        _gotoNext = 3975472i32;
                    } else {
                        _gotoNext = 3975649i32;
                    };
                } else if (__value__ == (3975472i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_3975418.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3975579i32;
                    } else {
                        _gotoNext = 3975608i32;
                    };
                } else if (__value__ == (3975579i32)) {
                    _i_3975361++;
                    _gotoNext = 3975357i32;
                } else if (__value__ == (3975608i32)) {
                    _name = _t_3975418?.__copy__();
                    _gotoNext = 3974676i32;
                } else if (__value__ == (3975649i32)) {
                    if (_err_3975425 != null) {
                        _gotoNext = 3975663i32;
                    } else {
                        _gotoNext = 3975408i32;
                    };
                } else if (__value__ == (3975663i32)) {
                    return { _0 : false, _1 : _err_3975425 };
                    _gotoNext = 3975408i32;
                } else if (__value__ == (3975705i32)) {
                    return { _0 : false, _1 : (null : stdgo.Error) };
                    _gotoNext = 3974676i32;
                } else if (__value__ == (3975727i32)) {
                    return { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
