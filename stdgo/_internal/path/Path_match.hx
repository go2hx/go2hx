package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _i_2913824:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_2913439:stdgo.Error = (null : stdgo.Error);
        var _ok_2913435:Bool = false;
        var _chunk_2913188:stdgo.GoString = ("" : stdgo.GoString);
        var _err_2914351:stdgo.Error = (null : stdgo.Error);
        var _ok_2913878:Bool = false;
        var _t_2913875:stdgo.GoString = ("" : stdgo.GoString);
        var _t_2913432:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2913172:Bool = false;
        var patternBreak = false;
        var _err_2913882:stdgo.Error = (null : stdgo.Error);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2913133i32;
                } else if (__value__ == (2913133i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2913143i32;
                } else if (__value__ == (2913143i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2913164i32;
                    } else {
                        _gotoNext = 2914449i32;
                    };
                } else if (__value__ == (2913164i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2913172 = __tmp__._0;
                        _chunk_2913188 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2913172 && (_chunk_2913188 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2913270i32;
                    } else {
                        _gotoNext = 2913432i32;
                    };
                } else if (__value__ == (2913270i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2913432i32;
                } else if (__value__ == (2913432i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2913188?.__copy__(), _name?.__copy__());
                        _t_2913432 = __tmp__._0?.__copy__();
                        _ok_2913435 = __tmp__._1;
                        _err_2913439 = __tmp__._2;
                    };
                    if ((_ok_2913435 && (((_t_2913432.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2913670i32;
                    } else {
                        _gotoNext = 2913702i32;
                    };
                } else if (__value__ == (2913670i32)) {
                    _name = _t_2913432?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2913143i32;
                } else if (__value__ == (2913702i32)) {
                    if (_err_2913439 != null) {
                        _gotoNext = 2913716i32;
                    } else {
                        _gotoNext = 2913745i32;
                    };
                } else if (__value__ == (2913716i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2913439 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2913745i32;
                } else if (__value__ == (2913745i32)) {
                    if (_star_2913172) {
                        _gotoNext = 2913753i32;
                    } else {
                        _gotoNext = 2914274i32;
                    };
                } else if (__value__ == (2913753i32)) {
                    _i_2913824 = (0 : stdgo.GoInt);
                    _gotoNext = 2913820i32;
                } else if (__value__ == (2913820i32)) {
                    if (((_i_2913824 < (_name.length) : Bool) && (_name[(_i_2913824 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2913869i32;
                    } else {
                        _gotoNext = 2914274i32;
                    };
                } else if (__value__ == (2913865i32)) {
                    _i_2913824++;
                    _gotoNext = 2913820i32;
                } else if (__value__ == (2913869i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2913188?.__copy__(), (_name.__slice__((_i_2913824 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2913875 = __tmp__._0?.__copy__();
                        _ok_2913878 = __tmp__._1;
                        _err_2913882 = __tmp__._2;
                    };
                    if (_ok_2913878) {
                        _gotoNext = 2913929i32;
                    } else {
                        _gotoNext = 2914106i32;
                    };
                } else if (__value__ == (2913929i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2913875.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2914036i32;
                    } else {
                        _gotoNext = 2914065i32;
                    };
                } else if (__value__ == (2914036i32)) {
                    _i_2913824++;
                    _gotoNext = 2913820i32;
                } else if (__value__ == (2914065i32)) {
                    _name = _t_2913875?.__copy__();
                    _gotoNext = 2913143i32;
                } else if (__value__ == (2914106i32)) {
                    if (_err_2913882 != null) {
                        _gotoNext = 2914120i32;
                    } else {
                        _gotoNext = 2913865i32;
                    };
                } else if (__value__ == (2914120i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2913882 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2913865i32;
                } else if (__value__ == (2914274i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2914274i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2914295i32;
                    } else {
                        _gotoNext = 2914427i32;
                    };
                } else if (__value__ == (2914295i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2913188 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2913188?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2914351 = __tmp__._2;
                        };
                        if (_err_2914351 != null) {
                            _gotoNext = 2914392i32;
                        } else {
                            _gotoNext = 2914427i32;
                        };
                    };
                } else if (__value__ == (2914392i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2914351 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2914427i32;
                } else if (__value__ == (2914427i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2913143i32;
                } else if (__value__ == (2914449i32)) {
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
