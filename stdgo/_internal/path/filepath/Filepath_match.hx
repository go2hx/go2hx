package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_3966637:stdgo.Error = (null : stdgo.Error);
        var _i_3966573:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_3966188:stdgo.Error = (null : stdgo.Error);
        var _ok_3966184:Bool = false;
        var _t_3966181:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_3965933:stdgo.GoString = ("" : stdgo.GoString);
        var patternBreak = false;
        var _ok_3966633:Bool = false;
        var _t_3966630:stdgo.GoString = ("" : stdgo.GoString);
        var _star_3965917:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3965878i32;
                } else if (__value__ == (3965878i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 3965888i32;
                } else if (__value__ == (3965888i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 3965909i32;
                    } else {
                        _gotoNext = 3966939i32;
                    };
                } else if (__value__ == (3965909i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_3965917 = __tmp__._0;
                        _chunk_3965933 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_3965917 && (_chunk_3965933 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 3966015i32;
                    } else {
                        _gotoNext = 3966181i32;
                    };
                } else if (__value__ == (3966015i32)) {
                    return { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                    _gotoNext = 3966181i32;
                } else if (__value__ == (3966181i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_3965933?.__copy__(), _name?.__copy__());
                        _t_3966181 = __tmp__._0?.__copy__();
                        _ok_3966184 = __tmp__._1;
                        _err_3966188 = __tmp__._2;
                    };
                    if ((_ok_3966184 && (((_t_3966181.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 3966419i32;
                    } else {
                        _gotoNext = 3966451i32;
                    };
                } else if (__value__ == (3966419i32)) {
                    _name = _t_3966181?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 3965888i32;
                } else if (__value__ == (3966451i32)) {
                    if (_err_3966188 != null) {
                        _gotoNext = 3966465i32;
                    } else {
                        _gotoNext = 3966494i32;
                    };
                } else if (__value__ == (3966465i32)) {
                    return { _0 : false, _1 : _err_3966188 };
                    _gotoNext = 3966494i32;
                } else if (__value__ == (3966494i32)) {
                    if (_star_3965917) {
                        _gotoNext = 3966502i32;
                    } else {
                        _gotoNext = 3966917i32;
                    };
                } else if (__value__ == (3966502i32)) {
                    _i_3966573 = (0 : stdgo.GoInt);
                    _gotoNext = 3966569i32;
                } else if (__value__ == (3966569i32)) {
                    if (((_i_3966573 < (_name.length) : Bool) && (_name[(_i_3966573 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3966624i32;
                    } else {
                        _gotoNext = 3966917i32;
                    };
                } else if (__value__ == (3966620i32)) {
                    _i_3966573++;
                    _gotoNext = 3966569i32;
                } else if (__value__ == (3966624i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_3965933?.__copy__(), (_name.__slice__((_i_3966573 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_3966630 = __tmp__._0?.__copy__();
                        _ok_3966633 = __tmp__._1;
                        _err_3966637 = __tmp__._2;
                    };
                    if (_ok_3966633) {
                        _gotoNext = 3966684i32;
                    } else {
                        _gotoNext = 3966861i32;
                    };
                } else if (__value__ == (3966684i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_3966630.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3966791i32;
                    } else {
                        _gotoNext = 3966820i32;
                    };
                } else if (__value__ == (3966791i32)) {
                    _i_3966573++;
                    _gotoNext = 3966569i32;
                } else if (__value__ == (3966820i32)) {
                    _name = _t_3966630?.__copy__();
                    _gotoNext = 3965888i32;
                } else if (__value__ == (3966861i32)) {
                    if (_err_3966637 != null) {
                        _gotoNext = 3966875i32;
                    } else {
                        _gotoNext = 3966620i32;
                    };
                } else if (__value__ == (3966875i32)) {
                    return { _0 : false, _1 : _err_3966637 };
                    _gotoNext = 3966620i32;
                } else if (__value__ == (3966917i32)) {
                    return { _0 : false, _1 : (null : stdgo.Error) };
                    _gotoNext = 3965888i32;
                } else if (__value__ == (3966939i32)) {
                    return { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
