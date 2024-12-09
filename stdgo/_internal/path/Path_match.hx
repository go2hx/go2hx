package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_2584466:stdgo.Error = (null : stdgo.Error);
        var _t_2583990:stdgo.GoString = ("" : stdgo.GoString);
        var _i_2583939:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_2583554:stdgo.Error = (null : stdgo.Error);
        var _t_2583547:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_2583303:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2583287:Bool = false;
        var patternBreak = false;
        var _err_2583997:stdgo.Error = (null : stdgo.Error);
        var _ok_2583993:Bool = false;
        var _ok_2583550:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2583248i32;
                } else if (__value__ == (2583248i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2583258i32;
                } else if (__value__ == (2583258i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2583279i32;
                    } else {
                        _gotoNext = 2584564i32;
                    };
                } else if (__value__ == (2583279i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2583287 = __tmp__._0;
                        _chunk_2583303 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2583287 && (_chunk_2583303 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2583385i32;
                    } else {
                        _gotoNext = 2583547i32;
                    };
                } else if (__value__ == (2583385i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2583547i32;
                } else if (__value__ == (2583547i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2583303?.__copy__(), _name?.__copy__());
                        _t_2583547 = __tmp__._0?.__copy__();
                        _ok_2583550 = __tmp__._1;
                        _err_2583554 = __tmp__._2;
                    };
                    if ((_ok_2583550 && (((_t_2583547.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2583785i32;
                    } else {
                        _gotoNext = 2583817i32;
                    };
                } else if (__value__ == (2583785i32)) {
                    _name = _t_2583547?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2583258i32;
                } else if (__value__ == (2583817i32)) {
                    if (_err_2583554 != null) {
                        _gotoNext = 2583831i32;
                    } else {
                        _gotoNext = 2583860i32;
                    };
                } else if (__value__ == (2583831i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2583554 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2583860i32;
                } else if (__value__ == (2583860i32)) {
                    if (_star_2583287) {
                        _gotoNext = 2583868i32;
                    } else {
                        _gotoNext = 2584389i32;
                    };
                } else if (__value__ == (2583868i32)) {
                    _i_2583939 = (0 : stdgo.GoInt);
                    _gotoNext = 2583935i32;
                } else if (__value__ == (2583935i32)) {
                    if (((_i_2583939 < (_name.length) : Bool) && (_name[(_i_2583939 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2583984i32;
                    } else {
                        _gotoNext = 2584389i32;
                    };
                } else if (__value__ == (2583980i32)) {
                    _i_2583939++;
                    _gotoNext = 2583935i32;
                } else if (__value__ == (2583984i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2583303?.__copy__(), (_name.__slice__((_i_2583939 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2583990 = __tmp__._0?.__copy__();
                        _ok_2583993 = __tmp__._1;
                        _err_2583997 = __tmp__._2;
                    };
                    if (_ok_2583993) {
                        _gotoNext = 2584044i32;
                    } else {
                        _gotoNext = 2584221i32;
                    };
                } else if (__value__ == (2584044i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2583990.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2584151i32;
                    } else {
                        _gotoNext = 2584180i32;
                    };
                } else if (__value__ == (2584151i32)) {
                    _i_2583939++;
                    _gotoNext = 2583935i32;
                } else if (__value__ == (2584180i32)) {
                    _name = _t_2583990?.__copy__();
                    _gotoNext = 2583258i32;
                } else if (__value__ == (2584221i32)) {
                    if (_err_2583997 != null) {
                        _gotoNext = 2584235i32;
                    } else {
                        _gotoNext = 2583980i32;
                    };
                } else if (__value__ == (2584235i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2583997 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2583980i32;
                } else if (__value__ == (2584389i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2584389i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2584410i32;
                    } else {
                        _gotoNext = 2584542i32;
                    };
                } else if (__value__ == (2584410i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2583303 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2583303?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2584466 = __tmp__._2;
                        };
                        if (_err_2584466 != null) {
                            _gotoNext = 2584507i32;
                        } else {
                            _gotoNext = 2584542i32;
                        };
                    };
                } else if (__value__ == (2584507i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2584466 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2584542i32;
                } else if (__value__ == (2584542i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2583258i32;
                } else if (__value__ == (2584564i32)) {
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
