package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _t_2566444:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_2566200:stdgo.GoString = ("" : stdgo.GoString);
        var _err_2566894:stdgo.Error = (null : stdgo.Error);
        var _ok_2566890:Bool = false;
        var _t_2566887:stdgo.GoString = ("" : stdgo.GoString);
        var _ok_2566447:Bool = false;
        var _star_2566184:Bool = false;
        var patternBreak = false;
        var _err_2567363:stdgo.Error = (null : stdgo.Error);
        var _i_2566836:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_2566451:stdgo.Error = (null : stdgo.Error);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2566145i32;
                } else if (__value__ == (2566145i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2566155i32;
                } else if (__value__ == (2566155i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2566176i32;
                    } else {
                        _gotoNext = 2567461i32;
                    };
                } else if (__value__ == (2566176i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2566184 = __tmp__._0;
                        _chunk_2566200 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2566184 && (_chunk_2566200 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2566282i32;
                    } else {
                        _gotoNext = 2566444i32;
                    };
                } else if (__value__ == (2566282i32)) {
                    return { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                    _gotoNext = 2566444i32;
                } else if (__value__ == (2566444i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2566200?.__copy__(), _name?.__copy__());
                        _t_2566444 = __tmp__._0?.__copy__();
                        _ok_2566447 = __tmp__._1;
                        _err_2566451 = __tmp__._2;
                    };
                    if ((_ok_2566447 && (((_t_2566444.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2566682i32;
                    } else {
                        _gotoNext = 2566714i32;
                    };
                } else if (__value__ == (2566682i32)) {
                    _name = _t_2566444?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2566155i32;
                } else if (__value__ == (2566714i32)) {
                    if (_err_2566451 != null) {
                        _gotoNext = 2566728i32;
                    } else {
                        _gotoNext = 2566757i32;
                    };
                } else if (__value__ == (2566728i32)) {
                    return { _0 : false, _1 : _err_2566451 };
                    _gotoNext = 2566757i32;
                } else if (__value__ == (2566757i32)) {
                    if (_star_2566184) {
                        _gotoNext = 2566765i32;
                    } else {
                        _gotoNext = 2567286i32;
                    };
                } else if (__value__ == (2566765i32)) {
                    _i_2566836 = (0 : stdgo.GoInt);
                    _gotoNext = 2566832i32;
                } else if (__value__ == (2566832i32)) {
                    if (((_i_2566836 < (_name.length) : Bool) && (_name[(_i_2566836 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2566881i32;
                    } else {
                        _gotoNext = 2567286i32;
                    };
                } else if (__value__ == (2566877i32)) {
                    _i_2566836++;
                    _gotoNext = 2566832i32;
                } else if (__value__ == (2566881i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2566200?.__copy__(), (_name.__slice__((_i_2566836 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2566887 = __tmp__._0?.__copy__();
                        _ok_2566890 = __tmp__._1;
                        _err_2566894 = __tmp__._2;
                    };
                    if (_ok_2566890) {
                        _gotoNext = 2566941i32;
                    } else {
                        _gotoNext = 2567118i32;
                    };
                } else if (__value__ == (2566941i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2566887.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2567048i32;
                    } else {
                        _gotoNext = 2567077i32;
                    };
                } else if (__value__ == (2567048i32)) {
                    _i_2566836++;
                    _gotoNext = 2566832i32;
                } else if (__value__ == (2567077i32)) {
                    _name = _t_2566887?.__copy__();
                    _gotoNext = 2566155i32;
                } else if (__value__ == (2567118i32)) {
                    if (_err_2566894 != null) {
                        _gotoNext = 2567132i32;
                    } else {
                        _gotoNext = 2566877i32;
                    };
                } else if (__value__ == (2567132i32)) {
                    return { _0 : false, _1 : _err_2566894 };
                    _gotoNext = 2566877i32;
                } else if (__value__ == (2567286i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2567286i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2567307i32;
                    } else {
                        _gotoNext = 2567439i32;
                    };
                } else if (__value__ == (2567307i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2566200 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2566200?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2567363 = __tmp__._2;
                        };
                        if (_err_2567363 != null) {
                            _gotoNext = 2567404i32;
                        } else {
                            _gotoNext = 2567439i32;
                        };
                    };
                } else if (__value__ == (2567404i32)) {
                    return { _0 : false, _1 : _err_2567363 };
                    _gotoNext = 2567439i32;
                } else if (__value__ == (2567439i32)) {
                    return { _0 : false, _1 : (null : stdgo.Error) };
                    _gotoNext = 2566155i32;
                } else if (__value__ == (2567461i32)) {
                    return { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
