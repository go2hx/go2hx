package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _t_2854476:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_2854232:stdgo.GoString = ("" : stdgo.GoString);
        var _err_2854926:stdgo.Error = (null : stdgo.Error);
        var _ok_2854479:Bool = false;
        var _star_2854216:Bool = false;
        var patternBreak = false;
        var _err_2855395:stdgo.Error = (null : stdgo.Error);
        var _ok_2854922:Bool = false;
        var _t_2854919:stdgo.GoString = ("" : stdgo.GoString);
        var _i_2854868:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_2854483:stdgo.Error = (null : stdgo.Error);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2854177i32;
                } else if (__value__ == (2854177i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2854187i32;
                } else if (__value__ == (2854187i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2854208i32;
                    } else {
                        _gotoNext = 2855493i32;
                    };
                } else if (__value__ == (2854208i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2854216 = __tmp__._0;
                        _chunk_2854232 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2854216 && (_chunk_2854232 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2854314i32;
                    } else {
                        _gotoNext = 2854476i32;
                    };
                } else if (__value__ == (2854314i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2854476i32;
                } else if (__value__ == (2854476i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2854232?.__copy__(), _name?.__copy__());
                        _t_2854476 = __tmp__._0?.__copy__();
                        _ok_2854479 = __tmp__._1;
                        _err_2854483 = __tmp__._2;
                    };
                    if ((_ok_2854479 && (((_t_2854476.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2854714i32;
                    } else {
                        _gotoNext = 2854746i32;
                    };
                } else if (__value__ == (2854714i32)) {
                    _name = _t_2854476?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2854187i32;
                } else if (__value__ == (2854746i32)) {
                    if (_err_2854483 != null) {
                        _gotoNext = 2854760i32;
                    } else {
                        _gotoNext = 2854789i32;
                    };
                } else if (__value__ == (2854760i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2854483 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2854789i32;
                } else if (__value__ == (2854789i32)) {
                    if (_star_2854216) {
                        _gotoNext = 2854797i32;
                    } else {
                        _gotoNext = 2855318i32;
                    };
                } else if (__value__ == (2854797i32)) {
                    _i_2854868 = (0 : stdgo.GoInt);
                    _gotoNext = 2854864i32;
                } else if (__value__ == (2854864i32)) {
                    if (((_i_2854868 < (_name.length) : Bool) && (_name[(_i_2854868 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2854913i32;
                    } else {
                        _gotoNext = 2855318i32;
                    };
                } else if (__value__ == (2854909i32)) {
                    _i_2854868++;
                    _gotoNext = 2854864i32;
                } else if (__value__ == (2854913i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2854232?.__copy__(), (_name.__slice__((_i_2854868 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2854919 = __tmp__._0?.__copy__();
                        _ok_2854922 = __tmp__._1;
                        _err_2854926 = __tmp__._2;
                    };
                    if (_ok_2854922) {
                        _gotoNext = 2854973i32;
                    } else {
                        _gotoNext = 2855150i32;
                    };
                } else if (__value__ == (2854973i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2854919.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2855080i32;
                    } else {
                        _gotoNext = 2855109i32;
                    };
                } else if (__value__ == (2855080i32)) {
                    _i_2854868++;
                    _gotoNext = 2854864i32;
                } else if (__value__ == (2855109i32)) {
                    _name = _t_2854919?.__copy__();
                    _gotoNext = 2854187i32;
                } else if (__value__ == (2855150i32)) {
                    if (_err_2854926 != null) {
                        _gotoNext = 2855164i32;
                    } else {
                        _gotoNext = 2854909i32;
                    };
                } else if (__value__ == (2855164i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2854926 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2854909i32;
                } else if (__value__ == (2855318i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2855318i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2855339i32;
                    } else {
                        _gotoNext = 2855471i32;
                    };
                } else if (__value__ == (2855339i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2854232 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2854232?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2855395 = __tmp__._2;
                        };
                        if (_err_2855395 != null) {
                            _gotoNext = 2855436i32;
                        } else {
                            _gotoNext = 2855318i32;
                        };
                    };
                } else if (__value__ == (2855436i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2855395 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2855318i32;
                } else if (__value__ == (2855471i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2854187i32;
                } else if (__value__ == (2855493i32)) {
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
