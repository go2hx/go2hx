package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_2630763:stdgo.Error = (null : stdgo.Error);
        var _ok_2630290:Bool = false;
        var patternBreak = false;
        var _t_2630287:stdgo.GoString = ("" : stdgo.GoString);
        var _i_2630236:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_2629851:stdgo.Error = (null : stdgo.Error);
        var _ok_2629847:Bool = false;
        var _t_2629844:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_2629600:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2629584:Bool = false;
        var _err_2630294:stdgo.Error = (null : stdgo.Error);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2629545i32;
                } else if (__value__ == (2629545i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2629555i32;
                } else if (__value__ == (2629555i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2629576i32;
                    } else {
                        _gotoNext = 2630861i32;
                    };
                } else if (__value__ == (2629576i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2629584 = __tmp__._0;
                        _chunk_2629600 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2629584 && (_chunk_2629600 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2629682i32;
                    } else {
                        _gotoNext = 2629844i32;
                    };
                } else if (__value__ == (2629682i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2629844i32;
                } else if (__value__ == (2629844i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2629600?.__copy__(), _name?.__copy__());
                        _t_2629844 = __tmp__._0?.__copy__();
                        _ok_2629847 = __tmp__._1;
                        _err_2629851 = __tmp__._2;
                    };
                    if ((_ok_2629847 && (((_t_2629844.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2630082i32;
                    } else {
                        _gotoNext = 2630114i32;
                    };
                } else if (__value__ == (2630082i32)) {
                    _name = _t_2629844?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2629555i32;
                } else if (__value__ == (2630114i32)) {
                    if (_err_2629851 != null) {
                        _gotoNext = 2630128i32;
                    } else {
                        _gotoNext = 2630157i32;
                    };
                } else if (__value__ == (2630128i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2629851 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2630157i32;
                } else if (__value__ == (2630157i32)) {
                    if (_star_2629584) {
                        _gotoNext = 2630165i32;
                    } else {
                        _gotoNext = 2630686i32;
                    };
                } else if (__value__ == (2630165i32)) {
                    _i_2630236 = (0 : stdgo.GoInt);
                    _gotoNext = 2630232i32;
                } else if (__value__ == (2630232i32)) {
                    if (((_i_2630236 < (_name.length) : Bool) && (_name[(_i_2630236 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2630281i32;
                    } else {
                        _gotoNext = 2630686i32;
                    };
                } else if (__value__ == (2630277i32)) {
                    _i_2630236++;
                    _gotoNext = 2630232i32;
                } else if (__value__ == (2630281i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2629600?.__copy__(), (_name.__slice__((_i_2630236 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2630287 = __tmp__._0?.__copy__();
                        _ok_2630290 = __tmp__._1;
                        _err_2630294 = __tmp__._2;
                    };
                    if (_ok_2630290) {
                        _gotoNext = 2630341i32;
                    } else {
                        _gotoNext = 2630518i32;
                    };
                } else if (__value__ == (2630341i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2630287.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2630448i32;
                    } else {
                        _gotoNext = 2630477i32;
                    };
                } else if (__value__ == (2630448i32)) {
                    _i_2630236++;
                    _gotoNext = 2630232i32;
                } else if (__value__ == (2630477i32)) {
                    _name = _t_2630287?.__copy__();
                    _gotoNext = 2629555i32;
                } else if (__value__ == (2630518i32)) {
                    if (_err_2630294 != null) {
                        _gotoNext = 2630532i32;
                    } else {
                        _gotoNext = 2630277i32;
                    };
                } else if (__value__ == (2630532i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2630294 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2630277i32;
                } else if (__value__ == (2630686i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2630686i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2630707i32;
                    } else {
                        _gotoNext = 2630839i32;
                    };
                } else if (__value__ == (2630707i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2629600 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2629600?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2630763 = __tmp__._2;
                        };
                        if (_err_2630763 != null) {
                            _gotoNext = 2630804i32;
                        } else {
                            _gotoNext = 2630686i32;
                        };
                    };
                } else if (__value__ == (2630804i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2630763 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2630686i32;
                } else if (__value__ == (2630839i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2629555i32;
                } else if (__value__ == (2630861i32)) {
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
