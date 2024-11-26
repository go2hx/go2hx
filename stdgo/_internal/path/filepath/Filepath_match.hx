package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _t_4020562:stdgo.GoString = ("" : stdgo.GoString);
        var _i_4020505:stdgo.GoInt = (0 : stdgo.GoInt);
        var _t_4020113:stdgo.GoString = ("" : stdgo.GoString);
        var _star_4019849:Bool = false;
        var patternBreak = false;
        var _err_4020569:stdgo.Error = (null : stdgo.Error);
        var _ok_4020565:Bool = false;
        var _err_4020120:stdgo.Error = (null : stdgo.Error);
        var _ok_4020116:Bool = false;
        var _chunk_4019865:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 4019810i32;
                } else if (__value__ == (4019810i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 4019820i32;
                } else if (__value__ == (4019820i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 4019841i32;
                    } else {
                        _gotoNext = 4020871i32;
                    };
                } else if (__value__ == (4019841i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_4019849 = __tmp__._0;
                        _chunk_4019865 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_4019849 && (_chunk_4019865 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 4019947i32;
                    } else {
                        _gotoNext = 4020113i32;
                    };
                } else if (__value__ == (4019947i32)) {
                    return { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                    _gotoNext = 4020113i32;
                } else if (__value__ == (4020113i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_4019865?.__copy__(), _name?.__copy__());
                        _t_4020113 = __tmp__._0?.__copy__();
                        _ok_4020116 = __tmp__._1;
                        _err_4020120 = __tmp__._2;
                    };
                    if ((_ok_4020116 && (((_t_4020113.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 4020351i32;
                    } else {
                        _gotoNext = 4020383i32;
                    };
                } else if (__value__ == (4020351i32)) {
                    _name = _t_4020113?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 4019820i32;
                } else if (__value__ == (4020383i32)) {
                    if (_err_4020120 != null) {
                        _gotoNext = 4020397i32;
                    } else {
                        _gotoNext = 4020426i32;
                    };
                } else if (__value__ == (4020397i32)) {
                    return { _0 : false, _1 : _err_4020120 };
                    _gotoNext = 4020426i32;
                } else if (__value__ == (4020426i32)) {
                    if (_star_4019849) {
                        _gotoNext = 4020434i32;
                    } else {
                        _gotoNext = 4020849i32;
                    };
                } else if (__value__ == (4020434i32)) {
                    _i_4020505 = (0 : stdgo.GoInt);
                    _gotoNext = 4020501i32;
                } else if (__value__ == (4020501i32)) {
                    if (((_i_4020505 < (_name.length) : Bool) && (_name[(_i_4020505 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4020556i32;
                    } else {
                        _gotoNext = 4020849i32;
                    };
                } else if (__value__ == (4020552i32)) {
                    _i_4020505++;
                    _gotoNext = 4020501i32;
                } else if (__value__ == (4020556i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_4019865?.__copy__(), (_name.__slice__((_i_4020505 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_4020562 = __tmp__._0?.__copy__();
                        _ok_4020565 = __tmp__._1;
                        _err_4020569 = __tmp__._2;
                    };
                    if (_ok_4020565) {
                        _gotoNext = 4020616i32;
                    } else {
                        _gotoNext = 4020793i32;
                    };
                } else if (__value__ == (4020616i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_4020562.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 4020723i32;
                    } else {
                        _gotoNext = 4020752i32;
                    };
                } else if (__value__ == (4020723i32)) {
                    _i_4020505++;
                    _gotoNext = 4020501i32;
                } else if (__value__ == (4020752i32)) {
                    _name = _t_4020562?.__copy__();
                    _gotoNext = 4019820i32;
                } else if (__value__ == (4020793i32)) {
                    if (_err_4020569 != null) {
                        _gotoNext = 4020807i32;
                    } else {
                        _gotoNext = 4020552i32;
                    };
                } else if (__value__ == (4020807i32)) {
                    return { _0 : false, _1 : _err_4020569 };
                    _gotoNext = 4020552i32;
                } else if (__value__ == (4020849i32)) {
                    return { _0 : false, _1 : (null : stdgo.Error) };
                    _gotoNext = 4019820i32;
                } else if (__value__ == (4020871i32)) {
                    return { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
