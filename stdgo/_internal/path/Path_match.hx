package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _i_3036147:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_3035762:stdgo.Error = (null : stdgo.Error);
        var _err_3036674:stdgo.Error = (null : stdgo.Error);
        var _t_3036198:stdgo.GoString = ("" : stdgo.GoString);
        var _ok_3035758:Bool = false;
        var _t_3035755:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_3035511:stdgo.GoString = ("" : stdgo.GoString);
        var _star_3035495:Bool = false;
        var patternBreak = false;
        var _err_3036205:stdgo.Error = (null : stdgo.Error);
        var _ok_3036201:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3035456i32;
                } else if (__value__ == (3035456i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 3035466i32;
                } else if (__value__ == (3035466i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 3035487i32;
                    } else {
                        _gotoNext = 3036772i32;
                    };
                } else if (__value__ == (3035487i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_3035495 = __tmp__._0;
                        _chunk_3035511 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_3035495 && (_chunk_3035511 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 3035593i32;
                    } else {
                        _gotoNext = 3035755i32;
                    };
                } else if (__value__ == (3035593i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3035755i32;
                } else if (__value__ == (3035755i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_3035511?.__copy__(), _name?.__copy__());
                        _t_3035755 = __tmp__._0?.__copy__();
                        _ok_3035758 = __tmp__._1;
                        _err_3035762 = __tmp__._2;
                    };
                    if ((_ok_3035758 && (((_t_3035755.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 3035993i32;
                    } else {
                        _gotoNext = 3036025i32;
                    };
                } else if (__value__ == (3035993i32)) {
                    _name = _t_3035755?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 3035466i32;
                } else if (__value__ == (3036025i32)) {
                    if (_err_3035762 != null) {
                        _gotoNext = 3036039i32;
                    } else {
                        _gotoNext = 3036068i32;
                    };
                } else if (__value__ == (3036039i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_3035762 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3036068i32;
                } else if (__value__ == (3036068i32)) {
                    if (_star_3035495) {
                        _gotoNext = 3036076i32;
                    } else {
                        _gotoNext = 3036597i32;
                    };
                } else if (__value__ == (3036076i32)) {
                    _i_3036147 = (0 : stdgo.GoInt);
                    _gotoNext = 3036143i32;
                } else if (__value__ == (3036143i32)) {
                    if (((_i_3036147 < (_name.length) : Bool) && (_name[(_i_3036147 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3036192i32;
                    } else {
                        _gotoNext = 3036597i32;
                    };
                } else if (__value__ == (3036188i32)) {
                    _i_3036147++;
                    _gotoNext = 3036143i32;
                } else if (__value__ == (3036192i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_3035511?.__copy__(), (_name.__slice__((_i_3036147 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_3036198 = __tmp__._0?.__copy__();
                        _ok_3036201 = __tmp__._1;
                        _err_3036205 = __tmp__._2;
                    };
                    if (_ok_3036201) {
                        _gotoNext = 3036252i32;
                    } else {
                        _gotoNext = 3036429i32;
                    };
                } else if (__value__ == (3036252i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_3036198.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3036359i32;
                    } else {
                        _gotoNext = 3036388i32;
                    };
                } else if (__value__ == (3036359i32)) {
                    _i_3036147++;
                    _gotoNext = 3036143i32;
                } else if (__value__ == (3036388i32)) {
                    _name = _t_3036198?.__copy__();
                    _gotoNext = 3035466i32;
                } else if (__value__ == (3036429i32)) {
                    if (_err_3036205 != null) {
                        _gotoNext = 3036443i32;
                    } else {
                        _gotoNext = 3036188i32;
                    };
                } else if (__value__ == (3036443i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_3036205 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3036188i32;
                } else if (__value__ == (3036597i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3036597i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3036618i32;
                    } else {
                        _gotoNext = 3036750i32;
                    };
                } else if (__value__ == (3036618i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_3035511 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_3035511?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_3036674 = __tmp__._2;
                        };
                        if (_err_3036674 != null) {
                            _gotoNext = 3036715i32;
                        } else {
                            _gotoNext = 3036597i32;
                        };
                    };
                } else if (__value__ == (3036715i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_3036674 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3036597i32;
                } else if (__value__ == (3036750i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3035466i32;
                } else if (__value__ == (3036772i32)) {
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
