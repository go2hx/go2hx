package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _t_2890362:stdgo.GoString = ("" : stdgo.GoString);
        var _i_2890311:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_2889926:stdgo.Error = (null : stdgo.Error);
        var _t_2889919:stdgo.GoString = ("" : stdgo.GoString);
        var _ok_2889922:Bool = false;
        var _chunk_2889675:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2889659:Bool = false;
        var patternBreak = false;
        var _err_2890838:stdgo.Error = (null : stdgo.Error);
        var _err_2890369:stdgo.Error = (null : stdgo.Error);
        var _ok_2890365:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2889620i32;
                } else if (__value__ == (2889620i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2889630i32;
                } else if (__value__ == (2889630i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2889651i32;
                    } else {
                        _gotoNext = 2890936i32;
                    };
                } else if (__value__ == (2889651i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2889659 = __tmp__._0;
                        _chunk_2889675 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2889659 && (_chunk_2889675 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2889757i32;
                    } else {
                        _gotoNext = 2889919i32;
                    };
                } else if (__value__ == (2889757i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2889919i32;
                } else if (__value__ == (2889919i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2889675?.__copy__(), _name?.__copy__());
                        _t_2889919 = __tmp__._0?.__copy__();
                        _ok_2889922 = __tmp__._1;
                        _err_2889926 = __tmp__._2;
                    };
                    if ((_ok_2889922 && (((_t_2889919.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2890157i32;
                    } else {
                        _gotoNext = 2890189i32;
                    };
                } else if (__value__ == (2890157i32)) {
                    _name = _t_2889919?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2889630i32;
                } else if (__value__ == (2890189i32)) {
                    if (_err_2889926 != null) {
                        _gotoNext = 2890203i32;
                    } else {
                        _gotoNext = 2890232i32;
                    };
                } else if (__value__ == (2890203i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2889926 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2890232i32;
                } else if (__value__ == (2890232i32)) {
                    if (_star_2889659) {
                        _gotoNext = 2890240i32;
                    } else {
                        _gotoNext = 2890761i32;
                    };
                } else if (__value__ == (2890240i32)) {
                    _i_2890311 = (0 : stdgo.GoInt);
                    _gotoNext = 2890307i32;
                } else if (__value__ == (2890307i32)) {
                    if (((_i_2890311 < (_name.length) : Bool) && (_name[(_i_2890311 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2890356i32;
                    } else {
                        _gotoNext = 2890761i32;
                    };
                } else if (__value__ == (2890352i32)) {
                    _i_2890311++;
                    _gotoNext = 2890307i32;
                } else if (__value__ == (2890356i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2889675?.__copy__(), (_name.__slice__((_i_2890311 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2890362 = __tmp__._0?.__copy__();
                        _ok_2890365 = __tmp__._1;
                        _err_2890369 = __tmp__._2;
                    };
                    if (_ok_2890365) {
                        _gotoNext = 2890416i32;
                    } else {
                        _gotoNext = 2890593i32;
                    };
                } else if (__value__ == (2890416i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2890362.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2890523i32;
                    } else {
                        _gotoNext = 2890552i32;
                    };
                } else if (__value__ == (2890523i32)) {
                    _i_2890311++;
                    _gotoNext = 2890307i32;
                } else if (__value__ == (2890552i32)) {
                    _name = _t_2890362?.__copy__();
                    _gotoNext = 2889630i32;
                } else if (__value__ == (2890593i32)) {
                    if (_err_2890369 != null) {
                        _gotoNext = 2890607i32;
                    } else {
                        _gotoNext = 2890352i32;
                    };
                } else if (__value__ == (2890607i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2890369 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2890352i32;
                } else if (__value__ == (2890761i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2890761i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2890782i32;
                    } else {
                        _gotoNext = 2890914i32;
                    };
                } else if (__value__ == (2890782i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2889675 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2889675?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2890838 = __tmp__._2;
                        };
                        if (_err_2890838 != null) {
                            _gotoNext = 2890879i32;
                        } else {
                            _gotoNext = 2890761i32;
                        };
                    };
                } else if (__value__ == (2890879i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2890838 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2890761i32;
                } else if (__value__ == (2890914i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2889630i32;
                } else if (__value__ == (2890936i32)) {
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
