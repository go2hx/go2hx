package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_2625790:stdgo.Error = (null : stdgo.Error);
        var _i_2625732:stdgo.GoInt = (0 : stdgo.GoInt);
        var patternBreak = false;
        var _err_2626259:stdgo.Error = (null : stdgo.Error);
        var _ok_2625786:Bool = false;
        var _t_2625783:stdgo.GoString = ("" : stdgo.GoString);
        var _err_2625347:stdgo.Error = (null : stdgo.Error);
        var _ok_2625343:Bool = false;
        var _t_2625340:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_2625096:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2625080:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2625041i32;
                } else if (__value__ == (2625041i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2625051i32;
                } else if (__value__ == (2625051i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2625072i32;
                    } else {
                        _gotoNext = 2626357i32;
                    };
                } else if (__value__ == (2625072i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2625080 = __tmp__._0;
                        _chunk_2625096 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2625080 && (_chunk_2625096 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2625178i32;
                    } else {
                        _gotoNext = 2625340i32;
                    };
                } else if (__value__ == (2625178i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2625340i32;
                } else if (__value__ == (2625340i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2625096?.__copy__(), _name?.__copy__());
                        _t_2625340 = __tmp__._0?.__copy__();
                        _ok_2625343 = __tmp__._1;
                        _err_2625347 = __tmp__._2;
                    };
                    if ((_ok_2625343 && (((_t_2625340.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2625578i32;
                    } else {
                        _gotoNext = 2625610i32;
                    };
                } else if (__value__ == (2625578i32)) {
                    _name = _t_2625340?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2625051i32;
                } else if (__value__ == (2625610i32)) {
                    if (_err_2625347 != null) {
                        _gotoNext = 2625624i32;
                    } else {
                        _gotoNext = 2625653i32;
                    };
                } else if (__value__ == (2625624i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2625347 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2625653i32;
                } else if (__value__ == (2625653i32)) {
                    if (_star_2625080) {
                        _gotoNext = 2625661i32;
                    } else {
                        _gotoNext = 2626182i32;
                    };
                } else if (__value__ == (2625661i32)) {
                    _i_2625732 = (0 : stdgo.GoInt);
                    _gotoNext = 2625728i32;
                } else if (__value__ == (2625728i32)) {
                    if (((_i_2625732 < (_name.length) : Bool) && (_name[(_i_2625732 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2625777i32;
                    } else {
                        _gotoNext = 2626182i32;
                    };
                } else if (__value__ == (2625773i32)) {
                    _i_2625732++;
                    _gotoNext = 2625728i32;
                } else if (__value__ == (2625777i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2625096?.__copy__(), (_name.__slice__((_i_2625732 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2625783 = __tmp__._0?.__copy__();
                        _ok_2625786 = __tmp__._1;
                        _err_2625790 = __tmp__._2;
                    };
                    if (_ok_2625786) {
                        _gotoNext = 2625837i32;
                    } else {
                        _gotoNext = 2626014i32;
                    };
                } else if (__value__ == (2625837i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2625783.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2625944i32;
                    } else {
                        _gotoNext = 2625973i32;
                    };
                } else if (__value__ == (2625944i32)) {
                    _i_2625732++;
                    _gotoNext = 2625728i32;
                } else if (__value__ == (2625973i32)) {
                    _name = _t_2625783?.__copy__();
                    _gotoNext = 2625051i32;
                } else if (__value__ == (2626014i32)) {
                    if (_err_2625790 != null) {
                        _gotoNext = 2626028i32;
                    } else {
                        _gotoNext = 2625773i32;
                    };
                } else if (__value__ == (2626028i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2625790 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2625773i32;
                } else if (__value__ == (2626182i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2626182i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2626203i32;
                    } else {
                        _gotoNext = 2626335i32;
                    };
                } else if (__value__ == (2626203i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2625096 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2625096?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2626259 = __tmp__._2;
                        };
                        if (_err_2626259 != null) {
                            _gotoNext = 2626300i32;
                        } else {
                            _gotoNext = 2626335i32;
                        };
                    };
                } else if (__value__ == (2626300i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2626259 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2626335i32;
                } else if (__value__ == (2626335i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2625051i32;
                } else if (__value__ == (2626357i32)) {
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
