package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _chunk_2958972:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2958956:Bool = false;
        var patternBreak = false;
        var _err_2960135:stdgo.Error = (null : stdgo.Error);
        var _ok_2959662:Bool = false;
        var _t_2959659:stdgo.GoString = ("" : stdgo.GoString);
        var _t_2959216:stdgo.GoString = ("" : stdgo.GoString);
        var _i_2959608:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_2959223:stdgo.Error = (null : stdgo.Error);
        var _ok_2959219:Bool = false;
        var _err_2959666:stdgo.Error = (null : stdgo.Error);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2958917i32;
                } else if (__value__ == (2958917i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2958927i32;
                } else if (__value__ == (2958927i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2958948i32;
                    } else {
                        _gotoNext = 2960233i32;
                    };
                } else if (__value__ == (2958948i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2958956 = __tmp__._0;
                        _chunk_2958972 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2958956 && (_chunk_2958972 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2959054i32;
                    } else {
                        _gotoNext = 2959216i32;
                    };
                } else if (__value__ == (2959054i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2959216i32;
                } else if (__value__ == (2959216i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2958972?.__copy__(), _name?.__copy__());
                        _t_2959216 = __tmp__._0?.__copy__();
                        _ok_2959219 = __tmp__._1;
                        _err_2959223 = __tmp__._2;
                    };
                    if ((_ok_2959219 && (((_t_2959216.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2959454i32;
                    } else {
                        _gotoNext = 2959486i32;
                    };
                } else if (__value__ == (2959454i32)) {
                    _name = _t_2959216?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2958927i32;
                } else if (__value__ == (2959486i32)) {
                    if (_err_2959223 != null) {
                        _gotoNext = 2959500i32;
                    } else {
                        _gotoNext = 2959529i32;
                    };
                } else if (__value__ == (2959500i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2959223 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2959529i32;
                } else if (__value__ == (2959529i32)) {
                    if (_star_2958956) {
                        _gotoNext = 2959537i32;
                    } else {
                        _gotoNext = 2960058i32;
                    };
                } else if (__value__ == (2959537i32)) {
                    _i_2959608 = (0 : stdgo.GoInt);
                    _gotoNext = 2959604i32;
                } else if (__value__ == (2959604i32)) {
                    if (((_i_2959608 < (_name.length) : Bool) && (_name[(_i_2959608 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2959653i32;
                    } else {
                        _gotoNext = 2960058i32;
                    };
                } else if (__value__ == (2959649i32)) {
                    _i_2959608++;
                    _gotoNext = 2959604i32;
                } else if (__value__ == (2959653i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2958972?.__copy__(), (_name.__slice__((_i_2959608 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2959659 = __tmp__._0?.__copy__();
                        _ok_2959662 = __tmp__._1;
                        _err_2959666 = __tmp__._2;
                    };
                    if (_ok_2959662) {
                        _gotoNext = 2959713i32;
                    } else {
                        _gotoNext = 2959890i32;
                    };
                } else if (__value__ == (2959713i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2959659.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2959820i32;
                    } else {
                        _gotoNext = 2959849i32;
                    };
                } else if (__value__ == (2959820i32)) {
                    _i_2959608++;
                    _gotoNext = 2959604i32;
                } else if (__value__ == (2959849i32)) {
                    _name = _t_2959659?.__copy__();
                    _gotoNext = 2958927i32;
                } else if (__value__ == (2959890i32)) {
                    if (_err_2959666 != null) {
                        _gotoNext = 2959904i32;
                    } else {
                        _gotoNext = 2959649i32;
                    };
                } else if (__value__ == (2959904i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2959666 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2959649i32;
                } else if (__value__ == (2960058i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2960058i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2960079i32;
                    } else {
                        _gotoNext = 2960211i32;
                    };
                } else if (__value__ == (2960079i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2958972 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2958972?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2960135 = __tmp__._2;
                        };
                        if (_err_2960135 != null) {
                            _gotoNext = 2960176i32;
                        } else {
                            _gotoNext = 2960211i32;
                        };
                    };
                } else if (__value__ == (2960176i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2960135 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2960211i32;
                } else if (__value__ == (2960211i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2958927i32;
                } else if (__value__ == (2960233i32)) {
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
