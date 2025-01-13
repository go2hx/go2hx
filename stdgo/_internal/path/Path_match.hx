package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_2668797:stdgo.Error = (null : stdgo.Error);
        var _ok_2668324:Bool = false;
        var _t_2668321:stdgo.GoString = ("" : stdgo.GoString);
        var _err_2667885:stdgo.Error = (null : stdgo.Error);
        var _t_2667878:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_2667634:stdgo.GoString = ("" : stdgo.GoString);
        var _err_2668328:stdgo.Error = (null : stdgo.Error);
        var _i_2668270:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_2667881:Bool = false;
        var _star_2667618:Bool = false;
        var patternBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2667579i32;
                } else if (__value__ == (2667579i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2667589i32;
                } else if (__value__ == (2667589i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2667610i32;
                    } else {
                        _gotoNext = 2668895i32;
                    };
                } else if (__value__ == (2667610i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2667618 = __tmp__._0;
                        _chunk_2667634 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2667618 && (_chunk_2667634 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2667716i32;
                    } else {
                        _gotoNext = 2667878i32;
                    };
                } else if (__value__ == (2667716i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2667878i32;
                } else if (__value__ == (2667878i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2667634?.__copy__(), _name?.__copy__());
                        _t_2667878 = __tmp__._0?.__copy__();
                        _ok_2667881 = __tmp__._1;
                        _err_2667885 = __tmp__._2;
                    };
                    if ((_ok_2667881 && (((_t_2667878.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2668116i32;
                    } else {
                        _gotoNext = 2668148i32;
                    };
                } else if (__value__ == (2668116i32)) {
                    _name = _t_2667878?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2667589i32;
                } else if (__value__ == (2668148i32)) {
                    if (_err_2667885 != null) {
                        _gotoNext = 2668162i32;
                    } else {
                        _gotoNext = 2668191i32;
                    };
                } else if (__value__ == (2668162i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2667885 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2668191i32;
                } else if (__value__ == (2668191i32)) {
                    if (_star_2667618) {
                        _gotoNext = 2668199i32;
                    } else {
                        _gotoNext = 2668720i32;
                    };
                } else if (__value__ == (2668199i32)) {
                    _i_2668270 = (0 : stdgo.GoInt);
                    _gotoNext = 2668266i32;
                } else if (__value__ == (2668266i32)) {
                    if (((_i_2668270 < (_name.length) : Bool) && (_name[(_i_2668270 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2668315i32;
                    } else {
                        _gotoNext = 2668720i32;
                    };
                } else if (__value__ == (2668311i32)) {
                    _i_2668270++;
                    _gotoNext = 2668266i32;
                } else if (__value__ == (2668315i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2667634?.__copy__(), (_name.__slice__((_i_2668270 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2668321 = __tmp__._0?.__copy__();
                        _ok_2668324 = __tmp__._1;
                        _err_2668328 = __tmp__._2;
                    };
                    if (_ok_2668324) {
                        _gotoNext = 2668375i32;
                    } else {
                        _gotoNext = 2668552i32;
                    };
                } else if (__value__ == (2668375i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2668321.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2668482i32;
                    } else {
                        _gotoNext = 2668511i32;
                    };
                } else if (__value__ == (2668482i32)) {
                    _i_2668270++;
                    _gotoNext = 2668266i32;
                } else if (__value__ == (2668511i32)) {
                    _name = _t_2668321?.__copy__();
                    _gotoNext = 2667589i32;
                } else if (__value__ == (2668552i32)) {
                    if (_err_2668328 != null) {
                        _gotoNext = 2668566i32;
                    } else {
                        _gotoNext = 2668311i32;
                    };
                } else if (__value__ == (2668566i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2668328 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2668311i32;
                } else if (__value__ == (2668720i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2668720i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2668741i32;
                    } else {
                        _gotoNext = 2668873i32;
                    };
                } else if (__value__ == (2668741i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2667634 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2667634?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2668797 = __tmp__._2;
                        };
                        if (_err_2668797 != null) {
                            _gotoNext = 2668838i32;
                        } else {
                            _gotoNext = 2668720i32;
                        };
                    };
                } else if (__value__ == (2668838i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2668797 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2668720i32;
                } else if (__value__ == (2668873i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2667589i32;
                } else if (__value__ == (2668895i32)) {
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
