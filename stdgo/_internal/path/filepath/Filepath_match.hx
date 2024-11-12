package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _t_4046613:stdgo.GoString = ("" : stdgo.GoString);
        var _ok_4046167:Bool = false;
        var patternBreak = false;
        var _err_4046620:stdgo.Error = (null : stdgo.Error);
        var _ok_4046616:Bool = false;
        var _i_4046556:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_4046171:stdgo.Error = (null : stdgo.Error);
        var _t_4046164:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_4045916:stdgo.GoString = ("" : stdgo.GoString);
        var _star_4045900:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 4045861i32;
                } else if (__value__ == (4045861i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 4045871i32;
                } else if (__value__ == (4045871i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 4045892i32;
                    } else {
                        _gotoNext = 4046922i32;
                    };
                } else if (__value__ == (4045892i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_4045900 = __tmp__._0;
                        _chunk_4045916 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_4045900 && (_chunk_4045916 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 4045998i32;
                    } else {
                        _gotoNext = 4046164i32;
                    };
                } else if (__value__ == (4045998i32)) {
                    return { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                    _gotoNext = 4046164i32;
                } else if (__value__ == (4046164i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_4045916?.__copy__(), _name?.__copy__());
                        _t_4046164 = __tmp__._0?.__copy__();
                        _ok_4046167 = __tmp__._1;
                        _err_4046171 = __tmp__._2;
                    };
                    if ((_ok_4046167 && (((_t_4046164.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 4046402i32;
                    } else {
                        _gotoNext = 4046434i32;
                    };
                } else if (__value__ == (4046402i32)) {
                    _name = _t_4046164?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 4045871i32;
                } else if (__value__ == (4046434i32)) {
                    if (_err_4046171 != null) {
                        _gotoNext = 4046448i32;
                    } else {
                        _gotoNext = 4046477i32;
                    };
                } else if (__value__ == (4046448i32)) {
                    return { _0 : false, _1 : _err_4046171 };
                    _gotoNext = 4046477i32;
                } else if (__value__ == (4046477i32)) {
                    if (_star_4045900) {
                        _gotoNext = 4046485i32;
                    } else {
                        _gotoNext = 4046900i32;
                    };
                } else if (__value__ == (4046485i32)) {
                    _i_4046556 = (0 : stdgo.GoInt);
                    _gotoNext = 4046552i32;
                } else if (__value__ == (4046552i32)) {
                    if (((_i_4046556 < (_name.length) : Bool) && (_name[(_i_4046556 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4046607i32;
                    } else {
                        _gotoNext = 4046900i32;
                    };
                } else if (__value__ == (4046603i32)) {
                    _i_4046556++;
                    _gotoNext = 4046552i32;
                } else if (__value__ == (4046607i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_4045916?.__copy__(), (_name.__slice__((_i_4046556 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_4046613 = __tmp__._0?.__copy__();
                        _ok_4046616 = __tmp__._1;
                        _err_4046620 = __tmp__._2;
                    };
                    if (_ok_4046616) {
                        _gotoNext = 4046667i32;
                    } else {
                        _gotoNext = 4046844i32;
                    };
                } else if (__value__ == (4046667i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_4046613.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 4046774i32;
                    } else {
                        _gotoNext = 4046803i32;
                    };
                } else if (__value__ == (4046774i32)) {
                    _i_4046556++;
                    _gotoNext = 4046552i32;
                } else if (__value__ == (4046803i32)) {
                    _name = _t_4046613?.__copy__();
                    _gotoNext = 4045871i32;
                } else if (__value__ == (4046844i32)) {
                    if (_err_4046620 != null) {
                        _gotoNext = 4046858i32;
                    } else {
                        _gotoNext = 4046603i32;
                    };
                } else if (__value__ == (4046858i32)) {
                    return { _0 : false, _1 : _err_4046620 };
                    _gotoNext = 4046603i32;
                } else if (__value__ == (4046900i32)) {
                    return { _0 : false, _1 : (null : stdgo.Error) };
                    _gotoNext = 4045871i32;
                } else if (__value__ == (4046922i32)) {
                    return { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
