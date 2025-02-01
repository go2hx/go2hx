package stdgo._internal.path;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _t_2641191:stdgo.GoString = ("" : stdgo.GoString);
        var _i_2641140:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_2640755:stdgo.Error = (null : stdgo.Error);
        var patternBreak = false;
        var _err_2641667:stdgo.Error = (null : stdgo.Error);
        var _err_2641198:stdgo.Error = (null : stdgo.Error);
        var _ok_2640751:Bool = false;
        var _t_2640748:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_2640504:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2640488:Bool = false;
        var _ok_2641194:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2640449i32;
                } else if (__value__ == (2640449i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2640459i32;
                } else if (__value__ == (2640459i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2640480i32;
                    } else {
                        _gotoNext = 2641765i32;
                    };
                } else if (__value__ == (2640480i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2640488 = @:tmpset0 __tmp__._0;
                        _chunk_2640504 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_2640488 && (_chunk_2640504 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2640586i32;
                    } else {
                        _gotoNext = 2640748i32;
                    };
                } else if (__value__ == (2640586i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2640748i32;
                } else if (__value__ == (2640748i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2640504?.__copy__(), _name?.__copy__());
                        _t_2640748 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2640751 = @:tmpset0 __tmp__._1;
                        _err_2640755 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_2640751 && (((_t_2640748.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2640986i32;
                    } else {
                        _gotoNext = 2641018i32;
                    };
                } else if (__value__ == (2640986i32)) {
                    _name = _t_2640748?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2640459i32;
                } else if (__value__ == (2641018i32)) {
                    if (_err_2640755 != null) {
                        _gotoNext = 2641032i32;
                    } else {
                        _gotoNext = 2641061i32;
                    };
                } else if (__value__ == (2641032i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2640755 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2641061i32;
                } else if (__value__ == (2641061i32)) {
                    if (_star_2640488) {
                        _gotoNext = 2641069i32;
                    } else {
                        _gotoNext = 2641590i32;
                    };
                } else if (__value__ == (2641069i32)) {
                    _i_2641140 = (0 : stdgo.GoInt);
                    _gotoNext = 2641136i32;
                } else if (__value__ == (2641136i32)) {
                    if (((_i_2641140 < (_name.length) : Bool) && (_name[(_i_2641140 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2641185i32;
                    } else {
                        _gotoNext = 2641590i32;
                    };
                } else if (__value__ == (2641181i32)) {
                    _i_2641140++;
                    _gotoNext = 2641136i32;
                } else if (__value__ == (2641185i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2640504?.__copy__(), (_name.__slice__((_i_2641140 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2641191 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2641194 = @:tmpset0 __tmp__._1;
                        _err_2641198 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_2641194) {
                        _gotoNext = 2641245i32;
                    } else {
                        _gotoNext = 2641422i32;
                    };
                } else if (__value__ == (2641245i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2641191.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2641352i32;
                    } else {
                        _gotoNext = 2641381i32;
                    };
                } else if (__value__ == (2641352i32)) {
                    _i_2641140++;
                    _gotoNext = 2641136i32;
                } else if (__value__ == (2641381i32)) {
                    _name = _t_2641191?.__copy__();
                    _gotoNext = 2640459i32;
                } else if (__value__ == (2641422i32)) {
                    if (_err_2641198 != null) {
                        _gotoNext = 2641436i32;
                    } else {
                        _gotoNext = 2641181i32;
                    };
                } else if (__value__ == (2641436i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2641198 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2641181i32;
                } else if (__value__ == (2641590i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2641590i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2641611i32;
                    } else {
                        _gotoNext = 2641743i32;
                    };
                } else if (__value__ == (2641611i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2640504 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2640504?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2641667 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_2641667 != null) {
                            _gotoNext = 2641708i32;
                        } else {
                            _gotoNext = 2641590i32;
                        };
                    };
                } else if (__value__ == (2641708i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2641667 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2641590i32;
                } else if (__value__ == (2641743i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2640459i32;
                } else if (__value__ == (2641765i32)) {
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
