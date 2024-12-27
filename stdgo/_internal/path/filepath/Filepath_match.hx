package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _ok_3943652:Bool = false;
        var _t_3943649:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_3943401:stdgo.GoString = ("" : stdgo.GoString);
        var _star_3943385:Bool = false;
        var _t_3944098:stdgo.GoString = ("" : stdgo.GoString);
        var _i_3944041:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_3943656:stdgo.Error = (null : stdgo.Error);
        var patternBreak = false;
        var _err_3944105:stdgo.Error = (null : stdgo.Error);
        var _ok_3944101:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3943346i32;
                } else if (__value__ == (3943346i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 3943356i32;
                } else if (__value__ == (3943356i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 3943377i32;
                    } else {
                        _gotoNext = 3944407i32;
                    };
                } else if (__value__ == (3943377i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_3943385 = __tmp__._0;
                        _chunk_3943401 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_3943385 && (_chunk_3943401 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 3943483i32;
                    } else {
                        _gotoNext = 3943649i32;
                    };
                } else if (__value__ == (3943483i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3943649i32;
                } else if (__value__ == (3943649i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_3943401?.__copy__(), _name?.__copy__());
                        _t_3943649 = __tmp__._0?.__copy__();
                        _ok_3943652 = __tmp__._1;
                        _err_3943656 = __tmp__._2;
                    };
                    if ((_ok_3943652 && (((_t_3943649.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 3943887i32;
                    } else {
                        _gotoNext = 3943919i32;
                    };
                } else if (__value__ == (3943887i32)) {
                    _name = _t_3943649?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 3943356i32;
                } else if (__value__ == (3943919i32)) {
                    if (_err_3943656 != null) {
                        _gotoNext = 3943933i32;
                    } else {
                        _gotoNext = 3943962i32;
                    };
                } else if (__value__ == (3943933i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_3943656 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3943962i32;
                } else if (__value__ == (3943962i32)) {
                    if (_star_3943385) {
                        _gotoNext = 3943970i32;
                    } else {
                        _gotoNext = 3944385i32;
                    };
                } else if (__value__ == (3943970i32)) {
                    _i_3944041 = (0 : stdgo.GoInt);
                    _gotoNext = 3944037i32;
                } else if (__value__ == (3944037i32)) {
                    if (((_i_3944041 < (_name.length) : Bool) && (_name[(_i_3944041 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3944092i32;
                    } else {
                        _gotoNext = 3944385i32;
                    };
                } else if (__value__ == (3944088i32)) {
                    _i_3944041++;
                    _gotoNext = 3944037i32;
                } else if (__value__ == (3944092i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_3943401?.__copy__(), (_name.__slice__((_i_3944041 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_3944098 = __tmp__._0?.__copy__();
                        _ok_3944101 = __tmp__._1;
                        _err_3944105 = __tmp__._2;
                    };
                    if (_ok_3944101) {
                        _gotoNext = 3944152i32;
                    } else {
                        _gotoNext = 3944329i32;
                    };
                } else if (__value__ == (3944152i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_3944098.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3944259i32;
                    } else {
                        _gotoNext = 3944288i32;
                    };
                } else if (__value__ == (3944259i32)) {
                    _i_3944041++;
                    _gotoNext = 3944037i32;
                } else if (__value__ == (3944288i32)) {
                    _name = _t_3944098?.__copy__();
                    _gotoNext = 3943356i32;
                } else if (__value__ == (3944329i32)) {
                    if (_err_3944105 != null) {
                        _gotoNext = 3944343i32;
                    } else {
                        _gotoNext = 3944088i32;
                    };
                } else if (__value__ == (3944343i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_3944105 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3944088i32;
                } else if (__value__ == (3944385i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3943356i32;
                } else if (__value__ == (3944407i32)) {
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
