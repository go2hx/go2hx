package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _i_2616915:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_2616526:Bool = false;
        var _t_2616523:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_2616279:stdgo.GoString = ("" : stdgo.GoString);
        var patternBreak = false;
        var _t_2616966:stdgo.GoString = ("" : stdgo.GoString);
        var _err_2617442:stdgo.Error = (null : stdgo.Error);
        var _err_2616973:stdgo.Error = (null : stdgo.Error);
        var _ok_2616969:Bool = false;
        var _err_2616530:stdgo.Error = (null : stdgo.Error);
        var _star_2616263:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2616224i32;
                } else if (__value__ == (2616224i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2616234i32;
                } else if (__value__ == (2616234i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2616255i32;
                    } else {
                        _gotoNext = 2617540i32;
                    };
                } else if (__value__ == (2616255i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2616263 = __tmp__._0;
                        _chunk_2616279 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2616263 && (_chunk_2616279 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2616361i32;
                    } else {
                        _gotoNext = 2616523i32;
                    };
                } else if (__value__ == (2616361i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2616523i32;
                } else if (__value__ == (2616523i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2616279?.__copy__(), _name?.__copy__());
                        _t_2616523 = __tmp__._0?.__copy__();
                        _ok_2616526 = __tmp__._1;
                        _err_2616530 = __tmp__._2;
                    };
                    if ((_ok_2616526 && (((_t_2616523.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2616761i32;
                    } else {
                        _gotoNext = 2616793i32;
                    };
                } else if (__value__ == (2616761i32)) {
                    _name = _t_2616523?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2616234i32;
                } else if (__value__ == (2616793i32)) {
                    if (_err_2616530 != null) {
                        _gotoNext = 2616807i32;
                    } else {
                        _gotoNext = 2616836i32;
                    };
                } else if (__value__ == (2616807i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2616530 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2616836i32;
                } else if (__value__ == (2616836i32)) {
                    if (_star_2616263) {
                        _gotoNext = 2616844i32;
                    } else {
                        _gotoNext = 2617365i32;
                    };
                } else if (__value__ == (2616844i32)) {
                    _i_2616915 = (0 : stdgo.GoInt);
                    _gotoNext = 2616911i32;
                } else if (__value__ == (2616911i32)) {
                    if (((_i_2616915 < (_name.length) : Bool) && (_name[(_i_2616915 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2616960i32;
                    } else {
                        _gotoNext = 2617365i32;
                    };
                } else if (__value__ == (2616956i32)) {
                    _i_2616915++;
                    _gotoNext = 2616911i32;
                } else if (__value__ == (2616960i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2616279?.__copy__(), (_name.__slice__((_i_2616915 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2616966 = __tmp__._0?.__copy__();
                        _ok_2616969 = __tmp__._1;
                        _err_2616973 = __tmp__._2;
                    };
                    if (_ok_2616969) {
                        _gotoNext = 2617020i32;
                    } else {
                        _gotoNext = 2617197i32;
                    };
                } else if (__value__ == (2617020i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2616966.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2617127i32;
                    } else {
                        _gotoNext = 2617156i32;
                    };
                } else if (__value__ == (2617127i32)) {
                    _i_2616915++;
                    _gotoNext = 2616911i32;
                } else if (__value__ == (2617156i32)) {
                    _name = _t_2616966?.__copy__();
                    _gotoNext = 2616234i32;
                } else if (__value__ == (2617197i32)) {
                    if (_err_2616973 != null) {
                        _gotoNext = 2617211i32;
                    } else {
                        _gotoNext = 2616956i32;
                    };
                } else if (__value__ == (2617211i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2616973 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2616956i32;
                } else if (__value__ == (2617365i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2617365i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2617386i32;
                    } else {
                        _gotoNext = 2617518i32;
                    };
                } else if (__value__ == (2617386i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2616279 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2616279?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2617442 = __tmp__._2;
                        };
                        if (_err_2617442 != null) {
                            _gotoNext = 2617483i32;
                        } else {
                            _gotoNext = 2617518i32;
                        };
                    };
                } else if (__value__ == (2617483i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2617442 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2617518i32;
                } else if (__value__ == (2617518i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2616234i32;
                } else if (__value__ == (2617540i32)) {
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
