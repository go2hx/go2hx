package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_2596138:stdgo.Error = (null : stdgo.Error);
        var _err_2595695:stdgo.Error = (null : stdgo.Error);
        var _ok_2595691:Bool = false;
        var _t_2595688:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2595428:Bool = false;
        var patternBreak = false;
        var _err_2596607:stdgo.Error = (null : stdgo.Error);
        var _ok_2596134:Bool = false;
        var _t_2596131:stdgo.GoString = ("" : stdgo.GoString);
        var _i_2596080:stdgo.GoInt = (0 : stdgo.GoInt);
        var _chunk_2595444:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2595389i32;
                } else if (__value__ == (2595389i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2595399i32;
                } else if (__value__ == (2595399i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2595420i32;
                    } else {
                        _gotoNext = 2596705i32;
                    };
                } else if (__value__ == (2595420i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2595428 = __tmp__._0;
                        _chunk_2595444 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2595428 && (_chunk_2595444 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2595526i32;
                    } else {
                        _gotoNext = 2595688i32;
                    };
                } else if (__value__ == (2595526i32)) {
                    return { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                    _gotoNext = 2595688i32;
                } else if (__value__ == (2595688i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2595444?.__copy__(), _name?.__copy__());
                        _t_2595688 = __tmp__._0?.__copy__();
                        _ok_2595691 = __tmp__._1;
                        _err_2595695 = __tmp__._2;
                    };
                    if ((_ok_2595691 && (((_t_2595688.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2595926i32;
                    } else {
                        _gotoNext = 2595958i32;
                    };
                } else if (__value__ == (2595926i32)) {
                    _name = _t_2595688?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2595399i32;
                } else if (__value__ == (2595958i32)) {
                    if (_err_2595695 != null) {
                        _gotoNext = 2595972i32;
                    } else {
                        _gotoNext = 2596001i32;
                    };
                } else if (__value__ == (2595972i32)) {
                    return { _0 : false, _1 : _err_2595695 };
                    _gotoNext = 2596001i32;
                } else if (__value__ == (2596001i32)) {
                    if (_star_2595428) {
                        _gotoNext = 2596009i32;
                    } else {
                        _gotoNext = 2596530i32;
                    };
                } else if (__value__ == (2596009i32)) {
                    _i_2596080 = (0 : stdgo.GoInt);
                    _gotoNext = 2596076i32;
                } else if (__value__ == (2596076i32)) {
                    if (((_i_2596080 < (_name.length) : Bool) && (_name[(_i_2596080 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2596125i32;
                    } else {
                        _gotoNext = 2596530i32;
                    };
                } else if (__value__ == (2596121i32)) {
                    _i_2596080++;
                    _gotoNext = 2596076i32;
                } else if (__value__ == (2596125i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2595444?.__copy__(), (_name.__slice__((_i_2596080 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2596131 = __tmp__._0?.__copy__();
                        _ok_2596134 = __tmp__._1;
                        _err_2596138 = __tmp__._2;
                    };
                    if (_ok_2596134) {
                        _gotoNext = 2596185i32;
                    } else {
                        _gotoNext = 2596362i32;
                    };
                } else if (__value__ == (2596185i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2596131.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2596292i32;
                    } else {
                        _gotoNext = 2596321i32;
                    };
                } else if (__value__ == (2596292i32)) {
                    _i_2596080++;
                    _gotoNext = 2596076i32;
                } else if (__value__ == (2596321i32)) {
                    _name = _t_2596131?.__copy__();
                    _gotoNext = 2595399i32;
                } else if (__value__ == (2596362i32)) {
                    if (_err_2596138 != null) {
                        _gotoNext = 2596376i32;
                    } else {
                        _gotoNext = 2596121i32;
                    };
                } else if (__value__ == (2596376i32)) {
                    return { _0 : false, _1 : _err_2596138 };
                    _gotoNext = 2596121i32;
                } else if (__value__ == (2596530i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2596530i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2596551i32;
                    } else {
                        _gotoNext = 2596683i32;
                    };
                } else if (__value__ == (2596551i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2595444 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2595444?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2596607 = __tmp__._2;
                        };
                        if (_err_2596607 != null) {
                            _gotoNext = 2596648i32;
                        } else {
                            _gotoNext = 2596683i32;
                        };
                    };
                } else if (__value__ == (2596648i32)) {
                    return { _0 : false, _1 : _err_2596607 };
                    _gotoNext = 2596683i32;
                } else if (__value__ == (2596683i32)) {
                    return { _0 : false, _1 : (null : stdgo.Error) };
                    _gotoNext = 2595399i32;
                } else if (__value__ == (2596705i32)) {
                    return { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
