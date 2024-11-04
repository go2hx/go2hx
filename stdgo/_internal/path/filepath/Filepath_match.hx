package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _ok_3964586:Bool = false;
        var _i_3964526:stdgo.GoInt = (0 : stdgo.GoInt);
        var _chunk_3963886:stdgo.GoString = ("" : stdgo.GoString);
        var _star_3963870:Bool = false;
        var patternBreak = false;
        var _err_3964590:stdgo.Error = (null : stdgo.Error);
        var _t_3964583:stdgo.GoString = ("" : stdgo.GoString);
        var _err_3964141:stdgo.Error = (null : stdgo.Error);
        var _ok_3964137:Bool = false;
        var _t_3964134:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3963831i32;
                } else if (__value__ == (3963831i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 3963841i32;
                } else if (__value__ == (3963841i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 3963862i32;
                    } else {
                        _gotoNext = 3964892i32;
                    };
                } else if (__value__ == (3963862i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_3963870 = __tmp__._0;
                        _chunk_3963886 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_3963870 && (_chunk_3963886 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 3963968i32;
                    } else {
                        _gotoNext = 3964134i32;
                    };
                } else if (__value__ == (3963968i32)) {
                    return { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                    _gotoNext = 3964134i32;
                } else if (__value__ == (3964134i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_3963886?.__copy__(), _name?.__copy__());
                        _t_3964134 = __tmp__._0?.__copy__();
                        _ok_3964137 = __tmp__._1;
                        _err_3964141 = __tmp__._2;
                    };
                    if ((_ok_3964137 && (((_t_3964134.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 3964372i32;
                    } else {
                        _gotoNext = 3964404i32;
                    };
                } else if (__value__ == (3964372i32)) {
                    _name = _t_3964134?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 3963841i32;
                } else if (__value__ == (3964404i32)) {
                    if (_err_3964141 != null) {
                        _gotoNext = 3964418i32;
                    } else {
                        _gotoNext = 3964447i32;
                    };
                } else if (__value__ == (3964418i32)) {
                    return { _0 : false, _1 : _err_3964141 };
                    _gotoNext = 3964447i32;
                } else if (__value__ == (3964447i32)) {
                    if (_star_3963870) {
                        _gotoNext = 3964455i32;
                    } else {
                        _gotoNext = 3964870i32;
                    };
                } else if (__value__ == (3964455i32)) {
                    _i_3964526 = (0 : stdgo.GoInt);
                    _gotoNext = 3964522i32;
                } else if (__value__ == (3964522i32)) {
                    if (((_i_3964526 < (_name.length) : Bool) && (_name[(_i_3964526 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3964577i32;
                    } else {
                        _gotoNext = 3964870i32;
                    };
                } else if (__value__ == (3964573i32)) {
                    _i_3964526++;
                    _gotoNext = 3964522i32;
                } else if (__value__ == (3964577i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_3963886?.__copy__(), (_name.__slice__((_i_3964526 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_3964583 = __tmp__._0?.__copy__();
                        _ok_3964586 = __tmp__._1;
                        _err_3964590 = __tmp__._2;
                    };
                    if (_ok_3964586) {
                        _gotoNext = 3964637i32;
                    } else {
                        _gotoNext = 3964814i32;
                    };
                } else if (__value__ == (3964637i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_3964583.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3964744i32;
                    } else {
                        _gotoNext = 3964773i32;
                    };
                } else if (__value__ == (3964744i32)) {
                    _i_3964526++;
                    _gotoNext = 3964522i32;
                } else if (__value__ == (3964773i32)) {
                    _name = _t_3964583?.__copy__();
                    _gotoNext = 3963841i32;
                } else if (__value__ == (3964814i32)) {
                    if (_err_3964590 != null) {
                        _gotoNext = 3964828i32;
                    } else {
                        _gotoNext = 3964573i32;
                    };
                } else if (__value__ == (3964828i32)) {
                    return { _0 : false, _1 : _err_3964590 };
                    _gotoNext = 3964573i32;
                } else if (__value__ == (3964870i32)) {
                    return { _0 : false, _1 : (null : stdgo.Error) };
                    _gotoNext = 3963841i32;
                } else if (__value__ == (3964892i32)) {
                    return { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
