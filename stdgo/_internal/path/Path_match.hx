package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_2827865:stdgo.Error = (null : stdgo.Error);
        var _err_2827396:stdgo.Error = (null : stdgo.Error);
        var _ok_2827392:Bool = false;
        var _err_2826953:stdgo.Error = (null : stdgo.Error);
        var _ok_2826949:Bool = false;
        var _t_2827389:stdgo.GoString = ("" : stdgo.GoString);
        var _i_2827338:stdgo.GoInt = (0 : stdgo.GoInt);
        var _t_2826946:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_2826702:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2826686:Bool = false;
        var patternBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2826647i32;
                } else if (__value__ == (2826647i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2826657i32;
                } else if (__value__ == (2826657i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2826678i32;
                    } else {
                        _gotoNext = 2827963i32;
                    };
                } else if (__value__ == (2826678i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2826686 = __tmp__._0;
                        _chunk_2826702 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2826686 && (_chunk_2826702 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2826784i32;
                    } else {
                        _gotoNext = 2826946i32;
                    };
                } else if (__value__ == (2826784i32)) {
                    return { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                    _gotoNext = 2826946i32;
                } else if (__value__ == (2826946i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2826702?.__copy__(), _name?.__copy__());
                        _t_2826946 = __tmp__._0?.__copy__();
                        _ok_2826949 = __tmp__._1;
                        _err_2826953 = __tmp__._2;
                    };
                    if ((_ok_2826949 && (((_t_2826946.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2827184i32;
                    } else {
                        _gotoNext = 2827216i32;
                    };
                } else if (__value__ == (2827184i32)) {
                    _name = _t_2826946?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2826657i32;
                } else if (__value__ == (2827216i32)) {
                    if (_err_2826953 != null) {
                        _gotoNext = 2827230i32;
                    } else {
                        _gotoNext = 2827259i32;
                    };
                } else if (__value__ == (2827230i32)) {
                    return { _0 : false, _1 : _err_2826953 };
                    _gotoNext = 2827259i32;
                } else if (__value__ == (2827259i32)) {
                    if (_star_2826686) {
                        _gotoNext = 2827267i32;
                    } else {
                        _gotoNext = 2827788i32;
                    };
                } else if (__value__ == (2827267i32)) {
                    _i_2827338 = (0 : stdgo.GoInt);
                    _gotoNext = 2827334i32;
                } else if (__value__ == (2827334i32)) {
                    if (((_i_2827338 < (_name.length) : Bool) && (_name[(_i_2827338 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2827383i32;
                    } else {
                        _gotoNext = 2827788i32;
                    };
                } else if (__value__ == (2827379i32)) {
                    _i_2827338++;
                    _gotoNext = 2827334i32;
                } else if (__value__ == (2827383i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2826702?.__copy__(), (_name.__slice__((_i_2827338 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2827389 = __tmp__._0?.__copy__();
                        _ok_2827392 = __tmp__._1;
                        _err_2827396 = __tmp__._2;
                    };
                    if (_ok_2827392) {
                        _gotoNext = 2827443i32;
                    } else {
                        _gotoNext = 2827620i32;
                    };
                } else if (__value__ == (2827443i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2827389.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2827550i32;
                    } else {
                        _gotoNext = 2827579i32;
                    };
                } else if (__value__ == (2827550i32)) {
                    _i_2827338++;
                    _gotoNext = 2827334i32;
                } else if (__value__ == (2827579i32)) {
                    _name = _t_2827389?.__copy__();
                    _gotoNext = 2826657i32;
                } else if (__value__ == (2827620i32)) {
                    if (_err_2827396 != null) {
                        _gotoNext = 2827634i32;
                    } else {
                        _gotoNext = 2827379i32;
                    };
                } else if (__value__ == (2827634i32)) {
                    return { _0 : false, _1 : _err_2827396 };
                    _gotoNext = 2827379i32;
                } else if (__value__ == (2827788i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2827788i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2827809i32;
                    } else {
                        _gotoNext = 2827941i32;
                    };
                } else if (__value__ == (2827809i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2826702 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2826702?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2827865 = __tmp__._2;
                        };
                        if (_err_2827865 != null) {
                            _gotoNext = 2827906i32;
                        } else {
                            _gotoNext = 2827941i32;
                        };
                    };
                } else if (__value__ == (2827906i32)) {
                    return { _0 : false, _1 : _err_2827865 };
                    _gotoNext = 2827941i32;
                } else if (__value__ == (2827941i32)) {
                    return { _0 : false, _1 : (null : stdgo.Error) };
                    _gotoNext = 2826657i32;
                } else if (__value__ == (2827963i32)) {
                    return { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
