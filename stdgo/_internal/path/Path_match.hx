package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_2829493:stdgo.Error = (null : stdgo.Error);
        var _t_2829017:stdgo.GoString = ("" : stdgo.GoString);
        var _ok_2828577:Bool = false;
        var _star_2828314:Bool = false;
        var _ok_2829020:Bool = false;
        var _i_2828966:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_2828581:stdgo.Error = (null : stdgo.Error);
        var _t_2828574:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_2828330:stdgo.GoString = ("" : stdgo.GoString);
        var patternBreak = false;
        var _err_2829024:stdgo.Error = (null : stdgo.Error);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2828275i32;
                } else if (__value__ == (2828275i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2828285i32;
                } else if (__value__ == (2828285i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2828306i32;
                    } else {
                        _gotoNext = 2829591i32;
                    };
                } else if (__value__ == (2828306i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2828314 = __tmp__._0;
                        _chunk_2828330 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2828314 && (_chunk_2828330 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2828412i32;
                    } else {
                        _gotoNext = 2828574i32;
                    };
                } else if (__value__ == (2828412i32)) {
                    return { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                    _gotoNext = 2828574i32;
                } else if (__value__ == (2828574i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2828330?.__copy__(), _name?.__copy__());
                        _t_2828574 = __tmp__._0?.__copy__();
                        _ok_2828577 = __tmp__._1;
                        _err_2828581 = __tmp__._2;
                    };
                    if ((_ok_2828577 && (((_t_2828574.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2828812i32;
                    } else {
                        _gotoNext = 2828844i32;
                    };
                } else if (__value__ == (2828812i32)) {
                    _name = _t_2828574?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2828285i32;
                } else if (__value__ == (2828844i32)) {
                    if (_err_2828581 != null) {
                        _gotoNext = 2828858i32;
                    } else {
                        _gotoNext = 2828887i32;
                    };
                } else if (__value__ == (2828858i32)) {
                    return { _0 : false, _1 : _err_2828581 };
                    _gotoNext = 2828887i32;
                } else if (__value__ == (2828887i32)) {
                    if (_star_2828314) {
                        _gotoNext = 2828895i32;
                    } else {
                        _gotoNext = 2829416i32;
                    };
                } else if (__value__ == (2828895i32)) {
                    _i_2828966 = (0 : stdgo.GoInt);
                    _gotoNext = 2828962i32;
                } else if (__value__ == (2828962i32)) {
                    if (((_i_2828966 < (_name.length) : Bool) && (_name[(_i_2828966 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2829011i32;
                    } else {
                        _gotoNext = 2829416i32;
                    };
                } else if (__value__ == (2829007i32)) {
                    _i_2828966++;
                    _gotoNext = 2828962i32;
                } else if (__value__ == (2829011i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2828330?.__copy__(), (_name.__slice__((_i_2828966 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2829017 = __tmp__._0?.__copy__();
                        _ok_2829020 = __tmp__._1;
                        _err_2829024 = __tmp__._2;
                    };
                    if (_ok_2829020) {
                        _gotoNext = 2829071i32;
                    } else {
                        _gotoNext = 2829248i32;
                    };
                } else if (__value__ == (2829071i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2829017.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2829178i32;
                    } else {
                        _gotoNext = 2829207i32;
                    };
                } else if (__value__ == (2829178i32)) {
                    _i_2828966++;
                    _gotoNext = 2828962i32;
                } else if (__value__ == (2829207i32)) {
                    _name = _t_2829017?.__copy__();
                    _gotoNext = 2828285i32;
                } else if (__value__ == (2829248i32)) {
                    if (_err_2829024 != null) {
                        _gotoNext = 2829262i32;
                    } else {
                        _gotoNext = 2829007i32;
                    };
                } else if (__value__ == (2829262i32)) {
                    return { _0 : false, _1 : _err_2829024 };
                    _gotoNext = 2829007i32;
                } else if (__value__ == (2829416i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2829416i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2829437i32;
                    } else {
                        _gotoNext = 2829569i32;
                    };
                } else if (__value__ == (2829437i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2828330 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2828330?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2829493 = __tmp__._2;
                        };
                        if (_err_2829493 != null) {
                            _gotoNext = 2829534i32;
                        } else {
                            _gotoNext = 2829569i32;
                        };
                    };
                } else if (__value__ == (2829534i32)) {
                    return { _0 : false, _1 : _err_2829493 };
                    _gotoNext = 2829569i32;
                } else if (__value__ == (2829569i32)) {
                    return { _0 : false, _1 : (null : stdgo.Error) };
                    _gotoNext = 2828285i32;
                } else if (__value__ == (2829591i32)) {
                    return { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
