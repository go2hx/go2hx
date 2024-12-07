package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_2787945:stdgo.Error = (null : stdgo.Error);
        var _t_2787469:stdgo.GoString = ("" : stdgo.GoString);
        var _i_2787418:stdgo.GoInt = (0 : stdgo.GoInt);
        var _chunk_2786782:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2786766:Bool = false;
        var _ok_2787472:Bool = false;
        var _err_2787033:stdgo.Error = (null : stdgo.Error);
        var _ok_2787029:Bool = false;
        var _t_2787026:stdgo.GoString = ("" : stdgo.GoString);
        var patternBreak = false;
        var _err_2787476:stdgo.Error = (null : stdgo.Error);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2786727i32;
                } else if (__value__ == (2786727i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2786737i32;
                } else if (__value__ == (2786737i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2786758i32;
                    } else {
                        _gotoNext = 2788043i32;
                    };
                } else if (__value__ == (2786758i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2786766 = __tmp__._0;
                        _chunk_2786782 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2786766 && (_chunk_2786782 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2786864i32;
                    } else {
                        _gotoNext = 2787026i32;
                    };
                } else if (__value__ == (2786864i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2787026i32;
                } else if (__value__ == (2787026i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2786782?.__copy__(), _name?.__copy__());
                        _t_2787026 = __tmp__._0?.__copy__();
                        _ok_2787029 = __tmp__._1;
                        _err_2787033 = __tmp__._2;
                    };
                    if ((_ok_2787029 && (((_t_2787026.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2787264i32;
                    } else {
                        _gotoNext = 2787296i32;
                    };
                } else if (__value__ == (2787264i32)) {
                    _name = _t_2787026?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2786737i32;
                } else if (__value__ == (2787296i32)) {
                    if (_err_2787033 != null) {
                        _gotoNext = 2787310i32;
                    } else {
                        _gotoNext = 2787339i32;
                    };
                } else if (__value__ == (2787310i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2787033 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2787339i32;
                } else if (__value__ == (2787339i32)) {
                    if (_star_2786766) {
                        _gotoNext = 2787347i32;
                    } else {
                        _gotoNext = 2787868i32;
                    };
                } else if (__value__ == (2787347i32)) {
                    _i_2787418 = (0 : stdgo.GoInt);
                    _gotoNext = 2787414i32;
                } else if (__value__ == (2787414i32)) {
                    if (((_i_2787418 < (_name.length) : Bool) && (_name[(_i_2787418 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2787463i32;
                    } else {
                        _gotoNext = 2787868i32;
                    };
                } else if (__value__ == (2787459i32)) {
                    _i_2787418++;
                    _gotoNext = 2787414i32;
                } else if (__value__ == (2787463i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2786782?.__copy__(), (_name.__slice__((_i_2787418 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2787469 = __tmp__._0?.__copy__();
                        _ok_2787472 = __tmp__._1;
                        _err_2787476 = __tmp__._2;
                    };
                    if (_ok_2787472) {
                        _gotoNext = 2787523i32;
                    } else {
                        _gotoNext = 2787700i32;
                    };
                } else if (__value__ == (2787523i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2787469.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2787630i32;
                    } else {
                        _gotoNext = 2787659i32;
                    };
                } else if (__value__ == (2787630i32)) {
                    _i_2787418++;
                    _gotoNext = 2787414i32;
                } else if (__value__ == (2787659i32)) {
                    _name = _t_2787469?.__copy__();
                    _gotoNext = 2786737i32;
                } else if (__value__ == (2787700i32)) {
                    if (_err_2787476 != null) {
                        _gotoNext = 2787714i32;
                    } else {
                        _gotoNext = 2787459i32;
                    };
                } else if (__value__ == (2787714i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2787476 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2787459i32;
                } else if (__value__ == (2787868i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2787868i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2787889i32;
                    } else {
                        _gotoNext = 2788021i32;
                    };
                } else if (__value__ == (2787889i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2786782 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2786782?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2787945 = __tmp__._2;
                        };
                        if (_err_2787945 != null) {
                            _gotoNext = 2787986i32;
                        } else {
                            _gotoNext = 2788021i32;
                        };
                    };
                } else if (__value__ == (2787986i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2787945 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2788021i32;
                } else if (__value__ == (2788021i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2786737i32;
                } else if (__value__ == (2788043i32)) {
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
