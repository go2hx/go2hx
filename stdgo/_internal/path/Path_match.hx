package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_2556479:stdgo.Error = (null : stdgo.Error);
        var _err_2556010:stdgo.Error = (null : stdgo.Error);
        var _t_2556003:stdgo.GoString = ("" : stdgo.GoString);
        var _err_2555567:stdgo.Error = (null : stdgo.Error);
        var _t_2555560:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2555300:Bool = false;
        var _ok_2556006:Bool = false;
        var _i_2555952:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_2555563:Bool = false;
        var _chunk_2555316:stdgo.GoString = ("" : stdgo.GoString);
        var patternBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2555261i32;
                } else if (__value__ == (2555261i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2555271i32;
                } else if (__value__ == (2555271i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2555292i32;
                    } else {
                        _gotoNext = 2556577i32;
                    };
                } else if (__value__ == (2555292i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2555300 = __tmp__._0;
                        _chunk_2555316 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2555300 && (_chunk_2555316 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2555398i32;
                    } else {
                        _gotoNext = 2555560i32;
                    };
                } else if (__value__ == (2555398i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2555560i32;
                } else if (__value__ == (2555560i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2555316?.__copy__(), _name?.__copy__());
                        _t_2555560 = __tmp__._0?.__copy__();
                        _ok_2555563 = __tmp__._1;
                        _err_2555567 = __tmp__._2;
                    };
                    if ((_ok_2555563 && (((_t_2555560.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2555798i32;
                    } else {
                        _gotoNext = 2555830i32;
                    };
                } else if (__value__ == (2555798i32)) {
                    _name = _t_2555560?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2555271i32;
                } else if (__value__ == (2555830i32)) {
                    if (_err_2555567 != null) {
                        _gotoNext = 2555844i32;
                    } else {
                        _gotoNext = 2555873i32;
                    };
                } else if (__value__ == (2555844i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2555567 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2555873i32;
                } else if (__value__ == (2555873i32)) {
                    if (_star_2555300) {
                        _gotoNext = 2555881i32;
                    } else {
                        _gotoNext = 2556402i32;
                    };
                } else if (__value__ == (2555881i32)) {
                    _i_2555952 = (0 : stdgo.GoInt);
                    _gotoNext = 2555948i32;
                } else if (__value__ == (2555948i32)) {
                    if (((_i_2555952 < (_name.length) : Bool) && (_name[(_i_2555952 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2555997i32;
                    } else {
                        _gotoNext = 2556402i32;
                    };
                } else if (__value__ == (2555993i32)) {
                    _i_2555952++;
                    _gotoNext = 2555948i32;
                } else if (__value__ == (2555997i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2555316?.__copy__(), (_name.__slice__((_i_2555952 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2556003 = __tmp__._0?.__copy__();
                        _ok_2556006 = __tmp__._1;
                        _err_2556010 = __tmp__._2;
                    };
                    if (_ok_2556006) {
                        _gotoNext = 2556057i32;
                    } else {
                        _gotoNext = 2556234i32;
                    };
                } else if (__value__ == (2556057i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2556003.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2556164i32;
                    } else {
                        _gotoNext = 2556193i32;
                    };
                } else if (__value__ == (2556164i32)) {
                    _i_2555952++;
                    _gotoNext = 2555948i32;
                } else if (__value__ == (2556193i32)) {
                    _name = _t_2556003?.__copy__();
                    _gotoNext = 2555271i32;
                } else if (__value__ == (2556234i32)) {
                    if (_err_2556010 != null) {
                        _gotoNext = 2556248i32;
                    } else {
                        _gotoNext = 2555993i32;
                    };
                } else if (__value__ == (2556248i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2556010 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2555993i32;
                } else if (__value__ == (2556402i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2556402i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2556423i32;
                    } else {
                        _gotoNext = 2556555i32;
                    };
                } else if (__value__ == (2556423i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2555316 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2555316?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2556479 = __tmp__._2;
                        };
                        if (_err_2556479 != null) {
                            _gotoNext = 2556520i32;
                        } else {
                            _gotoNext = 2556402i32;
                        };
                    };
                } else if (__value__ == (2556520i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2556479 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2556402i32;
                } else if (__value__ == (2556555i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2555271i32;
                } else if (__value__ == (2556577i32)) {
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
