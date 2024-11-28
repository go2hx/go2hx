package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _star_2638191:Bool = false;
        var patternBreak = false;
        var _err_2638901:stdgo.Error = (null : stdgo.Error);
        var _ok_2638897:Bool = false;
        var _t_2638894:stdgo.GoString = ("" : stdgo.GoString);
        var _ok_2638454:Bool = false;
        var _chunk_2638207:stdgo.GoString = ("" : stdgo.GoString);
        var _err_2638458:stdgo.Error = (null : stdgo.Error);
        var _t_2638451:stdgo.GoString = ("" : stdgo.GoString);
        var _err_2639370:stdgo.Error = (null : stdgo.Error);
        var _i_2638843:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2638152i32;
                } else if (__value__ == (2638152i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2638162i32;
                } else if (__value__ == (2638162i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2638183i32;
                    } else {
                        _gotoNext = 2639468i32;
                    };
                } else if (__value__ == (2638183i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2638191 = __tmp__._0;
                        _chunk_2638207 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2638191 && (_chunk_2638207 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2638289i32;
                    } else {
                        _gotoNext = 2638451i32;
                    };
                } else if (__value__ == (2638289i32)) {
                    return { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                    _gotoNext = 2638451i32;
                } else if (__value__ == (2638451i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2638207?.__copy__(), _name?.__copy__());
                        _t_2638451 = __tmp__._0?.__copy__();
                        _ok_2638454 = __tmp__._1;
                        _err_2638458 = __tmp__._2;
                    };
                    if ((_ok_2638454 && (((_t_2638451.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2638689i32;
                    } else {
                        _gotoNext = 2638721i32;
                    };
                } else if (__value__ == (2638689i32)) {
                    _name = _t_2638451?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2638162i32;
                } else if (__value__ == (2638721i32)) {
                    if (_err_2638458 != null) {
                        _gotoNext = 2638735i32;
                    } else {
                        _gotoNext = 2638764i32;
                    };
                } else if (__value__ == (2638735i32)) {
                    return { _0 : false, _1 : _err_2638458 };
                    _gotoNext = 2638764i32;
                } else if (__value__ == (2638764i32)) {
                    if (_star_2638191) {
                        _gotoNext = 2638772i32;
                    } else {
                        _gotoNext = 2639293i32;
                    };
                } else if (__value__ == (2638772i32)) {
                    _i_2638843 = (0 : stdgo.GoInt);
                    _gotoNext = 2638839i32;
                } else if (__value__ == (2638839i32)) {
                    if (((_i_2638843 < (_name.length) : Bool) && (_name[(_i_2638843 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2638888i32;
                    } else {
                        _gotoNext = 2639293i32;
                    };
                } else if (__value__ == (2638884i32)) {
                    _i_2638843++;
                    _gotoNext = 2638839i32;
                } else if (__value__ == (2638888i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2638207?.__copy__(), (_name.__slice__((_i_2638843 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2638894 = __tmp__._0?.__copy__();
                        _ok_2638897 = __tmp__._1;
                        _err_2638901 = __tmp__._2;
                    };
                    if (_ok_2638897) {
                        _gotoNext = 2638948i32;
                    } else {
                        _gotoNext = 2639125i32;
                    };
                } else if (__value__ == (2638948i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2638894.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2639055i32;
                    } else {
                        _gotoNext = 2639084i32;
                    };
                } else if (__value__ == (2639055i32)) {
                    _i_2638843++;
                    _gotoNext = 2638839i32;
                } else if (__value__ == (2639084i32)) {
                    _name = _t_2638894?.__copy__();
                    _gotoNext = 2638162i32;
                } else if (__value__ == (2639125i32)) {
                    if (_err_2638901 != null) {
                        _gotoNext = 2639139i32;
                    } else {
                        _gotoNext = 2638884i32;
                    };
                } else if (__value__ == (2639139i32)) {
                    return { _0 : false, _1 : _err_2638901 };
                    _gotoNext = 2638884i32;
                } else if (__value__ == (2639293i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2639293i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2639314i32;
                    } else {
                        _gotoNext = 2639446i32;
                    };
                } else if (__value__ == (2639314i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2638207 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2638207?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2639370 = __tmp__._2;
                        };
                        if (_err_2639370 != null) {
                            _gotoNext = 2639411i32;
                        } else {
                            _gotoNext = 2639446i32;
                        };
                    };
                } else if (__value__ == (2639411i32)) {
                    return { _0 : false, _1 : _err_2639370 };
                    _gotoNext = 2639446i32;
                } else if (__value__ == (2639446i32)) {
                    return { _0 : false, _1 : (null : stdgo.Error) };
                    _gotoNext = 2638162i32;
                } else if (__value__ == (2639468i32)) {
                    return { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
