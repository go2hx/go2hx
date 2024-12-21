package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _i_2642377:stdgo.GoInt = (0 : stdgo.GoInt);
        var _star_2641725:Bool = false;
        var patternBreak = false;
        var _err_2642904:stdgo.Error = (null : stdgo.Error);
        var _ok_2642431:Bool = false;
        var _ok_2641988:Bool = false;
        var _t_2641985:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_2641741:stdgo.GoString = ("" : stdgo.GoString);
        var _err_2642435:stdgo.Error = (null : stdgo.Error);
        var _t_2642428:stdgo.GoString = ("" : stdgo.GoString);
        var _err_2641992:stdgo.Error = (null : stdgo.Error);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2641686i32;
                } else if (__value__ == (2641686i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2641696i32;
                } else if (__value__ == (2641696i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2641717i32;
                    } else {
                        _gotoNext = 2643002i32;
                    };
                } else if (__value__ == (2641717i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2641725 = __tmp__._0;
                        _chunk_2641741 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2641725 && (_chunk_2641741 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2641823i32;
                    } else {
                        _gotoNext = 2641985i32;
                    };
                } else if (__value__ == (2641823i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2641985i32;
                } else if (__value__ == (2641985i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2641741?.__copy__(), _name?.__copy__());
                        _t_2641985 = __tmp__._0?.__copy__();
                        _ok_2641988 = __tmp__._1;
                        _err_2641992 = __tmp__._2;
                    };
                    if ((_ok_2641988 && (((_t_2641985.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2642223i32;
                    } else {
                        _gotoNext = 2642255i32;
                    };
                } else if (__value__ == (2642223i32)) {
                    _name = _t_2641985?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2641696i32;
                } else if (__value__ == (2642255i32)) {
                    if (_err_2641992 != null) {
                        _gotoNext = 2642269i32;
                    } else {
                        _gotoNext = 2642298i32;
                    };
                } else if (__value__ == (2642269i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2641992 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2642298i32;
                } else if (__value__ == (2642298i32)) {
                    if (_star_2641725) {
                        _gotoNext = 2642306i32;
                    } else {
                        _gotoNext = 2642827i32;
                    };
                } else if (__value__ == (2642306i32)) {
                    _i_2642377 = (0 : stdgo.GoInt);
                    _gotoNext = 2642373i32;
                } else if (__value__ == (2642373i32)) {
                    if (((_i_2642377 < (_name.length) : Bool) && (_name[(_i_2642377 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2642422i32;
                    } else {
                        _gotoNext = 2642827i32;
                    };
                } else if (__value__ == (2642418i32)) {
                    _i_2642377++;
                    _gotoNext = 2642373i32;
                } else if (__value__ == (2642422i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2641741?.__copy__(), (_name.__slice__((_i_2642377 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2642428 = __tmp__._0?.__copy__();
                        _ok_2642431 = __tmp__._1;
                        _err_2642435 = __tmp__._2;
                    };
                    if (_ok_2642431) {
                        _gotoNext = 2642482i32;
                    } else {
                        _gotoNext = 2642659i32;
                    };
                } else if (__value__ == (2642482i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2642428.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2642589i32;
                    } else {
                        _gotoNext = 2642618i32;
                    };
                } else if (__value__ == (2642589i32)) {
                    _i_2642377++;
                    _gotoNext = 2642373i32;
                } else if (__value__ == (2642618i32)) {
                    _name = _t_2642428?.__copy__();
                    _gotoNext = 2641696i32;
                } else if (__value__ == (2642659i32)) {
                    if (_err_2642435 != null) {
                        _gotoNext = 2642673i32;
                    } else {
                        _gotoNext = 2642418i32;
                    };
                } else if (__value__ == (2642673i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2642435 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2642418i32;
                } else if (__value__ == (2642827i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2642827i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2642848i32;
                    } else {
                        _gotoNext = 2642980i32;
                    };
                } else if (__value__ == (2642848i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2641741 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2641741?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2642904 = __tmp__._2;
                        };
                        if (_err_2642904 != null) {
                            _gotoNext = 2642945i32;
                        } else {
                            _gotoNext = 2642827i32;
                        };
                    };
                } else if (__value__ == (2642945i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2642904 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2642827i32;
                } else if (__value__ == (2642980i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2641696i32;
                } else if (__value__ == (2643002i32)) {
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
