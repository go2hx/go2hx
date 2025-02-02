package stdgo._internal.path;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_2953678:stdgo.Error = (null : stdgo.Error);
        var _ok_2953205:Bool = false;
        var _i_2953151:stdgo.GoInt = (0 : stdgo.GoInt);
        var _t_2952759:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_2952515:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2952499:Bool = false;
        var patternBreak = false;
        var _err_2953209:stdgo.Error = (null : stdgo.Error);
        var _t_2953202:stdgo.GoString = ("" : stdgo.GoString);
        var _err_2952766:stdgo.Error = (null : stdgo.Error);
        var _ok_2952762:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2952460i32;
                } else if (__value__ == (2952460i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2952470i32;
                } else if (__value__ == (2952470i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2952491i32;
                    } else {
                        _gotoNext = 2953776i32;
                    };
                } else if (__value__ == (2952491i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2952499 = @:tmpset0 __tmp__._0;
                        _chunk_2952515 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_2952499 && (_chunk_2952515 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2952597i32;
                    } else {
                        _gotoNext = 2952759i32;
                    };
                } else if (__value__ == (2952597i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2952759i32;
                } else if (__value__ == (2952759i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2952515?.__copy__(), _name?.__copy__());
                        _t_2952759 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2952762 = @:tmpset0 __tmp__._1;
                        _err_2952766 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_2952762 && (((_t_2952759.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2952997i32;
                    } else {
                        _gotoNext = 2953029i32;
                    };
                } else if (__value__ == (2952997i32)) {
                    _name = _t_2952759?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2952470i32;
                } else if (__value__ == (2953029i32)) {
                    if (_err_2952766 != null) {
                        _gotoNext = 2953043i32;
                    } else {
                        _gotoNext = 2953072i32;
                    };
                } else if (__value__ == (2953043i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2952766 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2953072i32;
                } else if (__value__ == (2953072i32)) {
                    if (_star_2952499) {
                        _gotoNext = 2953080i32;
                    } else {
                        _gotoNext = 2953601i32;
                    };
                } else if (__value__ == (2953080i32)) {
                    _i_2953151 = (0 : stdgo.GoInt);
                    _gotoNext = 2953147i32;
                } else if (__value__ == (2953147i32)) {
                    if (((_i_2953151 < (_name.length) : Bool) && (_name[(_i_2953151 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2953196i32;
                    } else {
                        _gotoNext = 2953601i32;
                    };
                } else if (__value__ == (2953192i32)) {
                    _i_2953151++;
                    _gotoNext = 2953147i32;
                } else if (__value__ == (2953196i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2952515?.__copy__(), (_name.__slice__((_i_2953151 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2953202 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2953205 = @:tmpset0 __tmp__._1;
                        _err_2953209 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_2953205) {
                        _gotoNext = 2953256i32;
                    } else {
                        _gotoNext = 2953433i32;
                    };
                } else if (__value__ == (2953256i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2953202.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2953363i32;
                    } else {
                        _gotoNext = 2953392i32;
                    };
                } else if (__value__ == (2953363i32)) {
                    _i_2953151++;
                    _gotoNext = 2953147i32;
                } else if (__value__ == (2953392i32)) {
                    _name = _t_2953202?.__copy__();
                    _gotoNext = 2952470i32;
                } else if (__value__ == (2953433i32)) {
                    if (_err_2953209 != null) {
                        _gotoNext = 2953447i32;
                    } else {
                        _gotoNext = 2953192i32;
                    };
                } else if (__value__ == (2953447i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2953209 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2953192i32;
                } else if (__value__ == (2953601i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2953601i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2953622i32;
                    } else {
                        _gotoNext = 2953754i32;
                    };
                } else if (__value__ == (2953622i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2952515 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2952515?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2953678 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_2953678 != null) {
                            _gotoNext = 2953719i32;
                        } else {
                            _gotoNext = 2953601i32;
                        };
                    };
                } else if (__value__ == (2953719i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2953678 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2953601i32;
                } else if (__value__ == (2953754i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2952470i32;
                } else if (__value__ == (2953776i32)) {
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
