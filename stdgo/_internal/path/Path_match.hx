package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_2668350:stdgo.Error = (null : stdgo.Error);
        var _ok_2668346:Bool = false;
        var _t_2667900:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2667640:Bool = false;
        var patternBreak = false;
        var _err_2668819:stdgo.Error = (null : stdgo.Error);
        var _t_2668343:stdgo.GoString = ("" : stdgo.GoString);
        var _i_2668292:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_2667907:stdgo.Error = (null : stdgo.Error);
        var _ok_2667903:Bool = false;
        var _chunk_2667656:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2667601i32;
                } else if (__value__ == (2667601i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2667611i32;
                } else if (__value__ == (2667611i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2667632i32;
                    } else {
                        _gotoNext = 2668917i32;
                    };
                } else if (__value__ == (2667632i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2667640 = __tmp__._0;
                        _chunk_2667656 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2667640 && (_chunk_2667656 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2667738i32;
                    } else {
                        _gotoNext = 2667900i32;
                    };
                } else if (__value__ == (2667738i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2667900i32;
                } else if (__value__ == (2667900i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2667656?.__copy__(), _name?.__copy__());
                        _t_2667900 = __tmp__._0?.__copy__();
                        _ok_2667903 = __tmp__._1;
                        _err_2667907 = __tmp__._2;
                    };
                    if ((_ok_2667903 && (((_t_2667900.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2668138i32;
                    } else {
                        _gotoNext = 2668170i32;
                    };
                } else if (__value__ == (2668138i32)) {
                    _name = _t_2667900?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2667611i32;
                } else if (__value__ == (2668170i32)) {
                    if (_err_2667907 != null) {
                        _gotoNext = 2668184i32;
                    } else {
                        _gotoNext = 2668213i32;
                    };
                } else if (__value__ == (2668184i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2667907 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2668213i32;
                } else if (__value__ == (2668213i32)) {
                    if (_star_2667640) {
                        _gotoNext = 2668221i32;
                    } else {
                        _gotoNext = 2668742i32;
                    };
                } else if (__value__ == (2668221i32)) {
                    _i_2668292 = (0 : stdgo.GoInt);
                    _gotoNext = 2668288i32;
                } else if (__value__ == (2668288i32)) {
                    if (((_i_2668292 < (_name.length) : Bool) && (_name[(_i_2668292 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2668337i32;
                    } else {
                        _gotoNext = 2668742i32;
                    };
                } else if (__value__ == (2668333i32)) {
                    _i_2668292++;
                    _gotoNext = 2668288i32;
                } else if (__value__ == (2668337i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2667656?.__copy__(), (_name.__slice__((_i_2668292 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2668343 = __tmp__._0?.__copy__();
                        _ok_2668346 = __tmp__._1;
                        _err_2668350 = __tmp__._2;
                    };
                    if (_ok_2668346) {
                        _gotoNext = 2668397i32;
                    } else {
                        _gotoNext = 2668574i32;
                    };
                } else if (__value__ == (2668397i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2668343.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2668504i32;
                    } else {
                        _gotoNext = 2668533i32;
                    };
                } else if (__value__ == (2668504i32)) {
                    _i_2668292++;
                    _gotoNext = 2668288i32;
                } else if (__value__ == (2668533i32)) {
                    _name = _t_2668343?.__copy__();
                    _gotoNext = 2667611i32;
                } else if (__value__ == (2668574i32)) {
                    if (_err_2668350 != null) {
                        _gotoNext = 2668588i32;
                    } else {
                        _gotoNext = 2668333i32;
                    };
                } else if (__value__ == (2668588i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2668350 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2668333i32;
                } else if (__value__ == (2668742i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2668742i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2668763i32;
                    } else {
                        _gotoNext = 2668895i32;
                    };
                } else if (__value__ == (2668763i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2667656 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2667656?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2668819 = __tmp__._2;
                        };
                        if (_err_2668819 != null) {
                            _gotoNext = 2668860i32;
                        } else {
                            _gotoNext = 2668742i32;
                        };
                    };
                } else if (__value__ == (2668860i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2668819 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2668742i32;
                } else if (__value__ == (2668895i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2667611i32;
                } else if (__value__ == (2668917i32)) {
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
