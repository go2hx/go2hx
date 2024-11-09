package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _chunk_2911291:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2911275:Bool = false;
        var _err_2911985:stdgo.Error = (null : stdgo.Error);
        var _ok_2911981:Bool = false;
        var _t_2911978:stdgo.GoString = ("" : stdgo.GoString);
        var _t_2911535:stdgo.GoString = ("" : stdgo.GoString);
        var patternBreak = false;
        var _err_2912454:stdgo.Error = (null : stdgo.Error);
        var _i_2911927:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_2911542:stdgo.Error = (null : stdgo.Error);
        var _ok_2911538:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2911236i32;
                } else if (__value__ == (2911236i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2911246i32;
                } else if (__value__ == (2911246i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2911267i32;
                    } else {
                        _gotoNext = 2912552i32;
                    };
                } else if (__value__ == (2911267i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2911275 = __tmp__._0;
                        _chunk_2911291 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2911275 && (_chunk_2911291 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2911373i32;
                    } else {
                        _gotoNext = 2911535i32;
                    };
                } else if (__value__ == (2911373i32)) {
                    return { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                    _gotoNext = 2911535i32;
                } else if (__value__ == (2911535i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2911291?.__copy__(), _name?.__copy__());
                        _t_2911535 = __tmp__._0?.__copy__();
                        _ok_2911538 = __tmp__._1;
                        _err_2911542 = __tmp__._2;
                    };
                    if ((_ok_2911538 && (((_t_2911535.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2911773i32;
                    } else {
                        _gotoNext = 2911805i32;
                    };
                } else if (__value__ == (2911773i32)) {
                    _name = _t_2911535?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2911246i32;
                } else if (__value__ == (2911805i32)) {
                    if (_err_2911542 != null) {
                        _gotoNext = 2911819i32;
                    } else {
                        _gotoNext = 2911848i32;
                    };
                } else if (__value__ == (2911819i32)) {
                    return { _0 : false, _1 : _err_2911542 };
                    _gotoNext = 2911848i32;
                } else if (__value__ == (2911848i32)) {
                    if (_star_2911275) {
                        _gotoNext = 2911856i32;
                    } else {
                        _gotoNext = 2912377i32;
                    };
                } else if (__value__ == (2911856i32)) {
                    _i_2911927 = (0 : stdgo.GoInt);
                    _gotoNext = 2911923i32;
                } else if (__value__ == (2911923i32)) {
                    if (((_i_2911927 < (_name.length) : Bool) && (_name[(_i_2911927 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2911972i32;
                    } else {
                        _gotoNext = 2912377i32;
                    };
                } else if (__value__ == (2911968i32)) {
                    _i_2911927++;
                    _gotoNext = 2911923i32;
                } else if (__value__ == (2911972i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2911291?.__copy__(), (_name.__slice__((_i_2911927 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2911978 = __tmp__._0?.__copy__();
                        _ok_2911981 = __tmp__._1;
                        _err_2911985 = __tmp__._2;
                    };
                    if (_ok_2911981) {
                        _gotoNext = 2912032i32;
                    } else {
                        _gotoNext = 2912209i32;
                    };
                } else if (__value__ == (2912032i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2911978.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2912139i32;
                    } else {
                        _gotoNext = 2912168i32;
                    };
                } else if (__value__ == (2912139i32)) {
                    _i_2911927++;
                    _gotoNext = 2911923i32;
                } else if (__value__ == (2912168i32)) {
                    _name = _t_2911978?.__copy__();
                    _gotoNext = 2911246i32;
                } else if (__value__ == (2912209i32)) {
                    if (_err_2911985 != null) {
                        _gotoNext = 2912223i32;
                    } else {
                        _gotoNext = 2911968i32;
                    };
                } else if (__value__ == (2912223i32)) {
                    return { _0 : false, _1 : _err_2911985 };
                    _gotoNext = 2911968i32;
                } else if (__value__ == (2912377i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2912377i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2912398i32;
                    } else {
                        _gotoNext = 2912530i32;
                    };
                } else if (__value__ == (2912398i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2911291 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2911291?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2912454 = __tmp__._2;
                        };
                        if (_err_2912454 != null) {
                            _gotoNext = 2912495i32;
                        } else {
                            _gotoNext = 2912530i32;
                        };
                    };
                } else if (__value__ == (2912495i32)) {
                    return { _0 : false, _1 : _err_2912454 };
                    _gotoNext = 2912530i32;
                } else if (__value__ == (2912530i32)) {
                    return { _0 : false, _1 : (null : stdgo.Error) };
                    _gotoNext = 2911246i32;
                } else if (__value__ == (2912552i32)) {
                    return { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
