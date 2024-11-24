package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _ok_2680191:Bool = false;
        var _i_2680137:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_2679752:stdgo.Error = (null : stdgo.Error);
        var _ok_2679748:Bool = false;
        var _t_2679745:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_2679501:stdgo.GoString = ("" : stdgo.GoString);
        var _err_2680664:stdgo.Error = (null : stdgo.Error);
        var _err_2680195:stdgo.Error = (null : stdgo.Error);
        var _t_2680188:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2679485:Bool = false;
        var patternBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2679446i32;
                } else if (__value__ == (2679446i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2679456i32;
                } else if (__value__ == (2679456i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2679477i32;
                    } else {
                        _gotoNext = 2680762i32;
                    };
                } else if (__value__ == (2679477i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2679485 = __tmp__._0;
                        _chunk_2679501 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2679485 && (_chunk_2679501 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2679583i32;
                    } else {
                        _gotoNext = 2679745i32;
                    };
                } else if (__value__ == (2679583i32)) {
                    return { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                    _gotoNext = 2679745i32;
                } else if (__value__ == (2679745i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2679501?.__copy__(), _name?.__copy__());
                        _t_2679745 = __tmp__._0?.__copy__();
                        _ok_2679748 = __tmp__._1;
                        _err_2679752 = __tmp__._2;
                    };
                    if ((_ok_2679748 && (((_t_2679745.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2679983i32;
                    } else {
                        _gotoNext = 2680015i32;
                    };
                } else if (__value__ == (2679983i32)) {
                    _name = _t_2679745?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2679456i32;
                } else if (__value__ == (2680015i32)) {
                    if (_err_2679752 != null) {
                        _gotoNext = 2680029i32;
                    } else {
                        _gotoNext = 2680058i32;
                    };
                } else if (__value__ == (2680029i32)) {
                    return { _0 : false, _1 : _err_2679752 };
                    _gotoNext = 2680058i32;
                } else if (__value__ == (2680058i32)) {
                    if (_star_2679485) {
                        _gotoNext = 2680066i32;
                    } else {
                        _gotoNext = 2680587i32;
                    };
                } else if (__value__ == (2680066i32)) {
                    _i_2680137 = (0 : stdgo.GoInt);
                    _gotoNext = 2680133i32;
                } else if (__value__ == (2680133i32)) {
                    if (((_i_2680137 < (_name.length) : Bool) && (_name[(_i_2680137 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2680182i32;
                    } else {
                        _gotoNext = 2680587i32;
                    };
                } else if (__value__ == (2680178i32)) {
                    _i_2680137++;
                    _gotoNext = 2680133i32;
                } else if (__value__ == (2680182i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2679501?.__copy__(), (_name.__slice__((_i_2680137 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2680188 = __tmp__._0?.__copy__();
                        _ok_2680191 = __tmp__._1;
                        _err_2680195 = __tmp__._2;
                    };
                    if (_ok_2680191) {
                        _gotoNext = 2680242i32;
                    } else {
                        _gotoNext = 2680419i32;
                    };
                } else if (__value__ == (2680242i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2680188.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2680349i32;
                    } else {
                        _gotoNext = 2680378i32;
                    };
                } else if (__value__ == (2680349i32)) {
                    _i_2680137++;
                    _gotoNext = 2680133i32;
                } else if (__value__ == (2680378i32)) {
                    _name = _t_2680188?.__copy__();
                    _gotoNext = 2679456i32;
                } else if (__value__ == (2680419i32)) {
                    if (_err_2680195 != null) {
                        _gotoNext = 2680433i32;
                    } else {
                        _gotoNext = 2680178i32;
                    };
                } else if (__value__ == (2680433i32)) {
                    return { _0 : false, _1 : _err_2680195 };
                    _gotoNext = 2680178i32;
                } else if (__value__ == (2680587i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2680587i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2680608i32;
                    } else {
                        _gotoNext = 2680740i32;
                    };
                } else if (__value__ == (2680608i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2679501 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2679501?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2680664 = __tmp__._2;
                        };
                        if (_err_2680664 != null) {
                            _gotoNext = 2680705i32;
                        } else {
                            _gotoNext = 2680740i32;
                        };
                    };
                } else if (__value__ == (2680705i32)) {
                    return { _0 : false, _1 : _err_2680664 };
                    _gotoNext = 2680740i32;
                } else if (__value__ == (2680740i32)) {
                    return { _0 : false, _1 : (null : stdgo.Error) };
                    _gotoNext = 2679456i32;
                } else if (__value__ == (2680762i32)) {
                    return { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
