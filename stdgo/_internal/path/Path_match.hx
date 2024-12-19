package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _chunk_2605623:stdgo.GoString = ("" : stdgo.GoString);
        var _err_2606786:stdgo.Error = (null : stdgo.Error);
        var _ok_2606313:Bool = false;
        var _t_2606310:stdgo.GoString = ("" : stdgo.GoString);
        var _err_2605874:stdgo.Error = (null : stdgo.Error);
        var patternBreak = false;
        var _err_2606317:stdgo.Error = (null : stdgo.Error);
        var _i_2606259:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_2605870:Bool = false;
        var _t_2605867:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2605607:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2605568i32;
                } else if (__value__ == (2605568i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2605578i32;
                } else if (__value__ == (2605578i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2605599i32;
                    } else {
                        _gotoNext = 2606884i32;
                    };
                } else if (__value__ == (2605599i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2605607 = __tmp__._0;
                        _chunk_2605623 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2605607 && (_chunk_2605623 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2605705i32;
                    } else {
                        _gotoNext = 2605867i32;
                    };
                } else if (__value__ == (2605705i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2605867i32;
                } else if (__value__ == (2605867i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2605623?.__copy__(), _name?.__copy__());
                        _t_2605867 = __tmp__._0?.__copy__();
                        _ok_2605870 = __tmp__._1;
                        _err_2605874 = __tmp__._2;
                    };
                    if ((_ok_2605870 && (((_t_2605867.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2606105i32;
                    } else {
                        _gotoNext = 2606137i32;
                    };
                } else if (__value__ == (2606105i32)) {
                    _name = _t_2605867?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2605578i32;
                } else if (__value__ == (2606137i32)) {
                    if (_err_2605874 != null) {
                        _gotoNext = 2606151i32;
                    } else {
                        _gotoNext = 2606180i32;
                    };
                } else if (__value__ == (2606151i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2605874 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2606180i32;
                } else if (__value__ == (2606180i32)) {
                    if (_star_2605607) {
                        _gotoNext = 2606188i32;
                    } else {
                        _gotoNext = 2606709i32;
                    };
                } else if (__value__ == (2606188i32)) {
                    _i_2606259 = (0 : stdgo.GoInt);
                    _gotoNext = 2606255i32;
                } else if (__value__ == (2606255i32)) {
                    if (((_i_2606259 < (_name.length) : Bool) && (_name[(_i_2606259 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2606304i32;
                    } else {
                        _gotoNext = 2606709i32;
                    };
                } else if (__value__ == (2606300i32)) {
                    _i_2606259++;
                    _gotoNext = 2606255i32;
                } else if (__value__ == (2606304i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2605623?.__copy__(), (_name.__slice__((_i_2606259 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2606310 = __tmp__._0?.__copy__();
                        _ok_2606313 = __tmp__._1;
                        _err_2606317 = __tmp__._2;
                    };
                    if (_ok_2606313) {
                        _gotoNext = 2606364i32;
                    } else {
                        _gotoNext = 2606541i32;
                    };
                } else if (__value__ == (2606364i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2606310.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2606471i32;
                    } else {
                        _gotoNext = 2606500i32;
                    };
                } else if (__value__ == (2606471i32)) {
                    _i_2606259++;
                    _gotoNext = 2606255i32;
                } else if (__value__ == (2606500i32)) {
                    _name = _t_2606310?.__copy__();
                    _gotoNext = 2605578i32;
                } else if (__value__ == (2606541i32)) {
                    if (_err_2606317 != null) {
                        _gotoNext = 2606555i32;
                    } else {
                        _gotoNext = 2606300i32;
                    };
                } else if (__value__ == (2606555i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2606317 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2606300i32;
                } else if (__value__ == (2606709i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2606709i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2606730i32;
                    } else {
                        _gotoNext = 2606862i32;
                    };
                } else if (__value__ == (2606730i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2605623 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2605623?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2606786 = __tmp__._2;
                        };
                        if (_err_2606786 != null) {
                            _gotoNext = 2606827i32;
                        } else {
                            _gotoNext = 2606862i32;
                        };
                    };
                } else if (__value__ == (2606827i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2606786 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2606862i32;
                } else if (__value__ == (2606862i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2605578i32;
                } else if (__value__ == (2606884i32)) {
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
