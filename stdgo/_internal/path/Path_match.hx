package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_2597238:stdgo.Error = (null : stdgo.Error);
        var _err_2596795:stdgo.Error = (null : stdgo.Error);
        var _ok_2596791:Bool = false;
        var _t_2596788:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2596528:Bool = false;
        var _err_2597707:stdgo.Error = (null : stdgo.Error);
        var _ok_2597234:Bool = false;
        var _t_2597231:stdgo.GoString = ("" : stdgo.GoString);
        var _i_2597180:stdgo.GoInt = (0 : stdgo.GoInt);
        var _chunk_2596544:stdgo.GoString = ("" : stdgo.GoString);
        var patternBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2596489i32;
                } else if (__value__ == (2596489i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2596499i32;
                } else if (__value__ == (2596499i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2596520i32;
                    } else {
                        _gotoNext = 2597805i32;
                    };
                } else if (__value__ == (2596520i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2596528 = __tmp__._0;
                        _chunk_2596544 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2596528 && (_chunk_2596544 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2596626i32;
                    } else {
                        _gotoNext = 2596788i32;
                    };
                } else if (__value__ == (2596626i32)) {
                    return { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                    _gotoNext = 2596788i32;
                } else if (__value__ == (2596788i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2596544?.__copy__(), _name?.__copy__());
                        _t_2596788 = __tmp__._0?.__copy__();
                        _ok_2596791 = __tmp__._1;
                        _err_2596795 = __tmp__._2;
                    };
                    if ((_ok_2596791 && (((_t_2596788.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2597026i32;
                    } else {
                        _gotoNext = 2597058i32;
                    };
                } else if (__value__ == (2597026i32)) {
                    _name = _t_2596788?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2596499i32;
                } else if (__value__ == (2597058i32)) {
                    if (_err_2596795 != null) {
                        _gotoNext = 2597072i32;
                    } else {
                        _gotoNext = 2597101i32;
                    };
                } else if (__value__ == (2597072i32)) {
                    return { _0 : false, _1 : _err_2596795 };
                    _gotoNext = 2597101i32;
                } else if (__value__ == (2597101i32)) {
                    if (_star_2596528) {
                        _gotoNext = 2597109i32;
                    } else {
                        _gotoNext = 2597630i32;
                    };
                } else if (__value__ == (2597109i32)) {
                    _i_2597180 = (0 : stdgo.GoInt);
                    _gotoNext = 2597176i32;
                } else if (__value__ == (2597176i32)) {
                    if (((_i_2597180 < (_name.length) : Bool) && (_name[(_i_2597180 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2597225i32;
                    } else {
                        _gotoNext = 2597630i32;
                    };
                } else if (__value__ == (2597221i32)) {
                    _i_2597180++;
                    _gotoNext = 2597176i32;
                } else if (__value__ == (2597225i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2596544?.__copy__(), (_name.__slice__((_i_2597180 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2597231 = __tmp__._0?.__copy__();
                        _ok_2597234 = __tmp__._1;
                        _err_2597238 = __tmp__._2;
                    };
                    if (_ok_2597234) {
                        _gotoNext = 2597285i32;
                    } else {
                        _gotoNext = 2597462i32;
                    };
                } else if (__value__ == (2597285i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2597231.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2597392i32;
                    } else {
                        _gotoNext = 2597421i32;
                    };
                } else if (__value__ == (2597392i32)) {
                    _i_2597180++;
                    _gotoNext = 2597176i32;
                } else if (__value__ == (2597421i32)) {
                    _name = _t_2597231?.__copy__();
                    _gotoNext = 2596499i32;
                } else if (__value__ == (2597462i32)) {
                    if (_err_2597238 != null) {
                        _gotoNext = 2597476i32;
                    } else {
                        _gotoNext = 2597221i32;
                    };
                } else if (__value__ == (2597476i32)) {
                    return { _0 : false, _1 : _err_2597238 };
                    _gotoNext = 2597221i32;
                } else if (__value__ == (2597630i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2597630i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2597651i32;
                    } else {
                        _gotoNext = 2597783i32;
                    };
                } else if (__value__ == (2597651i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2596544 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2596544?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2597707 = __tmp__._2;
                        };
                        if (_err_2597707 != null) {
                            _gotoNext = 2597748i32;
                        } else {
                            _gotoNext = 2597783i32;
                        };
                    };
                } else if (__value__ == (2597748i32)) {
                    return { _0 : false, _1 : _err_2597707 };
                    _gotoNext = 2597783i32;
                } else if (__value__ == (2597783i32)) {
                    return { _0 : false, _1 : (null : stdgo.Error) };
                    _gotoNext = 2596499i32;
                } else if (__value__ == (2597805i32)) {
                    return { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
