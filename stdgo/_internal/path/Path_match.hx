package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _ok_2597821:Bool = false;
        var _chunk_2597574:stdgo.GoString = ("" : stdgo.GoString);
        var patternBreak = false;
        var _err_2598737:stdgo.Error = (null : stdgo.Error);
        var _err_2598268:stdgo.Error = (null : stdgo.Error);
        var _t_2598261:stdgo.GoString = ("" : stdgo.GoString);
        var _err_2597825:stdgo.Error = (null : stdgo.Error);
        var _t_2597818:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2597558:Bool = false;
        var _ok_2598264:Bool = false;
        var _i_2598210:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2597519i32;
                } else if (__value__ == (2597519i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2597529i32;
                } else if (__value__ == (2597529i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2597550i32;
                    } else {
                        _gotoNext = 2598835i32;
                    };
                } else if (__value__ == (2597550i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2597558 = __tmp__._0;
                        _chunk_2597574 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2597558 && (_chunk_2597574 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2597656i32;
                    } else {
                        _gotoNext = 2597818i32;
                    };
                } else if (__value__ == (2597656i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2597818i32;
                } else if (__value__ == (2597818i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2597574?.__copy__(), _name?.__copy__());
                        _t_2597818 = __tmp__._0?.__copy__();
                        _ok_2597821 = __tmp__._1;
                        _err_2597825 = __tmp__._2;
                    };
                    if ((_ok_2597821 && (((_t_2597818.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2598056i32;
                    } else {
                        _gotoNext = 2598088i32;
                    };
                } else if (__value__ == (2598056i32)) {
                    _name = _t_2597818?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2597529i32;
                } else if (__value__ == (2598088i32)) {
                    if (_err_2597825 != null) {
                        _gotoNext = 2598102i32;
                    } else {
                        _gotoNext = 2598131i32;
                    };
                } else if (__value__ == (2598102i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2597825 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2598131i32;
                } else if (__value__ == (2598131i32)) {
                    if (_star_2597558) {
                        _gotoNext = 2598139i32;
                    } else {
                        _gotoNext = 2598660i32;
                    };
                } else if (__value__ == (2598139i32)) {
                    _i_2598210 = (0 : stdgo.GoInt);
                    _gotoNext = 2598206i32;
                } else if (__value__ == (2598206i32)) {
                    if (((_i_2598210 < (_name.length) : Bool) && (_name[(_i_2598210 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2598255i32;
                    } else {
                        _gotoNext = 2598660i32;
                    };
                } else if (__value__ == (2598251i32)) {
                    _i_2598210++;
                    _gotoNext = 2598206i32;
                } else if (__value__ == (2598255i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2597574?.__copy__(), (_name.__slice__((_i_2598210 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2598261 = __tmp__._0?.__copy__();
                        _ok_2598264 = __tmp__._1;
                        _err_2598268 = __tmp__._2;
                    };
                    if (_ok_2598264) {
                        _gotoNext = 2598315i32;
                    } else {
                        _gotoNext = 2598492i32;
                    };
                } else if (__value__ == (2598315i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2598261.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2598422i32;
                    } else {
                        _gotoNext = 2598451i32;
                    };
                } else if (__value__ == (2598422i32)) {
                    _i_2598210++;
                    _gotoNext = 2598206i32;
                } else if (__value__ == (2598451i32)) {
                    _name = _t_2598261?.__copy__();
                    _gotoNext = 2597529i32;
                } else if (__value__ == (2598492i32)) {
                    if (_err_2598268 != null) {
                        _gotoNext = 2598506i32;
                    } else {
                        _gotoNext = 2598251i32;
                    };
                } else if (__value__ == (2598506i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2598268 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2598251i32;
                } else if (__value__ == (2598660i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2598660i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2598681i32;
                    } else {
                        _gotoNext = 2598813i32;
                    };
                } else if (__value__ == (2598681i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2597574 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2597574?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2598737 = __tmp__._2;
                        };
                        if (_err_2598737 != null) {
                            _gotoNext = 2598778i32;
                        } else {
                            _gotoNext = 2598660i32;
                        };
                    };
                } else if (__value__ == (2598778i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2598737 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2598660i32;
                } else if (__value__ == (2598813i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2597529i32;
                } else if (__value__ == (2598835i32)) {
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
