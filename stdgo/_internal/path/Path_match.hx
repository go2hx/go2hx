package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _t_2691022:stdgo.GoString = ("" : stdgo.GoString);
        var _err_2690586:stdgo.Error = (null : stdgo.Error);
        var _ok_2690582:Bool = false;
        var _chunk_2690335:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2690319:Bool = false;
        var _err_2691498:stdgo.Error = (null : stdgo.Error);
        var _err_2691029:stdgo.Error = (null : stdgo.Error);
        var _ok_2691025:Bool = false;
        var _i_2690971:stdgo.GoInt = (0 : stdgo.GoInt);
        var _t_2690579:stdgo.GoString = ("" : stdgo.GoString);
        var patternBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2690280i32;
                } else if (__value__ == (2690280i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2690290i32;
                } else if (__value__ == (2690290i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2690311i32;
                    } else {
                        _gotoNext = 2691596i32;
                    };
                } else if (__value__ == (2690311i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2690319 = __tmp__._0;
                        _chunk_2690335 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2690319 && (_chunk_2690335 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2690417i32;
                    } else {
                        _gotoNext = 2690579i32;
                    };
                } else if (__value__ == (2690417i32)) {
                    return { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                    _gotoNext = 2690579i32;
                } else if (__value__ == (2690579i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2690335?.__copy__(), _name?.__copy__());
                        _t_2690579 = __tmp__._0?.__copy__();
                        _ok_2690582 = __tmp__._1;
                        _err_2690586 = __tmp__._2;
                    };
                    if ((_ok_2690582 && (((_t_2690579.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2690817i32;
                    } else {
                        _gotoNext = 2690849i32;
                    };
                } else if (__value__ == (2690817i32)) {
                    _name = _t_2690579?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2690290i32;
                } else if (__value__ == (2690849i32)) {
                    if (_err_2690586 != null) {
                        _gotoNext = 2690863i32;
                    } else {
                        _gotoNext = 2690892i32;
                    };
                } else if (__value__ == (2690863i32)) {
                    return { _0 : false, _1 : _err_2690586 };
                    _gotoNext = 2690892i32;
                } else if (__value__ == (2690892i32)) {
                    if (_star_2690319) {
                        _gotoNext = 2690900i32;
                    } else {
                        _gotoNext = 2691421i32;
                    };
                } else if (__value__ == (2690900i32)) {
                    _i_2690971 = (0 : stdgo.GoInt);
                    _gotoNext = 2690967i32;
                } else if (__value__ == (2690967i32)) {
                    if (((_i_2690971 < (_name.length) : Bool) && (_name[(_i_2690971 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2691016i32;
                    } else {
                        _gotoNext = 2691421i32;
                    };
                } else if (__value__ == (2691012i32)) {
                    _i_2690971++;
                    _gotoNext = 2690967i32;
                } else if (__value__ == (2691016i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2690335?.__copy__(), (_name.__slice__((_i_2690971 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2691022 = __tmp__._0?.__copy__();
                        _ok_2691025 = __tmp__._1;
                        _err_2691029 = __tmp__._2;
                    };
                    if (_ok_2691025) {
                        _gotoNext = 2691076i32;
                    } else {
                        _gotoNext = 2691253i32;
                    };
                } else if (__value__ == (2691076i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2691022.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2691183i32;
                    } else {
                        _gotoNext = 2691212i32;
                    };
                } else if (__value__ == (2691183i32)) {
                    _i_2690971++;
                    _gotoNext = 2690967i32;
                } else if (__value__ == (2691212i32)) {
                    _name = _t_2691022?.__copy__();
                    _gotoNext = 2690290i32;
                } else if (__value__ == (2691253i32)) {
                    if (_err_2691029 != null) {
                        _gotoNext = 2691267i32;
                    } else {
                        _gotoNext = 2691012i32;
                    };
                } else if (__value__ == (2691267i32)) {
                    return { _0 : false, _1 : _err_2691029 };
                    _gotoNext = 2691012i32;
                } else if (__value__ == (2691421i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2691421i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2691442i32;
                    } else {
                        _gotoNext = 2691574i32;
                    };
                } else if (__value__ == (2691442i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2690335 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2690335?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2691498 = __tmp__._2;
                        };
                        if (_err_2691498 != null) {
                            _gotoNext = 2691539i32;
                        } else {
                            _gotoNext = 2691574i32;
                        };
                    };
                } else if (__value__ == (2691539i32)) {
                    return { _0 : false, _1 : _err_2691498 };
                    _gotoNext = 2691574i32;
                } else if (__value__ == (2691574i32)) {
                    return { _0 : false, _1 : (null : stdgo.Error) };
                    _gotoNext = 2690290i32;
                } else if (__value__ == (2691596i32)) {
                    return { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
