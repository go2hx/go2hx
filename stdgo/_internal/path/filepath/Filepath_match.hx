package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_3868513:stdgo.Error = (null : stdgo.Error);
        var _t_3868506:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_3868258:stdgo.GoString = ("" : stdgo.GoString);
        var _err_3868962:stdgo.Error = (null : stdgo.Error);
        var _ok_3868958:Bool = false;
        var _ok_3868509:Bool = false;
        var _star_3868242:Bool = false;
        var patternBreak = false;
        var _t_3868955:stdgo.GoString = ("" : stdgo.GoString);
        var _i_3868898:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3868203i32;
                } else if (__value__ == (3868203i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 3868213i32;
                } else if (__value__ == (3868213i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 3868234i32;
                    } else {
                        _gotoNext = 3869264i32;
                    };
                } else if (__value__ == (3868234i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_3868242 = __tmp__._0;
                        _chunk_3868258 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_3868242 && (_chunk_3868258 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 3868340i32;
                    } else {
                        _gotoNext = 3868506i32;
                    };
                } else if (__value__ == (3868340i32)) {
                    return { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                    _gotoNext = 3868506i32;
                } else if (__value__ == (3868506i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_3868258?.__copy__(), _name?.__copy__());
                        _t_3868506 = __tmp__._0?.__copy__();
                        _ok_3868509 = __tmp__._1;
                        _err_3868513 = __tmp__._2;
                    };
                    if ((_ok_3868509 && (((_t_3868506.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 3868744i32;
                    } else {
                        _gotoNext = 3868776i32;
                    };
                } else if (__value__ == (3868744i32)) {
                    _name = _t_3868506?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 3868213i32;
                } else if (__value__ == (3868776i32)) {
                    if (_err_3868513 != null) {
                        _gotoNext = 3868790i32;
                    } else {
                        _gotoNext = 3868819i32;
                    };
                } else if (__value__ == (3868790i32)) {
                    return { _0 : false, _1 : _err_3868513 };
                    _gotoNext = 3868819i32;
                } else if (__value__ == (3868819i32)) {
                    if (_star_3868242) {
                        _gotoNext = 3868827i32;
                    } else {
                        _gotoNext = 3869242i32;
                    };
                } else if (__value__ == (3868827i32)) {
                    _i_3868898 = (0 : stdgo.GoInt);
                    _gotoNext = 3868894i32;
                } else if (__value__ == (3868894i32)) {
                    if (((_i_3868898 < (_name.length) : Bool) && (_name[(_i_3868898 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3868949i32;
                    } else {
                        _gotoNext = 3869242i32;
                    };
                } else if (__value__ == (3868945i32)) {
                    _i_3868898++;
                    _gotoNext = 3868894i32;
                } else if (__value__ == (3868949i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_3868258?.__copy__(), (_name.__slice__((_i_3868898 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_3868955 = __tmp__._0?.__copy__();
                        _ok_3868958 = __tmp__._1;
                        _err_3868962 = __tmp__._2;
                    };
                    if (_ok_3868958) {
                        _gotoNext = 3869009i32;
                    } else {
                        _gotoNext = 3869186i32;
                    };
                } else if (__value__ == (3869009i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_3868955.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3869116i32;
                    } else {
                        _gotoNext = 3869145i32;
                    };
                } else if (__value__ == (3869116i32)) {
                    _i_3868898++;
                    _gotoNext = 3868894i32;
                } else if (__value__ == (3869145i32)) {
                    _name = _t_3868955?.__copy__();
                    _gotoNext = 3868213i32;
                } else if (__value__ == (3869186i32)) {
                    if (_err_3868962 != null) {
                        _gotoNext = 3869200i32;
                    } else {
                        _gotoNext = 3868945i32;
                    };
                } else if (__value__ == (3869200i32)) {
                    return { _0 : false, _1 : _err_3868962 };
                    _gotoNext = 3868945i32;
                } else if (__value__ == (3869242i32)) {
                    return { _0 : false, _1 : (null : stdgo.Error) };
                    _gotoNext = 3868213i32;
                } else if (__value__ == (3869264i32)) {
                    return { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
