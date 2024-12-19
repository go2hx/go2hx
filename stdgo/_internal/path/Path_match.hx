package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _t_2571786:stdgo.GoString = ("" : stdgo.GoString);
        var _ok_2571346:Bool = false;
        var _t_2571343:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2571083:Bool = false;
        var patternBreak = false;
        var _err_2572262:stdgo.Error = (null : stdgo.Error);
        var _err_2571793:stdgo.Error = (null : stdgo.Error);
        var _ok_2571789:Bool = false;
        var _i_2571735:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_2571350:stdgo.Error = (null : stdgo.Error);
        var _chunk_2571099:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2571044i32;
                } else if (__value__ == (2571044i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2571054i32;
                } else if (__value__ == (2571054i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2571075i32;
                    } else {
                        _gotoNext = 2572360i32;
                    };
                } else if (__value__ == (2571075i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2571083 = __tmp__._0;
                        _chunk_2571099 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2571083 && (_chunk_2571099 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2571181i32;
                    } else {
                        _gotoNext = 2571343i32;
                    };
                } else if (__value__ == (2571181i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2571343i32;
                } else if (__value__ == (2571343i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2571099?.__copy__(), _name?.__copy__());
                        _t_2571343 = __tmp__._0?.__copy__();
                        _ok_2571346 = __tmp__._1;
                        _err_2571350 = __tmp__._2;
                    };
                    if ((_ok_2571346 && (((_t_2571343.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2571581i32;
                    } else {
                        _gotoNext = 2571613i32;
                    };
                } else if (__value__ == (2571581i32)) {
                    _name = _t_2571343?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2571054i32;
                } else if (__value__ == (2571613i32)) {
                    if (_err_2571350 != null) {
                        _gotoNext = 2571627i32;
                    } else {
                        _gotoNext = 2571656i32;
                    };
                } else if (__value__ == (2571627i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2571350 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2571656i32;
                } else if (__value__ == (2571656i32)) {
                    if (_star_2571083) {
                        _gotoNext = 2571664i32;
                    } else {
                        _gotoNext = 2572185i32;
                    };
                } else if (__value__ == (2571664i32)) {
                    _i_2571735 = (0 : stdgo.GoInt);
                    _gotoNext = 2571731i32;
                } else if (__value__ == (2571731i32)) {
                    if (((_i_2571735 < (_name.length) : Bool) && (_name[(_i_2571735 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2571780i32;
                    } else {
                        _gotoNext = 2572185i32;
                    };
                } else if (__value__ == (2571776i32)) {
                    _i_2571735++;
                    _gotoNext = 2571731i32;
                } else if (__value__ == (2571780i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2571099?.__copy__(), (_name.__slice__((_i_2571735 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2571786 = __tmp__._0?.__copy__();
                        _ok_2571789 = __tmp__._1;
                        _err_2571793 = __tmp__._2;
                    };
                    if (_ok_2571789) {
                        _gotoNext = 2571840i32;
                    } else {
                        _gotoNext = 2572017i32;
                    };
                } else if (__value__ == (2571840i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2571786.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2571947i32;
                    } else {
                        _gotoNext = 2571976i32;
                    };
                } else if (__value__ == (2571947i32)) {
                    _i_2571735++;
                    _gotoNext = 2571731i32;
                } else if (__value__ == (2571976i32)) {
                    _name = _t_2571786?.__copy__();
                    _gotoNext = 2571054i32;
                } else if (__value__ == (2572017i32)) {
                    if (_err_2571793 != null) {
                        _gotoNext = 2572031i32;
                    } else {
                        _gotoNext = 2571776i32;
                    };
                } else if (__value__ == (2572031i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2571793 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2571776i32;
                } else if (__value__ == (2572185i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2572185i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2572206i32;
                    } else {
                        _gotoNext = 2572338i32;
                    };
                } else if (__value__ == (2572206i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2571099 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2571099?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2572262 = __tmp__._2;
                        };
                        if (_err_2572262 != null) {
                            _gotoNext = 2572303i32;
                        } else {
                            _gotoNext = 2572338i32;
                        };
                    };
                } else if (__value__ == (2572303i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2572262 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2572338i32;
                } else if (__value__ == (2572338i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2571054i32;
                } else if (__value__ == (2572360i32)) {
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
