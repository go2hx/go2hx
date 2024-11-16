package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _ok_4083715:Bool = false;
        var _t_4083712:stdgo.GoString = ("" : stdgo.GoString);
        var _i_4083655:stdgo.GoInt = (0 : stdgo.GoInt);
        var _star_4082999:Bool = false;
        var _err_4083719:stdgo.Error = (null : stdgo.Error);
        var _err_4083270:stdgo.Error = (null : stdgo.Error);
        var _ok_4083266:Bool = false;
        var _t_4083263:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_4083015:stdgo.GoString = ("" : stdgo.GoString);
        var patternBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 4082960i32;
                } else if (__value__ == (4082960i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 4082970i32;
                } else if (__value__ == (4082970i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 4082991i32;
                    } else {
                        _gotoNext = 4084021i32;
                    };
                } else if (__value__ == (4082991i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_4082999 = __tmp__._0;
                        _chunk_4083015 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_4082999 && (_chunk_4083015 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 4083097i32;
                    } else {
                        _gotoNext = 4083263i32;
                    };
                } else if (__value__ == (4083097i32)) {
                    return { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                    _gotoNext = 4083263i32;
                } else if (__value__ == (4083263i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_4083015?.__copy__(), _name?.__copy__());
                        _t_4083263 = __tmp__._0?.__copy__();
                        _ok_4083266 = __tmp__._1;
                        _err_4083270 = __tmp__._2;
                    };
                    if ((_ok_4083266 && (((_t_4083263.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 4083501i32;
                    } else {
                        _gotoNext = 4083533i32;
                    };
                } else if (__value__ == (4083501i32)) {
                    _name = _t_4083263?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 4082970i32;
                } else if (__value__ == (4083533i32)) {
                    if (_err_4083270 != null) {
                        _gotoNext = 4083547i32;
                    } else {
                        _gotoNext = 4083576i32;
                    };
                } else if (__value__ == (4083547i32)) {
                    return { _0 : false, _1 : _err_4083270 };
                    _gotoNext = 4083576i32;
                } else if (__value__ == (4083576i32)) {
                    if (_star_4082999) {
                        _gotoNext = 4083584i32;
                    } else {
                        _gotoNext = 4083999i32;
                    };
                } else if (__value__ == (4083584i32)) {
                    _i_4083655 = (0 : stdgo.GoInt);
                    _gotoNext = 4083651i32;
                } else if (__value__ == (4083651i32)) {
                    if (((_i_4083655 < (_name.length) : Bool) && (_name[(_i_4083655 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4083706i32;
                    } else {
                        _gotoNext = 4083999i32;
                    };
                } else if (__value__ == (4083702i32)) {
                    _i_4083655++;
                    _gotoNext = 4083651i32;
                } else if (__value__ == (4083706i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_4083015?.__copy__(), (_name.__slice__((_i_4083655 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_4083712 = __tmp__._0?.__copy__();
                        _ok_4083715 = __tmp__._1;
                        _err_4083719 = __tmp__._2;
                    };
                    if (_ok_4083715) {
                        _gotoNext = 4083766i32;
                    } else {
                        _gotoNext = 4083943i32;
                    };
                } else if (__value__ == (4083766i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_4083712.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 4083873i32;
                    } else {
                        _gotoNext = 4083902i32;
                    };
                } else if (__value__ == (4083873i32)) {
                    _i_4083655++;
                    _gotoNext = 4083651i32;
                } else if (__value__ == (4083902i32)) {
                    _name = _t_4083712?.__copy__();
                    _gotoNext = 4082970i32;
                } else if (__value__ == (4083943i32)) {
                    if (_err_4083719 != null) {
                        _gotoNext = 4083957i32;
                    } else {
                        _gotoNext = 4083702i32;
                    };
                } else if (__value__ == (4083957i32)) {
                    return { _0 : false, _1 : _err_4083719 };
                    _gotoNext = 4083702i32;
                } else if (__value__ == (4083999i32)) {
                    return { _0 : false, _1 : (null : stdgo.Error) };
                    _gotoNext = 4082970i32;
                } else if (__value__ == (4084021i32)) {
                    return { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
