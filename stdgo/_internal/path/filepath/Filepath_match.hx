package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _ok_4060126:Bool = false;
        var _ok_4059677:Bool = false;
        var patternBreak = false;
        var _err_4059681:stdgo.Error = (null : stdgo.Error);
        var _t_4059674:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_4059426:stdgo.GoString = ("" : stdgo.GoString);
        var _star_4059410:Bool = false;
        var _err_4060130:stdgo.Error = (null : stdgo.Error);
        var _t_4060123:stdgo.GoString = ("" : stdgo.GoString);
        var _i_4060066:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 4059371i32;
                } else if (__value__ == (4059371i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 4059381i32;
                } else if (__value__ == (4059381i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 4059402i32;
                    } else {
                        _gotoNext = 4060432i32;
                    };
                } else if (__value__ == (4059402i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_4059410 = __tmp__._0;
                        _chunk_4059426 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_4059410 && (_chunk_4059426 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 4059508i32;
                    } else {
                        _gotoNext = 4059674i32;
                    };
                } else if (__value__ == (4059508i32)) {
                    return { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                    _gotoNext = 4059674i32;
                } else if (__value__ == (4059674i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_4059426?.__copy__(), _name?.__copy__());
                        _t_4059674 = __tmp__._0?.__copy__();
                        _ok_4059677 = __tmp__._1;
                        _err_4059681 = __tmp__._2;
                    };
                    if ((_ok_4059677 && (((_t_4059674.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 4059912i32;
                    } else {
                        _gotoNext = 4059944i32;
                    };
                } else if (__value__ == (4059912i32)) {
                    _name = _t_4059674?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 4059381i32;
                } else if (__value__ == (4059944i32)) {
                    if (_err_4059681 != null) {
                        _gotoNext = 4059958i32;
                    } else {
                        _gotoNext = 4059987i32;
                    };
                } else if (__value__ == (4059958i32)) {
                    return { _0 : false, _1 : _err_4059681 };
                    _gotoNext = 4059987i32;
                } else if (__value__ == (4059987i32)) {
                    if (_star_4059410) {
                        _gotoNext = 4059995i32;
                    } else {
                        _gotoNext = 4060410i32;
                    };
                } else if (__value__ == (4059995i32)) {
                    _i_4060066 = (0 : stdgo.GoInt);
                    _gotoNext = 4060062i32;
                } else if (__value__ == (4060062i32)) {
                    if (((_i_4060066 < (_name.length) : Bool) && (_name[(_i_4060066 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4060117i32;
                    } else {
                        _gotoNext = 4060410i32;
                    };
                } else if (__value__ == (4060113i32)) {
                    _i_4060066++;
                    _gotoNext = 4060062i32;
                } else if (__value__ == (4060117i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_4059426?.__copy__(), (_name.__slice__((_i_4060066 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_4060123 = __tmp__._0?.__copy__();
                        _ok_4060126 = __tmp__._1;
                        _err_4060130 = __tmp__._2;
                    };
                    if (_ok_4060126) {
                        _gotoNext = 4060177i32;
                    } else {
                        _gotoNext = 4060354i32;
                    };
                } else if (__value__ == (4060177i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_4060123.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 4060284i32;
                    } else {
                        _gotoNext = 4060313i32;
                    };
                } else if (__value__ == (4060284i32)) {
                    _i_4060066++;
                    _gotoNext = 4060062i32;
                } else if (__value__ == (4060313i32)) {
                    _name = _t_4060123?.__copy__();
                    _gotoNext = 4059381i32;
                } else if (__value__ == (4060354i32)) {
                    if (_err_4060130 != null) {
                        _gotoNext = 4060368i32;
                    } else {
                        _gotoNext = 4060113i32;
                    };
                } else if (__value__ == (4060368i32)) {
                    return { _0 : false, _1 : _err_4060130 };
                    _gotoNext = 4060113i32;
                } else if (__value__ == (4060410i32)) {
                    return { _0 : false, _1 : (null : stdgo.Error) };
                    _gotoNext = 4059381i32;
                } else if (__value__ == (4060432i32)) {
                    return { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
