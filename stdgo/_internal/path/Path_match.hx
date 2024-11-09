package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _ok_2686054:Bool = false;
        var _i_2686000:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_2685615:stdgo.Error = (null : stdgo.Error);
        var _ok_2685611:Bool = false;
        var _t_2685608:stdgo.GoString = ("" : stdgo.GoString);
        var patternBreak = false;
        var _err_2686527:stdgo.Error = (null : stdgo.Error);
        var _err_2686058:stdgo.Error = (null : stdgo.Error);
        var _t_2686051:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_2685364:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2685348:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2685309i32;
                } else if (__value__ == (2685309i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2685319i32;
                } else if (__value__ == (2685319i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2685340i32;
                    } else {
                        _gotoNext = 2686625i32;
                    };
                } else if (__value__ == (2685340i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2685348 = __tmp__._0;
                        _chunk_2685364 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2685348 && (_chunk_2685364 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2685446i32;
                    } else {
                        _gotoNext = 2685608i32;
                    };
                } else if (__value__ == (2685446i32)) {
                    return { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                    _gotoNext = 2685608i32;
                } else if (__value__ == (2685608i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2685364?.__copy__(), _name?.__copy__());
                        _t_2685608 = __tmp__._0?.__copy__();
                        _ok_2685611 = __tmp__._1;
                        _err_2685615 = __tmp__._2;
                    };
                    if ((_ok_2685611 && (((_t_2685608.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2685846i32;
                    } else {
                        _gotoNext = 2685878i32;
                    };
                } else if (__value__ == (2685846i32)) {
                    _name = _t_2685608?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2685319i32;
                } else if (__value__ == (2685878i32)) {
                    if (_err_2685615 != null) {
                        _gotoNext = 2685892i32;
                    } else {
                        _gotoNext = 2685921i32;
                    };
                } else if (__value__ == (2685892i32)) {
                    return { _0 : false, _1 : _err_2685615 };
                    _gotoNext = 2685921i32;
                } else if (__value__ == (2685921i32)) {
                    if (_star_2685348) {
                        _gotoNext = 2685929i32;
                    } else {
                        _gotoNext = 2686450i32;
                    };
                } else if (__value__ == (2685929i32)) {
                    _i_2686000 = (0 : stdgo.GoInt);
                    _gotoNext = 2685996i32;
                } else if (__value__ == (2685996i32)) {
                    if (((_i_2686000 < (_name.length) : Bool) && (_name[(_i_2686000 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2686045i32;
                    } else {
                        _gotoNext = 2686450i32;
                    };
                } else if (__value__ == (2686041i32)) {
                    _i_2686000++;
                    _gotoNext = 2685996i32;
                } else if (__value__ == (2686045i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2685364?.__copy__(), (_name.__slice__((_i_2686000 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2686051 = __tmp__._0?.__copy__();
                        _ok_2686054 = __tmp__._1;
                        _err_2686058 = __tmp__._2;
                    };
                    if (_ok_2686054) {
                        _gotoNext = 2686105i32;
                    } else {
                        _gotoNext = 2686282i32;
                    };
                } else if (__value__ == (2686105i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2686051.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2686212i32;
                    } else {
                        _gotoNext = 2686241i32;
                    };
                } else if (__value__ == (2686212i32)) {
                    _i_2686000++;
                    _gotoNext = 2685996i32;
                } else if (__value__ == (2686241i32)) {
                    _name = _t_2686051?.__copy__();
                    _gotoNext = 2685319i32;
                } else if (__value__ == (2686282i32)) {
                    if (_err_2686058 != null) {
                        _gotoNext = 2686296i32;
                    } else {
                        _gotoNext = 2686041i32;
                    };
                } else if (__value__ == (2686296i32)) {
                    return { _0 : false, _1 : _err_2686058 };
                    _gotoNext = 2686041i32;
                } else if (__value__ == (2686450i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2686450i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2686471i32;
                    } else {
                        _gotoNext = 2686603i32;
                    };
                } else if (__value__ == (2686471i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2685364 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2685364?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2686527 = __tmp__._2;
                        };
                        if (_err_2686527 != null) {
                            _gotoNext = 2686568i32;
                        } else {
                            _gotoNext = 2686603i32;
                        };
                    };
                } else if (__value__ == (2686568i32)) {
                    return { _0 : false, _1 : _err_2686527 };
                    _gotoNext = 2686603i32;
                } else if (__value__ == (2686603i32)) {
                    return { _0 : false, _1 : (null : stdgo.Error) };
                    _gotoNext = 2685319i32;
                } else if (__value__ == (2686625i32)) {
                    return { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
