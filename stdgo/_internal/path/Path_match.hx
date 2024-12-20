package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_2640927:stdgo.Error = (null : stdgo.Error);
        var _err_2640458:stdgo.Error = (null : stdgo.Error);
        var _ok_2640454:Bool = false;
        var patternBreak = false;
        var _i_2640400:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_2640015:stdgo.Error = (null : stdgo.Error);
        var _ok_2640011:Bool = false;
        var _t_2640008:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_2639764:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2639748:Bool = false;
        var _t_2640451:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2639709i32;
                } else if (__value__ == (2639709i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2639719i32;
                } else if (__value__ == (2639719i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2639740i32;
                    } else {
                        _gotoNext = 2641025i32;
                    };
                } else if (__value__ == (2639740i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2639748 = __tmp__._0;
                        _chunk_2639764 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    if ((_star_2639748 && (_chunk_2639764 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2639846i32;
                    } else {
                        _gotoNext = 2640008i32;
                    };
                } else if (__value__ == (2639846i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2640008i32;
                } else if (__value__ == (2640008i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2639764?.__copy__(), _name?.__copy__());
                        _t_2640008 = __tmp__._0?.__copy__();
                        _ok_2640011 = __tmp__._1;
                        _err_2640015 = __tmp__._2;
                    };
                    if ((_ok_2640011 && (((_t_2640008.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2640246i32;
                    } else {
                        _gotoNext = 2640278i32;
                    };
                } else if (__value__ == (2640246i32)) {
                    _name = _t_2640008?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2639719i32;
                } else if (__value__ == (2640278i32)) {
                    if (_err_2640015 != null) {
                        _gotoNext = 2640292i32;
                    } else {
                        _gotoNext = 2640321i32;
                    };
                } else if (__value__ == (2640292i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2640015 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2640321i32;
                } else if (__value__ == (2640321i32)) {
                    if (_star_2639748) {
                        _gotoNext = 2640329i32;
                    } else {
                        _gotoNext = 2640850i32;
                    };
                } else if (__value__ == (2640329i32)) {
                    _i_2640400 = (0 : stdgo.GoInt);
                    _gotoNext = 2640396i32;
                } else if (__value__ == (2640396i32)) {
                    if (((_i_2640400 < (_name.length) : Bool) && (_name[(_i_2640400 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2640445i32;
                    } else {
                        _gotoNext = 2640850i32;
                    };
                } else if (__value__ == (2640441i32)) {
                    _i_2640400++;
                    _gotoNext = 2640396i32;
                } else if (__value__ == (2640445i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2639764?.__copy__(), (_name.__slice__((_i_2640400 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2640451 = __tmp__._0?.__copy__();
                        _ok_2640454 = __tmp__._1;
                        _err_2640458 = __tmp__._2;
                    };
                    if (_ok_2640454) {
                        _gotoNext = 2640505i32;
                    } else {
                        _gotoNext = 2640682i32;
                    };
                } else if (__value__ == (2640505i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2640451.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2640612i32;
                    } else {
                        _gotoNext = 2640641i32;
                    };
                } else if (__value__ == (2640612i32)) {
                    _i_2640400++;
                    _gotoNext = 2640396i32;
                } else if (__value__ == (2640641i32)) {
                    _name = _t_2640451?.__copy__();
                    _gotoNext = 2639719i32;
                } else if (__value__ == (2640682i32)) {
                    if (_err_2640458 != null) {
                        _gotoNext = 2640696i32;
                    } else {
                        _gotoNext = 2640441i32;
                    };
                } else if (__value__ == (2640696i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2640458 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2640441i32;
                } else if (__value__ == (2640850i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2640850i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2640871i32;
                    } else {
                        _gotoNext = 2641003i32;
                    };
                } else if (__value__ == (2640871i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2639764 = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2639764?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2640927 = __tmp__._2;
                        };
                        if (_err_2640927 != null) {
                            _gotoNext = 2640968i32;
                        } else {
                            _gotoNext = 2640850i32;
                        };
                    };
                } else if (__value__ == (2640968i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2640927 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2640850i32;
                } else if (__value__ == (2641003i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2639719i32;
                } else if (__value__ == (2641025i32)) {
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
