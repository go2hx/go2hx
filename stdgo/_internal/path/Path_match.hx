package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _ok_2556149:Bool = false;
        var _t_2556146:stdgo.GoString = ("" : stdgo.GoString);
        var _i_2556095:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_2555710:stdgo.Error = (null : stdgo.Error);
        var _ok_2555706:Bool = false;
        var _t_2555703:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_2555459:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2555443:Bool = false;
        var patternBreak = false;
        var _err_2556622:stdgo.Error = (null : stdgo.Error);
        var _err_2556153:stdgo.Error = (null : stdgo.Error);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2555404i32;
                } else if (__value__ == (2555404i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2555414i32;
                } else if (__value__ == (2555414i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2555435i32;
                    } else {
                        _gotoNext = 2556720i32;
                    };
                } else if (__value__ == (2555435i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2555443 = __tmp__._0;
                        _chunk_2555459 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2555443 && (_chunk_2555459 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2555541i32;
                    } else {
                        _gotoNext = 2555703i32;
                    };
                } else if (__value__ == (2555541i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2555703i32;
                } else if (__value__ == (2555703i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2555459?.__copy__(), _name?.__copy__());
                        _t_2555703 = __tmp__._0?.__copy__();
                        _ok_2555706 = __tmp__._1;
                        _err_2555710 = __tmp__._2;
                    };
                    if ((_ok_2555706 && (((_t_2555703.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2555941i32;
                    } else {
                        _gotoNext = 2555973i32;
                    };
                } else if (__value__ == (2555941i32)) {
                    _name = _t_2555703?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2555414i32;
                } else if (__value__ == (2555973i32)) {
                    if (_err_2555710 != null) {
                        _gotoNext = 2555987i32;
                    } else {
                        _gotoNext = 2556016i32;
                    };
                } else if (__value__ == (2555987i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2555710 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2556016i32;
                } else if (__value__ == (2556016i32)) {
                    if (_star_2555443) {
                        _gotoNext = 2556024i32;
                    } else {
                        _gotoNext = 2556545i32;
                    };
                } else if (__value__ == (2556024i32)) {
                    _i_2556095 = (0 : stdgo.GoInt);
                    _gotoNext = 2556091i32;
                } else if (__value__ == (2556091i32)) {
                    if (((_i_2556095 < (_name.length) : Bool) && (_name[(_i_2556095 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2556140i32;
                    } else {
                        _gotoNext = 2556545i32;
                    };
                } else if (__value__ == (2556136i32)) {
                    _i_2556095++;
                    _gotoNext = 2556091i32;
                } else if (__value__ == (2556140i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2555459?.__copy__(), (_name.__slice__((_i_2556095 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2556146 = __tmp__._0?.__copy__();
                        _ok_2556149 = __tmp__._1;
                        _err_2556153 = __tmp__._2;
                    };
                    if (_ok_2556149) {
                        _gotoNext = 2556200i32;
                    } else {
                        _gotoNext = 2556377i32;
                    };
                } else if (__value__ == (2556200i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2556146.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2556307i32;
                    } else {
                        _gotoNext = 2556336i32;
                    };
                } else if (__value__ == (2556307i32)) {
                    _i_2556095++;
                    _gotoNext = 2556091i32;
                } else if (__value__ == (2556336i32)) {
                    _name = _t_2556146?.__copy__();
                    _gotoNext = 2555414i32;
                } else if (__value__ == (2556377i32)) {
                    if (_err_2556153 != null) {
                        _gotoNext = 2556391i32;
                    } else {
                        _gotoNext = 2556136i32;
                    };
                } else if (__value__ == (2556391i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2556153 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2556136i32;
                } else if (__value__ == (2556545i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2556545i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2556566i32;
                    } else {
                        _gotoNext = 2556698i32;
                    };
                } else if (__value__ == (2556566i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2555459 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2555459?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2556622 = __tmp__._2;
                        };
                        if (_err_2556622 != null) {
                            _gotoNext = 2556663i32;
                        } else {
                            _gotoNext = 2556545i32;
                        };
                    };
                } else if (__value__ == (2556663i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2556622 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2556545i32;
                } else if (__value__ == (2556698i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2555414i32;
                } else if (__value__ == (2556720i32)) {
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
