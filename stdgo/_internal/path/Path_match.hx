package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_3022617:stdgo.Error = (null : stdgo.Error);
        var _i_3022090:stdgo.GoInt = (0 : stdgo.GoInt);
        var _t_3021698:stdgo.GoString = ("" : stdgo.GoString);
        var _ok_3022144:Bool = false;
        var _t_3022141:stdgo.GoString = ("" : stdgo.GoString);
        var _err_3021705:stdgo.Error = (null : stdgo.Error);
        var _ok_3021701:Bool = false;
        var _chunk_3021454:stdgo.GoString = ("" : stdgo.GoString);
        var _star_3021438:Bool = false;
        var patternBreak = false;
        var _err_3022148:stdgo.Error = (null : stdgo.Error);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3021399i32;
                } else if (__value__ == (3021399i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 3021409i32;
                } else if (__value__ == (3021409i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 3021430i32;
                    } else {
                        _gotoNext = 3022715i32;
                    };
                } else if (__value__ == (3021430i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_3021438 = __tmp__._0;
                        _chunk_3021454 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_3021438 && (_chunk_3021454 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 3021536i32;
                    } else {
                        _gotoNext = 3021698i32;
                    };
                } else if (__value__ == (3021536i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3021698i32;
                } else if (__value__ == (3021698i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_3021454?.__copy__(), _name?.__copy__());
                        _t_3021698 = __tmp__._0?.__copy__();
                        _ok_3021701 = __tmp__._1;
                        _err_3021705 = __tmp__._2;
                    };
                    if ((_ok_3021701 && (((_t_3021698.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 3021936i32;
                    } else {
                        _gotoNext = 3021968i32;
                    };
                } else if (__value__ == (3021936i32)) {
                    _name = _t_3021698?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 3021409i32;
                } else if (__value__ == (3021968i32)) {
                    if (_err_3021705 != null) {
                        _gotoNext = 3021982i32;
                    } else {
                        _gotoNext = 3022011i32;
                    };
                } else if (__value__ == (3021982i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_3021705 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3022011i32;
                } else if (__value__ == (3022011i32)) {
                    if (_star_3021438) {
                        _gotoNext = 3022019i32;
                    } else {
                        _gotoNext = 3022540i32;
                    };
                } else if (__value__ == (3022019i32)) {
                    _i_3022090 = (0 : stdgo.GoInt);
                    _gotoNext = 3022086i32;
                } else if (__value__ == (3022086i32)) {
                    if (((_i_3022090 < (_name.length) : Bool) && (_name[(_i_3022090 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3022135i32;
                    } else {
                        _gotoNext = 3022540i32;
                    };
                } else if (__value__ == (3022131i32)) {
                    _i_3022090++;
                    _gotoNext = 3022086i32;
                } else if (__value__ == (3022135i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_3021454?.__copy__(), (_name.__slice__((_i_3022090 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_3022141 = __tmp__._0?.__copy__();
                        _ok_3022144 = __tmp__._1;
                        _err_3022148 = __tmp__._2;
                    };
                    if (_ok_3022144) {
                        _gotoNext = 3022195i32;
                    } else {
                        _gotoNext = 3022372i32;
                    };
                } else if (__value__ == (3022195i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_3022141.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3022302i32;
                    } else {
                        _gotoNext = 3022331i32;
                    };
                } else if (__value__ == (3022302i32)) {
                    _i_3022090++;
                    _gotoNext = 3022086i32;
                } else if (__value__ == (3022331i32)) {
                    _name = _t_3022141?.__copy__();
                    _gotoNext = 3021409i32;
                } else if (__value__ == (3022372i32)) {
                    if (_err_3022148 != null) {
                        _gotoNext = 3022386i32;
                    } else {
                        _gotoNext = 3022131i32;
                    };
                } else if (__value__ == (3022386i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_3022148 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3022131i32;
                } else if (__value__ == (3022540i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3022540i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3022561i32;
                    } else {
                        _gotoNext = 3022693i32;
                    };
                } else if (__value__ == (3022561i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_3021454 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_3021454?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_3022617 = __tmp__._2;
                        };
                        if (_err_3022617 != null) {
                            _gotoNext = 3022658i32;
                        } else {
                            _gotoNext = 3022540i32;
                        };
                    };
                } else if (__value__ == (3022658i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_3022617 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3022540i32;
                } else if (__value__ == (3022693i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3021409i32;
                } else if (__value__ == (3022715i32)) {
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
