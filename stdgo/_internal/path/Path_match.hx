package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _ok_2973885:Bool = false;
        var _err_2973446:stdgo.Error = (null : stdgo.Error);
        var _ok_2973442:Bool = false;
        var _err_2974358:stdgo.Error = (null : stdgo.Error);
        var _err_2973889:stdgo.Error = (null : stdgo.Error);
        var _chunk_2973195:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2973179:Bool = false;
        var patternBreak = false;
        var _t_2973882:stdgo.GoString = ("" : stdgo.GoString);
        var _i_2973831:stdgo.GoInt = (0 : stdgo.GoInt);
        var _t_2973439:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2973140i32;
                } else if (__value__ == (2973140i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2973150i32;
                } else if (__value__ == (2973150i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2973171i32;
                    } else {
                        _gotoNext = 2974456i32;
                    };
                } else if (__value__ == (2973171i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2973179 = __tmp__._0;
                        _chunk_2973195 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2973179 && (_chunk_2973195 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2973277i32;
                    } else {
                        _gotoNext = 2973439i32;
                    };
                } else if (__value__ == (2973277i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2973439i32;
                } else if (__value__ == (2973439i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2973195?.__copy__(), _name?.__copy__());
                        _t_2973439 = __tmp__._0?.__copy__();
                        _ok_2973442 = __tmp__._1;
                        _err_2973446 = __tmp__._2;
                    };
                    if ((_ok_2973442 && (((_t_2973439.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2973677i32;
                    } else {
                        _gotoNext = 2973709i32;
                    };
                } else if (__value__ == (2973677i32)) {
                    _name = _t_2973439?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2973150i32;
                } else if (__value__ == (2973709i32)) {
                    if (_err_2973446 != null) {
                        _gotoNext = 2973723i32;
                    } else {
                        _gotoNext = 2973752i32;
                    };
                } else if (__value__ == (2973723i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2973446 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2973752i32;
                } else if (__value__ == (2973752i32)) {
                    if (_star_2973179) {
                        _gotoNext = 2973760i32;
                    } else {
                        _gotoNext = 2974281i32;
                    };
                } else if (__value__ == (2973760i32)) {
                    _i_2973831 = (0 : stdgo.GoInt);
                    _gotoNext = 2973827i32;
                } else if (__value__ == (2973827i32)) {
                    if (((_i_2973831 < (_name.length) : Bool) && (_name[(_i_2973831 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2973876i32;
                    } else {
                        _gotoNext = 2974281i32;
                    };
                } else if (__value__ == (2973872i32)) {
                    _i_2973831++;
                    _gotoNext = 2973827i32;
                } else if (__value__ == (2973876i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2973195?.__copy__(), (_name.__slice__((_i_2973831 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2973882 = __tmp__._0?.__copy__();
                        _ok_2973885 = __tmp__._1;
                        _err_2973889 = __tmp__._2;
                    };
                    if (_ok_2973885) {
                        _gotoNext = 2973936i32;
                    } else {
                        _gotoNext = 2974113i32;
                    };
                } else if (__value__ == (2973936i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2973882.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2974043i32;
                    } else {
                        _gotoNext = 2974072i32;
                    };
                } else if (__value__ == (2974043i32)) {
                    _i_2973831++;
                    _gotoNext = 2973827i32;
                } else if (__value__ == (2974072i32)) {
                    _name = _t_2973882?.__copy__();
                    _gotoNext = 2973150i32;
                } else if (__value__ == (2974113i32)) {
                    if (_err_2973889 != null) {
                        _gotoNext = 2974127i32;
                    } else {
                        _gotoNext = 2973872i32;
                    };
                } else if (__value__ == (2974127i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2973889 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2973872i32;
                } else if (__value__ == (2974281i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2974281i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2974302i32;
                    } else {
                        _gotoNext = 2974434i32;
                    };
                } else if (__value__ == (2974302i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2973195 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2973195?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2974358 = __tmp__._2;
                        };
                        if (_err_2974358 != null) {
                            _gotoNext = 2974399i32;
                        } else {
                            _gotoNext = 2974281i32;
                        };
                    };
                } else if (__value__ == (2974399i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2974358 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2974281i32;
                } else if (__value__ == (2974434i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2973150i32;
                } else if (__value__ == (2974456i32)) {
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
