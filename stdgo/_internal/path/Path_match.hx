package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _ok_2554060:Bool = false;
        var _t_2554057:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_2553813:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2553797:Bool = false;
        var patternBreak = false;
        var _err_2554976:stdgo.Error = (null : stdgo.Error);
        var _ok_2554503:Bool = false;
        var _err_2554507:stdgo.Error = (null : stdgo.Error);
        var _t_2554500:stdgo.GoString = ("" : stdgo.GoString);
        var _i_2554449:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_2554064:stdgo.Error = (null : stdgo.Error);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2553758i32;
                } else if (__value__ == (2553758i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2553768i32;
                } else if (__value__ == (2553768i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2553789i32;
                    } else {
                        _gotoNext = 2555074i32;
                    };
                } else if (__value__ == (2553789i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2553797 = __tmp__._0;
                        _chunk_2553813 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2553797 && (_chunk_2553813 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2553895i32;
                    } else {
                        _gotoNext = 2554057i32;
                    };
                } else if (__value__ == (2553895i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2554057i32;
                } else if (__value__ == (2554057i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2553813?.__copy__(), _name?.__copy__());
                        _t_2554057 = __tmp__._0?.__copy__();
                        _ok_2554060 = __tmp__._1;
                        _err_2554064 = __tmp__._2;
                    };
                    if ((_ok_2554060 && (((_t_2554057.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2554295i32;
                    } else {
                        _gotoNext = 2554327i32;
                    };
                } else if (__value__ == (2554295i32)) {
                    _name = _t_2554057?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2553768i32;
                } else if (__value__ == (2554327i32)) {
                    if (_err_2554064 != null) {
                        _gotoNext = 2554341i32;
                    } else {
                        _gotoNext = 2554370i32;
                    };
                } else if (__value__ == (2554341i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2554064 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2554370i32;
                } else if (__value__ == (2554370i32)) {
                    if (_star_2553797) {
                        _gotoNext = 2554378i32;
                    } else {
                        _gotoNext = 2554899i32;
                    };
                } else if (__value__ == (2554378i32)) {
                    _i_2554449 = (0 : stdgo.GoInt);
                    _gotoNext = 2554445i32;
                } else if (__value__ == (2554445i32)) {
                    if (((_i_2554449 < (_name.length) : Bool) && (_name[(_i_2554449 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2554494i32;
                    } else {
                        _gotoNext = 2554899i32;
                    };
                } else if (__value__ == (2554490i32)) {
                    _i_2554449++;
                    _gotoNext = 2554445i32;
                } else if (__value__ == (2554494i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2553813?.__copy__(), (_name.__slice__((_i_2554449 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2554500 = __tmp__._0?.__copy__();
                        _ok_2554503 = __tmp__._1;
                        _err_2554507 = __tmp__._2;
                    };
                    if (_ok_2554503) {
                        _gotoNext = 2554554i32;
                    } else {
                        _gotoNext = 2554731i32;
                    };
                } else if (__value__ == (2554554i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2554500.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2554661i32;
                    } else {
                        _gotoNext = 2554690i32;
                    };
                } else if (__value__ == (2554661i32)) {
                    _i_2554449++;
                    _gotoNext = 2554445i32;
                } else if (__value__ == (2554690i32)) {
                    _name = _t_2554500?.__copy__();
                    _gotoNext = 2553768i32;
                } else if (__value__ == (2554731i32)) {
                    if (_err_2554507 != null) {
                        _gotoNext = 2554745i32;
                    } else {
                        _gotoNext = 2554490i32;
                    };
                } else if (__value__ == (2554745i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2554507 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2554490i32;
                } else if (__value__ == (2554899i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2554899i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2554920i32;
                    } else {
                        _gotoNext = 2555052i32;
                    };
                } else if (__value__ == (2554920i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2553813 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2553813?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2554976 = __tmp__._2;
                        };
                        if (_err_2554976 != null) {
                            _gotoNext = 2555017i32;
                        } else {
                            _gotoNext = 2555052i32;
                        };
                    };
                } else if (__value__ == (2555017i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2554976 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2555052i32;
                } else if (__value__ == (2555052i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2553768i32;
                } else if (__value__ == (2555074i32)) {
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
