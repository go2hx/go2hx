package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _chunk_2772043:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2772027:Bool = false;
        var _err_2773206:stdgo.Error = (null : stdgo.Error);
        var _err_2772737:stdgo.Error = (null : stdgo.Error);
        var _ok_2772733:Bool = false;
        var _t_2772730:stdgo.GoString = ("" : stdgo.GoString);
        var _t_2772287:stdgo.GoString = ("" : stdgo.GoString);
        var patternBreak = false;
        var _i_2772679:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_2772294:stdgo.Error = (null : stdgo.Error);
        var _ok_2772290:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2771988i32;
                } else if (__value__ == (2771988i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2771998i32;
                } else if (__value__ == (2771998i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2772019i32;
                    } else {
                        _gotoNext = 2773304i32;
                    };
                } else if (__value__ == (2772019i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2772027 = __tmp__._0;
                        _chunk_2772043 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2772027 && (_chunk_2772043 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2772125i32;
                    } else {
                        _gotoNext = 2772287i32;
                    };
                } else if (__value__ == (2772125i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2772287i32;
                } else if (__value__ == (2772287i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2772043?.__copy__(), _name?.__copy__());
                        _t_2772287 = __tmp__._0?.__copy__();
                        _ok_2772290 = __tmp__._1;
                        _err_2772294 = __tmp__._2;
                    };
                    if ((_ok_2772290 && (((_t_2772287.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2772525i32;
                    } else {
                        _gotoNext = 2772557i32;
                    };
                } else if (__value__ == (2772525i32)) {
                    _name = _t_2772287?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2771998i32;
                } else if (__value__ == (2772557i32)) {
                    if (_err_2772294 != null) {
                        _gotoNext = 2772571i32;
                    } else {
                        _gotoNext = 2772600i32;
                    };
                } else if (__value__ == (2772571i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2772294 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2772600i32;
                } else if (__value__ == (2772600i32)) {
                    if (_star_2772027) {
                        _gotoNext = 2772608i32;
                    } else {
                        _gotoNext = 2773129i32;
                    };
                } else if (__value__ == (2772608i32)) {
                    _i_2772679 = (0 : stdgo.GoInt);
                    _gotoNext = 2772675i32;
                } else if (__value__ == (2772675i32)) {
                    if (((_i_2772679 < (_name.length) : Bool) && (_name[(_i_2772679 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2772724i32;
                    } else {
                        _gotoNext = 2773129i32;
                    };
                } else if (__value__ == (2772720i32)) {
                    _i_2772679++;
                    _gotoNext = 2772675i32;
                } else if (__value__ == (2772724i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2772043?.__copy__(), (_name.__slice__((_i_2772679 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2772730 = __tmp__._0?.__copy__();
                        _ok_2772733 = __tmp__._1;
                        _err_2772737 = __tmp__._2;
                    };
                    if (_ok_2772733) {
                        _gotoNext = 2772784i32;
                    } else {
                        _gotoNext = 2772961i32;
                    };
                } else if (__value__ == (2772784i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2772730.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2772891i32;
                    } else {
                        _gotoNext = 2772920i32;
                    };
                } else if (__value__ == (2772891i32)) {
                    _i_2772679++;
                    _gotoNext = 2772675i32;
                } else if (__value__ == (2772920i32)) {
                    _name = _t_2772730?.__copy__();
                    _gotoNext = 2771998i32;
                } else if (__value__ == (2772961i32)) {
                    if (_err_2772737 != null) {
                        _gotoNext = 2772975i32;
                    } else {
                        _gotoNext = 2772720i32;
                    };
                } else if (__value__ == (2772975i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2772737 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2772720i32;
                } else if (__value__ == (2773129i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2773129i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2773150i32;
                    } else {
                        _gotoNext = 2773282i32;
                    };
                } else if (__value__ == (2773150i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2772043 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2772043?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2773206 = __tmp__._2;
                        };
                        if (_err_2773206 != null) {
                            _gotoNext = 2773247i32;
                        } else {
                            _gotoNext = 2773129i32;
                        };
                    };
                } else if (__value__ == (2773247i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2773206 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2773129i32;
                } else if (__value__ == (2773282i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2771998i32;
                } else if (__value__ == (2773304i32)) {
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
