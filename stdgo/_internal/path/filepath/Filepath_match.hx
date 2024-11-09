package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _star_3867407:Bool = false;
        var _ok_3868123:Bool = false;
        var _ok_3867674:Bool = false;
        var _t_3867671:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_3867423:stdgo.GoString = ("" : stdgo.GoString);
        var patternBreak = false;
        var _err_3868127:stdgo.Error = (null : stdgo.Error);
        var _t_3868120:stdgo.GoString = ("" : stdgo.GoString);
        var _i_3868063:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_3867678:stdgo.Error = (null : stdgo.Error);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3867368i32;
                } else if (__value__ == (3867368i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 3867378i32;
                } else if (__value__ == (3867378i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 3867399i32;
                    } else {
                        _gotoNext = 3868429i32;
                    };
                } else if (__value__ == (3867399i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_3867407 = __tmp__._0;
                        _chunk_3867423 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_3867407 && (_chunk_3867423 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 3867505i32;
                    } else {
                        _gotoNext = 3867671i32;
                    };
                } else if (__value__ == (3867505i32)) {
                    return { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                    _gotoNext = 3867671i32;
                } else if (__value__ == (3867671i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_3867423?.__copy__(), _name?.__copy__());
                        _t_3867671 = __tmp__._0?.__copy__();
                        _ok_3867674 = __tmp__._1;
                        _err_3867678 = __tmp__._2;
                    };
                    if ((_ok_3867674 && (((_t_3867671.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 3867909i32;
                    } else {
                        _gotoNext = 3867941i32;
                    };
                } else if (__value__ == (3867909i32)) {
                    _name = _t_3867671?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 3867378i32;
                } else if (__value__ == (3867941i32)) {
                    if (_err_3867678 != null) {
                        _gotoNext = 3867955i32;
                    } else {
                        _gotoNext = 3867984i32;
                    };
                } else if (__value__ == (3867955i32)) {
                    return { _0 : false, _1 : _err_3867678 };
                    _gotoNext = 3867984i32;
                } else if (__value__ == (3867984i32)) {
                    if (_star_3867407) {
                        _gotoNext = 3867992i32;
                    } else {
                        _gotoNext = 3868407i32;
                    };
                } else if (__value__ == (3867992i32)) {
                    _i_3868063 = (0 : stdgo.GoInt);
                    _gotoNext = 3868059i32;
                } else if (__value__ == (3868059i32)) {
                    if (((_i_3868063 < (_name.length) : Bool) && (_name[(_i_3868063 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3868114i32;
                    } else {
                        _gotoNext = 3868407i32;
                    };
                } else if (__value__ == (3868110i32)) {
                    _i_3868063++;
                    _gotoNext = 3868059i32;
                } else if (__value__ == (3868114i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_3867423?.__copy__(), (_name.__slice__((_i_3868063 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_3868120 = __tmp__._0?.__copy__();
                        _ok_3868123 = __tmp__._1;
                        _err_3868127 = __tmp__._2;
                    };
                    if (_ok_3868123) {
                        _gotoNext = 3868174i32;
                    } else {
                        _gotoNext = 3868351i32;
                    };
                } else if (__value__ == (3868174i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_3868120.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3868281i32;
                    } else {
                        _gotoNext = 3868310i32;
                    };
                } else if (__value__ == (3868281i32)) {
                    _i_3868063++;
                    _gotoNext = 3868059i32;
                } else if (__value__ == (3868310i32)) {
                    _name = _t_3868120?.__copy__();
                    _gotoNext = 3867378i32;
                } else if (__value__ == (3868351i32)) {
                    if (_err_3868127 != null) {
                        _gotoNext = 3868365i32;
                    } else {
                        _gotoNext = 3868110i32;
                    };
                } else if (__value__ == (3868365i32)) {
                    return { _0 : false, _1 : _err_3868127 };
                    _gotoNext = 3868110i32;
                } else if (__value__ == (3868407i32)) {
                    return { _0 : false, _1 : (null : stdgo.Error) };
                    _gotoNext = 3867378i32;
                } else if (__value__ == (3868429i32)) {
                    return { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
