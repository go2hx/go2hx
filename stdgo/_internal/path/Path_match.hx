package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_2654387:stdgo.Error = (null : stdgo.Error);
        var _i_2653860:stdgo.GoInt = (0 : stdgo.GoInt);
        var _t_2653468:stdgo.GoString = ("" : stdgo.GoString);
        var _ok_2653914:Bool = false;
        var _t_2653911:stdgo.GoString = ("" : stdgo.GoString);
        var _err_2653475:stdgo.Error = (null : stdgo.Error);
        var _ok_2653471:Bool = false;
        var _chunk_2653224:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2653208:Bool = false;
        var patternBreak = false;
        var _err_2653918:stdgo.Error = (null : stdgo.Error);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2653169i32;
                } else if (__value__ == (2653169i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2653179i32;
                } else if (__value__ == (2653179i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2653200i32;
                    } else {
                        _gotoNext = 2654485i32;
                    };
                } else if (__value__ == (2653200i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2653208 = __tmp__._0;
                        _chunk_2653224 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2653208 && (_chunk_2653224 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2653306i32;
                    } else {
                        _gotoNext = 2653468i32;
                    };
                } else if (__value__ == (2653306i32)) {
                    return { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                    _gotoNext = 2653468i32;
                } else if (__value__ == (2653468i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2653224?.__copy__(), _name?.__copy__());
                        _t_2653468 = __tmp__._0?.__copy__();
                        _ok_2653471 = __tmp__._1;
                        _err_2653475 = __tmp__._2;
                    };
                    if ((_ok_2653471 && (((_t_2653468.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2653706i32;
                    } else {
                        _gotoNext = 2653738i32;
                    };
                } else if (__value__ == (2653706i32)) {
                    _name = _t_2653468?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2653179i32;
                } else if (__value__ == (2653738i32)) {
                    if (_err_2653475 != null) {
                        _gotoNext = 2653752i32;
                    } else {
                        _gotoNext = 2653781i32;
                    };
                } else if (__value__ == (2653752i32)) {
                    return { _0 : false, _1 : _err_2653475 };
                    _gotoNext = 2653781i32;
                } else if (__value__ == (2653781i32)) {
                    if (_star_2653208) {
                        _gotoNext = 2653789i32;
                    } else {
                        _gotoNext = 2654310i32;
                    };
                } else if (__value__ == (2653789i32)) {
                    _i_2653860 = (0 : stdgo.GoInt);
                    _gotoNext = 2653856i32;
                } else if (__value__ == (2653856i32)) {
                    if (((_i_2653860 < (_name.length) : Bool) && (_name[(_i_2653860 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2653905i32;
                    } else {
                        _gotoNext = 2654310i32;
                    };
                } else if (__value__ == (2653901i32)) {
                    _i_2653860++;
                    _gotoNext = 2653856i32;
                } else if (__value__ == (2653905i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2653224?.__copy__(), (_name.__slice__((_i_2653860 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2653911 = __tmp__._0?.__copy__();
                        _ok_2653914 = __tmp__._1;
                        _err_2653918 = __tmp__._2;
                    };
                    if (_ok_2653914) {
                        _gotoNext = 2653965i32;
                    } else {
                        _gotoNext = 2654142i32;
                    };
                } else if (__value__ == (2653965i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2653911.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2654072i32;
                    } else {
                        _gotoNext = 2654101i32;
                    };
                } else if (__value__ == (2654072i32)) {
                    _i_2653860++;
                    _gotoNext = 2653856i32;
                } else if (__value__ == (2654101i32)) {
                    _name = _t_2653911?.__copy__();
                    _gotoNext = 2653179i32;
                } else if (__value__ == (2654142i32)) {
                    if (_err_2653918 != null) {
                        _gotoNext = 2654156i32;
                    } else {
                        _gotoNext = 2653901i32;
                    };
                } else if (__value__ == (2654156i32)) {
                    return { _0 : false, _1 : _err_2653918 };
                    _gotoNext = 2653901i32;
                } else if (__value__ == (2654310i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2654310i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2654331i32;
                    } else {
                        _gotoNext = 2654463i32;
                    };
                } else if (__value__ == (2654331i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2653224 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2653224?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2654387 = __tmp__._2;
                        };
                        if (_err_2654387 != null) {
                            _gotoNext = 2654428i32;
                        } else {
                            _gotoNext = 2654463i32;
                        };
                    };
                } else if (__value__ == (2654428i32)) {
                    return { _0 : false, _1 : _err_2654387 };
                    _gotoNext = 2654463i32;
                } else if (__value__ == (2654463i32)) {
                    return { _0 : false, _1 : (null : stdgo.Error) };
                    _gotoNext = 2653179i32;
                } else if (__value__ == (2654485i32)) {
                    return { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
