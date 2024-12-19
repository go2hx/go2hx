package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var patternBreak = false;
        var _t_4076320:stdgo.GoString = ("" : stdgo.GoString);
        var _i_4076263:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_4075878:stdgo.Error = (null : stdgo.Error);
        var _ok_4075874:Bool = false;
        var _t_4075871:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_4075623:stdgo.GoString = ("" : stdgo.GoString);
        var _star_4075607:Bool = false;
        var _err_4076327:stdgo.Error = (null : stdgo.Error);
        var _ok_4076323:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 4075568i32;
                } else if (__value__ == (4075568i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 4075578i32;
                } else if (__value__ == (4075578i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 4075599i32;
                    } else {
                        _gotoNext = 4076629i32;
                    };
                } else if (__value__ == (4075599i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_4075607 = __tmp__._0;
                        _chunk_4075623 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_4075607 && (_chunk_4075623 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 4075705i32;
                    } else {
                        _gotoNext = 4075871i32;
                    };
                } else if (__value__ == (4075705i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4075871i32;
                } else if (__value__ == (4075871i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_4075623?.__copy__(), _name?.__copy__());
                        _t_4075871 = __tmp__._0?.__copy__();
                        _ok_4075874 = __tmp__._1;
                        _err_4075878 = __tmp__._2;
                    };
                    if ((_ok_4075874 && (((_t_4075871.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 4076109i32;
                    } else {
                        _gotoNext = 4076141i32;
                    };
                } else if (__value__ == (4076109i32)) {
                    _name = _t_4075871?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 4075578i32;
                } else if (__value__ == (4076141i32)) {
                    if (_err_4075878 != null) {
                        _gotoNext = 4076155i32;
                    } else {
                        _gotoNext = 4076184i32;
                    };
                } else if (__value__ == (4076155i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_4075878 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4076184i32;
                } else if (__value__ == (4076184i32)) {
                    if (_star_4075607) {
                        _gotoNext = 4076192i32;
                    } else {
                        _gotoNext = 4076607i32;
                    };
                } else if (__value__ == (4076192i32)) {
                    _i_4076263 = (0 : stdgo.GoInt);
                    _gotoNext = 4076259i32;
                } else if (__value__ == (4076259i32)) {
                    if (((_i_4076263 < (_name.length) : Bool) && (_name[(_i_4076263 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4076314i32;
                    } else {
                        _gotoNext = 4076607i32;
                    };
                } else if (__value__ == (4076310i32)) {
                    _i_4076263++;
                    _gotoNext = 4076259i32;
                } else if (__value__ == (4076314i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_4075623?.__copy__(), (_name.__slice__((_i_4076263 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_4076320 = __tmp__._0?.__copy__();
                        _ok_4076323 = __tmp__._1;
                        _err_4076327 = __tmp__._2;
                    };
                    if (_ok_4076323) {
                        _gotoNext = 4076374i32;
                    } else {
                        _gotoNext = 4076551i32;
                    };
                } else if (__value__ == (4076374i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_4076320.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 4076481i32;
                    } else {
                        _gotoNext = 4076510i32;
                    };
                } else if (__value__ == (4076481i32)) {
                    _i_4076263++;
                    _gotoNext = 4076259i32;
                } else if (__value__ == (4076510i32)) {
                    _name = _t_4076320?.__copy__();
                    _gotoNext = 4075578i32;
                } else if (__value__ == (4076551i32)) {
                    if (_err_4076327 != null) {
                        _gotoNext = 4076565i32;
                    } else {
                        _gotoNext = 4076310i32;
                    };
                } else if (__value__ == (4076565i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_4076327 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4076310i32;
                } else if (__value__ == (4076607i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4075578i32;
                } else if (__value__ == (4076629i32)) {
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
