package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_3907420:stdgo.Error = (null : stdgo.Error);
        var _i_3907356:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_3906967:Bool = false;
        var _chunk_3906716:stdgo.GoString = ("" : stdgo.GoString);
        var patternBreak = false;
        var _ok_3907416:Bool = false;
        var _t_3907413:stdgo.GoString = ("" : stdgo.GoString);
        var _err_3906971:stdgo.Error = (null : stdgo.Error);
        var _t_3906964:stdgo.GoString = ("" : stdgo.GoString);
        var _star_3906700:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3906661i32;
                } else if (__value__ == (3906661i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 3906671i32;
                } else if (__value__ == (3906671i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 3906692i32;
                    } else {
                        _gotoNext = 3907722i32;
                    };
                } else if (__value__ == (3906692i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_3906700 = __tmp__._0;
                        _chunk_3906716 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_3906700 && (_chunk_3906716 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 3906798i32;
                    } else {
                        _gotoNext = 3906964i32;
                    };
                } else if (__value__ == (3906798i32)) {
                    return { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                    _gotoNext = 3906964i32;
                } else if (__value__ == (3906964i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_3906716?.__copy__(), _name?.__copy__());
                        _t_3906964 = __tmp__._0?.__copy__();
                        _ok_3906967 = __tmp__._1;
                        _err_3906971 = __tmp__._2;
                    };
                    if ((_ok_3906967 && (((_t_3906964.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 3907202i32;
                    } else {
                        _gotoNext = 3907234i32;
                    };
                } else if (__value__ == (3907202i32)) {
                    _name = _t_3906964?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 3906671i32;
                } else if (__value__ == (3907234i32)) {
                    if (_err_3906971 != null) {
                        _gotoNext = 3907248i32;
                    } else {
                        _gotoNext = 3907277i32;
                    };
                } else if (__value__ == (3907248i32)) {
                    return { _0 : false, _1 : _err_3906971 };
                    _gotoNext = 3907277i32;
                } else if (__value__ == (3907277i32)) {
                    if (_star_3906700) {
                        _gotoNext = 3907285i32;
                    } else {
                        _gotoNext = 3907700i32;
                    };
                } else if (__value__ == (3907285i32)) {
                    _i_3907356 = (0 : stdgo.GoInt);
                    _gotoNext = 3907352i32;
                } else if (__value__ == (3907352i32)) {
                    if (((_i_3907356 < (_name.length) : Bool) && (_name[(_i_3907356 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3907407i32;
                    } else {
                        _gotoNext = 3907700i32;
                    };
                } else if (__value__ == (3907403i32)) {
                    _i_3907356++;
                    _gotoNext = 3907352i32;
                } else if (__value__ == (3907407i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_3906716?.__copy__(), (_name.__slice__((_i_3907356 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_3907413 = __tmp__._0?.__copy__();
                        _ok_3907416 = __tmp__._1;
                        _err_3907420 = __tmp__._2;
                    };
                    if (_ok_3907416) {
                        _gotoNext = 3907467i32;
                    } else {
                        _gotoNext = 3907644i32;
                    };
                } else if (__value__ == (3907467i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_3907413.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3907574i32;
                    } else {
                        _gotoNext = 3907603i32;
                    };
                } else if (__value__ == (3907574i32)) {
                    _i_3907356++;
                    _gotoNext = 3907352i32;
                } else if (__value__ == (3907603i32)) {
                    _name = _t_3907413?.__copy__();
                    _gotoNext = 3906671i32;
                } else if (__value__ == (3907644i32)) {
                    if (_err_3907420 != null) {
                        _gotoNext = 3907658i32;
                    } else {
                        _gotoNext = 3907403i32;
                    };
                } else if (__value__ == (3907658i32)) {
                    return { _0 : false, _1 : _err_3907420 };
                    _gotoNext = 3907403i32;
                } else if (__value__ == (3907700i32)) {
                    return { _0 : false, _1 : (null : stdgo.Error) };
                    _gotoNext = 3906671i32;
                } else if (__value__ == (3907722i32)) {
                    return { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
