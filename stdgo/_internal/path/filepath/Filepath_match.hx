package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var patternBreak = false;
        var _ok_3967407:Bool = false;
        var _i_3967347:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_3966958:Bool = false;
        var _star_3966691:Bool = false;
        var _chunk_3966707:stdgo.GoString = ("" : stdgo.GoString);
        var _err_3967411:stdgo.Error = (null : stdgo.Error);
        var _t_3967404:stdgo.GoString = ("" : stdgo.GoString);
        var _err_3966962:stdgo.Error = (null : stdgo.Error);
        var _t_3966955:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3966652i32;
                } else if (__value__ == (3966652i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 3966662i32;
                } else if (__value__ == (3966662i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 3966683i32;
                    } else {
                        _gotoNext = 3967713i32;
                    };
                } else if (__value__ == (3966683i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_3966691 = __tmp__._0;
                        _chunk_3966707 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_3966691 && (_chunk_3966707 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 3966789i32;
                    } else {
                        _gotoNext = 3966955i32;
                    };
                } else if (__value__ == (3966789i32)) {
                    return { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                    _gotoNext = 3966955i32;
                } else if (__value__ == (3966955i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_3966707?.__copy__(), _name?.__copy__());
                        _t_3966955 = __tmp__._0?.__copy__();
                        _ok_3966958 = __tmp__._1;
                        _err_3966962 = __tmp__._2;
                    };
                    if ((_ok_3966958 && (((_t_3966955.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 3967193i32;
                    } else {
                        _gotoNext = 3967225i32;
                    };
                } else if (__value__ == (3967193i32)) {
                    _name = _t_3966955?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 3966662i32;
                } else if (__value__ == (3967225i32)) {
                    if (_err_3966962 != null) {
                        _gotoNext = 3967239i32;
                    } else {
                        _gotoNext = 3967268i32;
                    };
                } else if (__value__ == (3967239i32)) {
                    return { _0 : false, _1 : _err_3966962 };
                    _gotoNext = 3967268i32;
                } else if (__value__ == (3967268i32)) {
                    if (_star_3966691) {
                        _gotoNext = 3967276i32;
                    } else {
                        _gotoNext = 3967691i32;
                    };
                } else if (__value__ == (3967276i32)) {
                    _i_3967347 = (0 : stdgo.GoInt);
                    _gotoNext = 3967343i32;
                } else if (__value__ == (3967343i32)) {
                    if (((_i_3967347 < (_name.length) : Bool) && (_name[(_i_3967347 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3967398i32;
                    } else {
                        _gotoNext = 3967691i32;
                    };
                } else if (__value__ == (3967394i32)) {
                    _i_3967347++;
                    _gotoNext = 3967343i32;
                } else if (__value__ == (3967398i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_3966707?.__copy__(), (_name.__slice__((_i_3967347 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_3967404 = __tmp__._0?.__copy__();
                        _ok_3967407 = __tmp__._1;
                        _err_3967411 = __tmp__._2;
                    };
                    if (_ok_3967407) {
                        _gotoNext = 3967458i32;
                    } else {
                        _gotoNext = 3967635i32;
                    };
                } else if (__value__ == (3967458i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_3967404.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3967565i32;
                    } else {
                        _gotoNext = 3967594i32;
                    };
                } else if (__value__ == (3967565i32)) {
                    _i_3967347++;
                    _gotoNext = 3967343i32;
                } else if (__value__ == (3967594i32)) {
                    _name = _t_3967404?.__copy__();
                    _gotoNext = 3966662i32;
                } else if (__value__ == (3967635i32)) {
                    if (_err_3967411 != null) {
                        _gotoNext = 3967649i32;
                    } else {
                        _gotoNext = 3967394i32;
                    };
                } else if (__value__ == (3967649i32)) {
                    return { _0 : false, _1 : _err_3967411 };
                    _gotoNext = 3967394i32;
                } else if (__value__ == (3967691i32)) {
                    return { _0 : false, _1 : (null : stdgo.Error) };
                    _gotoNext = 3966662i32;
                } else if (__value__ == (3967713i32)) {
                    return { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
