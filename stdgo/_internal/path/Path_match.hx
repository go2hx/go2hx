package stdgo._internal.path;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _i_2887355:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_2886970:stdgo.Error = (null : stdgo.Error);
        var _ok_2886966:Bool = false;
        var _t_2886963:stdgo.GoString = ("" : stdgo.GoString);
        var patternBreak = false;
        var _err_2887413:stdgo.Error = (null : stdgo.Error);
        var _ok_2887409:Bool = false;
        var _err_2887882:stdgo.Error = (null : stdgo.Error);
        var _t_2887406:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_2886719:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2886703:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2886664i32;
                } else if (__value__ == (2886664i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2886674i32;
                } else if (__value__ == (2886674i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2886695i32;
                    } else {
                        _gotoNext = 2887980i32;
                    };
                } else if (__value__ == (2886695i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2886703 = @:tmpset0 __tmp__._0;
                        _chunk_2886719 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_2886703 && (_chunk_2886719 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2886801i32;
                    } else {
                        _gotoNext = 2886963i32;
                    };
                } else if (__value__ == (2886801i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2886963i32;
                } else if (__value__ == (2886963i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2886719?.__copy__(), _name?.__copy__());
                        _t_2886963 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2886966 = @:tmpset0 __tmp__._1;
                        _err_2886970 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_2886966 && (((_t_2886963.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2887201i32;
                    } else {
                        _gotoNext = 2887233i32;
                    };
                } else if (__value__ == (2887201i32)) {
                    _name = _t_2886963?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2886674i32;
                } else if (__value__ == (2887233i32)) {
                    if (_err_2886970 != null) {
                        _gotoNext = 2887247i32;
                    } else {
                        _gotoNext = 2887276i32;
                    };
                } else if (__value__ == (2887247i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2886970 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2887276i32;
                } else if (__value__ == (2887276i32)) {
                    if (_star_2886703) {
                        _gotoNext = 2887284i32;
                    } else {
                        _gotoNext = 2887805i32;
                    };
                } else if (__value__ == (2887284i32)) {
                    _i_2887355 = (0 : stdgo.GoInt);
                    _gotoNext = 2887351i32;
                } else if (__value__ == (2887351i32)) {
                    if (((_i_2887355 < (_name.length) : Bool) && (_name[(_i_2887355 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2887400i32;
                    } else {
                        _gotoNext = 2887805i32;
                    };
                } else if (__value__ == (2887396i32)) {
                    _i_2887355++;
                    _gotoNext = 2887351i32;
                } else if (__value__ == (2887400i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2886719?.__copy__(), (_name.__slice__((_i_2887355 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2887406 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2887409 = @:tmpset0 __tmp__._1;
                        _err_2887413 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_2887409) {
                        _gotoNext = 2887460i32;
                    } else {
                        _gotoNext = 2887637i32;
                    };
                } else if (__value__ == (2887460i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2887406.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2887567i32;
                    } else {
                        _gotoNext = 2887596i32;
                    };
                } else if (__value__ == (2887567i32)) {
                    _i_2887355++;
                    _gotoNext = 2887351i32;
                } else if (__value__ == (2887596i32)) {
                    _name = _t_2887406?.__copy__();
                    _gotoNext = 2886674i32;
                } else if (__value__ == (2887637i32)) {
                    if (_err_2887413 != null) {
                        _gotoNext = 2887651i32;
                    } else {
                        _gotoNext = 2887396i32;
                    };
                } else if (__value__ == (2887651i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2887413 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2887396i32;
                } else if (__value__ == (2887805i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2887805i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2887826i32;
                    } else {
                        _gotoNext = 2887958i32;
                    };
                } else if (__value__ == (2887826i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2886719 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2886719?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2887882 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_2887882 != null) {
                            _gotoNext = 2887923i32;
                        } else {
                            _gotoNext = 2887805i32;
                        };
                    };
                } else if (__value__ == (2887923i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2887882 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2887805i32;
                } else if (__value__ == (2887958i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2886674i32;
                } else if (__value__ == (2887980i32)) {
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
