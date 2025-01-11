package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_2891254:stdgo.Error = (null : stdgo.Error);
        var _ok_2891250:Bool = false;
        var _t_2891247:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_2891003:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2890987:Bool = false;
        var _err_2892166:stdgo.Error = (null : stdgo.Error);
        var _err_2891697:stdgo.Error = (null : stdgo.Error);
        var _i_2891639:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_2891693:Bool = false;
        var _t_2891690:stdgo.GoString = ("" : stdgo.GoString);
        var patternBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2890948i32;
                } else if (__value__ == (2890948i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2890958i32;
                } else if (__value__ == (2890958i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2890979i32;
                    } else {
                        _gotoNext = 2892264i32;
                    };
                } else if (__value__ == (2890979i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2890987 = __tmp__._0;
                        _chunk_2891003 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2890987 && (_chunk_2891003 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2891085i32;
                    } else {
                        _gotoNext = 2891247i32;
                    };
                } else if (__value__ == (2891085i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2891247i32;
                } else if (__value__ == (2891247i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2891003?.__copy__(), _name?.__copy__());
                        _t_2891247 = __tmp__._0?.__copy__();
                        _ok_2891250 = __tmp__._1;
                        _err_2891254 = __tmp__._2;
                    };
                    if ((_ok_2891250 && (((_t_2891247.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2891485i32;
                    } else {
                        _gotoNext = 2891517i32;
                    };
                } else if (__value__ == (2891485i32)) {
                    _name = _t_2891247?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2890958i32;
                } else if (__value__ == (2891517i32)) {
                    if (_err_2891254 != null) {
                        _gotoNext = 2891531i32;
                    } else {
                        _gotoNext = 2891560i32;
                    };
                } else if (__value__ == (2891531i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2891254 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2891560i32;
                } else if (__value__ == (2891560i32)) {
                    if (_star_2890987) {
                        _gotoNext = 2891568i32;
                    } else {
                        _gotoNext = 2892089i32;
                    };
                } else if (__value__ == (2891568i32)) {
                    _i_2891639 = (0 : stdgo.GoInt);
                    _gotoNext = 2891635i32;
                } else if (__value__ == (2891635i32)) {
                    if (((_i_2891639 < (_name.length) : Bool) && (_name[(_i_2891639 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2891684i32;
                    } else {
                        _gotoNext = 2892089i32;
                    };
                } else if (__value__ == (2891680i32)) {
                    _i_2891639++;
                    _gotoNext = 2891635i32;
                } else if (__value__ == (2891684i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2891003?.__copy__(), (_name.__slice__((_i_2891639 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2891690 = __tmp__._0?.__copy__();
                        _ok_2891693 = __tmp__._1;
                        _err_2891697 = __tmp__._2;
                    };
                    if (_ok_2891693) {
                        _gotoNext = 2891744i32;
                    } else {
                        _gotoNext = 2891921i32;
                    };
                } else if (__value__ == (2891744i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2891690.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2891851i32;
                    } else {
                        _gotoNext = 2891880i32;
                    };
                } else if (__value__ == (2891851i32)) {
                    _i_2891639++;
                    _gotoNext = 2891635i32;
                } else if (__value__ == (2891880i32)) {
                    _name = _t_2891690?.__copy__();
                    _gotoNext = 2890958i32;
                } else if (__value__ == (2891921i32)) {
                    if (_err_2891697 != null) {
                        _gotoNext = 2891935i32;
                    } else {
                        _gotoNext = 2891680i32;
                    };
                } else if (__value__ == (2891935i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2891697 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2891680i32;
                } else if (__value__ == (2892089i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2892089i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2892110i32;
                    } else {
                        _gotoNext = 2892242i32;
                    };
                } else if (__value__ == (2892110i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2891003 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2891003?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2892166 = __tmp__._2;
                        };
                        if (_err_2892166 != null) {
                            _gotoNext = 2892207i32;
                        } else {
                            _gotoNext = 2892089i32;
                        };
                    };
                } else if (__value__ == (2892207i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2892166 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2892089i32;
                } else if (__value__ == (2892242i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2890958i32;
                } else if (__value__ == (2892264i32)) {
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
