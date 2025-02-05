package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_4008322:stdgo.Error = (null : stdgo.Error);
        var _ok_4008318:Bool = false;
        var _t_4008315:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_4008067:stdgo.GoString = ("" : stdgo.GoString);
        var _star_4008051:Bool = false;
        var _ok_4008767:Bool = false;
        var _t_4008764:stdgo.GoString = ("" : stdgo.GoString);
        var _err_4008771:stdgo.Error = (null : stdgo.Error);
        var _i_4008707:stdgo.GoInt = (0 : stdgo.GoInt);
        var patternBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 4008012i32;
                } else if (__value__ == (4008012i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 4008022i32;
                } else if (__value__ == (4008022i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 4008043i32;
                    } else {
                        _gotoNext = 4009073i32;
                    };
                } else if (__value__ == (4008043i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanchunk._scanChunk(_pattern?.__copy__());
                        _star_4008051 = @:tmpset0 __tmp__._0;
                        _chunk_4008067 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_4008051 && (_chunk_4008067 == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 4008149i32;
                    } else {
                        _gotoNext = 4008315i32;
                    };
                } else if (__value__ == (4008149i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4008315i32;
                } else if (__value__ == (4008315i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchchunk._matchChunk(_chunk_4008067?.__copy__(), _name?.__copy__());
                        _t_4008315 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_4008318 = @:tmpset0 __tmp__._1;
                        _err_4008322 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_4008318 && (((_t_4008315.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 4008553i32;
                    } else {
                        _gotoNext = 4008585i32;
                    };
                } else if (__value__ == (4008553i32)) {
                    _name = _t_4008315?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 4008022i32;
                } else if (__value__ == (4008585i32)) {
                    if (_err_4008322 != null) {
                        _gotoNext = 4008599i32;
                    } else {
                        _gotoNext = 4008628i32;
                    };
                } else if (__value__ == (4008599i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_4008322 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4008628i32;
                } else if (__value__ == (4008628i32)) {
                    if (_star_4008051) {
                        _gotoNext = 4008636i32;
                    } else {
                        _gotoNext = 4009051i32;
                    };
                } else if (__value__ == (4008636i32)) {
                    _i_4008707 = (0 : stdgo.GoInt);
                    _gotoNext = 4008703i32;
                } else if (__value__ == (4008703i32)) {
                    if (((_i_4008707 < (_name.length) : Bool) && (_name[(_i_4008707 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4008758i32;
                    } else {
                        _gotoNext = 4009051i32;
                    };
                } else if (__value__ == (4008754i32)) {
                    _i_4008707++;
                    _gotoNext = 4008703i32;
                } else if (__value__ == (4008758i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchchunk._matchChunk(_chunk_4008067?.__copy__(), (_name.__slice__((_i_4008707 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_4008764 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_4008767 = @:tmpset0 __tmp__._1;
                        _err_4008771 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_4008767) {
                        _gotoNext = 4008818i32;
                    } else {
                        _gotoNext = 4008995i32;
                    };
                } else if (__value__ == (4008818i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_4008764.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 4008925i32;
                    } else {
                        _gotoNext = 4008954i32;
                    };
                } else if (__value__ == (4008925i32)) {
                    _i_4008707++;
                    _gotoNext = 4008703i32;
                } else if (__value__ == (4008954i32)) {
                    _name = _t_4008764?.__copy__();
                    _gotoNext = 4008022i32;
                } else if (__value__ == (4008995i32)) {
                    if (_err_4008771 != null) {
                        _gotoNext = 4009009i32;
                    } else {
                        _gotoNext = 4008754i32;
                    };
                } else if (__value__ == (4009009i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_4008771 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4008754i32;
                } else if (__value__ == (4009051i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4008022i32;
                } else if (__value__ == (4009073i32)) {
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
