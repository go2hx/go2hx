package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_3943071:stdgo.Error = (null : stdgo.Error);
        var _ok_3943067:Bool = false;
        var _chunk_3942367:stdgo.GoString = ("" : stdgo.GoString);
        var _star_3942351:Bool = false;
        var _err_3942622:stdgo.Error = (null : stdgo.Error);
        var _ok_3942618:Bool = false;
        var _t_3942615:stdgo.GoString = ("" : stdgo.GoString);
        var patternBreak = false;
        var _t_3943064:stdgo.GoString = ("" : stdgo.GoString);
        var _i_3943007:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3942312i32;
                } else if (__value__ == (3942312i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 3942322i32;
                } else if (__value__ == (3942322i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 3942343i32;
                    } else {
                        _gotoNext = 3943373i32;
                    };
                } else if (__value__ == (3942343i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_3942351 = __tmp__._0;
                        _chunk_3942367 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_3942351 && (_chunk_3942367 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 3942449i32;
                    } else {
                        _gotoNext = 3942615i32;
                    };
                } else if (__value__ == (3942449i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3942615i32;
                } else if (__value__ == (3942615i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_3942367?.__copy__(), _name?.__copy__());
                        _t_3942615 = __tmp__._0?.__copy__();
                        _ok_3942618 = __tmp__._1;
                        _err_3942622 = __tmp__._2;
                    };
                    if ((_ok_3942618 && (((_t_3942615.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 3942853i32;
                    } else {
                        _gotoNext = 3942885i32;
                    };
                } else if (__value__ == (3942853i32)) {
                    _name = _t_3942615?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 3942322i32;
                } else if (__value__ == (3942885i32)) {
                    if (_err_3942622 != null) {
                        _gotoNext = 3942899i32;
                    } else {
                        _gotoNext = 3942928i32;
                    };
                } else if (__value__ == (3942899i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_3942622 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3942928i32;
                } else if (__value__ == (3942928i32)) {
                    if (_star_3942351) {
                        _gotoNext = 3942936i32;
                    } else {
                        _gotoNext = 3943351i32;
                    };
                } else if (__value__ == (3942936i32)) {
                    _i_3943007 = (0 : stdgo.GoInt);
                    _gotoNext = 3943003i32;
                } else if (__value__ == (3943003i32)) {
                    if (((_i_3943007 < (_name.length) : Bool) && (_name[(_i_3943007 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3943058i32;
                    } else {
                        _gotoNext = 3943351i32;
                    };
                } else if (__value__ == (3943054i32)) {
                    _i_3943007++;
                    _gotoNext = 3943003i32;
                } else if (__value__ == (3943058i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_3942367?.__copy__(), (_name.__slice__((_i_3943007 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_3943064 = __tmp__._0?.__copy__();
                        _ok_3943067 = __tmp__._1;
                        _err_3943071 = __tmp__._2;
                    };
                    if (_ok_3943067) {
                        _gotoNext = 3943118i32;
                    } else {
                        _gotoNext = 3943295i32;
                    };
                } else if (__value__ == (3943118i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_3943064.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3943225i32;
                    } else {
                        _gotoNext = 3943254i32;
                    };
                } else if (__value__ == (3943225i32)) {
                    _i_3943007++;
                    _gotoNext = 3943003i32;
                } else if (__value__ == (3943254i32)) {
                    _name = _t_3943064?.__copy__();
                    _gotoNext = 3942322i32;
                } else if (__value__ == (3943295i32)) {
                    if (_err_3943071 != null) {
                        _gotoNext = 3943309i32;
                    } else {
                        _gotoNext = 3943054i32;
                    };
                } else if (__value__ == (3943309i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_3943071 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3943054i32;
                } else if (__value__ == (3943351i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3942322i32;
                } else if (__value__ == (3943373i32)) {
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
