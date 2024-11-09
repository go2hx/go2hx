package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _ok_4068754:Bool = false;
        var _ok_4068305:Bool = false;
        var _t_4068302:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_4068054:stdgo.GoString = ("" : stdgo.GoString);
        var patternBreak = false;
        var _err_4068758:stdgo.Error = (null : stdgo.Error);
        var _t_4068751:stdgo.GoString = ("" : stdgo.GoString);
        var _i_4068694:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_4068309:stdgo.Error = (null : stdgo.Error);
        var _star_4068038:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 4067999i32;
                } else if (__value__ == (4067999i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 4068009i32;
                } else if (__value__ == (4068009i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 4068030i32;
                    } else {
                        _gotoNext = 4069060i32;
                    };
                } else if (__value__ == (4068030i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_4068038 = __tmp__._0;
                        _chunk_4068054 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_4068038 && (_chunk_4068054 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 4068136i32;
                    } else {
                        _gotoNext = 4068302i32;
                    };
                } else if (__value__ == (4068136i32)) {
                    return { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                    _gotoNext = 4068302i32;
                } else if (__value__ == (4068302i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_4068054?.__copy__(), _name?.__copy__());
                        _t_4068302 = __tmp__._0?.__copy__();
                        _ok_4068305 = __tmp__._1;
                        _err_4068309 = __tmp__._2;
                    };
                    if ((_ok_4068305 && (((_t_4068302.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 4068540i32;
                    } else {
                        _gotoNext = 4068572i32;
                    };
                } else if (__value__ == (4068540i32)) {
                    _name = _t_4068302?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 4068009i32;
                } else if (__value__ == (4068572i32)) {
                    if (_err_4068309 != null) {
                        _gotoNext = 4068586i32;
                    } else {
                        _gotoNext = 4068615i32;
                    };
                } else if (__value__ == (4068586i32)) {
                    return { _0 : false, _1 : _err_4068309 };
                    _gotoNext = 4068615i32;
                } else if (__value__ == (4068615i32)) {
                    if (_star_4068038) {
                        _gotoNext = 4068623i32;
                    } else {
                        _gotoNext = 4069038i32;
                    };
                } else if (__value__ == (4068623i32)) {
                    _i_4068694 = (0 : stdgo.GoInt);
                    _gotoNext = 4068690i32;
                } else if (__value__ == (4068690i32)) {
                    if (((_i_4068694 < (_name.length) : Bool) && (_name[(_i_4068694 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4068745i32;
                    } else {
                        _gotoNext = 4069038i32;
                    };
                } else if (__value__ == (4068741i32)) {
                    _i_4068694++;
                    _gotoNext = 4068690i32;
                } else if (__value__ == (4068745i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_4068054?.__copy__(), (_name.__slice__((_i_4068694 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_4068751 = __tmp__._0?.__copy__();
                        _ok_4068754 = __tmp__._1;
                        _err_4068758 = __tmp__._2;
                    };
                    if (_ok_4068754) {
                        _gotoNext = 4068805i32;
                    } else {
                        _gotoNext = 4068982i32;
                    };
                } else if (__value__ == (4068805i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_4068751.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 4068912i32;
                    } else {
                        _gotoNext = 4068941i32;
                    };
                } else if (__value__ == (4068912i32)) {
                    _i_4068694++;
                    _gotoNext = 4068690i32;
                } else if (__value__ == (4068941i32)) {
                    _name = _t_4068751?.__copy__();
                    _gotoNext = 4068009i32;
                } else if (__value__ == (4068982i32)) {
                    if (_err_4068758 != null) {
                        _gotoNext = 4068996i32;
                    } else {
                        _gotoNext = 4068741i32;
                    };
                } else if (__value__ == (4068996i32)) {
                    return { _0 : false, _1 : _err_4068758 };
                    _gotoNext = 4068741i32;
                } else if (__value__ == (4069038i32)) {
                    return { _0 : false, _1 : (null : stdgo.Error) };
                    _gotoNext = 4068009i32;
                } else if (__value__ == (4069060i32)) {
                    return { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
