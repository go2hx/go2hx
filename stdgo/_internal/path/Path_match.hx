package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_2626556:stdgo.Error = (null : stdgo.Error);
        var _t_2626080:stdgo.GoString = ("" : stdgo.GoString);
        var _err_2625644:stdgo.Error = (null : stdgo.Error);
        var _star_2625377:Bool = false;
        var patternBreak = false;
        var _err_2626087:stdgo.Error = (null : stdgo.Error);
        var _ok_2626083:Bool = false;
        var _i_2626029:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_2625640:Bool = false;
        var _t_2625637:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_2625393:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2625338i32;
                } else if (__value__ == (2625338i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2625348i32;
                } else if (__value__ == (2625348i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2625369i32;
                    } else {
                        _gotoNext = 2626654i32;
                    };
                } else if (__value__ == (2625369i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2625377 = __tmp__._0;
                        _chunk_2625393 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2625377 && (_chunk_2625393 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2625475i32;
                    } else {
                        _gotoNext = 2625637i32;
                    };
                } else if (__value__ == (2625475i32)) {
                    return { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                    _gotoNext = 2625637i32;
                } else if (__value__ == (2625637i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2625393?.__copy__(), _name?.__copy__());
                        _t_2625637 = __tmp__._0?.__copy__();
                        _ok_2625640 = __tmp__._1;
                        _err_2625644 = __tmp__._2;
                    };
                    if ((_ok_2625640 && (((_t_2625637.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2625875i32;
                    } else {
                        _gotoNext = 2625907i32;
                    };
                } else if (__value__ == (2625875i32)) {
                    _name = _t_2625637?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2625348i32;
                } else if (__value__ == (2625907i32)) {
                    if (_err_2625644 != null) {
                        _gotoNext = 2625921i32;
                    } else {
                        _gotoNext = 2625950i32;
                    };
                } else if (__value__ == (2625921i32)) {
                    return { _0 : false, _1 : _err_2625644 };
                    _gotoNext = 2625950i32;
                } else if (__value__ == (2625950i32)) {
                    if (_star_2625377) {
                        _gotoNext = 2625958i32;
                    } else {
                        _gotoNext = 2626479i32;
                    };
                } else if (__value__ == (2625958i32)) {
                    _i_2626029 = (0 : stdgo.GoInt);
                    _gotoNext = 2626025i32;
                } else if (__value__ == (2626025i32)) {
                    if (((_i_2626029 < (_name.length) : Bool) && (_name[(_i_2626029 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2626074i32;
                    } else {
                        _gotoNext = 2626479i32;
                    };
                } else if (__value__ == (2626070i32)) {
                    _i_2626029++;
                    _gotoNext = 2626025i32;
                } else if (__value__ == (2626074i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2625393?.__copy__(), (_name.__slice__((_i_2626029 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2626080 = __tmp__._0?.__copy__();
                        _ok_2626083 = __tmp__._1;
                        _err_2626087 = __tmp__._2;
                    };
                    if (_ok_2626083) {
                        _gotoNext = 2626134i32;
                    } else {
                        _gotoNext = 2626311i32;
                    };
                } else if (__value__ == (2626134i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2626080.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2626241i32;
                    } else {
                        _gotoNext = 2626270i32;
                    };
                } else if (__value__ == (2626241i32)) {
                    _i_2626029++;
                    _gotoNext = 2626025i32;
                } else if (__value__ == (2626270i32)) {
                    _name = _t_2626080?.__copy__();
                    _gotoNext = 2625348i32;
                } else if (__value__ == (2626311i32)) {
                    if (_err_2626087 != null) {
                        _gotoNext = 2626325i32;
                    } else {
                        _gotoNext = 2626070i32;
                    };
                } else if (__value__ == (2626325i32)) {
                    return { _0 : false, _1 : _err_2626087 };
                    _gotoNext = 2626070i32;
                } else if (__value__ == (2626479i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2626479i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2626500i32;
                    } else {
                        _gotoNext = 2626632i32;
                    };
                } else if (__value__ == (2626500i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2625393 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2625393?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2626556 = __tmp__._2;
                        };
                        if (_err_2626556 != null) {
                            _gotoNext = 2626597i32;
                        } else {
                            _gotoNext = 2626632i32;
                        };
                    };
                } else if (__value__ == (2626597i32)) {
                    return { _0 : false, _1 : _err_2626556 };
                    _gotoNext = 2626632i32;
                } else if (__value__ == (2626632i32)) {
                    return { _0 : false, _1 : (null : stdgo.Error) };
                    _gotoNext = 2625348i32;
                } else if (__value__ == (2626654i32)) {
                    return { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
