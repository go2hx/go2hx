package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_2624137:stdgo.Error = (null : stdgo.Error);
        var _ok_2624133:Bool = false;
        var _chunk_2623886:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2623870:Bool = false;
        var patternBreak = false;
        var _ok_2624576:Bool = false;
        var _t_2624573:stdgo.GoString = ("" : stdgo.GoString);
        var _err_2625049:stdgo.Error = (null : stdgo.Error);
        var _err_2624580:stdgo.Error = (null : stdgo.Error);
        var _i_2624522:stdgo.GoInt = (0 : stdgo.GoInt);
        var _t_2624130:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2623831i32;
                } else if (__value__ == (2623831i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2623841i32;
                } else if (__value__ == (2623841i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2623862i32;
                    } else {
                        _gotoNext = 2625147i32;
                    };
                } else if (__value__ == (2623862i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _star_2623870 = @:tmpset0 __tmp__._0;
                        _chunk_2623886 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_2623870 && (_chunk_2623886 == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 2623968i32;
                    } else {
                        _gotoNext = 2624130i32;
                    };
                } else if (__value__ == (2623968i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexbytestring.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2624130i32;
                } else if (__value__ == (2624130i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2623886?.__copy__(), _name?.__copy__());
                        _t_2624130 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2624133 = @:tmpset0 __tmp__._1;
                        _err_2624137 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_2624133 && (((_t_2624130.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2624368i32;
                    } else {
                        _gotoNext = 2624400i32;
                    };
                } else if (__value__ == (2624368i32)) {
                    _name = _t_2624130?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2623841i32;
                } else if (__value__ == (2624400i32)) {
                    if (_err_2624137 != null) {
                        _gotoNext = 2624414i32;
                    } else {
                        _gotoNext = 2624443i32;
                    };
                } else if (__value__ == (2624414i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2624137 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2624443i32;
                } else if (__value__ == (2624443i32)) {
                    if (_star_2623870) {
                        _gotoNext = 2624451i32;
                    } else {
                        _gotoNext = 2624972i32;
                    };
                } else if (__value__ == (2624451i32)) {
                    _i_2624522 = (0 : stdgo.GoInt);
                    _gotoNext = 2624518i32;
                } else if (__value__ == (2624518i32)) {
                    if (((_i_2624522 < (_name.length) : Bool) && (_name[(_i_2624522 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2624567i32;
                    } else {
                        _gotoNext = 2624972i32;
                    };
                } else if (__value__ == (2624563i32)) {
                    _i_2624522++;
                    _gotoNext = 2624518i32;
                } else if (__value__ == (2624567i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2623886?.__copy__(), (_name.__slice__((_i_2624522 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2624573 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2624576 = @:tmpset0 __tmp__._1;
                        _err_2624580 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_2624576) {
                        _gotoNext = 2624627i32;
                    } else {
                        _gotoNext = 2624804i32;
                    };
                } else if (__value__ == (2624627i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2624573.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2624734i32;
                    } else {
                        _gotoNext = 2624763i32;
                    };
                } else if (__value__ == (2624734i32)) {
                    _i_2624522++;
                    _gotoNext = 2624518i32;
                } else if (__value__ == (2624763i32)) {
                    _name = _t_2624573?.__copy__();
                    _gotoNext = 2623841i32;
                } else if (__value__ == (2624804i32)) {
                    if (_err_2624580 != null) {
                        _gotoNext = 2624818i32;
                    } else {
                        _gotoNext = 2624563i32;
                    };
                } else if (__value__ == (2624818i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2624580 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2624563i32;
                } else if (__value__ == (2624972i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2624972i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2624993i32;
                    } else {
                        _gotoNext = 2625125i32;
                    };
                } else if (__value__ == (2624993i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _chunk_2623886 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2623886?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
                            _err_2625049 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_2625049 != null) {
                            _gotoNext = 2625090i32;
                        } else {
                            _gotoNext = 2624972i32;
                        };
                    };
                } else if (__value__ == (2625090i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2625049 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2624972i32;
                } else if (__value__ == (2625125i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2623841i32;
                } else if (__value__ == (2625147i32)) {
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
