package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _ok_2642705:Bool = false;
        var _star_2642442:Bool = false;
        var patternBreak = false;
        var _err_2643621:stdgo.Error = (null : stdgo.Error);
        var _err_2642709:stdgo.Error = (null : stdgo.Error);
        var _i_2643094:stdgo.GoInt = (0 : stdgo.GoInt);
        var _t_2642702:stdgo.GoString = ("" : stdgo.GoString);
        var _chunk_2642458:stdgo.GoString = ("" : stdgo.GoString);
        var _err_2643152:stdgo.Error = (null : stdgo.Error);
        var _ok_2643148:Bool = false;
        var _t_2643145:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2642403i32;
                } else if (__value__ == (2642403i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 2642413i32;
                } else if (__value__ == (2642413i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2642434i32;
                    } else {
                        _gotoNext = 2643719i32;
                    };
                } else if (__value__ == (2642434i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _star_2642442 = @:tmpset0 __tmp__._0;
                        _chunk_2642458 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_2642442 && (_chunk_2642458 == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 2642540i32;
                    } else {
                        _gotoNext = 2642702i32;
                    };
                } else if (__value__ == (2642540i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexbytestring.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2642702i32;
                } else if (__value__ == (2642702i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2642458?.__copy__(), _name?.__copy__());
                        _t_2642702 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2642705 = @:tmpset0 __tmp__._1;
                        _err_2642709 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_2642705 && (((_t_2642702.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2642940i32;
                    } else {
                        _gotoNext = 2642972i32;
                    };
                } else if (__value__ == (2642940i32)) {
                    _name = _t_2642702?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 2642413i32;
                } else if (__value__ == (2642972i32)) {
                    if (_err_2642709 != null) {
                        _gotoNext = 2642986i32;
                    } else {
                        _gotoNext = 2643015i32;
                    };
                } else if (__value__ == (2642986i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2642709 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2643015i32;
                } else if (__value__ == (2643015i32)) {
                    if (_star_2642442) {
                        _gotoNext = 2643023i32;
                    } else {
                        _gotoNext = 2643544i32;
                    };
                } else if (__value__ == (2643023i32)) {
                    _i_2643094 = (0 : stdgo.GoInt);
                    _gotoNext = 2643090i32;
                } else if (__value__ == (2643090i32)) {
                    if (((_i_2643094 < (_name.length) : Bool) && (_name[(_i_2643094 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2643139i32;
                    } else {
                        _gotoNext = 2643544i32;
                    };
                } else if (__value__ == (2643135i32)) {
                    _i_2643094++;
                    _gotoNext = 2643090i32;
                } else if (__value__ == (2643139i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2642458?.__copy__(), (_name.__slice__((_i_2643094 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_2643145 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_2643148 = @:tmpset0 __tmp__._1;
                        _err_2643152 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_2643148) {
                        _gotoNext = 2643199i32;
                    } else {
                        _gotoNext = 2643376i32;
                    };
                } else if (__value__ == (2643199i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_2643145.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2643306i32;
                    } else {
                        _gotoNext = 2643335i32;
                    };
                } else if (__value__ == (2643306i32)) {
                    _i_2643094++;
                    _gotoNext = 2643090i32;
                } else if (__value__ == (2643335i32)) {
                    _name = _t_2643145?.__copy__();
                    _gotoNext = 2642413i32;
                } else if (__value__ == (2643376i32)) {
                    if (_err_2643152 != null) {
                        _gotoNext = 2643390i32;
                    } else {
                        _gotoNext = 2643135i32;
                    };
                } else if (__value__ == (2643390i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2643152 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2643135i32;
                } else if (__value__ == (2643544i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2643544i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2643565i32;
                    } else {
                        _gotoNext = 2643697i32;
                    };
                } else if (__value__ == (2643565i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _chunk_2642458 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_2642458?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
                            _err_2643621 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_2643621 != null) {
                            _gotoNext = 2643662i32;
                        } else {
                            _gotoNext = 2643544i32;
                        };
                    };
                } else if (__value__ == (2643662i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_2643621 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2643544i32;
                } else if (__value__ == (2643697i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2642413i32;
                } else if (__value__ == (2643719i32)) {
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
