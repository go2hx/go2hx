package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_2606411:stdgo.Error = (null : stdgo.Error);
        var _err_2605942:stdgo.Error = (null : stdgo.Error);
        var _ok_2605938:Bool = false;
        var _t_2605935:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_2605248:stdgo.GoString = ("" : stdgo.GoString);
        var _i_2605884:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_2605499:stdgo.Error = (null : stdgo.Error);
        var _ok_2605495:Bool = false;
        var _t_2605492:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2605232:Bool = false;
        var patternBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2605193i32;
                } else if (__value__ == (2605193i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2605203i32;
                } else if (__value__ == (2605203i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2605224i32;
                    } else {
                        _gotoNext = 2606509i32;
                    };
                } else if (__value__ == (2605224i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2605232 = __tmp__._0;
                        _chunk_2605248 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2605232 && (_chunk_2605248 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2605330i32;
                    } else {
                        _gotoNext = 2605492i32;
                    };
                } else if (__value__ == (2605330i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2605492i32;
                } else if (__value__ == (2605492i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2605248?.__copy__(), _name?.__copy__());
                        _t_2605492 = __tmp__._0?.__copy__();
                        _ok_2605495 = __tmp__._1;
                        _err_2605499 = __tmp__._2;
                    };
                    if ((_ok_2605495 && (((_t_2605492.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2605730i32;
                    } else {
                        _gotoNext = 2605762i32;
                    };
                } else if (__value__ == (2605730i32)) {
                    _name = _t_2605492?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2605203i32;
                } else if (__value__ == (2605762i32)) {
                    if (_err_2605499 != null) {
                        _gotoNext = 2605776i32;
                    } else {
                        _gotoNext = 2605805i32;
                    };
                } else if (__value__ == (2605776i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2605499 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2605805i32;
                } else if (__value__ == (2605805i32)) {
                    if (_star_2605232) {
                        _gotoNext = 2605813i32;
                    } else {
                        _gotoNext = 2606334i32;
                    };
                } else if (__value__ == (2605813i32)) {
                    _i_2605884 = (0 : stdgo.GoInt);
                    _gotoNext = 2605880i32;
                } else if (__value__ == (2605880i32)) {
                    if (((_i_2605884 < (_name.length) : Bool) && (_name[(_i_2605884 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2605929i32;
                    } else {
                        _gotoNext = 2606334i32;
                    };
                } else if (__value__ == (2605925i32)) {
                    _i_2605884++;
                    _gotoNext = 2605880i32;
                } else if (__value__ == (2605929i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2605248?.__copy__(), (_name.__slice__((_i_2605884 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2605935 = __tmp__._0?.__copy__();
                        _ok_2605938 = __tmp__._1;
                        _err_2605942 = __tmp__._2;
                    };
                    if (_ok_2605938) {
                        _gotoNext = 2605989i32;
                    } else {
                        _gotoNext = 2606166i32;
                    };
                } else if (__value__ == (2605989i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2605935.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2606096i32;
                    } else {
                        _gotoNext = 2606125i32;
                    };
                } else if (__value__ == (2606096i32)) {
                    _i_2605884++;
                    _gotoNext = 2605880i32;
                } else if (__value__ == (2606125i32)) {
                    _name = _t_2605935?.__copy__();
                    _gotoNext = 2605203i32;
                } else if (__value__ == (2606166i32)) {
                    if (_err_2605942 != null) {
                        _gotoNext = 2606180i32;
                    } else {
                        _gotoNext = 2605925i32;
                    };
                } else if (__value__ == (2606180i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2605942 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2605925i32;
                } else if (__value__ == (2606334i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2606334i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2606355i32;
                    } else {
                        _gotoNext = 2606487i32;
                    };
                } else if (__value__ == (2606355i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2605248 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2605248?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2606411 = __tmp__._2;
                        };
                        if (_err_2606411 != null) {
                            _gotoNext = 2606452i32;
                        } else {
                            _gotoNext = 2606487i32;
                        };
                    };
                } else if (__value__ == (2606452i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2606411 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2606487i32;
                } else if (__value__ == (2606487i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2605203i32;
                } else if (__value__ == (2606509i32)) {
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
