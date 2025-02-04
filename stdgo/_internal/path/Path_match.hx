package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _i_2786597:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_2786208:Bool = false;
        var _err_2787124:stdgo.Error = (null : stdgo.Error);
        var _err_2786655:stdgo.Error = (null : stdgo.Error);
        var _ok_2786651:Bool = false;
        var _star_2785945:Bool = false;
        var patternBreak = false;
        var _t_2786648:stdgo.GoString = ("" : stdgo.GoString);
        var _err_2786212:stdgo.Error = (null : stdgo.Error);
        var _t_2786205:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_2785961:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2785906i32;
                } else if (__value__ == (2785906i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2785916i32;
                } else if (__value__ == (2785916i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2785937i32;
                    } else {
                        _gotoNext = 2787222i32;
                    };
                } else if (__value__ == (2785937i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _star_2785945 = @:tmpset0 __tmp__._0;
                        _chunk_2785961 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_2785945 && (_chunk_2785961 == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 2786043i32;
                    } else {
                        _gotoNext = 2786205i32;
                    };
                } else if (__value__ == (2786043i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexbytestring.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2786205i32;
                } else if (__value__ == (2786205i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2785961?.__copy__(), _name?.__copy__());
                        _t_2786205 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2786208 = @:tmpset0 __tmp__._1;
                        _err_2786212 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_2786208 && (((_t_2786205.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2786443i32;
                    } else {
                        _gotoNext = 2786475i32;
                    };
                } else if (__value__ == (2786443i32)) {
                    _name = _t_2786205?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2785916i32;
                } else if (__value__ == (2786475i32)) {
                    if (_err_2786212 != null) {
                        _gotoNext = 2786489i32;
                    } else {
                        _gotoNext = 2786518i32;
                    };
                } else if (__value__ == (2786489i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2786212 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2786518i32;
                } else if (__value__ == (2786518i32)) {
                    if (_star_2785945) {
                        _gotoNext = 2786526i32;
                    } else {
                        _gotoNext = 2787047i32;
                    };
                } else if (__value__ == (2786526i32)) {
                    _i_2786597 = (0 : stdgo.GoInt);
                    _gotoNext = 2786593i32;
                } else if (__value__ == (2786593i32)) {
                    if (((_i_2786597 < (_name.length) : Bool) && (_name[(_i_2786597 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2786642i32;
                    } else {
                        _gotoNext = 2787047i32;
                    };
                } else if (__value__ == (2786638i32)) {
                    _i_2786597++;
                    _gotoNext = 2786593i32;
                } else if (__value__ == (2786642i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2785961?.__copy__(), (_name.__slice__((_i_2786597 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2786648 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2786651 = @:tmpset0 __tmp__._1;
                        _err_2786655 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_2786651) {
                        _gotoNext = 2786702i32;
                    } else {
                        _gotoNext = 2786879i32;
                    };
                } else if (__value__ == (2786702i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2786648.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2786809i32;
                    } else {
                        _gotoNext = 2786838i32;
                    };
                } else if (__value__ == (2786809i32)) {
                    _i_2786597++;
                    _gotoNext = 2786593i32;
                } else if (__value__ == (2786838i32)) {
                    _name = _t_2786648?.__copy__();
                    _gotoNext = 2785916i32;
                } else if (__value__ == (2786879i32)) {
                    if (_err_2786655 != null) {
                        _gotoNext = 2786893i32;
                    } else {
                        _gotoNext = 2786638i32;
                    };
                } else if (__value__ == (2786893i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2786655 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2786638i32;
                } else if (__value__ == (2787047i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2787047i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2787068i32;
                    } else {
                        _gotoNext = 2787200i32;
                    };
                } else if (__value__ == (2787068i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _chunk_2785961 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2785961?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
                            _err_2787124 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_2787124 != null) {
                            _gotoNext = 2787165i32;
                        } else {
                            _gotoNext = 2787047i32;
                        };
                    };
                } else if (__value__ == (2787165i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2787124 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2787047i32;
                } else if (__value__ == (2787200i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2785916i32;
                } else if (__value__ == (2787222i32)) {
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
