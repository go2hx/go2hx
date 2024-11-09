package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_3964103:stdgo.Error = (null : stdgo.Error);
        var _ok_3964099:Bool = false;
        var _i_3964039:stdgo.GoInt = (0 : stdgo.GoInt);
        var _chunk_3963399:stdgo.GoString = ("" : stdgo.GoString);
        var _star_3963383:Bool = false;
        var _t_3964096:stdgo.GoString = ("" : stdgo.GoString);
        var _err_3963654:stdgo.Error = (null : stdgo.Error);
        var _ok_3963650:Bool = false;
        var _t_3963647:stdgo.GoString = ("" : stdgo.GoString);
        var patternBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3963344i32;
                } else if (__value__ == (3963344i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 3963354i32;
                } else if (__value__ == (3963354i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 3963375i32;
                    } else {
                        _gotoNext = 3964405i32;
                    };
                } else if (__value__ == (3963375i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_3963383 = __tmp__._0;
                        _chunk_3963399 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_3963383 && (_chunk_3963399 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 3963481i32;
                    } else {
                        _gotoNext = 3963647i32;
                    };
                } else if (__value__ == (3963481i32)) {
                    return { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                    _gotoNext = 3963647i32;
                } else if (__value__ == (3963647i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_3963399?.__copy__(), _name?.__copy__());
                        _t_3963647 = __tmp__._0?.__copy__();
                        _ok_3963650 = __tmp__._1;
                        _err_3963654 = __tmp__._2;
                    };
                    if ((_ok_3963650 && (((_t_3963647.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 3963885i32;
                    } else {
                        _gotoNext = 3963917i32;
                    };
                } else if (__value__ == (3963885i32)) {
                    _name = _t_3963647?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 3963354i32;
                } else if (__value__ == (3963917i32)) {
                    if (_err_3963654 != null) {
                        _gotoNext = 3963931i32;
                    } else {
                        _gotoNext = 3963960i32;
                    };
                } else if (__value__ == (3963931i32)) {
                    return { _0 : false, _1 : _err_3963654 };
                    _gotoNext = 3963960i32;
                } else if (__value__ == (3963960i32)) {
                    if (_star_3963383) {
                        _gotoNext = 3963968i32;
                    } else {
                        _gotoNext = 3964383i32;
                    };
                } else if (__value__ == (3963968i32)) {
                    _i_3964039 = (0 : stdgo.GoInt);
                    _gotoNext = 3964035i32;
                } else if (__value__ == (3964035i32)) {
                    if (((_i_3964039 < (_name.length) : Bool) && (_name[(_i_3964039 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3964090i32;
                    } else {
                        _gotoNext = 3964383i32;
                    };
                } else if (__value__ == (3964086i32)) {
                    _i_3964039++;
                    _gotoNext = 3964035i32;
                } else if (__value__ == (3964090i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchChunk._matchChunk(_chunk_3963399?.__copy__(), (_name.__slice__((_i_3964039 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_3964096 = __tmp__._0?.__copy__();
                        _ok_3964099 = __tmp__._1;
                        _err_3964103 = __tmp__._2;
                    };
                    if (_ok_3964099) {
                        _gotoNext = 3964150i32;
                    } else {
                        _gotoNext = 3964327i32;
                    };
                } else if (__value__ == (3964150i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_3964096.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3964257i32;
                    } else {
                        _gotoNext = 3964286i32;
                    };
                } else if (__value__ == (3964257i32)) {
                    _i_3964039++;
                    _gotoNext = 3964035i32;
                } else if (__value__ == (3964286i32)) {
                    _name = _t_3964096?.__copy__();
                    _gotoNext = 3963354i32;
                } else if (__value__ == (3964327i32)) {
                    if (_err_3964103 != null) {
                        _gotoNext = 3964341i32;
                    } else {
                        _gotoNext = 3964086i32;
                    };
                } else if (__value__ == (3964341i32)) {
                    return { _0 : false, _1 : _err_3964103 };
                    _gotoNext = 3964086i32;
                } else if (__value__ == (3964383i32)) {
                    return { _0 : false, _1 : (null : stdgo.Error) };
                    _gotoNext = 3963354i32;
                } else if (__value__ == (3964405i32)) {
                    return { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
