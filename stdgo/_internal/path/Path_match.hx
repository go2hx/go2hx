package stdgo._internal.path;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _ok_2650595:Bool = false;
        var _t_2650592:stdgo.GoString = ("" : stdgo.GoString);
        var _err_2651511:stdgo.Error = (null : stdgo.Error);
        var _err_2651042:stdgo.Error = (null : stdgo.Error);
        var _ok_2651038:Bool = false;
        var _t_2651035:stdgo.GoString = ("" : stdgo.GoString);
        var _err_2650599:stdgo.Error = (null : stdgo.Error);
        var _star_2650332:Bool = false;
        var patternBreak = false;
        var _i_2650984:stdgo.GoInt = (0 : stdgo.GoInt);
        var _chunk_2650348:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2650293i32;
                } else if (__value__ == (2650293i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2650303i32;
                } else if (__value__ == (2650303i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2650324i32;
                    } else {
                        _gotoNext = 2651609i32;
                    };
                } else if (__value__ == (2650324i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2650332 = @:tmpset0 __tmp__._0;
                        _chunk_2650348 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_2650332 && (_chunk_2650348 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2650430i32;
                    } else {
                        _gotoNext = 2650592i32;
                    };
                } else if (__value__ == (2650430i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2650592i32;
                } else if (__value__ == (2650592i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2650348?.__copy__(), _name?.__copy__());
                        _t_2650592 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2650595 = @:tmpset0 __tmp__._1;
                        _err_2650599 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_2650595 && (((_t_2650592.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2650830i32;
                    } else {
                        _gotoNext = 2650862i32;
                    };
                } else if (__value__ == (2650830i32)) {
                    _name = _t_2650592?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2650303i32;
                } else if (__value__ == (2650862i32)) {
                    if (_err_2650599 != null) {
                        _gotoNext = 2650876i32;
                    } else {
                        _gotoNext = 2650905i32;
                    };
                } else if (__value__ == (2650876i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2650599 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2650905i32;
                } else if (__value__ == (2650905i32)) {
                    if (_star_2650332) {
                        _gotoNext = 2650913i32;
                    } else {
                        _gotoNext = 2651434i32;
                    };
                } else if (__value__ == (2650913i32)) {
                    _i_2650984 = (0 : stdgo.GoInt);
                    _gotoNext = 2650980i32;
                } else if (__value__ == (2650980i32)) {
                    if (((_i_2650984 < (_name.length) : Bool) && (_name[(_i_2650984 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2651029i32;
                    } else {
                        _gotoNext = 2651434i32;
                    };
                } else if (__value__ == (2651025i32)) {
                    _i_2650984++;
                    _gotoNext = 2650980i32;
                } else if (__value__ == (2651029i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2650348?.__copy__(), (_name.__slice__((_i_2650984 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2651035 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2651038 = @:tmpset0 __tmp__._1;
                        _err_2651042 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_2651038) {
                        _gotoNext = 2651089i32;
                    } else {
                        _gotoNext = 2651266i32;
                    };
                } else if (__value__ == (2651089i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2651035.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2651196i32;
                    } else {
                        _gotoNext = 2651225i32;
                    };
                } else if (__value__ == (2651196i32)) {
                    _i_2650984++;
                    _gotoNext = 2650980i32;
                } else if (__value__ == (2651225i32)) {
                    _name = _t_2651035?.__copy__();
                    _gotoNext = 2650303i32;
                } else if (__value__ == (2651266i32)) {
                    if (_err_2651042 != null) {
                        _gotoNext = 2651280i32;
                    } else {
                        _gotoNext = 2651025i32;
                    };
                } else if (__value__ == (2651280i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2651042 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2651025i32;
                } else if (__value__ == (2651434i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2651434i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2651455i32;
                    } else {
                        _gotoNext = 2651587i32;
                    };
                } else if (__value__ == (2651455i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2650348 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2650348?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2651511 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_2651511 != null) {
                            _gotoNext = 2651552i32;
                        } else {
                            _gotoNext = 2651434i32;
                        };
                    };
                } else if (__value__ == (2651552i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2651511 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2651434i32;
                } else if (__value__ == (2651587i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2650303i32;
                } else if (__value__ == (2651609i32)) {
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
