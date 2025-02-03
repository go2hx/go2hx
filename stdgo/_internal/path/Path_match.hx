package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _i_2971329:stdgo.GoInt = (0 : stdgo.GoInt);
        var _t_2970937:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_2970693:stdgo.GoString = ("" : stdgo.GoString);
        var _star_2970677:Bool = false;
        var _err_2971856:stdgo.Error = (null : stdgo.Error);
        var _t_2971380:stdgo.GoString = ("" : stdgo.GoString);
        var _ok_2971383:Bool = false;
        var _err_2970944:stdgo.Error = (null : stdgo.Error);
        var _ok_2970940:Bool = false;
        var patternBreak = false;
        var _err_2971387:stdgo.Error = (null : stdgo.Error);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2970638i32;
                } else if (__value__ == (2970638i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2970648i32;
                } else if (__value__ == (2970648i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2970669i32;
                    } else {
                        _gotoNext = 2971954i32;
                    };
                } else if (__value__ == (2970669i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _star_2970677 = @:tmpset0 __tmp__._0;
                        _chunk_2970693 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_2970677 && (_chunk_2970693 == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 2970775i32;
                    } else {
                        _gotoNext = 2970937i32;
                    };
                } else if (__value__ == (2970775i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2970937i32;
                } else if (__value__ == (2970937i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2970693?.__copy__(), _name?.__copy__());
                        _t_2970937 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2970940 = @:tmpset0 __tmp__._1;
                        _err_2970944 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_2970940 && (((_t_2970937.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2971175i32;
                    } else {
                        _gotoNext = 2971207i32;
                    };
                } else if (__value__ == (2971175i32)) {
                    _name = _t_2970937?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2970648i32;
                } else if (__value__ == (2971207i32)) {
                    if (_err_2970944 != null) {
                        _gotoNext = 2971221i32;
                    } else {
                        _gotoNext = 2971250i32;
                    };
                } else if (__value__ == (2971221i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2970944 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2971250i32;
                } else if (__value__ == (2971250i32)) {
                    if (_star_2970677) {
                        _gotoNext = 2971258i32;
                    } else {
                        _gotoNext = 2971779i32;
                    };
                } else if (__value__ == (2971258i32)) {
                    _i_2971329 = (0 : stdgo.GoInt);
                    _gotoNext = 2971325i32;
                } else if (__value__ == (2971325i32)) {
                    if (((_i_2971329 < (_name.length) : Bool) && (_name[(_i_2971329 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2971374i32;
                    } else {
                        _gotoNext = 2971779i32;
                    };
                } else if (__value__ == (2971370i32)) {
                    _i_2971329++;
                    _gotoNext = 2971325i32;
                } else if (__value__ == (2971374i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2970693?.__copy__(), (_name.__slice__((_i_2971329 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2971380 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2971383 = @:tmpset0 __tmp__._1;
                        _err_2971387 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_2971383) {
                        _gotoNext = 2971434i32;
                    } else {
                        _gotoNext = 2971611i32;
                    };
                } else if (__value__ == (2971434i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2971380.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2971541i32;
                    } else {
                        _gotoNext = 2971570i32;
                    };
                } else if (__value__ == (2971541i32)) {
                    _i_2971329++;
                    _gotoNext = 2971325i32;
                } else if (__value__ == (2971570i32)) {
                    _name = _t_2971380?.__copy__();
                    _gotoNext = 2970648i32;
                } else if (__value__ == (2971611i32)) {
                    if (_err_2971387 != null) {
                        _gotoNext = 2971625i32;
                    } else {
                        _gotoNext = 2971370i32;
                    };
                } else if (__value__ == (2971625i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2971387 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2971370i32;
                } else if (__value__ == (2971779i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2971779i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2971800i32;
                    } else {
                        _gotoNext = 2971932i32;
                    };
                } else if (__value__ == (2971800i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanChunk._scanChunk(_pattern?.__copy__());
                        _chunk_2970693 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchChunk._matchChunk(_chunk_2970693?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
                            _err_2971856 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_2971856 != null) {
                            _gotoNext = 2971897i32;
                        } else {
                            _gotoNext = 2971779i32;
                        };
                    };
                } else if (__value__ == (2971897i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2971856 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2971779i32;
                } else if (__value__ == (2971932i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2970648i32;
                } else if (__value__ == (2971954i32)) {
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
