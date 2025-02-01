package stdgo._internal.path;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_2572254:stdgo.Error = (null : stdgo.Error);
        var _star_2571987:Bool = false;
        var _err_2573166:stdgo.Error = (null : stdgo.Error);
        var _chunk_2572003:stdgo.GoString = ("" : stdgo.GoString);
        var patternBreak = false;
        var _err_2572697:stdgo.Error = (null : stdgo.Error);
        var _ok_2572693:Bool = false;
        var _t_2572690:stdgo.GoString = ("" : stdgo.GoString);
        var _i_2572639:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_2572250:Bool = false;
        var _t_2572247:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2571948i32;
                } else if (__value__ == (2571948i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2571958i32;
                } else if (__value__ == (2571958i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2571979i32;
                    } else {
                        _gotoNext = 2573264i32;
                    };
                } else if (__value__ == (2571979i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2571987 = @:tmpset0 __tmp__._0;
                        _chunk_2572003 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_2571987 && (_chunk_2572003 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2572085i32;
                    } else {
                        _gotoNext = 2572247i32;
                    };
                } else if (__value__ == (2572085i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2572247i32;
                } else if (__value__ == (2572247i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2572003?.__copy__(), _name?.__copy__());
                        _t_2572247 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2572250 = @:tmpset0 __tmp__._1;
                        _err_2572254 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_2572250 && (((_t_2572247.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2572485i32;
                    } else {
                        _gotoNext = 2572517i32;
                    };
                } else if (__value__ == (2572485i32)) {
                    _name = _t_2572247?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2571958i32;
                } else if (__value__ == (2572517i32)) {
                    if (_err_2572254 != null) {
                        _gotoNext = 2572531i32;
                    } else {
                        _gotoNext = 2572560i32;
                    };
                } else if (__value__ == (2572531i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2572254 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2572560i32;
                } else if (__value__ == (2572560i32)) {
                    if (_star_2571987) {
                        _gotoNext = 2572568i32;
                    } else {
                        _gotoNext = 2573089i32;
                    };
                } else if (__value__ == (2572568i32)) {
                    _i_2572639 = (0 : stdgo.GoInt);
                    _gotoNext = 2572635i32;
                } else if (__value__ == (2572635i32)) {
                    if (((_i_2572639 < (_name.length) : Bool) && (_name[(_i_2572639 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2572684i32;
                    } else {
                        _gotoNext = 2573089i32;
                    };
                } else if (__value__ == (2572680i32)) {
                    _i_2572639++;
                    _gotoNext = 2572635i32;
                } else if (__value__ == (2572684i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2572003?.__copy__(), (_name.__slice__((_i_2572639 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2572690 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2572693 = @:tmpset0 __tmp__._1;
                        _err_2572697 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_2572693) {
                        _gotoNext = 2572744i32;
                    } else {
                        _gotoNext = 2572921i32;
                    };
                } else if (__value__ == (2572744i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2572690.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2572851i32;
                    } else {
                        _gotoNext = 2572880i32;
                    };
                } else if (__value__ == (2572851i32)) {
                    _i_2572639++;
                    _gotoNext = 2572635i32;
                } else if (__value__ == (2572880i32)) {
                    _name = _t_2572690?.__copy__();
                    _gotoNext = 2571958i32;
                } else if (__value__ == (2572921i32)) {
                    if (_err_2572697 != null) {
                        _gotoNext = 2572935i32;
                    } else {
                        _gotoNext = 2572680i32;
                    };
                } else if (__value__ == (2572935i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2572697 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2572680i32;
                } else if (__value__ == (2573089i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2573089i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2573110i32;
                    } else {
                        _gotoNext = 2573242i32;
                    };
                } else if (__value__ == (2573110i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2572003 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2572003?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2573166 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_2573166 != null) {
                            _gotoNext = 2573207i32;
                        } else {
                            _gotoNext = 2573089i32;
                        };
                    };
                } else if (__value__ == (2573207i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2573166 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2573089i32;
                } else if (__value__ == (2573242i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2571958i32;
                } else if (__value__ == (2573264i32)) {
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
