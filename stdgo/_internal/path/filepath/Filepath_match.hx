package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_3964131:stdgo.Error = (null : stdgo.Error);
        var _ok_3964127:Bool = false;
        var _i_3964067:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_3963682:stdgo.Error = (null : stdgo.Error);
        var _chunk_3963427:stdgo.GoString = ("" : stdgo.GoString);
        var patternBreak = false;
        var _t_3964124:stdgo.GoString = ("" : stdgo.GoString);
        var _ok_3963678:Bool = false;
        var _t_3963675:stdgo.GoString = ("" : stdgo.GoString);
        var _star_3963411:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3963372i32;
                } else if (__value__ == (3963372i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 3963382i32;
                } else if (__value__ == (3963382i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 3963403i32;
                    } else {
                        _gotoNext = 3964433i32;
                    };
                } else if (__value__ == (3963403i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_3963411 = __tmp__._0;
                        _chunk_3963427 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_3963411 && (_chunk_3963427 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 3963509i32;
                    } else {
                        _gotoNext = 3963675i32;
                    };
                } else if (__value__ == (3963509i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3963675i32;
                } else if (__value__ == (3963675i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_3963427?.__copy__(), _name?.__copy__());
                        _t_3963675 = __tmp__._0?.__copy__();
                        _ok_3963678 = __tmp__._1;
                        _err_3963682 = __tmp__._2;
                    };
                    if ((_ok_3963678 && (((_t_3963675.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 3963913i32;
                    } else {
                        _gotoNext = 3963945i32;
                    };
                } else if (__value__ == (3963913i32)) {
                    _name = _t_3963675?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 3963382i32;
                } else if (__value__ == (3963945i32)) {
                    if (_err_3963682 != null) {
                        _gotoNext = 3963959i32;
                    } else {
                        _gotoNext = 3963988i32;
                    };
                } else if (__value__ == (3963959i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_3963682 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3963988i32;
                } else if (__value__ == (3963988i32)) {
                    if (_star_3963411) {
                        _gotoNext = 3963996i32;
                    } else {
                        _gotoNext = 3964411i32;
                    };
                } else if (__value__ == (3963996i32)) {
                    _i_3964067 = (0 : stdgo.GoInt);
                    _gotoNext = 3964063i32;
                } else if (__value__ == (3964063i32)) {
                    if (((_i_3964067 < (_name.length) : Bool) && (_name[(_i_3964067 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3964118i32;
                    } else {
                        _gotoNext = 3964411i32;
                    };
                } else if (__value__ == (3964114i32)) {
                    _i_3964067++;
                    _gotoNext = 3964063i32;
                } else if (__value__ == (3964118i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_3963427?.__copy__(), (_name.__slice__((_i_3964067 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_3964124 = __tmp__._0?.__copy__();
                        _ok_3964127 = __tmp__._1;
                        _err_3964131 = __tmp__._2;
                    };
                    if (_ok_3964127) {
                        _gotoNext = 3964178i32;
                    } else {
                        _gotoNext = 3964355i32;
                    };
                } else if (__value__ == (3964178i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_3964124.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3964285i32;
                    } else {
                        _gotoNext = 3964314i32;
                    };
                } else if (__value__ == (3964285i32)) {
                    _i_3964067++;
                    _gotoNext = 3964063i32;
                } else if (__value__ == (3964314i32)) {
                    _name = _t_3964124?.__copy__();
                    _gotoNext = 3963382i32;
                } else if (__value__ == (3964355i32)) {
                    if (_err_3964131 != null) {
                        _gotoNext = 3964369i32;
                    } else {
                        _gotoNext = 3964114i32;
                    };
                } else if (__value__ == (3964369i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_3964131 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3964114i32;
                } else if (__value__ == (3964411i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3963382i32;
                } else if (__value__ == (3964433i32)) {
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
