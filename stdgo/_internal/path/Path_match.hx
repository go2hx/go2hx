package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_3071523:stdgo.Error = (null : stdgo.Error);
        var _t_3071047:stdgo.GoString = ("" : stdgo.GoString);
        var _i_3070996:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_3070611:stdgo.Error = (null : stdgo.Error);
        var _star_3070344:Bool = false;
        var patternBreak = false;
        var _err_3071054:stdgo.Error = (null : stdgo.Error);
        var _ok_3071050:Bool = false;
        var _ok_3070607:Bool = false;
        var _t_3070604:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_3070360:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3070305i32;
                } else if (__value__ == (3070305i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 3070315i32;
                } else if (__value__ == (3070315i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 3070336i32;
                    } else {
                        _gotoNext = 3071621i32;
                    };
                } else if (__value__ == (3070336i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_3070344 = __tmp__._0;
                        _chunk_3070360 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_3070344 && (_chunk_3070360 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 3070442i32;
                    } else {
                        _gotoNext = 3070604i32;
                    };
                } else if (__value__ == (3070442i32)) {
                    return { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                    _gotoNext = 3070604i32;
                } else if (__value__ == (3070604i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_3070360?.__copy__(), _name?.__copy__());
                        _t_3070604 = __tmp__._0?.__copy__();
                        _ok_3070607 = __tmp__._1;
                        _err_3070611 = __tmp__._2;
                    };
                    if ((_ok_3070607 && (((_t_3070604.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 3070842i32;
                    } else {
                        _gotoNext = 3070874i32;
                    };
                } else if (__value__ == (3070842i32)) {
                    _name = _t_3070604?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 3070315i32;
                } else if (__value__ == (3070874i32)) {
                    if (_err_3070611 != null) {
                        _gotoNext = 3070888i32;
                    } else {
                        _gotoNext = 3070917i32;
                    };
                } else if (__value__ == (3070888i32)) {
                    return { _0 : false, _1 : _err_3070611 };
                    _gotoNext = 3070917i32;
                } else if (__value__ == (3070917i32)) {
                    if (_star_3070344) {
                        _gotoNext = 3070925i32;
                    } else {
                        _gotoNext = 3071446i32;
                    };
                } else if (__value__ == (3070925i32)) {
                    _i_3070996 = (0 : stdgo.GoInt);
                    _gotoNext = 3070992i32;
                } else if (__value__ == (3070992i32)) {
                    if (((_i_3070996 < (_name.length) : Bool) && (_name[(_i_3070996 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3071041i32;
                    } else {
                        _gotoNext = 3071446i32;
                    };
                } else if (__value__ == (3071037i32)) {
                    _i_3070996++;
                    _gotoNext = 3070992i32;
                } else if (__value__ == (3071041i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_3070360?.__copy__(), (_name.__slice__((_i_3070996 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_3071047 = __tmp__._0?.__copy__();
                        _ok_3071050 = __tmp__._1;
                        _err_3071054 = __tmp__._2;
                    };
                    if (_ok_3071050) {
                        _gotoNext = 3071101i32;
                    } else {
                        _gotoNext = 3071278i32;
                    };
                } else if (__value__ == (3071101i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_3071047.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3071208i32;
                    } else {
                        _gotoNext = 3071237i32;
                    };
                } else if (__value__ == (3071208i32)) {
                    _i_3070996++;
                    _gotoNext = 3070992i32;
                } else if (__value__ == (3071237i32)) {
                    _name = _t_3071047?.__copy__();
                    _gotoNext = 3070315i32;
                } else if (__value__ == (3071278i32)) {
                    if (_err_3071054 != null) {
                        _gotoNext = 3071292i32;
                    } else {
                        _gotoNext = 3071037i32;
                    };
                } else if (__value__ == (3071292i32)) {
                    return { _0 : false, _1 : _err_3071054 };
                    _gotoNext = 3071037i32;
                } else if (__value__ == (3071446i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3071446i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3071467i32;
                    } else {
                        _gotoNext = 3071599i32;
                    };
                } else if (__value__ == (3071467i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_3070360 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_3070360?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_3071523 = __tmp__._2;
                        };
                        if (_err_3071523 != null) {
                            _gotoNext = 3071564i32;
                        } else {
                            _gotoNext = 3071599i32;
                        };
                    };
                } else if (__value__ == (3071564i32)) {
                    return { _0 : false, _1 : _err_3071523 };
                    _gotoNext = 3071599i32;
                } else if (__value__ == (3071599i32)) {
                    return { _0 : false, _1 : (null : stdgo.Error) };
                    _gotoNext = 3070315i32;
                } else if (__value__ == (3071621i32)) {
                    return { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
