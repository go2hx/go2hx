package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var patternBreak = false;
        var _t_3973883:stdgo.GoString = ("" : stdgo.GoString);
        var _err_3973441:stdgo.Error = (null : stdgo.Error);
        var _ok_3973437:Bool = false;
        var _chunk_3973186:stdgo.GoString = ("" : stdgo.GoString);
        var _star_3973170:Bool = false;
        var _err_3973890:stdgo.Error = (null : stdgo.Error);
        var _ok_3973886:Bool = false;
        var _i_3973826:stdgo.GoInt = (0 : stdgo.GoInt);
        var _t_3973434:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3973131i32;
                } else if (__value__ == (3973131i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 3973141i32;
                } else if (__value__ == (3973141i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 3973162i32;
                    } else {
                        _gotoNext = 3974192i32;
                    };
                } else if (__value__ == (3973162i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_3973170 = @:tmpset0 __tmp__._0;
                        _chunk_3973186 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_3973170 && (_chunk_3973186 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 3973268i32;
                    } else {
                        _gotoNext = 3973434i32;
                    };
                } else if (__value__ == (3973268i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3973434i32;
                } else if (__value__ == (3973434i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_3973186?.__copy__(), _name?.__copy__());
                        _t_3973434 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_3973437 = @:tmpset0 __tmp__._1;
                        _err_3973441 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_3973437 && (((_t_3973434.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 3973672i32;
                    } else {
                        _gotoNext = 3973704i32;
                    };
                } else if (__value__ == (3973672i32)) {
                    _name = _t_3973434?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 3973141i32;
                } else if (__value__ == (3973704i32)) {
                    if (_err_3973441 != null) {
                        _gotoNext = 3973718i32;
                    } else {
                        _gotoNext = 3973747i32;
                    };
                } else if (__value__ == (3973718i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_3973441 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3973747i32;
                } else if (__value__ == (3973747i32)) {
                    if (_star_3973170) {
                        _gotoNext = 3973755i32;
                    } else {
                        _gotoNext = 3974170i32;
                    };
                } else if (__value__ == (3973755i32)) {
                    _i_3973826 = (0 : stdgo.GoInt);
                    _gotoNext = 3973822i32;
                } else if (__value__ == (3973822i32)) {
                    if (((_i_3973826 < (_name.length) : Bool) && (_name[(_i_3973826 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3973877i32;
                    } else {
                        _gotoNext = 3974170i32;
                    };
                } else if (__value__ == (3973873i32)) {
                    _i_3973826++;
                    _gotoNext = 3973822i32;
                } else if (__value__ == (3973877i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_3973186?.__copy__(), (_name.__slice__((_i_3973826 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_3973883 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_3973886 = @:tmpset0 __tmp__._1;
                        _err_3973890 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_3973886) {
                        _gotoNext = 3973937i32;
                    } else {
                        _gotoNext = 3974114i32;
                    };
                } else if (__value__ == (3973937i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_3973883.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3974044i32;
                    } else {
                        _gotoNext = 3974073i32;
                    };
                } else if (__value__ == (3974044i32)) {
                    _i_3973826++;
                    _gotoNext = 3973822i32;
                } else if (__value__ == (3974073i32)) {
                    _name = _t_3973883?.__copy__();
                    _gotoNext = 3973141i32;
                } else if (__value__ == (3974114i32)) {
                    if (_err_3973890 != null) {
                        _gotoNext = 3974128i32;
                    } else {
                        _gotoNext = 3973873i32;
                    };
                } else if (__value__ == (3974128i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_3973890 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3973873i32;
                } else if (__value__ == (3974170i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3973141i32;
                } else if (__value__ == (3974192i32)) {
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
