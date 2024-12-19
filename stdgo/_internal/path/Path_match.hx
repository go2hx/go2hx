package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_2614395:stdgo.Error = (null : stdgo.Error);
        var _ok_2613922:Bool = false;
        var _i_2613868:stdgo.GoInt = (0 : stdgo.GoInt);
        var _t_2613476:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2613216:Bool = false;
        var patternBreak = false;
        var _err_2613926:stdgo.Error = (null : stdgo.Error);
        var _t_2613919:stdgo.GoString = ("" : stdgo.GoString);
        var _err_2613483:stdgo.Error = (null : stdgo.Error);
        var _ok_2613479:Bool = false;
        var _chunk_2613232:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2613177i32;
                } else if (__value__ == (2613177i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2613187i32;
                } else if (__value__ == (2613187i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2613208i32;
                    } else {
                        _gotoNext = 2614493i32;
                    };
                } else if (__value__ == (2613208i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2613216 = __tmp__._0;
                        _chunk_2613232 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2613216 && (_chunk_2613232 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2613314i32;
                    } else {
                        _gotoNext = 2613476i32;
                    };
                } else if (__value__ == (2613314i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2613476i32;
                } else if (__value__ == (2613476i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2613232?.__copy__(), _name?.__copy__());
                        _t_2613476 = __tmp__._0?.__copy__();
                        _ok_2613479 = __tmp__._1;
                        _err_2613483 = __tmp__._2;
                    };
                    if ((_ok_2613479 && (((_t_2613476.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2613714i32;
                    } else {
                        _gotoNext = 2613746i32;
                    };
                } else if (__value__ == (2613714i32)) {
                    _name = _t_2613476?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2613187i32;
                } else if (__value__ == (2613746i32)) {
                    if (_err_2613483 != null) {
                        _gotoNext = 2613760i32;
                    } else {
                        _gotoNext = 2613789i32;
                    };
                } else if (__value__ == (2613760i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2613483 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2613789i32;
                } else if (__value__ == (2613789i32)) {
                    if (_star_2613216) {
                        _gotoNext = 2613797i32;
                    } else {
                        _gotoNext = 2614318i32;
                    };
                } else if (__value__ == (2613797i32)) {
                    _i_2613868 = (0 : stdgo.GoInt);
                    _gotoNext = 2613864i32;
                } else if (__value__ == (2613864i32)) {
                    if (((_i_2613868 < (_name.length) : Bool) && (_name[(_i_2613868 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2613913i32;
                    } else {
                        _gotoNext = 2614318i32;
                    };
                } else if (__value__ == (2613909i32)) {
                    _i_2613868++;
                    _gotoNext = 2613864i32;
                } else if (__value__ == (2613913i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2613232?.__copy__(), (_name.__slice__((_i_2613868 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2613919 = __tmp__._0?.__copy__();
                        _ok_2613922 = __tmp__._1;
                        _err_2613926 = __tmp__._2;
                    };
                    if (_ok_2613922) {
                        _gotoNext = 2613973i32;
                    } else {
                        _gotoNext = 2614150i32;
                    };
                } else if (__value__ == (2613973i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2613919.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2614080i32;
                    } else {
                        _gotoNext = 2614109i32;
                    };
                } else if (__value__ == (2614080i32)) {
                    _i_2613868++;
                    _gotoNext = 2613864i32;
                } else if (__value__ == (2614109i32)) {
                    _name = _t_2613919?.__copy__();
                    _gotoNext = 2613187i32;
                } else if (__value__ == (2614150i32)) {
                    if (_err_2613926 != null) {
                        _gotoNext = 2614164i32;
                    } else {
                        _gotoNext = 2613909i32;
                    };
                } else if (__value__ == (2614164i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2613926 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2613909i32;
                } else if (__value__ == (2614318i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2614318i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2614339i32;
                    } else {
                        _gotoNext = 2614471i32;
                    };
                } else if (__value__ == (2614339i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2613232 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2613232?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2614395 = __tmp__._2;
                        };
                        if (_err_2614395 != null) {
                            _gotoNext = 2614436i32;
                        } else {
                            _gotoNext = 2614471i32;
                        };
                    };
                } else if (__value__ == (2614436i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2614395 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2614471i32;
                } else if (__value__ == (2614471i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2613187i32;
                } else if (__value__ == (2614493i32)) {
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
