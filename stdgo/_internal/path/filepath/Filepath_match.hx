package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _ok_3943156:Bool = false;
        var _t_3943153:stdgo.GoString = ("" : stdgo.GoString);
        var _i_3943096:stdgo.GoInt = (0 : stdgo.GoInt);
        var patternBreak = false;
        var _err_3942711:stdgo.Error = (null : stdgo.Error);
        var _ok_3942707:Bool = false;
        var _t_3942704:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_3942456:stdgo.GoString = ("" : stdgo.GoString);
        var _star_3942440:Bool = false;
        var _err_3943160:stdgo.Error = (null : stdgo.Error);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3942401i32;
                } else if (__value__ == (3942401i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 3942411i32;
                } else if (__value__ == (3942411i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 3942432i32;
                    } else {
                        _gotoNext = 3943462i32;
                    };
                } else if (__value__ == (3942432i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_3942440 = __tmp__._0;
                        _chunk_3942456 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_3942440 && (_chunk_3942456 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 3942538i32;
                    } else {
                        _gotoNext = 3942704i32;
                    };
                } else if (__value__ == (3942538i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3942704i32;
                } else if (__value__ == (3942704i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_3942456?.__copy__(), _name?.__copy__());
                        _t_3942704 = __tmp__._0?.__copy__();
                        _ok_3942707 = __tmp__._1;
                        _err_3942711 = __tmp__._2;
                    };
                    if ((_ok_3942707 && (((_t_3942704.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 3942942i32;
                    } else {
                        _gotoNext = 3942974i32;
                    };
                } else if (__value__ == (3942942i32)) {
                    _name = _t_3942704?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 3942411i32;
                } else if (__value__ == (3942974i32)) {
                    if (_err_3942711 != null) {
                        _gotoNext = 3942988i32;
                    } else {
                        _gotoNext = 3943017i32;
                    };
                } else if (__value__ == (3942988i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_3942711 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3943017i32;
                } else if (__value__ == (3943017i32)) {
                    if (_star_3942440) {
                        _gotoNext = 3943025i32;
                    } else {
                        _gotoNext = 3943440i32;
                    };
                } else if (__value__ == (3943025i32)) {
                    _i_3943096 = (0 : stdgo.GoInt);
                    _gotoNext = 3943092i32;
                } else if (__value__ == (3943092i32)) {
                    if (((_i_3943096 < (_name.length) : Bool) && (_name[(_i_3943096 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3943147i32;
                    } else {
                        _gotoNext = 3943440i32;
                    };
                } else if (__value__ == (3943143i32)) {
                    _i_3943096++;
                    _gotoNext = 3943092i32;
                } else if (__value__ == (3943147i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_3942456?.__copy__(), (_name.__slice__((_i_3943096 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_3943153 = __tmp__._0?.__copy__();
                        _ok_3943156 = __tmp__._1;
                        _err_3943160 = __tmp__._2;
                    };
                    if (_ok_3943156) {
                        _gotoNext = 3943207i32;
                    } else {
                        _gotoNext = 3943384i32;
                    };
                } else if (__value__ == (3943207i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_3943153.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3943314i32;
                    } else {
                        _gotoNext = 3943343i32;
                    };
                } else if (__value__ == (3943314i32)) {
                    _i_3943096++;
                    _gotoNext = 3943092i32;
                } else if (__value__ == (3943343i32)) {
                    _name = _t_3943153?.__copy__();
                    _gotoNext = 3942411i32;
                } else if (__value__ == (3943384i32)) {
                    if (_err_3943160 != null) {
                        _gotoNext = 3943398i32;
                    } else {
                        _gotoNext = 3943143i32;
                    };
                } else if (__value__ == (3943398i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_3943160 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3943143i32;
                } else if (__value__ == (3943440i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3942411i32;
                } else if (__value__ == (3943462i32)) {
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
