package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_2717340:stdgo.Error = (null : stdgo.Error);
        var _chunk_2716646:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2716630:Bool = false;
        var patternBreak = false;
        var _ok_2717336:Bool = false;
        var _t_2717333:stdgo.GoString = ("" : stdgo.GoString);
        var _i_2717282:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_2716893:Bool = false;
        var _t_2716890:stdgo.GoString = ("" : stdgo.GoString);
        var _err_2717809:stdgo.Error = (null : stdgo.Error);
        var _err_2716897:stdgo.Error = (null : stdgo.Error);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2716591i32;
                } else if (__value__ == (2716591i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2716601i32;
                } else if (__value__ == (2716601i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2716622i32;
                    } else {
                        _gotoNext = 2717907i32;
                    };
                } else if (__value__ == (2716622i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2716630 = __tmp__._0;
                        _chunk_2716646 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2716630 && (_chunk_2716646 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2716728i32;
                    } else {
                        _gotoNext = 2716890i32;
                    };
                } else if (__value__ == (2716728i32)) {
                    return { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                    _gotoNext = 2716890i32;
                } else if (__value__ == (2716890i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2716646?.__copy__(), _name?.__copy__());
                        _t_2716890 = __tmp__._0?.__copy__();
                        _ok_2716893 = __tmp__._1;
                        _err_2716897 = __tmp__._2;
                    };
                    if ((_ok_2716893 && (((_t_2716890.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2717128i32;
                    } else {
                        _gotoNext = 2717160i32;
                    };
                } else if (__value__ == (2717128i32)) {
                    _name = _t_2716890?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2716601i32;
                } else if (__value__ == (2717160i32)) {
                    if (_err_2716897 != null) {
                        _gotoNext = 2717174i32;
                    } else {
                        _gotoNext = 2717203i32;
                    };
                } else if (__value__ == (2717174i32)) {
                    return { _0 : false, _1 : _err_2716897 };
                    _gotoNext = 2717203i32;
                } else if (__value__ == (2717203i32)) {
                    if (_star_2716630) {
                        _gotoNext = 2717211i32;
                    } else {
                        _gotoNext = 2717732i32;
                    };
                } else if (__value__ == (2717211i32)) {
                    _i_2717282 = (0 : stdgo.GoInt);
                    _gotoNext = 2717278i32;
                } else if (__value__ == (2717278i32)) {
                    if (((_i_2717282 < (_name.length) : Bool) && (_name[(_i_2717282 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2717327i32;
                    } else {
                        _gotoNext = 2717732i32;
                    };
                } else if (__value__ == (2717323i32)) {
                    _i_2717282++;
                    _gotoNext = 2717278i32;
                } else if (__value__ == (2717327i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2716646?.__copy__(), (_name.__slice__((_i_2717282 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2717333 = __tmp__._0?.__copy__();
                        _ok_2717336 = __tmp__._1;
                        _err_2717340 = __tmp__._2;
                    };
                    if (_ok_2717336) {
                        _gotoNext = 2717387i32;
                    } else {
                        _gotoNext = 2717564i32;
                    };
                } else if (__value__ == (2717387i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2717333.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2717494i32;
                    } else {
                        _gotoNext = 2717523i32;
                    };
                } else if (__value__ == (2717494i32)) {
                    _i_2717282++;
                    _gotoNext = 2717278i32;
                } else if (__value__ == (2717523i32)) {
                    _name = _t_2717333?.__copy__();
                    _gotoNext = 2716601i32;
                } else if (__value__ == (2717564i32)) {
                    if (_err_2717340 != null) {
                        _gotoNext = 2717578i32;
                    } else {
                        _gotoNext = 2717323i32;
                    };
                } else if (__value__ == (2717578i32)) {
                    return { _0 : false, _1 : _err_2717340 };
                    _gotoNext = 2717323i32;
                } else if (__value__ == (2717732i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2717732i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2717753i32;
                    } else {
                        _gotoNext = 2717885i32;
                    };
                } else if (__value__ == (2717753i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2716646 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2716646?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2717809 = __tmp__._2;
                        };
                        if (_err_2717809 != null) {
                            _gotoNext = 2717850i32;
                        } else {
                            _gotoNext = 2717885i32;
                        };
                    };
                } else if (__value__ == (2717850i32)) {
                    return { _0 : false, _1 : _err_2717809 };
                    _gotoNext = 2717885i32;
                } else if (__value__ == (2717885i32)) {
                    return { _0 : false, _1 : (null : stdgo.Error) };
                    _gotoNext = 2716601i32;
                } else if (__value__ == (2717907i32)) {
                    return { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
