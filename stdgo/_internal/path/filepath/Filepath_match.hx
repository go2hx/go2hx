package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_4036193:stdgo.Error = (null : stdgo.Error);
        var _err_4035744:stdgo.Error = (null : stdgo.Error);
        var _ok_4035740:Bool = false;
        var _t_4035737:stdgo.GoString = ("" : stdgo.GoString);
        var _star_4035473:Bool = false;
        var patternBreak = false;
        var _ok_4036189:Bool = false;
        var _t_4036186:stdgo.GoString = ("" : stdgo.GoString);
        var _i_4036129:stdgo.GoInt = (0 : stdgo.GoInt);
        var _chunk_4035489:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 4035434i32;
                } else if (__value__ == (4035434i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 4035444i32;
                } else if (__value__ == (4035444i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 4035465i32;
                    } else {
                        _gotoNext = 4036495i32;
                    };
                } else if (__value__ == (4035465i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanchunk._scanChunk(_pattern?.__copy__());
                        _star_4035473 = @:tmpset0 __tmp__._0;
                        _chunk_4035489 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_4035473 && (_chunk_4035489 == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 4035571i32;
                    } else {
                        _gotoNext = 4035737i32;
                    };
                } else if (__value__ == (4035571i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4035737i32;
                } else if (__value__ == (4035737i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchchunk._matchChunk(_chunk_4035489?.__copy__(), _name?.__copy__());
                        _t_4035737 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_4035740 = @:tmpset0 __tmp__._1;
                        _err_4035744 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_4035740 && (((_t_4035737.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 4035975i32;
                    } else {
                        _gotoNext = 4036007i32;
                    };
                } else if (__value__ == (4035975i32)) {
                    _name = _t_4035737?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 4035444i32;
                } else if (__value__ == (4036007i32)) {
                    if (_err_4035744 != null) {
                        _gotoNext = 4036021i32;
                    } else {
                        _gotoNext = 4036050i32;
                    };
                } else if (__value__ == (4036021i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_4035744 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4036050i32;
                } else if (__value__ == (4036050i32)) {
                    if (_star_4035473) {
                        _gotoNext = 4036058i32;
                    } else {
                        _gotoNext = 4036473i32;
                    };
                } else if (__value__ == (4036058i32)) {
                    _i_4036129 = (0 : stdgo.GoInt);
                    _gotoNext = 4036125i32;
                } else if (__value__ == (4036125i32)) {
                    if (((_i_4036129 < (_name.length) : Bool) && (_name[(_i_4036129 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4036180i32;
                    } else {
                        _gotoNext = 4036473i32;
                    };
                } else if (__value__ == (4036176i32)) {
                    _i_4036129++;
                    _gotoNext = 4036125i32;
                } else if (__value__ == (4036180i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchchunk._matchChunk(_chunk_4035489?.__copy__(), (_name.__slice__((_i_4036129 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_4036186 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_4036189 = @:tmpset0 __tmp__._1;
                        _err_4036193 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_4036189) {
                        _gotoNext = 4036240i32;
                    } else {
                        _gotoNext = 4036417i32;
                    };
                } else if (__value__ == (4036240i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_4036186.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 4036347i32;
                    } else {
                        _gotoNext = 4036376i32;
                    };
                } else if (__value__ == (4036347i32)) {
                    _i_4036129++;
                    _gotoNext = 4036125i32;
                } else if (__value__ == (4036376i32)) {
                    _name = _t_4036186?.__copy__();
                    _gotoNext = 4035444i32;
                } else if (__value__ == (4036417i32)) {
                    if (_err_4036193 != null) {
                        _gotoNext = 4036431i32;
                    } else {
                        _gotoNext = 4036176i32;
                    };
                } else if (__value__ == (4036431i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_4036193 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4036176i32;
                } else if (__value__ == (4036473i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4035444i32;
                } else if (__value__ == (4036495i32)) {
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
