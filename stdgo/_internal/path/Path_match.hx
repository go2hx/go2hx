package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_2719728:stdgo.Error = (null : stdgo.Error);
        var _ok_2719724:Bool = false;
        var _t_2719721:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2719461:Bool = false;
        var patternBreak = false;
        var _err_2720640:stdgo.Error = (null : stdgo.Error);
        var _err_2720171:stdgo.Error = (null : stdgo.Error);
        var _t_2720164:stdgo.GoString = ("" : stdgo.GoString);
        var _ok_2720167:Bool = false;
        var _i_2720113:stdgo.GoInt = (0 : stdgo.GoInt);
        var _chunk_2719477:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2719422i32;
                } else if (__value__ == (2719422i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2719432i32;
                } else if (__value__ == (2719432i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2719453i32;
                    } else {
                        _gotoNext = 2720738i32;
                    };
                } else if (__value__ == (2719453i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2719461 = __tmp__._0;
                        _chunk_2719477 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2719461 && (_chunk_2719477 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2719559i32;
                    } else {
                        _gotoNext = 2719721i32;
                    };
                } else if (__value__ == (2719559i32)) {
                    return { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                    _gotoNext = 2719721i32;
                } else if (__value__ == (2719721i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2719477?.__copy__(), _name?.__copy__());
                        _t_2719721 = __tmp__._0?.__copy__();
                        _ok_2719724 = __tmp__._1;
                        _err_2719728 = __tmp__._2;
                    };
                    if ((_ok_2719724 && (((_t_2719721.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2719959i32;
                    } else {
                        _gotoNext = 2719991i32;
                    };
                } else if (__value__ == (2719959i32)) {
                    _name = _t_2719721?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2719432i32;
                } else if (__value__ == (2719991i32)) {
                    if (_err_2719728 != null) {
                        _gotoNext = 2720005i32;
                    } else {
                        _gotoNext = 2720034i32;
                    };
                } else if (__value__ == (2720005i32)) {
                    return { _0 : false, _1 : _err_2719728 };
                    _gotoNext = 2720034i32;
                } else if (__value__ == (2720034i32)) {
                    if (_star_2719461) {
                        _gotoNext = 2720042i32;
                    } else {
                        _gotoNext = 2720563i32;
                    };
                } else if (__value__ == (2720042i32)) {
                    _i_2720113 = (0 : stdgo.GoInt);
                    _gotoNext = 2720109i32;
                } else if (__value__ == (2720109i32)) {
                    if (((_i_2720113 < (_name.length) : Bool) && (_name[(_i_2720113 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2720158i32;
                    } else {
                        _gotoNext = 2720563i32;
                    };
                } else if (__value__ == (2720154i32)) {
                    _i_2720113++;
                    _gotoNext = 2720109i32;
                } else if (__value__ == (2720158i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2719477?.__copy__(), (_name.__slice__((_i_2720113 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2720164 = __tmp__._0?.__copy__();
                        _ok_2720167 = __tmp__._1;
                        _err_2720171 = __tmp__._2;
                    };
                    if (_ok_2720167) {
                        _gotoNext = 2720218i32;
                    } else {
                        _gotoNext = 2720395i32;
                    };
                } else if (__value__ == (2720218i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2720164.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2720325i32;
                    } else {
                        _gotoNext = 2720354i32;
                    };
                } else if (__value__ == (2720325i32)) {
                    _i_2720113++;
                    _gotoNext = 2720109i32;
                } else if (__value__ == (2720354i32)) {
                    _name = _t_2720164?.__copy__();
                    _gotoNext = 2719432i32;
                } else if (__value__ == (2720395i32)) {
                    if (_err_2720171 != null) {
                        _gotoNext = 2720409i32;
                    } else {
                        _gotoNext = 2720154i32;
                    };
                } else if (__value__ == (2720409i32)) {
                    return { _0 : false, _1 : _err_2720171 };
                    _gotoNext = 2720154i32;
                } else if (__value__ == (2720563i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2720563i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2720584i32;
                    } else {
                        _gotoNext = 2720716i32;
                    };
                } else if (__value__ == (2720584i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2719477 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2719477?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2720640 = __tmp__._2;
                        };
                        if (_err_2720640 != null) {
                            _gotoNext = 2720681i32;
                        } else {
                            _gotoNext = 2720716i32;
                        };
                    };
                } else if (__value__ == (2720681i32)) {
                    return { _0 : false, _1 : _err_2720640 };
                    _gotoNext = 2720716i32;
                } else if (__value__ == (2720716i32)) {
                    return { _0 : false, _1 : (null : stdgo.Error) };
                    _gotoNext = 2719432i32;
                } else if (__value__ == (2720738i32)) {
                    return { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
