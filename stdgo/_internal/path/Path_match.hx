package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _t_2782174:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2781914:Bool = false;
        var patternBreak = false;
        var _t_2782617:stdgo.GoString = ("" : stdgo.GoString);
        var _i_2782566:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_2782181:stdgo.Error = (null : stdgo.Error);
        var _ok_2782177:Bool = false;
        var _chunk_2781930:stdgo.GoString = ("" : stdgo.GoString);
        var _err_2783093:stdgo.Error = (null : stdgo.Error);
        var _err_2782624:stdgo.Error = (null : stdgo.Error);
        var _ok_2782620:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2781875i32;
                } else if (__value__ == (2781875i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2781885i32;
                } else if (__value__ == (2781885i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2781906i32;
                    } else {
                        _gotoNext = 2783191i32;
                    };
                } else if (__value__ == (2781906i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2781914 = __tmp__._0;
                        _chunk_2781930 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2781914 && (_chunk_2781930 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2782012i32;
                    } else {
                        _gotoNext = 2782174i32;
                    };
                } else if (__value__ == (2782012i32)) {
                    return { _0 : _matched = (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : _err = (null : stdgo.Error) };
                    _gotoNext = 2782174i32;
                } else if (__value__ == (2782174i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2781930?.__copy__(), _name?.__copy__());
                        _t_2782174 = __tmp__._0?.__copy__();
                        _ok_2782177 = __tmp__._1;
                        _err_2782181 = __tmp__._2;
                    };
                    if ((_ok_2782177 && (((_t_2782174.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2782412i32;
                    } else {
                        _gotoNext = 2782444i32;
                    };
                } else if (__value__ == (2782412i32)) {
                    _name = _t_2782174?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2781885i32;
                } else if (__value__ == (2782444i32)) {
                    if (_err_2782181 != null) {
                        _gotoNext = 2782458i32;
                    } else {
                        _gotoNext = 2782487i32;
                    };
                } else if (__value__ == (2782458i32)) {
                    return { _0 : _matched = false, _1 : _err = _err_2782181 };
                    _gotoNext = 2782487i32;
                } else if (__value__ == (2782487i32)) {
                    if (_star_2781914) {
                        _gotoNext = 2782495i32;
                    } else {
                        _gotoNext = 2783016i32;
                    };
                } else if (__value__ == (2782495i32)) {
                    _i_2782566 = (0 : stdgo.GoInt);
                    _gotoNext = 2782562i32;
                } else if (__value__ == (2782562i32)) {
                    if (((_i_2782566 < (_name.length) : Bool) && (_name[(_i_2782566 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2782611i32;
                    } else {
                        _gotoNext = 2783016i32;
                    };
                } else if (__value__ == (2782607i32)) {
                    _i_2782566++;
                    _gotoNext = 2782562i32;
                } else if (__value__ == (2782611i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2781930?.__copy__(), (_name.__slice__((_i_2782566 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2782617 = __tmp__._0?.__copy__();
                        _ok_2782620 = __tmp__._1;
                        _err_2782624 = __tmp__._2;
                    };
                    if (_ok_2782620) {
                        _gotoNext = 2782671i32;
                    } else {
                        _gotoNext = 2782848i32;
                    };
                } else if (__value__ == (2782671i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2782617.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2782778i32;
                    } else {
                        _gotoNext = 2782807i32;
                    };
                } else if (__value__ == (2782778i32)) {
                    _i_2782566++;
                    _gotoNext = 2782562i32;
                } else if (__value__ == (2782807i32)) {
                    _name = _t_2782617?.__copy__();
                    _gotoNext = 2781885i32;
                } else if (__value__ == (2782848i32)) {
                    if (_err_2782624 != null) {
                        _gotoNext = 2782862i32;
                    } else {
                        _gotoNext = 2782607i32;
                    };
                } else if (__value__ == (2782862i32)) {
                    return { _0 : _matched = false, _1 : _err = _err_2782624 };
                    _gotoNext = 2782607i32;
                } else if (__value__ == (2783016i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2783016i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2783037i32;
                    } else {
                        _gotoNext = 2783169i32;
                    };
                } else if (__value__ == (2783037i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2781930 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2781930?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2783093 = __tmp__._2;
                        };
                        if (_err_2783093 != null) {
                            _gotoNext = 2783134i32;
                        } else {
                            _gotoNext = 2783169i32;
                        };
                    };
                } else if (__value__ == (2783134i32)) {
                    return { _0 : _matched = false, _1 : _err = _err_2783093 };
                    _gotoNext = 2783169i32;
                } else if (__value__ == (2783169i32)) {
                    return { _0 : _matched = false, _1 : _err = (null : stdgo.Error) };
                    _gotoNext = 2781885i32;
                } else if (__value__ == (2783191i32)) {
                    return { _0 : _matched = (_name.length) == ((0 : stdgo.GoInt)), _1 : _err = (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
