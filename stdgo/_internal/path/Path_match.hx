package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _ok_2904856:Bool = false;
        var _t_2904853:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_2904609:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2904593:Bool = false;
        var _err_2905303:stdgo.Error = (null : stdgo.Error);
        var _ok_2905299:Bool = false;
        var _t_2905296:stdgo.GoString = ("" : stdgo.GoString);
        var _i_2905245:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_2904860:stdgo.Error = (null : stdgo.Error);
        var patternBreak = false;
        var _err_2905772:stdgo.Error = (null : stdgo.Error);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2904554i32;
                } else if (__value__ == (2904554i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2904564i32;
                } else if (__value__ == (2904564i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2904585i32;
                    } else {
                        _gotoNext = 2905870i32;
                    };
                } else if (__value__ == (2904585i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2904593 = __tmp__._0;
                        _chunk_2904609 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2904593 && (_chunk_2904609 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2904691i32;
                    } else {
                        _gotoNext = 2904853i32;
                    };
                } else if (__value__ == (2904691i32)) {
                    return { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                    _gotoNext = 2904853i32;
                } else if (__value__ == (2904853i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2904609?.__copy__(), _name?.__copy__());
                        _t_2904853 = __tmp__._0?.__copy__();
                        _ok_2904856 = __tmp__._1;
                        _err_2904860 = __tmp__._2;
                    };
                    if ((_ok_2904856 && (((_t_2904853.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2905091i32;
                    } else {
                        _gotoNext = 2905123i32;
                    };
                } else if (__value__ == (2905091i32)) {
                    _name = _t_2904853?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2904564i32;
                } else if (__value__ == (2905123i32)) {
                    if (_err_2904860 != null) {
                        _gotoNext = 2905137i32;
                    } else {
                        _gotoNext = 2905166i32;
                    };
                } else if (__value__ == (2905137i32)) {
                    return { _0 : false, _1 : _err_2904860 };
                    _gotoNext = 2905166i32;
                } else if (__value__ == (2905166i32)) {
                    if (_star_2904593) {
                        _gotoNext = 2905174i32;
                    } else {
                        _gotoNext = 2905695i32;
                    };
                } else if (__value__ == (2905174i32)) {
                    _i_2905245 = (0 : stdgo.GoInt);
                    _gotoNext = 2905241i32;
                } else if (__value__ == (2905241i32)) {
                    if (((_i_2905245 < (_name.length) : Bool) && (_name[(_i_2905245 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2905290i32;
                    } else {
                        _gotoNext = 2905695i32;
                    };
                } else if (__value__ == (2905286i32)) {
                    _i_2905245++;
                    _gotoNext = 2905241i32;
                } else if (__value__ == (2905290i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2904609?.__copy__(), (_name.__slice__((_i_2905245 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2905296 = __tmp__._0?.__copy__();
                        _ok_2905299 = __tmp__._1;
                        _err_2905303 = __tmp__._2;
                    };
                    if (_ok_2905299) {
                        _gotoNext = 2905350i32;
                    } else {
                        _gotoNext = 2905527i32;
                    };
                } else if (__value__ == (2905350i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2905296.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2905457i32;
                    } else {
                        _gotoNext = 2905486i32;
                    };
                } else if (__value__ == (2905457i32)) {
                    _i_2905245++;
                    _gotoNext = 2905241i32;
                } else if (__value__ == (2905486i32)) {
                    _name = _t_2905296?.__copy__();
                    _gotoNext = 2904564i32;
                } else if (__value__ == (2905527i32)) {
                    if (_err_2905303 != null) {
                        _gotoNext = 2905541i32;
                    } else {
                        _gotoNext = 2905286i32;
                    };
                } else if (__value__ == (2905541i32)) {
                    return { _0 : false, _1 : _err_2905303 };
                    _gotoNext = 2905286i32;
                } else if (__value__ == (2905695i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2905695i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2905716i32;
                    } else {
                        _gotoNext = 2905848i32;
                    };
                } else if (__value__ == (2905716i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2904609 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2904609?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2905772 = __tmp__._2;
                        };
                        if (_err_2905772 != null) {
                            _gotoNext = 2905813i32;
                        } else {
                            _gotoNext = 2905848i32;
                        };
                    };
                } else if (__value__ == (2905813i32)) {
                    return { _0 : false, _1 : _err_2905772 };
                    _gotoNext = 2905848i32;
                } else if (__value__ == (2905848i32)) {
                    return { _0 : false, _1 : (null : stdgo.Error) };
                    _gotoNext = 2904564i32;
                } else if (__value__ == (2905870i32)) {
                    return { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
