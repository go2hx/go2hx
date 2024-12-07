package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_2727188:stdgo.Error = (null : stdgo.Error);
        var _t_2727181:stdgo.GoString = ("" : stdgo.GoString);
        var _t_2726738:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_2726494:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2726478:Bool = false;
        var _ok_2727184:Bool = false;
        var _i_2727130:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_2726745:stdgo.Error = (null : stdgo.Error);
        var _ok_2726741:Bool = false;
        var patternBreak = false;
        var _err_2727657:stdgo.Error = (null : stdgo.Error);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2726439i32;
                } else if (__value__ == (2726439i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2726449i32;
                } else if (__value__ == (2726449i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2726470i32;
                    } else {
                        _gotoNext = 2727755i32;
                    };
                } else if (__value__ == (2726470i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2726478 = __tmp__._0;
                        _chunk_2726494 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2726478 && (_chunk_2726494 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2726576i32;
                    } else {
                        _gotoNext = 2726738i32;
                    };
                } else if (__value__ == (2726576i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2726738i32;
                } else if (__value__ == (2726738i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2726494?.__copy__(), _name?.__copy__());
                        _t_2726738 = __tmp__._0?.__copy__();
                        _ok_2726741 = __tmp__._1;
                        _err_2726745 = __tmp__._2;
                    };
                    if ((_ok_2726741 && (((_t_2726738.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2726976i32;
                    } else {
                        _gotoNext = 2727008i32;
                    };
                } else if (__value__ == (2726976i32)) {
                    _name = _t_2726738?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2726449i32;
                } else if (__value__ == (2727008i32)) {
                    if (_err_2726745 != null) {
                        _gotoNext = 2727022i32;
                    } else {
                        _gotoNext = 2727051i32;
                    };
                } else if (__value__ == (2727022i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2726745 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2727051i32;
                } else if (__value__ == (2727051i32)) {
                    if (_star_2726478) {
                        _gotoNext = 2727059i32;
                    } else {
                        _gotoNext = 2727580i32;
                    };
                } else if (__value__ == (2727059i32)) {
                    _i_2727130 = (0 : stdgo.GoInt);
                    _gotoNext = 2727126i32;
                } else if (__value__ == (2727126i32)) {
                    if (((_i_2727130 < (_name.length) : Bool) && (_name[(_i_2727130 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2727175i32;
                    } else {
                        _gotoNext = 2727580i32;
                    };
                } else if (__value__ == (2727171i32)) {
                    _i_2727130++;
                    _gotoNext = 2727126i32;
                } else if (__value__ == (2727175i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2726494?.__copy__(), (_name.__slice__((_i_2727130 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2727181 = __tmp__._0?.__copy__();
                        _ok_2727184 = __tmp__._1;
                        _err_2727188 = __tmp__._2;
                    };
                    if (_ok_2727184) {
                        _gotoNext = 2727235i32;
                    } else {
                        _gotoNext = 2727412i32;
                    };
                } else if (__value__ == (2727235i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2727181.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2727342i32;
                    } else {
                        _gotoNext = 2727371i32;
                    };
                } else if (__value__ == (2727342i32)) {
                    _i_2727130++;
                    _gotoNext = 2727126i32;
                } else if (__value__ == (2727371i32)) {
                    _name = _t_2727181?.__copy__();
                    _gotoNext = 2726449i32;
                } else if (__value__ == (2727412i32)) {
                    if (_err_2727188 != null) {
                        _gotoNext = 2727426i32;
                    } else {
                        _gotoNext = 2727171i32;
                    };
                } else if (__value__ == (2727426i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2727188 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2727171i32;
                } else if (__value__ == (2727580i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2727580i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2727601i32;
                    } else {
                        _gotoNext = 2727733i32;
                    };
                } else if (__value__ == (2727601i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2726494 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2726494?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2727657 = __tmp__._2;
                        };
                        if (_err_2727657 != null) {
                            _gotoNext = 2727698i32;
                        } else {
                            _gotoNext = 2727733i32;
                        };
                    };
                } else if (__value__ == (2727698i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2727657 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2727733i32;
                } else if (__value__ == (2727733i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2726449i32;
                } else if (__value__ == (2727755i32)) {
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
