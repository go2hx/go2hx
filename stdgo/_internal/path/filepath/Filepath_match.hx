package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _ok_3974099:Bool = false;
        var _t_3974096:stdgo.GoString = ("" : stdgo.GoString);
        var _ok_3973650:Bool = false;
        var _t_3973647:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_3973399:stdgo.GoString = ("" : stdgo.GoString);
        var _star_3973383:Bool = false;
        var _err_3974103:stdgo.Error = (null : stdgo.Error);
        var _i_3974039:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_3973654:stdgo.Error = (null : stdgo.Error);
        var patternBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3973344i32;
                } else if (__value__ == (3973344i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 3973354i32;
                } else if (__value__ == (3973354i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 3973375i32;
                    } else {
                        _gotoNext = 3974405i32;
                    };
                } else if (__value__ == (3973375i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_3973383 = __tmp__._0;
                        _chunk_3973399 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_3973383 && (_chunk_3973399 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 3973481i32;
                    } else {
                        _gotoNext = 3973647i32;
                    };
                } else if (__value__ == (3973481i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3973647i32;
                } else if (__value__ == (3973647i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_3973399?.__copy__(), _name?.__copy__());
                        _t_3973647 = __tmp__._0?.__copy__();
                        _ok_3973650 = __tmp__._1;
                        _err_3973654 = __tmp__._2;
                    };
                    if ((_ok_3973650 && (((_t_3973647.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 3973885i32;
                    } else {
                        _gotoNext = 3973917i32;
                    };
                } else if (__value__ == (3973885i32)) {
                    _name = _t_3973647?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 3973354i32;
                } else if (__value__ == (3973917i32)) {
                    if (_err_3973654 != null) {
                        _gotoNext = 3973931i32;
                    } else {
                        _gotoNext = 3973960i32;
                    };
                } else if (__value__ == (3973931i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_3973654 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3973960i32;
                } else if (__value__ == (3973960i32)) {
                    if (_star_3973383) {
                        _gotoNext = 3973968i32;
                    } else {
                        _gotoNext = 3974383i32;
                    };
                } else if (__value__ == (3973968i32)) {
                    _i_3974039 = (0 : stdgo.GoInt);
                    _gotoNext = 3974035i32;
                } else if (__value__ == (3974035i32)) {
                    if (((_i_3974039 < (_name.length) : Bool) && (_name[(_i_3974039 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3974090i32;
                    } else {
                        _gotoNext = 3974383i32;
                    };
                } else if (__value__ == (3974086i32)) {
                    _i_3974039++;
                    _gotoNext = 3974035i32;
                } else if (__value__ == (3974090i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_3973399?.__copy__(), (_name.__slice__((_i_3974039 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_3974096 = __tmp__._0?.__copy__();
                        _ok_3974099 = __tmp__._1;
                        _err_3974103 = __tmp__._2;
                    };
                    if (_ok_3974099) {
                        _gotoNext = 3974150i32;
                    } else {
                        _gotoNext = 3974327i32;
                    };
                } else if (__value__ == (3974150i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_3974096.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3974257i32;
                    } else {
                        _gotoNext = 3974286i32;
                    };
                } else if (__value__ == (3974257i32)) {
                    _i_3974039++;
                    _gotoNext = 3974035i32;
                } else if (__value__ == (3974286i32)) {
                    _name = _t_3974096?.__copy__();
                    _gotoNext = 3973354i32;
                } else if (__value__ == (3974327i32)) {
                    if (_err_3974103 != null) {
                        _gotoNext = 3974341i32;
                    } else {
                        _gotoNext = 3974086i32;
                    };
                } else if (__value__ == (3974341i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_3974103 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3974086i32;
                } else if (__value__ == (3974383i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3973354i32;
                } else if (__value__ == (3974405i32)) {
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
