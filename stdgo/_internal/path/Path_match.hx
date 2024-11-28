package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _chunk_2749258:stdgo.GoString = ("" : stdgo.GoString);
        var _ok_2749948:Bool = false;
        var _t_2749945:stdgo.GoString = ("" : stdgo.GoString);
        var _err_2749509:stdgo.Error = (null : stdgo.Error);
        var patternBreak = false;
        var _err_2750421:stdgo.Error = (null : stdgo.Error);
        var _err_2749952:stdgo.Error = (null : stdgo.Error);
        var _i_2749894:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_2749505:Bool = false;
        var _t_2749502:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2749242:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2749203i32;
                } else if (__value__ == (2749203i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2749213i32;
                } else if (__value__ == (2749213i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2749234i32;
                    } else {
                        _gotoNext = 2750519i32;
                    };
                } else if (__value__ == (2749234i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2749242 = __tmp__._0;
                        _chunk_2749258 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2749242 && (_chunk_2749258 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2749340i32;
                    } else {
                        _gotoNext = 2749502i32;
                    };
                } else if (__value__ == (2749340i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2749502i32;
                } else if (__value__ == (2749502i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2749258?.__copy__(), _name?.__copy__());
                        _t_2749502 = __tmp__._0?.__copy__();
                        _ok_2749505 = __tmp__._1;
                        _err_2749509 = __tmp__._2;
                    };
                    if ((_ok_2749505 && (((_t_2749502.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2749740i32;
                    } else {
                        _gotoNext = 2749772i32;
                    };
                } else if (__value__ == (2749740i32)) {
                    _name = _t_2749502?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2749213i32;
                } else if (__value__ == (2749772i32)) {
                    if (_err_2749509 != null) {
                        _gotoNext = 2749786i32;
                    } else {
                        _gotoNext = 2749815i32;
                    };
                } else if (__value__ == (2749786i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2749509 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2749815i32;
                } else if (__value__ == (2749815i32)) {
                    if (_star_2749242) {
                        _gotoNext = 2749823i32;
                    } else {
                        _gotoNext = 2750344i32;
                    };
                } else if (__value__ == (2749823i32)) {
                    _i_2749894 = (0 : stdgo.GoInt);
                    _gotoNext = 2749890i32;
                } else if (__value__ == (2749890i32)) {
                    if (((_i_2749894 < (_name.length) : Bool) && (_name[(_i_2749894 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2749939i32;
                    } else {
                        _gotoNext = 2750344i32;
                    };
                } else if (__value__ == (2749935i32)) {
                    _i_2749894++;
                    _gotoNext = 2749890i32;
                } else if (__value__ == (2749939i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2749258?.__copy__(), (_name.__slice__((_i_2749894 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2749945 = __tmp__._0?.__copy__();
                        _ok_2749948 = __tmp__._1;
                        _err_2749952 = __tmp__._2;
                    };
                    if (_ok_2749948) {
                        _gotoNext = 2749999i32;
                    } else {
                        _gotoNext = 2750176i32;
                    };
                } else if (__value__ == (2749999i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2749945.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2750106i32;
                    } else {
                        _gotoNext = 2750135i32;
                    };
                } else if (__value__ == (2750106i32)) {
                    _i_2749894++;
                    _gotoNext = 2749890i32;
                } else if (__value__ == (2750135i32)) {
                    _name = _t_2749945?.__copy__();
                    _gotoNext = 2749213i32;
                } else if (__value__ == (2750176i32)) {
                    if (_err_2749952 != null) {
                        _gotoNext = 2750190i32;
                    } else {
                        _gotoNext = 2749935i32;
                    };
                } else if (__value__ == (2750190i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2749952 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2749935i32;
                } else if (__value__ == (2750344i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2750344i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2750365i32;
                    } else {
                        _gotoNext = 2750497i32;
                    };
                } else if (__value__ == (2750365i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2749258 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2749258?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2750421 = __tmp__._2;
                        };
                        if (_err_2750421 != null) {
                            _gotoNext = 2750462i32;
                        } else {
                            _gotoNext = 2750497i32;
                        };
                    };
                } else if (__value__ == (2750462i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2750421 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2750497i32;
                } else if (__value__ == (2750497i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2749213i32;
                } else if (__value__ == (2750519i32)) {
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
