package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_2601585:stdgo.Error = (null : stdgo.Error);
        var _ok_2601581:Bool = false;
        var _i_2601527:stdgo.GoInt = (0 : stdgo.GoInt);
        var _t_2601135:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_2600891:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2600875:Bool = false;
        var _err_2602054:stdgo.Error = (null : stdgo.Error);
        var _t_2601578:stdgo.GoString = ("" : stdgo.GoString);
        var _err_2601142:stdgo.Error = (null : stdgo.Error);
        var _ok_2601138:Bool = false;
        var patternBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2600836i32;
                } else if (__value__ == (2600836i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2600846i32;
                } else if (__value__ == (2600846i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2600867i32;
                    } else {
                        _gotoNext = 2602152i32;
                    };
                } else if (__value__ == (2600867i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2600875 = __tmp__._0;
                        _chunk_2600891 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2600875 && (_chunk_2600891 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2600973i32;
                    } else {
                        _gotoNext = 2601135i32;
                    };
                } else if (__value__ == (2600973i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2601135i32;
                } else if (__value__ == (2601135i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2600891?.__copy__(), _name?.__copy__());
                        _t_2601135 = __tmp__._0?.__copy__();
                        _ok_2601138 = __tmp__._1;
                        _err_2601142 = __tmp__._2;
                    };
                    if ((_ok_2601138 && (((_t_2601135.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2601373i32;
                    } else {
                        _gotoNext = 2601405i32;
                    };
                } else if (__value__ == (2601373i32)) {
                    _name = _t_2601135?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2600846i32;
                } else if (__value__ == (2601405i32)) {
                    if (_err_2601142 != null) {
                        _gotoNext = 2601419i32;
                    } else {
                        _gotoNext = 2601448i32;
                    };
                } else if (__value__ == (2601419i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2601142 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2601448i32;
                } else if (__value__ == (2601448i32)) {
                    if (_star_2600875) {
                        _gotoNext = 2601456i32;
                    } else {
                        _gotoNext = 2601977i32;
                    };
                } else if (__value__ == (2601456i32)) {
                    _i_2601527 = (0 : stdgo.GoInt);
                    _gotoNext = 2601523i32;
                } else if (__value__ == (2601523i32)) {
                    if (((_i_2601527 < (_name.length) : Bool) && (_name[(_i_2601527 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2601572i32;
                    } else {
                        _gotoNext = 2601977i32;
                    };
                } else if (__value__ == (2601568i32)) {
                    _i_2601527++;
                    _gotoNext = 2601523i32;
                } else if (__value__ == (2601572i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2600891?.__copy__(), (_name.__slice__((_i_2601527 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2601578 = __tmp__._0?.__copy__();
                        _ok_2601581 = __tmp__._1;
                        _err_2601585 = __tmp__._2;
                    };
                    if (_ok_2601581) {
                        _gotoNext = 2601632i32;
                    } else {
                        _gotoNext = 2601809i32;
                    };
                } else if (__value__ == (2601632i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2601578.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2601739i32;
                    } else {
                        _gotoNext = 2601768i32;
                    };
                } else if (__value__ == (2601739i32)) {
                    _i_2601527++;
                    _gotoNext = 2601523i32;
                } else if (__value__ == (2601768i32)) {
                    _name = _t_2601578?.__copy__();
                    _gotoNext = 2600846i32;
                } else if (__value__ == (2601809i32)) {
                    if (_err_2601585 != null) {
                        _gotoNext = 2601823i32;
                    } else {
                        _gotoNext = 2601568i32;
                    };
                } else if (__value__ == (2601823i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2601585 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2601568i32;
                } else if (__value__ == (2601977i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2601977i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2601998i32;
                    } else {
                        _gotoNext = 2602130i32;
                    };
                } else if (__value__ == (2601998i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2600891 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2600891?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2602054 = __tmp__._2;
                        };
                        if (_err_2602054 != null) {
                            _gotoNext = 2602095i32;
                        } else {
                            _gotoNext = 2601977i32;
                        };
                    };
                } else if (__value__ == (2602095i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2602054 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2601977i32;
                } else if (__value__ == (2602130i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2600846i32;
                } else if (__value__ == (2602152i32)) {
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
