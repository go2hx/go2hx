package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _chunk_2730461:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2730445:Bool = false;
        var patternBreak = false;
        var _err_2731155:stdgo.Error = (null : stdgo.Error);
        var _err_2730712:stdgo.Error = (null : stdgo.Error);
        var _ok_2730708:Bool = false;
        var _t_2730705:stdgo.GoString = ("" : stdgo.GoString);
        var _ok_2731151:Bool = false;
        var _t_2731148:stdgo.GoString = ("" : stdgo.GoString);
        var _i_2731097:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_2731624:stdgo.Error = (null : stdgo.Error);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2730406i32;
                } else if (__value__ == (2730406i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2730416i32;
                } else if (__value__ == (2730416i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2730437i32;
                    } else {
                        _gotoNext = 2731722i32;
                    };
                } else if (__value__ == (2730437i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2730445 = __tmp__._0;
                        _chunk_2730461 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2730445 && (_chunk_2730461 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2730543i32;
                    } else {
                        _gotoNext = 2730705i32;
                    };
                } else if (__value__ == (2730543i32)) {
                    return { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                    _gotoNext = 2730705i32;
                } else if (__value__ == (2730705i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2730461?.__copy__(), _name?.__copy__());
                        _t_2730705 = __tmp__._0?.__copy__();
                        _ok_2730708 = __tmp__._1;
                        _err_2730712 = __tmp__._2;
                    };
                    if ((_ok_2730708 && (((_t_2730705.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2730943i32;
                    } else {
                        _gotoNext = 2730975i32;
                    };
                } else if (__value__ == (2730943i32)) {
                    _name = _t_2730705?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2730416i32;
                } else if (__value__ == (2730975i32)) {
                    if (_err_2730712 != null) {
                        _gotoNext = 2730989i32;
                    } else {
                        _gotoNext = 2731018i32;
                    };
                } else if (__value__ == (2730989i32)) {
                    return { _0 : false, _1 : _err_2730712 };
                    _gotoNext = 2731018i32;
                } else if (__value__ == (2731018i32)) {
                    if (_star_2730445) {
                        _gotoNext = 2731026i32;
                    } else {
                        _gotoNext = 2731547i32;
                    };
                } else if (__value__ == (2731026i32)) {
                    _i_2731097 = (0 : stdgo.GoInt);
                    _gotoNext = 2731093i32;
                } else if (__value__ == (2731093i32)) {
                    if (((_i_2731097 < (_name.length) : Bool) && (_name[(_i_2731097 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2731142i32;
                    } else {
                        _gotoNext = 2731547i32;
                    };
                } else if (__value__ == (2731138i32)) {
                    _i_2731097++;
                    _gotoNext = 2731093i32;
                } else if (__value__ == (2731142i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2730461?.__copy__(), (_name.__slice__((_i_2731097 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2731148 = __tmp__._0?.__copy__();
                        _ok_2731151 = __tmp__._1;
                        _err_2731155 = __tmp__._2;
                    };
                    if (_ok_2731151) {
                        _gotoNext = 2731202i32;
                    } else {
                        _gotoNext = 2731379i32;
                    };
                } else if (__value__ == (2731202i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2731148.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2731309i32;
                    } else {
                        _gotoNext = 2731338i32;
                    };
                } else if (__value__ == (2731309i32)) {
                    _i_2731097++;
                    _gotoNext = 2731093i32;
                } else if (__value__ == (2731338i32)) {
                    _name = _t_2731148?.__copy__();
                    _gotoNext = 2730416i32;
                } else if (__value__ == (2731379i32)) {
                    if (_err_2731155 != null) {
                        _gotoNext = 2731393i32;
                    } else {
                        _gotoNext = 2731138i32;
                    };
                } else if (__value__ == (2731393i32)) {
                    return { _0 : false, _1 : _err_2731155 };
                    _gotoNext = 2731138i32;
                } else if (__value__ == (2731547i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2731547i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2731568i32;
                    } else {
                        _gotoNext = 2731700i32;
                    };
                } else if (__value__ == (2731568i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2730461 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2730461?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2731624 = __tmp__._2;
                        };
                        if (_err_2731624 != null) {
                            _gotoNext = 2731665i32;
                        } else {
                            _gotoNext = 2731700i32;
                        };
                    };
                } else if (__value__ == (2731665i32)) {
                    return { _0 : false, _1 : _err_2731624 };
                    _gotoNext = 2731700i32;
                } else if (__value__ == (2731700i32)) {
                    return { _0 : false, _1 : (null : stdgo.Error) };
                    _gotoNext = 2730416i32;
                } else if (__value__ == (2731722i32)) {
                    return { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
