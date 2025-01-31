package stdgo._internal.path;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _i_2886724:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_2886339:stdgo.Error = (null : stdgo.Error);
        var _ok_2886335:Bool = false;
        var _chunk_2886088:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2886072:Bool = false;
        var patternBreak = false;
        var _err_2887251:stdgo.Error = (null : stdgo.Error);
        var _err_2886782:stdgo.Error = (null : stdgo.Error);
        var _ok_2886778:Bool = false;
        var _t_2886775:stdgo.GoString = ("" : stdgo.GoString);
        var _t_2886332:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2886033i32;
                } else if (__value__ == (2886033i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2886043i32;
                } else if (__value__ == (2886043i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2886064i32;
                    } else {
                        _gotoNext = 2887349i32;
                    };
                } else if (__value__ == (2886064i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2886072 = @:tmpset0 __tmp__._0;
                        _chunk_2886088 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_2886072 && (_chunk_2886088 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2886170i32;
                    } else {
                        _gotoNext = 2886332i32;
                    };
                } else if (__value__ == (2886170i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2886332i32;
                } else if (__value__ == (2886332i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2886088?.__copy__(), _name?.__copy__());
                        _t_2886332 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2886335 = @:tmpset0 __tmp__._1;
                        _err_2886339 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_2886335 && (((_t_2886332.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2886570i32;
                    } else {
                        _gotoNext = 2886602i32;
                    };
                } else if (__value__ == (2886570i32)) {
                    _name = _t_2886332?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2886043i32;
                } else if (__value__ == (2886602i32)) {
                    if (_err_2886339 != null) {
                        _gotoNext = 2886616i32;
                    } else {
                        _gotoNext = 2886645i32;
                    };
                } else if (__value__ == (2886616i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2886339 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2886645i32;
                } else if (__value__ == (2886645i32)) {
                    if (_star_2886072) {
                        _gotoNext = 2886653i32;
                    } else {
                        _gotoNext = 2887174i32;
                    };
                } else if (__value__ == (2886653i32)) {
                    _i_2886724 = (0 : stdgo.GoInt);
                    _gotoNext = 2886720i32;
                } else if (__value__ == (2886720i32)) {
                    if (((_i_2886724 < (_name.length) : Bool) && (_name[(_i_2886724 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2886769i32;
                    } else {
                        _gotoNext = 2887174i32;
                    };
                } else if (__value__ == (2886765i32)) {
                    _i_2886724++;
                    _gotoNext = 2886720i32;
                } else if (__value__ == (2886769i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2886088?.__copy__(), (_name.__slice__((_i_2886724 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2886775 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2886778 = @:tmpset0 __tmp__._1;
                        _err_2886782 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_2886778) {
                        _gotoNext = 2886829i32;
                    } else {
                        _gotoNext = 2887006i32;
                    };
                } else if (__value__ == (2886829i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2886775.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2886936i32;
                    } else {
                        _gotoNext = 2886965i32;
                    };
                } else if (__value__ == (2886936i32)) {
                    _i_2886724++;
                    _gotoNext = 2886720i32;
                } else if (__value__ == (2886965i32)) {
                    _name = _t_2886775?.__copy__();
                    _gotoNext = 2886043i32;
                } else if (__value__ == (2887006i32)) {
                    if (_err_2886782 != null) {
                        _gotoNext = 2887020i32;
                    } else {
                        _gotoNext = 2886765i32;
                    };
                } else if (__value__ == (2887020i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2886782 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2886765i32;
                } else if (__value__ == (2887174i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2887174i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2887195i32;
                    } else {
                        _gotoNext = 2887327i32;
                    };
                } else if (__value__ == (2887195i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2886088 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2886088?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2887251 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_2887251 != null) {
                            _gotoNext = 2887292i32;
                        } else {
                            _gotoNext = 2887174i32;
                        };
                    };
                } else if (__value__ == (2887292i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2887251 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2887174i32;
                } else if (__value__ == (2887327i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2886043i32;
                } else if (__value__ == (2887349i32)) {
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
