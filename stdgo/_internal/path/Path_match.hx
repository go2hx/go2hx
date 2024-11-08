package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _i_2593213:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_2592824:Bool = false;
        var _star_2592561:Bool = false;
        var _err_2593271:stdgo.Error = (null : stdgo.Error);
        var _t_2593264:stdgo.GoString = ("" : stdgo.GoString);
        var _t_2592821:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_2592577:stdgo.GoString = ("" : stdgo.GoString);
        var patternBreak = false;
        var _err_2593740:stdgo.Error = (null : stdgo.Error);
        var _ok_2593267:Bool = false;
        var _err_2592828:stdgo.Error = (null : stdgo.Error);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2592522i32;
                } else if (__value__ == (2592522i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2592532i32;
                } else if (__value__ == (2592532i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2592553i32;
                    } else {
                        _gotoNext = 2593838i32;
                    };
                } else if (__value__ == (2592553i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2592561 = __tmp__._0;
                        _chunk_2592577 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2592561 && (_chunk_2592577 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2592659i32;
                    } else {
                        _gotoNext = 2592821i32;
                    };
                } else if (__value__ == (2592659i32)) {
                    return { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                    _gotoNext = 2592821i32;
                } else if (__value__ == (2592821i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2592577?.__copy__(), _name?.__copy__());
                        _t_2592821 = __tmp__._0?.__copy__();
                        _ok_2592824 = __tmp__._1;
                        _err_2592828 = __tmp__._2;
                    };
                    if ((_ok_2592824 && (((_t_2592821.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2593059i32;
                    } else {
                        _gotoNext = 2593091i32;
                    };
                } else if (__value__ == (2593059i32)) {
                    _name = _t_2592821?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2592532i32;
                } else if (__value__ == (2593091i32)) {
                    if (_err_2592828 != null) {
                        _gotoNext = 2593105i32;
                    } else {
                        _gotoNext = 2593134i32;
                    };
                } else if (__value__ == (2593105i32)) {
                    return { _0 : false, _1 : _err_2592828 };
                    _gotoNext = 2593134i32;
                } else if (__value__ == (2593134i32)) {
                    if (_star_2592561) {
                        _gotoNext = 2593142i32;
                    } else {
                        _gotoNext = 2593663i32;
                    };
                } else if (__value__ == (2593142i32)) {
                    _i_2593213 = (0 : stdgo.GoInt);
                    _gotoNext = 2593209i32;
                } else if (__value__ == (2593209i32)) {
                    if (((_i_2593213 < (_name.length) : Bool) && (_name[(_i_2593213 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2593258i32;
                    } else {
                        _gotoNext = 2593663i32;
                    };
                } else if (__value__ == (2593254i32)) {
                    _i_2593213++;
                    _gotoNext = 2593209i32;
                } else if (__value__ == (2593258i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2592577?.__copy__(), (_name.__slice__((_i_2593213 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2593264 = __tmp__._0?.__copy__();
                        _ok_2593267 = __tmp__._1;
                        _err_2593271 = __tmp__._2;
                    };
                    if (_ok_2593267) {
                        _gotoNext = 2593318i32;
                    } else {
                        _gotoNext = 2593495i32;
                    };
                } else if (__value__ == (2593318i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2593264.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2593425i32;
                    } else {
                        _gotoNext = 2593454i32;
                    };
                } else if (__value__ == (2593425i32)) {
                    _i_2593213++;
                    _gotoNext = 2593209i32;
                } else if (__value__ == (2593454i32)) {
                    _name = _t_2593264?.__copy__();
                    _gotoNext = 2592532i32;
                } else if (__value__ == (2593495i32)) {
                    if (_err_2593271 != null) {
                        _gotoNext = 2593509i32;
                    } else {
                        _gotoNext = 2593254i32;
                    };
                } else if (__value__ == (2593509i32)) {
                    return { _0 : false, _1 : _err_2593271 };
                    _gotoNext = 2593254i32;
                } else if (__value__ == (2593663i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2593663i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2593684i32;
                    } else {
                        _gotoNext = 2593816i32;
                    };
                } else if (__value__ == (2593684i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2592577 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2592577?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2593740 = __tmp__._2;
                        };
                        if (_err_2593740 != null) {
                            _gotoNext = 2593781i32;
                        } else {
                            _gotoNext = 2593816i32;
                        };
                    };
                } else if (__value__ == (2593781i32)) {
                    return { _0 : false, _1 : _err_2593740 };
                    _gotoNext = 2593816i32;
                } else if (__value__ == (2593816i32)) {
                    return { _0 : false, _1 : (null : stdgo.Error) };
                    _gotoNext = 2592532i32;
                } else if (__value__ == (2593838i32)) {
                    return { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
