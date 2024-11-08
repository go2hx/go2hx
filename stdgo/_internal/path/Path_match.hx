package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var patternBreak = false;
        var _t_2896539:stdgo.GoString = ("" : stdgo.GoString);
        var _err_2896103:stdgo.Error = (null : stdgo.Error);
        var _star_2895836:Bool = false;
        var _chunk_2895852:stdgo.GoString = ("" : stdgo.GoString);
        var _err_2897015:stdgo.Error = (null : stdgo.Error);
        var _err_2896546:stdgo.Error = (null : stdgo.Error);
        var _ok_2896542:Bool = false;
        var _i_2896488:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_2896099:Bool = false;
        var _t_2896096:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2895797i32;
                } else if (__value__ == (2895797i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2895807i32;
                } else if (__value__ == (2895807i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2895828i32;
                    } else {
                        _gotoNext = 2897113i32;
                    };
                } else if (__value__ == (2895828i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2895836 = __tmp__._0;
                        _chunk_2895852 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2895836 && (_chunk_2895852 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2895934i32;
                    } else {
                        _gotoNext = 2896096i32;
                    };
                } else if (__value__ == (2895934i32)) {
                    return { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                    _gotoNext = 2896096i32;
                } else if (__value__ == (2896096i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2895852?.__copy__(), _name?.__copy__());
                        _t_2896096 = __tmp__._0?.__copy__();
                        _ok_2896099 = __tmp__._1;
                        _err_2896103 = __tmp__._2;
                    };
                    if ((_ok_2896099 && (((_t_2896096.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2896334i32;
                    } else {
                        _gotoNext = 2896366i32;
                    };
                } else if (__value__ == (2896334i32)) {
                    _name = _t_2896096?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2895807i32;
                } else if (__value__ == (2896366i32)) {
                    if (_err_2896103 != null) {
                        _gotoNext = 2896380i32;
                    } else {
                        _gotoNext = 2896409i32;
                    };
                } else if (__value__ == (2896380i32)) {
                    return { _0 : false, _1 : _err_2896103 };
                    _gotoNext = 2896409i32;
                } else if (__value__ == (2896409i32)) {
                    if (_star_2895836) {
                        _gotoNext = 2896417i32;
                    } else {
                        _gotoNext = 2896938i32;
                    };
                } else if (__value__ == (2896417i32)) {
                    _i_2896488 = (0 : stdgo.GoInt);
                    _gotoNext = 2896484i32;
                } else if (__value__ == (2896484i32)) {
                    if (((_i_2896488 < (_name.length) : Bool) && (_name[(_i_2896488 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2896533i32;
                    } else {
                        _gotoNext = 2896938i32;
                    };
                } else if (__value__ == (2896529i32)) {
                    _i_2896488++;
                    _gotoNext = 2896484i32;
                } else if (__value__ == (2896533i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2895852?.__copy__(), (_name.__slice__((_i_2896488 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2896539 = __tmp__._0?.__copy__();
                        _ok_2896542 = __tmp__._1;
                        _err_2896546 = __tmp__._2;
                    };
                    if (_ok_2896542) {
                        _gotoNext = 2896593i32;
                    } else {
                        _gotoNext = 2896770i32;
                    };
                } else if (__value__ == (2896593i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2896539.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2896700i32;
                    } else {
                        _gotoNext = 2896729i32;
                    };
                } else if (__value__ == (2896700i32)) {
                    _i_2896488++;
                    _gotoNext = 2896484i32;
                } else if (__value__ == (2896729i32)) {
                    _name = _t_2896539?.__copy__();
                    _gotoNext = 2895807i32;
                } else if (__value__ == (2896770i32)) {
                    if (_err_2896546 != null) {
                        _gotoNext = 2896784i32;
                    } else {
                        _gotoNext = 2896529i32;
                    };
                } else if (__value__ == (2896784i32)) {
                    return { _0 : false, _1 : _err_2896546 };
                    _gotoNext = 2896529i32;
                } else if (__value__ == (2896938i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2896938i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2896959i32;
                    } else {
                        _gotoNext = 2897091i32;
                    };
                } else if (__value__ == (2896959i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2895852 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2895852?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2897015 = __tmp__._2;
                        };
                        if (_err_2897015 != null) {
                            _gotoNext = 2897056i32;
                        } else {
                            _gotoNext = 2897091i32;
                        };
                    };
                } else if (__value__ == (2897056i32)) {
                    return { _0 : false, _1 : _err_2897015 };
                    _gotoNext = 2897091i32;
                } else if (__value__ == (2897091i32)) {
                    return { _0 : false, _1 : (null : stdgo.Error) };
                    _gotoNext = 2895807i32;
                } else if (__value__ == (2897113i32)) {
                    return { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
