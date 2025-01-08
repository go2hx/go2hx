package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_2985530:stdgo.Error = (null : stdgo.Error);
        var _ok_2984614:Bool = false;
        var _chunk_2984367:stdgo.GoString = ("" : stdgo.GoString);
        var patternBreak = false;
        var _err_2985061:stdgo.Error = (null : stdgo.Error);
        var _ok_2985057:Bool = false;
        var _t_2985054:stdgo.GoString = ("" : stdgo.GoString);
        var _i_2985003:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_2984618:stdgo.Error = (null : stdgo.Error);
        var _t_2984611:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2984351:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2984312i32;
                } else if (__value__ == (2984312i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2984322i32;
                } else if (__value__ == (2984322i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2984343i32;
                    } else {
                        _gotoNext = 2985628i32;
                    };
                } else if (__value__ == (2984343i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2984351 = __tmp__._0;
                        _chunk_2984367 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2984351 && (_chunk_2984367 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2984449i32;
                    } else {
                        _gotoNext = 2984611i32;
                    };
                } else if (__value__ == (2984449i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2984611i32;
                } else if (__value__ == (2984611i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2984367?.__copy__(), _name?.__copy__());
                        _t_2984611 = __tmp__._0?.__copy__();
                        _ok_2984614 = __tmp__._1;
                        _err_2984618 = __tmp__._2;
                    };
                    if ((_ok_2984614 && (((_t_2984611.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2984849i32;
                    } else {
                        _gotoNext = 2984881i32;
                    };
                } else if (__value__ == (2984849i32)) {
                    _name = _t_2984611?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2984322i32;
                } else if (__value__ == (2984881i32)) {
                    if (_err_2984618 != null) {
                        _gotoNext = 2984895i32;
                    } else {
                        _gotoNext = 2984924i32;
                    };
                } else if (__value__ == (2984895i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2984618 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2984924i32;
                } else if (__value__ == (2984924i32)) {
                    if (_star_2984351) {
                        _gotoNext = 2984932i32;
                    } else {
                        _gotoNext = 2985453i32;
                    };
                } else if (__value__ == (2984932i32)) {
                    _i_2985003 = (0 : stdgo.GoInt);
                    _gotoNext = 2984999i32;
                } else if (__value__ == (2984999i32)) {
                    if (((_i_2985003 < (_name.length) : Bool) && (_name[(_i_2985003 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2985048i32;
                    } else {
                        _gotoNext = 2985453i32;
                    };
                } else if (__value__ == (2985044i32)) {
                    _i_2985003++;
                    _gotoNext = 2984999i32;
                } else if (__value__ == (2985048i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2984367?.__copy__(), (_name.__slice__((_i_2985003 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2985054 = __tmp__._0?.__copy__();
                        _ok_2985057 = __tmp__._1;
                        _err_2985061 = __tmp__._2;
                    };
                    if (_ok_2985057) {
                        _gotoNext = 2985108i32;
                    } else {
                        _gotoNext = 2985285i32;
                    };
                } else if (__value__ == (2985108i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2985054.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2985215i32;
                    } else {
                        _gotoNext = 2985244i32;
                    };
                } else if (__value__ == (2985215i32)) {
                    _i_2985003++;
                    _gotoNext = 2984999i32;
                } else if (__value__ == (2985244i32)) {
                    _name = _t_2985054?.__copy__();
                    _gotoNext = 2984322i32;
                } else if (__value__ == (2985285i32)) {
                    if (_err_2985061 != null) {
                        _gotoNext = 2985299i32;
                    } else {
                        _gotoNext = 2985044i32;
                    };
                } else if (__value__ == (2985299i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2985061 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2985044i32;
                } else if (__value__ == (2985453i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2985453i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2985474i32;
                    } else {
                        _gotoNext = 2985606i32;
                    };
                } else if (__value__ == (2985474i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2984367 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2984367?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2985530 = __tmp__._2;
                        };
                        if (_err_2985530 != null) {
                            _gotoNext = 2985571i32;
                        } else {
                            _gotoNext = 2985453i32;
                        };
                    };
                } else if (__value__ == (2985571i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2985530 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2985453i32;
                } else if (__value__ == (2985606i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2984322i32;
                } else if (__value__ == (2985628i32)) {
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
