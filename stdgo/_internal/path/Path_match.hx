package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_2672222:stdgo.Error = (null : stdgo.Error);
        var _ok_2671749:Bool = false;
        var _i_2671695:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_2671310:stdgo.Error = (null : stdgo.Error);
        var _ok_2671306:Bool = false;
        var _chunk_2671059:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2671043:Bool = false;
        var patternBreak = false;
        var _err_2671753:stdgo.Error = (null : stdgo.Error);
        var _t_2671746:stdgo.GoString = ("" : stdgo.GoString);
        var _t_2671303:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2671004i32;
                } else if (__value__ == (2671004i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2671014i32;
                } else if (__value__ == (2671014i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2671035i32;
                    } else {
                        _gotoNext = 2672320i32;
                    };
                } else if (__value__ == (2671035i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2671043 = __tmp__._0;
                        _chunk_2671059 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2671043 && (_chunk_2671059 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2671141i32;
                    } else {
                        _gotoNext = 2671303i32;
                    };
                } else if (__value__ == (2671141i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2671303i32;
                } else if (__value__ == (2671303i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2671059?.__copy__(), _name?.__copy__());
                        _t_2671303 = __tmp__._0?.__copy__();
                        _ok_2671306 = __tmp__._1;
                        _err_2671310 = __tmp__._2;
                    };
                    if ((_ok_2671306 && (((_t_2671303.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2671541i32;
                    } else {
                        _gotoNext = 2671573i32;
                    };
                } else if (__value__ == (2671541i32)) {
                    _name = _t_2671303?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2671014i32;
                } else if (__value__ == (2671573i32)) {
                    if (_err_2671310 != null) {
                        _gotoNext = 2671587i32;
                    } else {
                        _gotoNext = 2671616i32;
                    };
                } else if (__value__ == (2671587i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2671310 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2671616i32;
                } else if (__value__ == (2671616i32)) {
                    if (_star_2671043) {
                        _gotoNext = 2671624i32;
                    } else {
                        _gotoNext = 2672145i32;
                    };
                } else if (__value__ == (2671624i32)) {
                    _i_2671695 = (0 : stdgo.GoInt);
                    _gotoNext = 2671691i32;
                } else if (__value__ == (2671691i32)) {
                    if (((_i_2671695 < (_name.length) : Bool) && (_name[(_i_2671695 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2671740i32;
                    } else {
                        _gotoNext = 2672145i32;
                    };
                } else if (__value__ == (2671736i32)) {
                    _i_2671695++;
                    _gotoNext = 2671691i32;
                } else if (__value__ == (2671740i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2671059?.__copy__(), (_name.__slice__((_i_2671695 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2671746 = __tmp__._0?.__copy__();
                        _ok_2671749 = __tmp__._1;
                        _err_2671753 = __tmp__._2;
                    };
                    if (_ok_2671749) {
                        _gotoNext = 2671800i32;
                    } else {
                        _gotoNext = 2671977i32;
                    };
                } else if (__value__ == (2671800i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2671746.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2671907i32;
                    } else {
                        _gotoNext = 2671936i32;
                    };
                } else if (__value__ == (2671907i32)) {
                    _i_2671695++;
                    _gotoNext = 2671691i32;
                } else if (__value__ == (2671936i32)) {
                    _name = _t_2671746?.__copy__();
                    _gotoNext = 2671014i32;
                } else if (__value__ == (2671977i32)) {
                    if (_err_2671753 != null) {
                        _gotoNext = 2671991i32;
                    } else {
                        _gotoNext = 2671736i32;
                    };
                } else if (__value__ == (2671991i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2671753 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2671736i32;
                } else if (__value__ == (2672145i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2672145i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2672166i32;
                    } else {
                        _gotoNext = 2672298i32;
                    };
                } else if (__value__ == (2672166i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2671059 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2671059?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2672222 = __tmp__._2;
                        };
                        if (_err_2672222 != null) {
                            _gotoNext = 2672263i32;
                        } else {
                            _gotoNext = 2672145i32;
                        };
                    };
                } else if (__value__ == (2672263i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2672222 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2672145i32;
                } else if (__value__ == (2672298i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2671014i32;
                } else if (__value__ == (2672320i32)) {
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
