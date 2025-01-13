package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_2779231:stdgo.Error = (null : stdgo.Error);
        var _t_2779224:stdgo.GoString = ("" : stdgo.GoString);
        var _i_2779173:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_2778784:Bool = false;
        var _t_2778781:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_2778537:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2778521:Bool = false;
        var _err_2779700:stdgo.Error = (null : stdgo.Error);
        var _ok_2779227:Bool = false;
        var _err_2778788:stdgo.Error = (null : stdgo.Error);
        var patternBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2778482i32;
                } else if (__value__ == (2778482i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2778492i32;
                } else if (__value__ == (2778492i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2778513i32;
                    } else {
                        _gotoNext = 2779798i32;
                    };
                } else if (__value__ == (2778513i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2778521 = __tmp__._0;
                        _chunk_2778537 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2778521 && (_chunk_2778537 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2778619i32;
                    } else {
                        _gotoNext = 2778781i32;
                    };
                } else if (__value__ == (2778619i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2778781i32;
                } else if (__value__ == (2778781i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2778537?.__copy__(), _name?.__copy__());
                        _t_2778781 = __tmp__._0?.__copy__();
                        _ok_2778784 = __tmp__._1;
                        _err_2778788 = __tmp__._2;
                    };
                    if ((_ok_2778784 && (((_t_2778781.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2779019i32;
                    } else {
                        _gotoNext = 2779051i32;
                    };
                } else if (__value__ == (2779019i32)) {
                    _name = _t_2778781?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2778492i32;
                } else if (__value__ == (2779051i32)) {
                    if (_err_2778788 != null) {
                        _gotoNext = 2779065i32;
                    } else {
                        _gotoNext = 2779094i32;
                    };
                } else if (__value__ == (2779065i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2778788 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2779094i32;
                } else if (__value__ == (2779094i32)) {
                    if (_star_2778521) {
                        _gotoNext = 2779102i32;
                    } else {
                        _gotoNext = 2779623i32;
                    };
                } else if (__value__ == (2779102i32)) {
                    _i_2779173 = (0 : stdgo.GoInt);
                    _gotoNext = 2779169i32;
                } else if (__value__ == (2779169i32)) {
                    if (((_i_2779173 < (_name.length) : Bool) && (_name[(_i_2779173 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2779218i32;
                    } else {
                        _gotoNext = 2779623i32;
                    };
                } else if (__value__ == (2779214i32)) {
                    _i_2779173++;
                    _gotoNext = 2779169i32;
                } else if (__value__ == (2779218i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2778537?.__copy__(), (_name.__slice__((_i_2779173 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2779224 = __tmp__._0?.__copy__();
                        _ok_2779227 = __tmp__._1;
                        _err_2779231 = __tmp__._2;
                    };
                    if (_ok_2779227) {
                        _gotoNext = 2779278i32;
                    } else {
                        _gotoNext = 2779455i32;
                    };
                } else if (__value__ == (2779278i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2779224.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2779385i32;
                    } else {
                        _gotoNext = 2779414i32;
                    };
                } else if (__value__ == (2779385i32)) {
                    _i_2779173++;
                    _gotoNext = 2779169i32;
                } else if (__value__ == (2779414i32)) {
                    _name = _t_2779224?.__copy__();
                    _gotoNext = 2778492i32;
                } else if (__value__ == (2779455i32)) {
                    if (_err_2779231 != null) {
                        _gotoNext = 2779469i32;
                    } else {
                        _gotoNext = 2779214i32;
                    };
                } else if (__value__ == (2779469i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2779231 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2779214i32;
                } else if (__value__ == (2779623i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2779623i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2779644i32;
                    } else {
                        _gotoNext = 2779776i32;
                    };
                } else if (__value__ == (2779644i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2778537 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2778537?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2779700 = __tmp__._2;
                        };
                        if (_err_2779700 != null) {
                            _gotoNext = 2779741i32;
                        } else {
                            _gotoNext = 2779623i32;
                        };
                    };
                } else if (__value__ == (2779741i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2779700 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2779623i32;
                } else if (__value__ == (2779776i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2778492i32;
                } else if (__value__ == (2779798i32)) {
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
