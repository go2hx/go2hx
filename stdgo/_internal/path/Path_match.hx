package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_2874391:stdgo.Error = (null : stdgo.Error);
        var _ok_2874387:Bool = false;
        var _err_2873948:stdgo.Error = (null : stdgo.Error);
        var _ok_2873944:Bool = false;
        var _t_2873941:stdgo.GoString = ("" : stdgo.GoString);
        var patternBreak = false;
        var _err_2874860:stdgo.Error = (null : stdgo.Error);
        var _t_2874384:stdgo.GoString = ("" : stdgo.GoString);
        var _i_2874333:stdgo.GoInt = (0 : stdgo.GoInt);
        var _chunk_2873697:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2873681:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2873642i32;
                } else if (__value__ == (2873642i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2873652i32;
                } else if (__value__ == (2873652i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2873673i32;
                    } else {
                        _gotoNext = 2874958i32;
                    };
                } else if (__value__ == (2873673i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2873681 = __tmp__._0;
                        _chunk_2873697 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2873681 && (_chunk_2873697 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2873779i32;
                    } else {
                        _gotoNext = 2873941i32;
                    };
                } else if (__value__ == (2873779i32)) {
                    return { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                    _gotoNext = 2873941i32;
                } else if (__value__ == (2873941i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2873697?.__copy__(), _name?.__copy__());
                        _t_2873941 = __tmp__._0?.__copy__();
                        _ok_2873944 = __tmp__._1;
                        _err_2873948 = __tmp__._2;
                    };
                    if ((_ok_2873944 && (((_t_2873941.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2874179i32;
                    } else {
                        _gotoNext = 2874211i32;
                    };
                } else if (__value__ == (2874179i32)) {
                    _name = _t_2873941?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2873652i32;
                } else if (__value__ == (2874211i32)) {
                    if (_err_2873948 != null) {
                        _gotoNext = 2874225i32;
                    } else {
                        _gotoNext = 2874254i32;
                    };
                } else if (__value__ == (2874225i32)) {
                    return { _0 : false, _1 : _err_2873948 };
                    _gotoNext = 2874254i32;
                } else if (__value__ == (2874254i32)) {
                    if (_star_2873681) {
                        _gotoNext = 2874262i32;
                    } else {
                        _gotoNext = 2874783i32;
                    };
                } else if (__value__ == (2874262i32)) {
                    _i_2874333 = (0 : stdgo.GoInt);
                    _gotoNext = 2874329i32;
                } else if (__value__ == (2874329i32)) {
                    if (((_i_2874333 < (_name.length) : Bool) && (_name[(_i_2874333 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2874378i32;
                    } else {
                        _gotoNext = 2874783i32;
                    };
                } else if (__value__ == (2874374i32)) {
                    _i_2874333++;
                    _gotoNext = 2874329i32;
                } else if (__value__ == (2874378i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2873697?.__copy__(), (_name.__slice__((_i_2874333 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2874384 = __tmp__._0?.__copy__();
                        _ok_2874387 = __tmp__._1;
                        _err_2874391 = __tmp__._2;
                    };
                    if (_ok_2874387) {
                        _gotoNext = 2874438i32;
                    } else {
                        _gotoNext = 2874615i32;
                    };
                } else if (__value__ == (2874438i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2874384.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2874545i32;
                    } else {
                        _gotoNext = 2874574i32;
                    };
                } else if (__value__ == (2874545i32)) {
                    _i_2874333++;
                    _gotoNext = 2874329i32;
                } else if (__value__ == (2874574i32)) {
                    _name = _t_2874384?.__copy__();
                    _gotoNext = 2873652i32;
                } else if (__value__ == (2874615i32)) {
                    if (_err_2874391 != null) {
                        _gotoNext = 2874629i32;
                    } else {
                        _gotoNext = 2874374i32;
                    };
                } else if (__value__ == (2874629i32)) {
                    return { _0 : false, _1 : _err_2874391 };
                    _gotoNext = 2874374i32;
                } else if (__value__ == (2874783i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2874783i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2874804i32;
                    } else {
                        _gotoNext = 2874936i32;
                    };
                } else if (__value__ == (2874804i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2873697 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2873697?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2874860 = __tmp__._2;
                        };
                        if (_err_2874860 != null) {
                            _gotoNext = 2874901i32;
                        } else {
                            _gotoNext = 2874936i32;
                        };
                    };
                } else if (__value__ == (2874901i32)) {
                    return { _0 : false, _1 : _err_2874860 };
                    _gotoNext = 2874936i32;
                } else if (__value__ == (2874936i32)) {
                    return { _0 : false, _1 : (null : stdgo.Error) };
                    _gotoNext = 2873652i32;
                } else if (__value__ == (2874958i32)) {
                    return { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
