package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var patternBreak = false;
        var _ok_3955452:Bool = false;
        var _t_3955449:stdgo.GoString = ("" : stdgo.GoString);
        var _i_3955392:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_3955007:stdgo.Error = (null : stdgo.Error);
        var _t_3955000:stdgo.GoString = ("" : stdgo.GoString);
        var _star_3954736:Bool = false;
        var _err_3955456:stdgo.Error = (null : stdgo.Error);
        var _ok_3955003:Bool = false;
        var _chunk_3954752:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3954697i32;
                } else if (__value__ == (3954697i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 3954707i32;
                } else if (__value__ == (3954707i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 3954728i32;
                    } else {
                        _gotoNext = 3955758i32;
                    };
                } else if (__value__ == (3954728i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_3954736 = __tmp__._0;
                        _chunk_3954752 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_3954736 && (_chunk_3954752 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 3954834i32;
                    } else {
                        _gotoNext = 3955000i32;
                    };
                } else if (__value__ == (3954834i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3955000i32;
                } else if (__value__ == (3955000i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_3954752?.__copy__(), _name?.__copy__());
                        _t_3955000 = __tmp__._0?.__copy__();
                        _ok_3955003 = __tmp__._1;
                        _err_3955007 = __tmp__._2;
                    };
                    if ((_ok_3955003 && (((_t_3955000.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 3955238i32;
                    } else {
                        _gotoNext = 3955270i32;
                    };
                } else if (__value__ == (3955238i32)) {
                    _name = _t_3955000?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 3954707i32;
                } else if (__value__ == (3955270i32)) {
                    if (_err_3955007 != null) {
                        _gotoNext = 3955284i32;
                    } else {
                        _gotoNext = 3955313i32;
                    };
                } else if (__value__ == (3955284i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_3955007 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3955313i32;
                } else if (__value__ == (3955313i32)) {
                    if (_star_3954736) {
                        _gotoNext = 3955321i32;
                    } else {
                        _gotoNext = 3955736i32;
                    };
                } else if (__value__ == (3955321i32)) {
                    _i_3955392 = (0 : stdgo.GoInt);
                    _gotoNext = 3955388i32;
                } else if (__value__ == (3955388i32)) {
                    if (((_i_3955392 < (_name.length) : Bool) && (_name[(_i_3955392 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3955443i32;
                    } else {
                        _gotoNext = 3955736i32;
                    };
                } else if (__value__ == (3955439i32)) {
                    _i_3955392++;
                    _gotoNext = 3955388i32;
                } else if (__value__ == (3955443i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_3954752?.__copy__(), (_name.__slice__((_i_3955392 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_3955449 = __tmp__._0?.__copy__();
                        _ok_3955452 = __tmp__._1;
                        _err_3955456 = __tmp__._2;
                    };
                    if (_ok_3955452) {
                        _gotoNext = 3955503i32;
                    } else {
                        _gotoNext = 3955680i32;
                    };
                } else if (__value__ == (3955503i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_3955449.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3955610i32;
                    } else {
                        _gotoNext = 3955639i32;
                    };
                } else if (__value__ == (3955610i32)) {
                    _i_3955392++;
                    _gotoNext = 3955388i32;
                } else if (__value__ == (3955639i32)) {
                    _name = _t_3955449?.__copy__();
                    _gotoNext = 3954707i32;
                } else if (__value__ == (3955680i32)) {
                    if (_err_3955456 != null) {
                        _gotoNext = 3955694i32;
                    } else {
                        _gotoNext = 3955439i32;
                    };
                } else if (__value__ == (3955694i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_3955456 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3955439i32;
                } else if (__value__ == (3955736i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3954707i32;
                } else if (__value__ == (3955758i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
