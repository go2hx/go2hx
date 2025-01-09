package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _t_2630446:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_2630202:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2630186:Bool = false;
        var patternBreak = false;
        var _err_2631365:stdgo.Error = (null : stdgo.Error);
        var _err_2630453:stdgo.Error = (null : stdgo.Error);
        var _ok_2630449:Bool = false;
        var _err_2630896:stdgo.Error = (null : stdgo.Error);
        var _ok_2630892:Bool = false;
        var _t_2630889:stdgo.GoString = ("" : stdgo.GoString);
        var _i_2630838:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2630147i32;
                } else if (__value__ == (2630147i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2630157i32;
                } else if (__value__ == (2630157i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2630178i32;
                    } else {
                        _gotoNext = 2631463i32;
                    };
                } else if (__value__ == (2630178i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2630186 = __tmp__._0;
                        _chunk_2630202 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2630186 && (_chunk_2630202 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2630284i32;
                    } else {
                        _gotoNext = 2630446i32;
                    };
                } else if (__value__ == (2630284i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2630446i32;
                } else if (__value__ == (2630446i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2630202?.__copy__(), _name?.__copy__());
                        _t_2630446 = __tmp__._0?.__copy__();
                        _ok_2630449 = __tmp__._1;
                        _err_2630453 = __tmp__._2;
                    };
                    if ((_ok_2630449 && (((_t_2630446.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2630684i32;
                    } else {
                        _gotoNext = 2630716i32;
                    };
                } else if (__value__ == (2630684i32)) {
                    _name = _t_2630446?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2630157i32;
                } else if (__value__ == (2630716i32)) {
                    if (_err_2630453 != null) {
                        _gotoNext = 2630730i32;
                    } else {
                        _gotoNext = 2630759i32;
                    };
                } else if (__value__ == (2630730i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2630453 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2630759i32;
                } else if (__value__ == (2630759i32)) {
                    if (_star_2630186) {
                        _gotoNext = 2630767i32;
                    } else {
                        _gotoNext = 2631288i32;
                    };
                } else if (__value__ == (2630767i32)) {
                    _i_2630838 = (0 : stdgo.GoInt);
                    _gotoNext = 2630834i32;
                } else if (__value__ == (2630834i32)) {
                    if (((_i_2630838 < (_name.length) : Bool) && (_name[(_i_2630838 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2630883i32;
                    } else {
                        _gotoNext = 2631288i32;
                    };
                } else if (__value__ == (2630879i32)) {
                    _i_2630838++;
                    _gotoNext = 2630834i32;
                } else if (__value__ == (2630883i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2630202?.__copy__(), (_name.__slice__((_i_2630838 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2630889 = __tmp__._0?.__copy__();
                        _ok_2630892 = __tmp__._1;
                        _err_2630896 = __tmp__._2;
                    };
                    if (_ok_2630892) {
                        _gotoNext = 2630943i32;
                    } else {
                        _gotoNext = 2631120i32;
                    };
                } else if (__value__ == (2630943i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2630889.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2631050i32;
                    } else {
                        _gotoNext = 2631079i32;
                    };
                } else if (__value__ == (2631050i32)) {
                    _i_2630838++;
                    _gotoNext = 2630834i32;
                } else if (__value__ == (2631079i32)) {
                    _name = _t_2630889?.__copy__();
                    _gotoNext = 2630157i32;
                } else if (__value__ == (2631120i32)) {
                    if (_err_2630896 != null) {
                        _gotoNext = 2631134i32;
                    } else {
                        _gotoNext = 2630879i32;
                    };
                } else if (__value__ == (2631134i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2630896 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2630879i32;
                } else if (__value__ == (2631288i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2631288i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2631309i32;
                    } else {
                        _gotoNext = 2631441i32;
                    };
                } else if (__value__ == (2631309i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2630202 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2630202?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2631365 = __tmp__._2;
                        };
                        if (_err_2631365 != null) {
                            _gotoNext = 2631406i32;
                        } else {
                            _gotoNext = 2631288i32;
                        };
                    };
                } else if (__value__ == (2631406i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2631365 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2631288i32;
                } else if (__value__ == (2631441i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2630157i32;
                } else if (__value__ == (2631463i32)) {
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
