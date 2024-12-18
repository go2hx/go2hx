package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_2758021:stdgo.Error = (null : stdgo.Error);
        var _t_2758014:stdgo.GoString = ("" : stdgo.GoString);
        var _ok_2757574:Bool = false;
        var _chunk_2757327:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2757311:Bool = false;
        var _err_2758490:stdgo.Error = (null : stdgo.Error);
        var _ok_2758017:Bool = false;
        var _i_2757963:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_2757578:stdgo.Error = (null : stdgo.Error);
        var _t_2757571:stdgo.GoString = ("" : stdgo.GoString);
        var patternBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2757272i32;
                } else if (__value__ == (2757272i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2757282i32;
                } else if (__value__ == (2757282i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2757303i32;
                    } else {
                        _gotoNext = 2758588i32;
                    };
                } else if (__value__ == (2757303i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2757311 = __tmp__._0;
                        _chunk_2757327 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2757311 && (_chunk_2757327 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2757409i32;
                    } else {
                        _gotoNext = 2757571i32;
                    };
                } else if (__value__ == (2757409i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2757571i32;
                } else if (__value__ == (2757571i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2757327?.__copy__(), _name?.__copy__());
                        _t_2757571 = __tmp__._0?.__copy__();
                        _ok_2757574 = __tmp__._1;
                        _err_2757578 = __tmp__._2;
                    };
                    if ((_ok_2757574 && (((_t_2757571.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2757809i32;
                    } else {
                        _gotoNext = 2757841i32;
                    };
                } else if (__value__ == (2757809i32)) {
                    _name = _t_2757571?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2757282i32;
                } else if (__value__ == (2757841i32)) {
                    if (_err_2757578 != null) {
                        _gotoNext = 2757855i32;
                    } else {
                        _gotoNext = 2757884i32;
                    };
                } else if (__value__ == (2757855i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2757578 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2757884i32;
                } else if (__value__ == (2757884i32)) {
                    if (_star_2757311) {
                        _gotoNext = 2757892i32;
                    } else {
                        _gotoNext = 2758413i32;
                    };
                } else if (__value__ == (2757892i32)) {
                    _i_2757963 = (0 : stdgo.GoInt);
                    _gotoNext = 2757959i32;
                } else if (__value__ == (2757959i32)) {
                    if (((_i_2757963 < (_name.length) : Bool) && (_name[(_i_2757963 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2758008i32;
                    } else {
                        _gotoNext = 2758413i32;
                    };
                } else if (__value__ == (2758004i32)) {
                    _i_2757963++;
                    _gotoNext = 2757959i32;
                } else if (__value__ == (2758008i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2757327?.__copy__(), (_name.__slice__((_i_2757963 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2758014 = __tmp__._0?.__copy__();
                        _ok_2758017 = __tmp__._1;
                        _err_2758021 = __tmp__._2;
                    };
                    if (_ok_2758017) {
                        _gotoNext = 2758068i32;
                    } else {
                        _gotoNext = 2758245i32;
                    };
                } else if (__value__ == (2758068i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2758014.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2758175i32;
                    } else {
                        _gotoNext = 2758204i32;
                    };
                } else if (__value__ == (2758175i32)) {
                    _i_2757963++;
                    _gotoNext = 2757959i32;
                } else if (__value__ == (2758204i32)) {
                    _name = _t_2758014?.__copy__();
                    _gotoNext = 2757282i32;
                } else if (__value__ == (2758245i32)) {
                    if (_err_2758021 != null) {
                        _gotoNext = 2758259i32;
                    } else {
                        _gotoNext = 2758004i32;
                    };
                } else if (__value__ == (2758259i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2758021 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2758004i32;
                } else if (__value__ == (2758413i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2758413i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2758434i32;
                    } else {
                        _gotoNext = 2758566i32;
                    };
                } else if (__value__ == (2758434i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2757327 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2757327?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2758490 = __tmp__._2;
                        };
                        if (_err_2758490 != null) {
                            _gotoNext = 2758531i32;
                        } else {
                            _gotoNext = 2758566i32;
                        };
                    };
                } else if (__value__ == (2758531i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2758490 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2758566i32;
                } else if (__value__ == (2758566i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2757282i32;
                } else if (__value__ == (2758588i32)) {
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
