package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_2865793:stdgo.Error = (null : stdgo.Error);
        var _t_2865317:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2864614:Bool = false;
        var patternBreak = false;
        var _err_2865324:stdgo.Error = (null : stdgo.Error);
        var _ok_2865320:Bool = false;
        var _i_2865266:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_2864881:stdgo.Error = (null : stdgo.Error);
        var _ok_2864877:Bool = false;
        var _t_2864874:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_2864630:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2864575i32;
                } else if (__value__ == (2864575i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2864585i32;
                } else if (__value__ == (2864585i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2864606i32;
                    } else {
                        _gotoNext = 2865891i32;
                    };
                } else if (__value__ == (2864606i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2864614 = __tmp__._0;
                        _chunk_2864630 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2864614 && (_chunk_2864630 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2864712i32;
                    } else {
                        _gotoNext = 2864874i32;
                    };
                } else if (__value__ == (2864712i32)) {
                    return { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                    _gotoNext = 2864874i32;
                } else if (__value__ == (2864874i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2864630?.__copy__(), _name?.__copy__());
                        _t_2864874 = __tmp__._0?.__copy__();
                        _ok_2864877 = __tmp__._1;
                        _err_2864881 = __tmp__._2;
                    };
                    if ((_ok_2864877 && (((_t_2864874.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2865112i32;
                    } else {
                        _gotoNext = 2865144i32;
                    };
                } else if (__value__ == (2865112i32)) {
                    _name = _t_2864874?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2864585i32;
                } else if (__value__ == (2865144i32)) {
                    if (_err_2864881 != null) {
                        _gotoNext = 2865158i32;
                    } else {
                        _gotoNext = 2865187i32;
                    };
                } else if (__value__ == (2865158i32)) {
                    return { _0 : false, _1 : _err_2864881 };
                    _gotoNext = 2865187i32;
                } else if (__value__ == (2865187i32)) {
                    if (_star_2864614) {
                        _gotoNext = 2865195i32;
                    } else {
                        _gotoNext = 2865716i32;
                    };
                } else if (__value__ == (2865195i32)) {
                    _i_2865266 = (0 : stdgo.GoInt);
                    _gotoNext = 2865262i32;
                } else if (__value__ == (2865262i32)) {
                    if (((_i_2865266 < (_name.length) : Bool) && (_name[(_i_2865266 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2865311i32;
                    } else {
                        _gotoNext = 2865716i32;
                    };
                } else if (__value__ == (2865307i32)) {
                    _i_2865266++;
                    _gotoNext = 2865262i32;
                } else if (__value__ == (2865311i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2864630?.__copy__(), (_name.__slice__((_i_2865266 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2865317 = __tmp__._0?.__copy__();
                        _ok_2865320 = __tmp__._1;
                        _err_2865324 = __tmp__._2;
                    };
                    if (_ok_2865320) {
                        _gotoNext = 2865371i32;
                    } else {
                        _gotoNext = 2865548i32;
                    };
                } else if (__value__ == (2865371i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2865317.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2865478i32;
                    } else {
                        _gotoNext = 2865507i32;
                    };
                } else if (__value__ == (2865478i32)) {
                    _i_2865266++;
                    _gotoNext = 2865262i32;
                } else if (__value__ == (2865507i32)) {
                    _name = _t_2865317?.__copy__();
                    _gotoNext = 2864585i32;
                } else if (__value__ == (2865548i32)) {
                    if (_err_2865324 != null) {
                        _gotoNext = 2865562i32;
                    } else {
                        _gotoNext = 2865307i32;
                    };
                } else if (__value__ == (2865562i32)) {
                    return { _0 : false, _1 : _err_2865324 };
                    _gotoNext = 2865307i32;
                } else if (__value__ == (2865716i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2865716i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2865737i32;
                    } else {
                        _gotoNext = 2865869i32;
                    };
                } else if (__value__ == (2865737i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2864630 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2864630?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2865793 = __tmp__._2;
                        };
                        if (_err_2865793 != null) {
                            _gotoNext = 2865834i32;
                        } else {
                            _gotoNext = 2865869i32;
                        };
                    };
                } else if (__value__ == (2865834i32)) {
                    return { _0 : false, _1 : _err_2865793 };
                    _gotoNext = 2865869i32;
                } else if (__value__ == (2865869i32)) {
                    return { _0 : false, _1 : (null : stdgo.Error) };
                    _gotoNext = 2864585i32;
                } else if (__value__ == (2865891i32)) {
                    return { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
