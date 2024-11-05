package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_2611438:stdgo.Error = (null : stdgo.Error);
        var _t_2611431:stdgo.GoString = ("" : stdgo.GoString);
        var _i_2611380:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_2610995:stdgo.Error = (null : stdgo.Error);
        var _err_2611907:stdgo.Error = (null : stdgo.Error);
        var _ok_2611434:Bool = false;
        var _ok_2610991:Bool = false;
        var _t_2610988:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_2610744:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2610728:Bool = false;
        var patternBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2610689i32;
                } else if (__value__ == (2610689i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2610699i32;
                } else if (__value__ == (2610699i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2610720i32;
                    } else {
                        _gotoNext = 2612005i32;
                    };
                } else if (__value__ == (2610720i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2610728 = __tmp__._0;
                        _chunk_2610744 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2610728 && (_chunk_2610744 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2610826i32;
                    } else {
                        _gotoNext = 2610988i32;
                    };
                } else if (__value__ == (2610826i32)) {
                    return { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                    _gotoNext = 2610988i32;
                } else if (__value__ == (2610988i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2610744?.__copy__(), _name?.__copy__());
                        _t_2610988 = __tmp__._0?.__copy__();
                        _ok_2610991 = __tmp__._1;
                        _err_2610995 = __tmp__._2;
                    };
                    if ((_ok_2610991 && (((_t_2610988.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2611226i32;
                    } else {
                        _gotoNext = 2611258i32;
                    };
                } else if (__value__ == (2611226i32)) {
                    _name = _t_2610988?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2610699i32;
                } else if (__value__ == (2611258i32)) {
                    if (_err_2610995 != null) {
                        _gotoNext = 2611272i32;
                    } else {
                        _gotoNext = 2611301i32;
                    };
                } else if (__value__ == (2611272i32)) {
                    return { _0 : false, _1 : _err_2610995 };
                    _gotoNext = 2611301i32;
                } else if (__value__ == (2611301i32)) {
                    if (_star_2610728) {
                        _gotoNext = 2611309i32;
                    } else {
                        _gotoNext = 2611830i32;
                    };
                } else if (__value__ == (2611309i32)) {
                    _i_2611380 = (0 : stdgo.GoInt);
                    _gotoNext = 2611376i32;
                } else if (__value__ == (2611376i32)) {
                    if (((_i_2611380 < (_name.length) : Bool) && (_name[(_i_2611380 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2611425i32;
                    } else {
                        _gotoNext = 2611830i32;
                    };
                } else if (__value__ == (2611421i32)) {
                    _i_2611380++;
                    _gotoNext = 2611376i32;
                } else if (__value__ == (2611425i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2610744?.__copy__(), (_name.__slice__((_i_2611380 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2611431 = __tmp__._0?.__copy__();
                        _ok_2611434 = __tmp__._1;
                        _err_2611438 = __tmp__._2;
                    };
                    if (_ok_2611434) {
                        _gotoNext = 2611485i32;
                    } else {
                        _gotoNext = 2611662i32;
                    };
                } else if (__value__ == (2611485i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2611431.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2611592i32;
                    } else {
                        _gotoNext = 2611621i32;
                    };
                } else if (__value__ == (2611592i32)) {
                    _i_2611380++;
                    _gotoNext = 2611376i32;
                } else if (__value__ == (2611621i32)) {
                    _name = _t_2611431?.__copy__();
                    _gotoNext = 2610699i32;
                } else if (__value__ == (2611662i32)) {
                    if (_err_2611438 != null) {
                        _gotoNext = 2611676i32;
                    } else {
                        _gotoNext = 2611421i32;
                    };
                } else if (__value__ == (2611676i32)) {
                    return { _0 : false, _1 : _err_2611438 };
                    _gotoNext = 2611421i32;
                } else if (__value__ == (2611830i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2611830i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2611851i32;
                    } else {
                        _gotoNext = 2611983i32;
                    };
                } else if (__value__ == (2611851i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2610744 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2610744?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2611907 = __tmp__._2;
                        };
                        if (_err_2611907 != null) {
                            _gotoNext = 2611948i32;
                        } else {
                            _gotoNext = 2611983i32;
                        };
                    };
                } else if (__value__ == (2611948i32)) {
                    return { _0 : false, _1 : _err_2611907 };
                    _gotoNext = 2611983i32;
                } else if (__value__ == (2611983i32)) {
                    return { _0 : false, _1 : (null : stdgo.Error) };
                    _gotoNext = 2610699i32;
                } else if (__value__ == (2612005i32)) {
                    return { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
