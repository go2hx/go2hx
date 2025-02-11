package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _star_3516806:Bool = false;
        var patternBreak = false;
        var _err_3517526:stdgo.Error = (null : stdgo.Error);
        var _ok_3517522:Bool = false;
        var _err_3517077:stdgo.Error = (null : stdgo.Error);
        var _ok_3517073:Bool = false;
        var _chunk_3516822:stdgo.GoString = ("" : stdgo.GoString);
        var _i_3517462:stdgo.GoInt = (0 : stdgo.GoInt);
        var _t_3517070:stdgo.GoString = ("" : stdgo.GoString);
        var _t_3517519:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3516767i32;
                } else if (__value__ == (3516767i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 3516777i32;
                } else if (__value__ == (3516777i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 3516798i32;
                    } else {
                        _gotoNext = 3517828i32;
                    };
                } else if (__value__ == (3516798i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanchunk._scanChunk(_pattern?.__copy__());
                        _star_3516806 = @:tmpset0 __tmp__._0;
                        _chunk_3516822 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_3516806 && (_chunk_3516822 == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 3516904i32;
                    } else {
                        _gotoNext = 3517070i32;
                    };
                } else if (__value__ == (3516904i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3517070i32;
                } else if (__value__ == (3517070i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchchunk._matchChunk(_chunk_3516822?.__copy__(), _name?.__copy__());
                        _t_3517070 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_3517073 = @:tmpset0 __tmp__._1;
                        _err_3517077 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_3517073 && (((_t_3517070.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 3517308i32;
                    } else {
                        _gotoNext = 3517340i32;
                    };
                } else if (__value__ == (3517308i32)) {
                    _name = _t_3517070?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 3516777i32;
                } else if (__value__ == (3517340i32)) {
                    if (_err_3517077 != null) {
                        _gotoNext = 3517354i32;
                    } else {
                        _gotoNext = 3517383i32;
                    };
                } else if (__value__ == (3517354i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_3517077 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3517383i32;
                } else if (__value__ == (3517383i32)) {
                    if (_star_3516806) {
                        _gotoNext = 3517391i32;
                    } else {
                        _gotoNext = 3517806i32;
                    };
                } else if (__value__ == (3517391i32)) {
                    _i_3517462 = (0 : stdgo.GoInt);
                    _gotoNext = 3517458i32;
                } else if (__value__ == (3517458i32)) {
                    if (((_i_3517462 < (_name.length) : Bool) && (_name[(_i_3517462 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3517513i32;
                    } else {
                        _gotoNext = 3517806i32;
                    };
                } else if (__value__ == (3517509i32)) {
                    _i_3517462++;
                    _gotoNext = 3517458i32;
                } else if (__value__ == (3517513i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchchunk._matchChunk(_chunk_3516822?.__copy__(), (_name.__slice__((_i_3517462 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_3517519 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_3517522 = @:tmpset0 __tmp__._1;
                        _err_3517526 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_3517522) {
                        _gotoNext = 3517573i32;
                    } else {
                        _gotoNext = 3517750i32;
                    };
                } else if (__value__ == (3517573i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_3517519.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3517680i32;
                    } else {
                        _gotoNext = 3517709i32;
                    };
                } else if (__value__ == (3517680i32)) {
                    _i_3517462++;
                    _gotoNext = 3517458i32;
                } else if (__value__ == (3517709i32)) {
                    _name = _t_3517519?.__copy__();
                    _gotoNext = 3516777i32;
                } else if (__value__ == (3517750i32)) {
                    if (_err_3517526 != null) {
                        _gotoNext = 3517764i32;
                    } else {
                        _gotoNext = 3517509i32;
                    };
                } else if (__value__ == (3517764i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_3517526 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3517509i32;
                } else if (__value__ == (3517806i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3516777i32;
                } else if (__value__ == (3517828i32)) {
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
