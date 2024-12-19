package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_3965597:stdgo.Error = (null : stdgo.Error);
        var _i_3965533:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_3965148:stdgo.Error = (null : stdgo.Error);
        var _ok_3965144:Bool = false;
        var _t_3965141:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_3964893:stdgo.GoString = ("" : stdgo.GoString);
        var _star_3964877:Bool = false;
        var patternBreak = false;
        var _ok_3965593:Bool = false;
        var _t_3965590:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3964838i32;
                } else if (__value__ == (3964838i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 3964848i32;
                } else if (__value__ == (3964848i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 3964869i32;
                    } else {
                        _gotoNext = 3965899i32;
                    };
                } else if (__value__ == (3964869i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_3964877 = __tmp__._0;
                        _chunk_3964893 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_3964877 && (_chunk_3964893 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 3964975i32;
                    } else {
                        _gotoNext = 3965141i32;
                    };
                } else if (__value__ == (3964975i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3965141i32;
                } else if (__value__ == (3965141i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_3964893?.__copy__(), _name?.__copy__());
                        _t_3965141 = __tmp__._0?.__copy__();
                        _ok_3965144 = __tmp__._1;
                        _err_3965148 = __tmp__._2;
                    };
                    if ((_ok_3965144 && (((_t_3965141.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 3965379i32;
                    } else {
                        _gotoNext = 3965411i32;
                    };
                } else if (__value__ == (3965379i32)) {
                    _name = _t_3965141?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 3964848i32;
                } else if (__value__ == (3965411i32)) {
                    if (_err_3965148 != null) {
                        _gotoNext = 3965425i32;
                    } else {
                        _gotoNext = 3965454i32;
                    };
                } else if (__value__ == (3965425i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_3965148 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3965454i32;
                } else if (__value__ == (3965454i32)) {
                    if (_star_3964877) {
                        _gotoNext = 3965462i32;
                    } else {
                        _gotoNext = 3965877i32;
                    };
                } else if (__value__ == (3965462i32)) {
                    _i_3965533 = (0 : stdgo.GoInt);
                    _gotoNext = 3965529i32;
                } else if (__value__ == (3965529i32)) {
                    if (((_i_3965533 < (_name.length) : Bool) && (_name[(_i_3965533 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3965584i32;
                    } else {
                        _gotoNext = 3965877i32;
                    };
                } else if (__value__ == (3965580i32)) {
                    _i_3965533++;
                    _gotoNext = 3965529i32;
                } else if (__value__ == (3965584i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_3964893?.__copy__(), (_name.__slice__((_i_3965533 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_3965590 = __tmp__._0?.__copy__();
                        _ok_3965593 = __tmp__._1;
                        _err_3965597 = __tmp__._2;
                    };
                    if (_ok_3965593) {
                        _gotoNext = 3965644i32;
                    } else {
                        _gotoNext = 3965821i32;
                    };
                } else if (__value__ == (3965644i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_3965590.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3965751i32;
                    } else {
                        _gotoNext = 3965780i32;
                    };
                } else if (__value__ == (3965751i32)) {
                    _i_3965533++;
                    _gotoNext = 3965529i32;
                } else if (__value__ == (3965780i32)) {
                    _name = _t_3965590?.__copy__();
                    _gotoNext = 3964848i32;
                } else if (__value__ == (3965821i32)) {
                    if (_err_3965597 != null) {
                        _gotoNext = 3965835i32;
                    } else {
                        _gotoNext = 3965580i32;
                    };
                } else if (__value__ == (3965835i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_3965597 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3965580i32;
                } else if (__value__ == (3965877i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3964848i32;
                } else if (__value__ == (3965899i32)) {
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
