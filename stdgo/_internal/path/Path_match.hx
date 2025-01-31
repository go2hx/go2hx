package stdgo._internal.path;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_2592078:stdgo.Error = (null : stdgo.Error);
        var _ok_2591605:Bool = false;
        var _t_2591602:stdgo.GoString = ("" : stdgo.GoString);
        var _i_2591551:stdgo.GoInt = (0 : stdgo.GoInt);
        var _chunk_2590915:stdgo.GoString = ("" : stdgo.GoString);
        var _err_2591166:stdgo.Error = (null : stdgo.Error);
        var _ok_2591162:Bool = false;
        var _t_2591159:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2590899:Bool = false;
        var patternBreak = false;
        var _err_2591609:stdgo.Error = (null : stdgo.Error);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2590860i32;
                } else if (__value__ == (2590860i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2590870i32;
                } else if (__value__ == (2590870i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2590891i32;
                    } else {
                        _gotoNext = 2592176i32;
                    };
                } else if (__value__ == (2590891i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2590899 = @:tmpset0 __tmp__._0;
                        _chunk_2590915 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_2590899 && (_chunk_2590915 == stdgo.Go.str()) : Bool)) {
                        _gotoNext = 2590997i32;
                    } else {
                        _gotoNext = 2591159i32;
                    };
                } else if (__value__ == (2590997i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2591159i32;
                } else if (__value__ == (2591159i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2590915?.__copy__(), _name?.__copy__());
                        _t_2591159 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2591162 = @:tmpset0 __tmp__._1;
                        _err_2591166 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_2591162 && (((_t_2591159.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2591397i32;
                    } else {
                        _gotoNext = 2591429i32;
                    };
                } else if (__value__ == (2591397i32)) {
                    _name = _t_2591159?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2590870i32;
                } else if (__value__ == (2591429i32)) {
                    if (_err_2591166 != null) {
                        _gotoNext = 2591443i32;
                    } else {
                        _gotoNext = 2591472i32;
                    };
                } else if (__value__ == (2591443i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2591166 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2591472i32;
                } else if (__value__ == (2591472i32)) {
                    if (_star_2590899) {
                        _gotoNext = 2591480i32;
                    } else {
                        _gotoNext = 2592001i32;
                    };
                } else if (__value__ == (2591480i32)) {
                    _i_2591551 = (0 : stdgo.GoInt);
                    _gotoNext = 2591547i32;
                } else if (__value__ == (2591547i32)) {
                    if (((_i_2591551 < (_name.length) : Bool) && (_name[(_i_2591551 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2591596i32;
                    } else {
                        _gotoNext = 2592001i32;
                    };
                } else if (__value__ == (2591592i32)) {
                    _i_2591551++;
                    _gotoNext = 2591547i32;
                } else if (__value__ == (2591596i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2590915?.__copy__(), (_name.__slice__((_i_2591551 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2591602 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2591605 = @:tmpset0 __tmp__._1;
                        _err_2591609 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_2591605) {
                        _gotoNext = 2591656i32;
                    } else {
                        _gotoNext = 2591833i32;
                    };
                } else if (__value__ == (2591656i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2591602.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2591763i32;
                    } else {
                        _gotoNext = 2591792i32;
                    };
                } else if (__value__ == (2591763i32)) {
                    _i_2591551++;
                    _gotoNext = 2591547i32;
                } else if (__value__ == (2591792i32)) {
                    _name = _t_2591602?.__copy__();
                    _gotoNext = 2590870i32;
                } else if (__value__ == (2591833i32)) {
                    if (_err_2591609 != null) {
                        _gotoNext = 2591847i32;
                    } else {
                        _gotoNext = 2591592i32;
                    };
                } else if (__value__ == (2591847i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2591609 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2591592i32;
                } else if (__value__ == (2592001i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2592001i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2592022i32;
                    } else {
                        _gotoNext = 2592154i32;
                    };
                } else if (__value__ == (2592022i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2590915 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2590915?.__copy__(), stdgo.Go.str()?.__copy__());
                            _err_2592078 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_2592078 != null) {
                            _gotoNext = 2592119i32;
                        } else {
                            _gotoNext = 2592001i32;
                        };
                    };
                } else if (__value__ == (2592119i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2592078 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2592001i32;
                } else if (__value__ == (2592154i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2590870i32;
                } else if (__value__ == (2592176i32)) {
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
