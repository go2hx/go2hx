package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _star_2755256:Bool = false;
        var patternBreak = false;
        var _err_2756435:stdgo.Error = (null : stdgo.Error);
        var _i_2755908:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_2755519:Bool = false;
        var _t_2755516:stdgo.GoString = ("" : stdgo.GoString);
        var _err_2755523:stdgo.Error = (null : stdgo.Error);
        var _chunk_2755272:stdgo.GoString = ("" : stdgo.GoString);
        var _err_2755966:stdgo.Error = (null : stdgo.Error);
        var _ok_2755962:Bool = false;
        var _t_2755959:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2755217i32;
                } else if (__value__ == (2755217i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2755227i32;
                } else if (__value__ == (2755227i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2755248i32;
                    } else {
                        _gotoNext = 2756533i32;
                    };
                } else if (__value__ == (2755248i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2755256 = __tmp__._0;
                        _chunk_2755272 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2755256 && (_chunk_2755272 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2755354i32;
                    } else {
                        _gotoNext = 2755516i32;
                    };
                } else if (__value__ == (2755354i32)) {
                    return { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                    _gotoNext = 2755516i32;
                } else if (__value__ == (2755516i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2755272?.__copy__(), _name?.__copy__());
                        _t_2755516 = __tmp__._0?.__copy__();
                        _ok_2755519 = __tmp__._1;
                        _err_2755523 = __tmp__._2;
                    };
                    if ((_ok_2755519 && (((_t_2755516.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2755754i32;
                    } else {
                        _gotoNext = 2755786i32;
                    };
                } else if (__value__ == (2755754i32)) {
                    _name = _t_2755516?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2755227i32;
                } else if (__value__ == (2755786i32)) {
                    if (_err_2755523 != null) {
                        _gotoNext = 2755800i32;
                    } else {
                        _gotoNext = 2755829i32;
                    };
                } else if (__value__ == (2755800i32)) {
                    return { _0 : false, _1 : _err_2755523 };
                    _gotoNext = 2755829i32;
                } else if (__value__ == (2755829i32)) {
                    if (_star_2755256) {
                        _gotoNext = 2755837i32;
                    } else {
                        _gotoNext = 2756358i32;
                    };
                } else if (__value__ == (2755837i32)) {
                    _i_2755908 = (0 : stdgo.GoInt);
                    _gotoNext = 2755904i32;
                } else if (__value__ == (2755904i32)) {
                    if (((_i_2755908 < (_name.length) : Bool) && (_name[(_i_2755908 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2755953i32;
                    } else {
                        _gotoNext = 2756358i32;
                    };
                } else if (__value__ == (2755949i32)) {
                    _i_2755908++;
                    _gotoNext = 2755904i32;
                } else if (__value__ == (2755953i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2755272?.__copy__(), (_name.__slice__((_i_2755908 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2755959 = __tmp__._0?.__copy__();
                        _ok_2755962 = __tmp__._1;
                        _err_2755966 = __tmp__._2;
                    };
                    if (_ok_2755962) {
                        _gotoNext = 2756013i32;
                    } else {
                        _gotoNext = 2756190i32;
                    };
                } else if (__value__ == (2756013i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2755959.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2756120i32;
                    } else {
                        _gotoNext = 2756149i32;
                    };
                } else if (__value__ == (2756120i32)) {
                    _i_2755908++;
                    _gotoNext = 2755904i32;
                } else if (__value__ == (2756149i32)) {
                    _name = _t_2755959?.__copy__();
                    _gotoNext = 2755227i32;
                } else if (__value__ == (2756190i32)) {
                    if (_err_2755966 != null) {
                        _gotoNext = 2756204i32;
                    } else {
                        _gotoNext = 2755949i32;
                    };
                } else if (__value__ == (2756204i32)) {
                    return { _0 : false, _1 : _err_2755966 };
                    _gotoNext = 2755949i32;
                } else if (__value__ == (2756358i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2756358i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2756379i32;
                    } else {
                        _gotoNext = 2756511i32;
                    };
                } else if (__value__ == (2756379i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2755272 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2755272?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2756435 = __tmp__._2;
                        };
                        if (_err_2756435 != null) {
                            _gotoNext = 2756476i32;
                        } else {
                            _gotoNext = 2756511i32;
                        };
                    };
                } else if (__value__ == (2756476i32)) {
                    return { _0 : false, _1 : _err_2756435 };
                    _gotoNext = 2756511i32;
                } else if (__value__ == (2756511i32)) {
                    return { _0 : false, _1 : (null : stdgo.Error) };
                    _gotoNext = 2755227i32;
                } else if (__value__ == (2756533i32)) {
                    return { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
