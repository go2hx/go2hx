package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _ok_2639492:Bool = false;
        var _t_2639489:stdgo.GoString = ("" : stdgo.GoString);
        var _ok_2639049:Bool = false;
        var _t_2639046:stdgo.GoString = ("" : stdgo.GoString);
        var patternBreak = false;
        var _err_2639965:stdgo.Error = (null : stdgo.Error);
        var _err_2639496:stdgo.Error = (null : stdgo.Error);
        var _i_2639438:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_2639053:stdgo.Error = (null : stdgo.Error);
        var _chunk_2638802:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2638786:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2638747i32;
                } else if (__value__ == (2638747i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2638757i32;
                } else if (__value__ == (2638757i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2638778i32;
                    } else {
                        _gotoNext = 2640063i32;
                    };
                } else if (__value__ == (2638778i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _star_2638786 = @:tmpset0 __tmp__._0;
                        _chunk_2638802 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_2638786 && (_chunk_2638802 == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 2638884i32;
                    } else {
                        _gotoNext = 2639046i32;
                    };
                } else if (__value__ == (2638884i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexbytestring.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2639046i32;
                } else if (__value__ == (2639046i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2638802?.__copy__(), _name?.__copy__());
                        _t_2639046 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2639049 = @:tmpset0 __tmp__._1;
                        _err_2639053 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_2639049 && (((_t_2639046.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2639284i32;
                    } else {
                        _gotoNext = 2639316i32;
                    };
                } else if (__value__ == (2639284i32)) {
                    _name = _t_2639046?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2638757i32;
                } else if (__value__ == (2639316i32)) {
                    if (_err_2639053 != null) {
                        _gotoNext = 2639330i32;
                    } else {
                        _gotoNext = 2639359i32;
                    };
                } else if (__value__ == (2639330i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2639053 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2639359i32;
                } else if (__value__ == (2639359i32)) {
                    if (_star_2638786) {
                        _gotoNext = 2639367i32;
                    } else {
                        _gotoNext = 2639888i32;
                    };
                } else if (__value__ == (2639367i32)) {
                    _i_2639438 = (0 : stdgo.GoInt);
                    _gotoNext = 2639434i32;
                } else if (__value__ == (2639434i32)) {
                    if (((_i_2639438 < (_name.length) : Bool) && (_name[(_i_2639438 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2639483i32;
                    } else {
                        _gotoNext = 2639888i32;
                    };
                } else if (__value__ == (2639479i32)) {
                    _i_2639438++;
                    _gotoNext = 2639434i32;
                } else if (__value__ == (2639483i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2638802?.__copy__(), (_name.__slice__((_i_2639438 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2639489 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2639492 = @:tmpset0 __tmp__._1;
                        _err_2639496 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_2639492) {
                        _gotoNext = 2639543i32;
                    } else {
                        _gotoNext = 2639720i32;
                    };
                } else if (__value__ == (2639543i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2639489.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2639650i32;
                    } else {
                        _gotoNext = 2639679i32;
                    };
                } else if (__value__ == (2639650i32)) {
                    _i_2639438++;
                    _gotoNext = 2639434i32;
                } else if (__value__ == (2639679i32)) {
                    _name = _t_2639489?.__copy__();
                    _gotoNext = 2638757i32;
                } else if (__value__ == (2639720i32)) {
                    if (_err_2639496 != null) {
                        _gotoNext = 2639734i32;
                    } else {
                        _gotoNext = 2639479i32;
                    };
                } else if (__value__ == (2639734i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2639496 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2639479i32;
                } else if (__value__ == (2639888i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2639888i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2639909i32;
                    } else {
                        _gotoNext = 2640041i32;
                    };
                } else if (__value__ == (2639909i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _chunk_2638802 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2638802?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
                            _err_2639965 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_2639965 != null) {
                            _gotoNext = 2640006i32;
                        } else {
                            _gotoNext = 2639888i32;
                        };
                    };
                } else if (__value__ == (2640006i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2639965 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2639888i32;
                } else if (__value__ == (2640041i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2638757i32;
                } else if (__value__ == (2640063i32)) {
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
