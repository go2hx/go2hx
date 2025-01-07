package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var patternBreak = false;
        var _err_3004062:stdgo.Error = (null : stdgo.Error);
        var _err_3003593:stdgo.Error = (null : stdgo.Error);
        var _t_3003586:stdgo.GoString = ("" : stdgo.GoString);
        var _i_3003535:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_3003150:stdgo.Error = (null : stdgo.Error);
        var _ok_3003146:Bool = false;
        var _star_3002883:Bool = false;
        var _chunk_3002899:stdgo.GoString = ("" : stdgo.GoString);
        var _ok_3003589:Bool = false;
        var _t_3003143:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3002844i32;
                } else if (__value__ == (3002844i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 3002854i32;
                } else if (__value__ == (3002854i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 3002875i32;
                    } else {
                        _gotoNext = 3004160i32;
                    };
                } else if (__value__ == (3002875i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_3002883 = __tmp__._0;
                        _chunk_3002899 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_3002883 && (_chunk_3002899 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 3002981i32;
                    } else {
                        _gotoNext = 3003143i32;
                    };
                } else if (__value__ == (3002981i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3003143i32;
                } else if (__value__ == (3003143i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_3002899?.__copy__(), _name?.__copy__());
                        _t_3003143 = __tmp__._0?.__copy__();
                        _ok_3003146 = __tmp__._1;
                        _err_3003150 = __tmp__._2;
                    };
                    if ((_ok_3003146 && (((_t_3003143.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 3003381i32;
                    } else {
                        _gotoNext = 3003413i32;
                    };
                } else if (__value__ == (3003381i32)) {
                    _name = _t_3003143?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 3002854i32;
                } else if (__value__ == (3003413i32)) {
                    if (_err_3003150 != null) {
                        _gotoNext = 3003427i32;
                    } else {
                        _gotoNext = 3003456i32;
                    };
                } else if (__value__ == (3003427i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_3003150 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3003456i32;
                } else if (__value__ == (3003456i32)) {
                    if (_star_3002883) {
                        _gotoNext = 3003464i32;
                    } else {
                        _gotoNext = 3003985i32;
                    };
                } else if (__value__ == (3003464i32)) {
                    _i_3003535 = (0 : stdgo.GoInt);
                    _gotoNext = 3003531i32;
                } else if (__value__ == (3003531i32)) {
                    if (((_i_3003535 < (_name.length) : Bool) && (_name[(_i_3003535 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3003580i32;
                    } else {
                        _gotoNext = 3003985i32;
                    };
                } else if (__value__ == (3003576i32)) {
                    _i_3003535++;
                    _gotoNext = 3003531i32;
                } else if (__value__ == (3003580i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_3002899?.__copy__(), (_name.__slice__((_i_3003535 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_3003586 = __tmp__._0?.__copy__();
                        _ok_3003589 = __tmp__._1;
                        _err_3003593 = __tmp__._2;
                    };
                    if (_ok_3003589) {
                        _gotoNext = 3003640i32;
                    } else {
                        _gotoNext = 3003817i32;
                    };
                } else if (__value__ == (3003640i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_3003586.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3003747i32;
                    } else {
                        _gotoNext = 3003776i32;
                    };
                } else if (__value__ == (3003747i32)) {
                    _i_3003535++;
                    _gotoNext = 3003531i32;
                } else if (__value__ == (3003776i32)) {
                    _name = _t_3003586?.__copy__();
                    _gotoNext = 3002854i32;
                } else if (__value__ == (3003817i32)) {
                    if (_err_3003593 != null) {
                        _gotoNext = 3003831i32;
                    } else {
                        _gotoNext = 3003576i32;
                    };
                } else if (__value__ == (3003831i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_3003593 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3003576i32;
                } else if (__value__ == (3003985i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3003985i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3004006i32;
                    } else {
                        _gotoNext = 3004138i32;
                    };
                } else if (__value__ == (3004006i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_3002899 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_3002899?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_3004062 = __tmp__._2;
                        };
                        if (_err_3004062 != null) {
                            _gotoNext = 3004103i32;
                        } else {
                            _gotoNext = 3003985i32;
                        };
                    };
                } else if (__value__ == (3004103i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_3004062 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3003985i32;
                } else if (__value__ == (3004138i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3002854i32;
                } else if (__value__ == (3004160i32)) {
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
