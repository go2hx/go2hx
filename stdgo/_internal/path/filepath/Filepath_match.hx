package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _ok_3947642:Bool = false;
        var _i_3947582:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_3947197:stdgo.Error = (null : stdgo.Error);
        var _chunk_3946942:stdgo.GoString = ("" : stdgo.GoString);
        var patternBreak = false;
        var _err_3947646:stdgo.Error = (null : stdgo.Error);
        var _t_3947639:stdgo.GoString = ("" : stdgo.GoString);
        var _ok_3947193:Bool = false;
        var _t_3947190:stdgo.GoString = ("" : stdgo.GoString);
        var _star_3946926:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3946887i32;
                } else if (__value__ == (3946887i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 3946897i32;
                } else if (__value__ == (3946897i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 3946918i32;
                    } else {
                        _gotoNext = 3947948i32;
                    };
                } else if (__value__ == (3946918i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanchunk._scanChunk(_pattern?.__copy__());
                        _star_3946926 = @:tmpset0 __tmp__._0;
                        _chunk_3946942 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_3946926 && (_chunk_3946942 == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 3947024i32;
                    } else {
                        _gotoNext = 3947190i32;
                    };
                } else if (__value__ == (3947024i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3947190i32;
                } else if (__value__ == (3947190i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchchunk._matchChunk(_chunk_3946942?.__copy__(), _name?.__copy__());
                        _t_3947190 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_3947193 = @:tmpset0 __tmp__._1;
                        _err_3947197 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_3947193 && (((_t_3947190.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 3947428i32;
                    } else {
                        _gotoNext = 3947460i32;
                    };
                } else if (__value__ == (3947428i32)) {
                    _name = _t_3947190?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 3946897i32;
                } else if (__value__ == (3947460i32)) {
                    if (_err_3947197 != null) {
                        _gotoNext = 3947474i32;
                    } else {
                        _gotoNext = 3947503i32;
                    };
                } else if (__value__ == (3947474i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_3947197 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3947503i32;
                } else if (__value__ == (3947503i32)) {
                    if (_star_3946926) {
                        _gotoNext = 3947511i32;
                    } else {
                        _gotoNext = 3947926i32;
                    };
                } else if (__value__ == (3947511i32)) {
                    _i_3947582 = (0 : stdgo.GoInt);
                    _gotoNext = 3947578i32;
                } else if (__value__ == (3947578i32)) {
                    if (((_i_3947582 < (_name.length) : Bool) && (_name[(_i_3947582 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3947633i32;
                    } else {
                        _gotoNext = 3947926i32;
                    };
                } else if (__value__ == (3947629i32)) {
                    _i_3947582++;
                    _gotoNext = 3947578i32;
                } else if (__value__ == (3947633i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchchunk._matchChunk(_chunk_3946942?.__copy__(), (_name.__slice__((_i_3947582 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_3947639 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_3947642 = @:tmpset0 __tmp__._1;
                        _err_3947646 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_3947642) {
                        _gotoNext = 3947693i32;
                    } else {
                        _gotoNext = 3947870i32;
                    };
                } else if (__value__ == (3947693i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_3947639.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3947800i32;
                    } else {
                        _gotoNext = 3947829i32;
                    };
                } else if (__value__ == (3947800i32)) {
                    _i_3947582++;
                    _gotoNext = 3947578i32;
                } else if (__value__ == (3947829i32)) {
                    _name = _t_3947639?.__copy__();
                    _gotoNext = 3946897i32;
                } else if (__value__ == (3947870i32)) {
                    if (_err_3947646 != null) {
                        _gotoNext = 3947884i32;
                    } else {
                        _gotoNext = 3947629i32;
                    };
                } else if (__value__ == (3947884i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_3947646 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3947629i32;
                } else if (__value__ == (3947926i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3946897i32;
                } else if (__value__ == (3947948i32)) {
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
