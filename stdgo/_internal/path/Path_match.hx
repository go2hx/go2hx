package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var patternBreak = false;
        var _err_2838272:stdgo.Error = (null : stdgo.Error);
        var _star_2837562:Bool = false;
        var _chunk_2837578:stdgo.GoString = ("" : stdgo.GoString);
        var _err_2838741:stdgo.Error = (null : stdgo.Error);
        var _ok_2838268:Bool = false;
        var _t_2838265:stdgo.GoString = ("" : stdgo.GoString);
        var _i_2838214:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_2837829:stdgo.Error = (null : stdgo.Error);
        var _ok_2837825:Bool = false;
        var _t_2837822:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2837523i32;
                } else if (__value__ == (2837523i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2837533i32;
                } else if (__value__ == (2837533i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2837554i32;
                    } else {
                        _gotoNext = 2838839i32;
                    };
                } else if (__value__ == (2837554i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2837562 = __tmp__._0;
                        _chunk_2837578 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2837562 && (_chunk_2837578 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2837660i32;
                    } else {
                        _gotoNext = 2837822i32;
                    };
                } else if (__value__ == (2837660i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2837822i32;
                } else if (__value__ == (2837822i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2837578?.__copy__(), _name?.__copy__());
                        _t_2837822 = __tmp__._0?.__copy__();
                        _ok_2837825 = __tmp__._1;
                        _err_2837829 = __tmp__._2;
                    };
                    if ((_ok_2837825 && (((_t_2837822.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2838060i32;
                    } else {
                        _gotoNext = 2838092i32;
                    };
                } else if (__value__ == (2838060i32)) {
                    _name = _t_2837822?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2837533i32;
                } else if (__value__ == (2838092i32)) {
                    if (_err_2837829 != null) {
                        _gotoNext = 2838106i32;
                    } else {
                        _gotoNext = 2838135i32;
                    };
                } else if (__value__ == (2838106i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2837829 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2838135i32;
                } else if (__value__ == (2838135i32)) {
                    if (_star_2837562) {
                        _gotoNext = 2838143i32;
                    } else {
                        _gotoNext = 2838664i32;
                    };
                } else if (__value__ == (2838143i32)) {
                    _i_2838214 = (0 : stdgo.GoInt);
                    _gotoNext = 2838210i32;
                } else if (__value__ == (2838210i32)) {
                    if (((_i_2838214 < (_name.length) : Bool) && (_name[(_i_2838214 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2838259i32;
                    } else {
                        _gotoNext = 2838664i32;
                    };
                } else if (__value__ == (2838255i32)) {
                    _i_2838214++;
                    _gotoNext = 2838210i32;
                } else if (__value__ == (2838259i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2837578?.__copy__(), (_name.__slice__((_i_2838214 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2838265 = __tmp__._0?.__copy__();
                        _ok_2838268 = __tmp__._1;
                        _err_2838272 = __tmp__._2;
                    };
                    if (_ok_2838268) {
                        _gotoNext = 2838319i32;
                    } else {
                        _gotoNext = 2838496i32;
                    };
                } else if (__value__ == (2838319i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2838265.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2838426i32;
                    } else {
                        _gotoNext = 2838455i32;
                    };
                } else if (__value__ == (2838426i32)) {
                    _i_2838214++;
                    _gotoNext = 2838210i32;
                } else if (__value__ == (2838455i32)) {
                    _name = _t_2838265?.__copy__();
                    _gotoNext = 2837533i32;
                } else if (__value__ == (2838496i32)) {
                    if (_err_2838272 != null) {
                        _gotoNext = 2838510i32;
                    } else {
                        _gotoNext = 2838255i32;
                    };
                } else if (__value__ == (2838510i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2838272 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2838255i32;
                } else if (__value__ == (2838664i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2838664i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2838685i32;
                    } else {
                        _gotoNext = 2838817i32;
                    };
                } else if (__value__ == (2838685i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2837578 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2837578?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2838741 = __tmp__._2;
                        };
                        if (_err_2838741 != null) {
                            _gotoNext = 2838782i32;
                        } else {
                            _gotoNext = 2838817i32;
                        };
                    };
                } else if (__value__ == (2838782i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2838741 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2838817i32;
                } else if (__value__ == (2838817i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2837533i32;
                } else if (__value__ == (2838839i32)) {
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
