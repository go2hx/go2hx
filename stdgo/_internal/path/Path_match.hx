package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _t_2650053:stdgo.GoString = ("" : stdgo.GoString);
        var _i_2650002:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_2649617:stdgo.Error = (null : stdgo.Error);
        var _t_2649610:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_2649366:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2649350:Bool = false;
        var _err_2650060:stdgo.Error = (null : stdgo.Error);
        var _err_2650529:stdgo.Error = (null : stdgo.Error);
        var _ok_2650056:Bool = false;
        var _ok_2649613:Bool = false;
        var patternBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2649311i32;
                } else if (__value__ == (2649311i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2649321i32;
                } else if (__value__ == (2649321i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2649342i32;
                    } else {
                        _gotoNext = 2650627i32;
                    };
                } else if (__value__ == (2649342i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2649350 = __tmp__._0;
                        _chunk_2649366 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2649350 && (_chunk_2649366 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2649448i32;
                    } else {
                        _gotoNext = 2649610i32;
                    };
                } else if (__value__ == (2649448i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2649610i32;
                } else if (__value__ == (2649610i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2649366?.__copy__(), _name?.__copy__());
                        _t_2649610 = __tmp__._0?.__copy__();
                        _ok_2649613 = __tmp__._1;
                        _err_2649617 = __tmp__._2;
                    };
                    if ((_ok_2649613 && (((_t_2649610.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2649848i32;
                    } else {
                        _gotoNext = 2649880i32;
                    };
                } else if (__value__ == (2649848i32)) {
                    _name = _t_2649610?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2649321i32;
                } else if (__value__ == (2649880i32)) {
                    if (_err_2649617 != null) {
                        _gotoNext = 2649894i32;
                    } else {
                        _gotoNext = 2649923i32;
                    };
                } else if (__value__ == (2649894i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2649617 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2649923i32;
                } else if (__value__ == (2649923i32)) {
                    if (_star_2649350) {
                        _gotoNext = 2649931i32;
                    } else {
                        _gotoNext = 2650452i32;
                    };
                } else if (__value__ == (2649931i32)) {
                    _i_2650002 = (0 : stdgo.GoInt);
                    _gotoNext = 2649998i32;
                } else if (__value__ == (2649998i32)) {
                    if (((_i_2650002 < (_name.length) : Bool) && (_name[(_i_2650002 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2650047i32;
                    } else {
                        _gotoNext = 2650452i32;
                    };
                } else if (__value__ == (2650043i32)) {
                    _i_2650002++;
                    _gotoNext = 2649998i32;
                } else if (__value__ == (2650047i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2649366?.__copy__(), (_name.__slice__((_i_2650002 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2650053 = __tmp__._0?.__copy__();
                        _ok_2650056 = __tmp__._1;
                        _err_2650060 = __tmp__._2;
                    };
                    if (_ok_2650056) {
                        _gotoNext = 2650107i32;
                    } else {
                        _gotoNext = 2650284i32;
                    };
                } else if (__value__ == (2650107i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2650053.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2650214i32;
                    } else {
                        _gotoNext = 2650243i32;
                    };
                } else if (__value__ == (2650214i32)) {
                    _i_2650002++;
                    _gotoNext = 2649998i32;
                } else if (__value__ == (2650243i32)) {
                    _name = _t_2650053?.__copy__();
                    _gotoNext = 2649321i32;
                } else if (__value__ == (2650284i32)) {
                    if (_err_2650060 != null) {
                        _gotoNext = 2650298i32;
                    } else {
                        _gotoNext = 2650043i32;
                    };
                } else if (__value__ == (2650298i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2650060 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2650043i32;
                } else if (__value__ == (2650452i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2650452i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2650473i32;
                    } else {
                        _gotoNext = 2650605i32;
                    };
                } else if (__value__ == (2650473i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2649366 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2649366?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2650529 = __tmp__._2;
                        };
                        if (_err_2650529 != null) {
                            _gotoNext = 2650570i32;
                        } else {
                            _gotoNext = 2650605i32;
                        };
                    };
                } else if (__value__ == (2650570i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2650529 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2650605i32;
                } else if (__value__ == (2650605i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2649321i32;
                } else if (__value__ == (2650627i32)) {
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
