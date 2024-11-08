package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _i_4019844:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_4019459:stdgo.Error = (null : stdgo.Error);
        var _ok_4019455:Bool = false;
        var _chunk_4019204:stdgo.GoString = ("" : stdgo.GoString);
        var _star_4019188:Bool = false;
        var _err_4019908:stdgo.Error = (null : stdgo.Error);
        var _ok_4019904:Bool = false;
        var _t_4019901:stdgo.GoString = ("" : stdgo.GoString);
        var _t_4019452:stdgo.GoString = ("" : stdgo.GoString);
        var patternBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 4019149i32;
                } else if (__value__ == (4019149i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 4019159i32;
                } else if (__value__ == (4019159i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 4019180i32;
                    } else {
                        _gotoNext = 4020210i32;
                    };
                } else if (__value__ == (4019180i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_4019188 = __tmp__._0;
                        _chunk_4019204 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_4019188 && (_chunk_4019204 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 4019286i32;
                    } else {
                        _gotoNext = 4019452i32;
                    };
                } else if (__value__ == (4019286i32)) {
                    return { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                    _gotoNext = 4019452i32;
                } else if (__value__ == (4019452i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_4019204?.__copy__(), _name?.__copy__());
                        _t_4019452 = __tmp__._0?.__copy__();
                        _ok_4019455 = __tmp__._1;
                        _err_4019459 = __tmp__._2;
                    };
                    if ((_ok_4019455 && (((_t_4019452.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 4019690i32;
                    } else {
                        _gotoNext = 4019722i32;
                    };
                } else if (__value__ == (4019690i32)) {
                    _name = _t_4019452?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 4019159i32;
                } else if (__value__ == (4019722i32)) {
                    if (_err_4019459 != null) {
                        _gotoNext = 4019736i32;
                    } else {
                        _gotoNext = 4019765i32;
                    };
                } else if (__value__ == (4019736i32)) {
                    return { _0 : false, _1 : _err_4019459 };
                    _gotoNext = 4019765i32;
                } else if (__value__ == (4019765i32)) {
                    if (_star_4019188) {
                        _gotoNext = 4019773i32;
                    } else {
                        _gotoNext = 4020188i32;
                    };
                } else if (__value__ == (4019773i32)) {
                    _i_4019844 = (0 : stdgo.GoInt);
                    _gotoNext = 4019840i32;
                } else if (__value__ == (4019840i32)) {
                    if (((_i_4019844 < (_name.length) : Bool) && (_name[(_i_4019844 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4019895i32;
                    } else {
                        _gotoNext = 4020188i32;
                    };
                } else if (__value__ == (4019891i32)) {
                    _i_4019844++;
                    _gotoNext = 4019840i32;
                } else if (__value__ == (4019895i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_4019204?.__copy__(), (_name.__slice__((_i_4019844 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_4019901 = __tmp__._0?.__copy__();
                        _ok_4019904 = __tmp__._1;
                        _err_4019908 = __tmp__._2;
                    };
                    if (_ok_4019904) {
                        _gotoNext = 4019955i32;
                    } else {
                        _gotoNext = 4020132i32;
                    };
                } else if (__value__ == (4019955i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_4019901.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 4020062i32;
                    } else {
                        _gotoNext = 4020091i32;
                    };
                } else if (__value__ == (4020062i32)) {
                    _i_4019844++;
                    _gotoNext = 4019840i32;
                } else if (__value__ == (4020091i32)) {
                    _name = _t_4019901?.__copy__();
                    _gotoNext = 4019159i32;
                } else if (__value__ == (4020132i32)) {
                    if (_err_4019908 != null) {
                        _gotoNext = 4020146i32;
                    } else {
                        _gotoNext = 4019891i32;
                    };
                } else if (__value__ == (4020146i32)) {
                    return { _0 : false, _1 : _err_4019908 };
                    _gotoNext = 4019891i32;
                } else if (__value__ == (4020188i32)) {
                    return { _0 : false, _1 : (null : stdgo.Error) };
                    _gotoNext = 4019159i32;
                } else if (__value__ == (4020210i32)) {
                    return { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
