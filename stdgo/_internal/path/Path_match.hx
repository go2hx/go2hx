package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _t_2537627:stdgo.GoString = ("" : stdgo.GoString);
        var _err_2537634:stdgo.Error = (null : stdgo.Error);
        var _err_2538103:stdgo.Error = (null : stdgo.Error);
        var patternBreak = false;
        var _ok_2537630:Bool = false;
        var _i_2537576:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_2537191:stdgo.Error = (null : stdgo.Error);
        var _ok_2537187:Bool = false;
        var _t_2537184:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_2536940:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2536924:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2536885i32;
                } else if (__value__ == (2536885i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2536895i32;
                } else if (__value__ == (2536895i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2536916i32;
                    } else {
                        _gotoNext = 2538201i32;
                    };
                } else if (__value__ == (2536916i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2536924 = __tmp__._0;
                        _chunk_2536940 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2536924 && (_chunk_2536940 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2537022i32;
                    } else {
                        _gotoNext = 2537184i32;
                    };
                } else if (__value__ == (2537022i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2537184i32;
                } else if (__value__ == (2537184i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2536940?.__copy__(), _name?.__copy__());
                        _t_2537184 = __tmp__._0?.__copy__();
                        _ok_2537187 = __tmp__._1;
                        _err_2537191 = __tmp__._2;
                    };
                    if ((_ok_2537187 && (((_t_2537184.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2537422i32;
                    } else {
                        _gotoNext = 2537454i32;
                    };
                } else if (__value__ == (2537422i32)) {
                    _name = _t_2537184?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2536895i32;
                } else if (__value__ == (2537454i32)) {
                    if (_err_2537191 != null) {
                        _gotoNext = 2537468i32;
                    } else {
                        _gotoNext = 2537497i32;
                    };
                } else if (__value__ == (2537468i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2537191 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2537497i32;
                } else if (__value__ == (2537497i32)) {
                    if (_star_2536924) {
                        _gotoNext = 2537505i32;
                    } else {
                        _gotoNext = 2538026i32;
                    };
                } else if (__value__ == (2537505i32)) {
                    _i_2537576 = (0 : stdgo.GoInt);
                    _gotoNext = 2537572i32;
                } else if (__value__ == (2537572i32)) {
                    if (((_i_2537576 < (_name.length) : Bool) && (_name[(_i_2537576 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2537621i32;
                    } else {
                        _gotoNext = 2538026i32;
                    };
                } else if (__value__ == (2537617i32)) {
                    _i_2537576++;
                    _gotoNext = 2537572i32;
                } else if (__value__ == (2537621i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2536940?.__copy__(), (_name.__slice__((_i_2537576 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2537627 = __tmp__._0?.__copy__();
                        _ok_2537630 = __tmp__._1;
                        _err_2537634 = __tmp__._2;
                    };
                    if (_ok_2537630) {
                        _gotoNext = 2537681i32;
                    } else {
                        _gotoNext = 2537858i32;
                    };
                } else if (__value__ == (2537681i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2537627.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2537788i32;
                    } else {
                        _gotoNext = 2537817i32;
                    };
                } else if (__value__ == (2537788i32)) {
                    _i_2537576++;
                    _gotoNext = 2537572i32;
                } else if (__value__ == (2537817i32)) {
                    _name = _t_2537627?.__copy__();
                    _gotoNext = 2536895i32;
                } else if (__value__ == (2537858i32)) {
                    if (_err_2537634 != null) {
                        _gotoNext = 2537872i32;
                    } else {
                        _gotoNext = 2537617i32;
                    };
                } else if (__value__ == (2537872i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2537634 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2537617i32;
                } else if (__value__ == (2538026i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2538026i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2538047i32;
                    } else {
                        _gotoNext = 2538179i32;
                    };
                } else if (__value__ == (2538047i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2536940 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2536940?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2538103 = __tmp__._2;
                        };
                        if (_err_2538103 != null) {
                            _gotoNext = 2538144i32;
                        } else {
                            _gotoNext = 2538026i32;
                        };
                    };
                } else if (__value__ == (2538144i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2538103 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2538026i32;
                } else if (__value__ == (2538179i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2536895i32;
                } else if (__value__ == (2538201i32)) {
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
