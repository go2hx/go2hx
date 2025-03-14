package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _t_6:stdgo.GoString = ("" : stdgo.GoString);
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_4:stdgo.Error = (null : stdgo.Error);
        var _chunk_1:stdgo.GoString = ("" : stdgo.GoString);
        var _star_0:Bool = false;
        var patternBreak = false;
        var _err_8:stdgo.Error = (null : stdgo.Error);
        var _ok_7:Bool = false;
        var _ok_3:Bool = false;
        var _t_2:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3867368i32;
                } else if (__value__ == (3867368i32)) {
                    0i32;
                    patternBreak = false;
                    _gotoNext = 3867378i32;
                } else if (__value__ == (3867378i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 3867399i32;
                    } else {
                        _gotoNext = 3868429i32;
                    };
                } else if (__value__ == (3867399i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanchunk._scanChunk(_pattern?.__copy__());
                        _star_0 = @:tmpset0 __tmp__._0;
                        _chunk_1 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_0 && (_chunk_1 == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 3867505i32;
                    } else {
                        _gotoNext = 3867671i32;
                    };
                } else if (__value__ == (3867505i32)) {
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3867671i32;
                } else if (__value__ == (3867671i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchchunk._matchChunk(_chunk_1?.__copy__(), _name?.__copy__());
                        _t_2 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_3 = @:tmpset0 __tmp__._1;
                        _err_4 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_3 && (((_t_2.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 3867909i32;
                    } else {
                        _gotoNext = 3867941i32;
                    };
                } else if (__value__ == (3867909i32)) {
                    _name = _t_2?.__copy__();
                    0i32;
                    _gotoNext = 3867378i32;
                } else if (__value__ == (3867941i32)) {
                    if (_err_4 != null) {
                        _gotoNext = 3867955i32;
                    } else {
                        _gotoNext = 3867984i32;
                    };
                } else if (__value__ == (3867955i32)) {
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_4 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3867984i32;
                } else if (__value__ == (3867984i32)) {
                    if (_star_0) {
                        _gotoNext = 3867992i32;
                    } else {
                        _gotoNext = 3868407i32;
                    };
                } else if (__value__ == (3867992i32)) {
                    _i_5 = (0 : stdgo.GoInt);
                    _gotoNext = 3868059i32;
                } else if (__value__ == (3868059i32)) {
                    if (((_i_5 < (_name.length) : Bool) && (_name[(_i_5 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3868114i32;
                    } else {
                        _gotoNext = 3868407i32;
                    };
                } else if (__value__ == (3868110i32)) {
                    _i_5++;
                    _gotoNext = 3868059i32;
                } else if (__value__ == (3868114i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchchunk._matchChunk(_chunk_1?.__copy__(), (_name.__slice__((_i_5 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_6 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_7 = @:tmpset0 __tmp__._1;
                        _err_8 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_7) {
                        _gotoNext = 3868174i32;
                    } else {
                        _gotoNext = 3868351i32;
                    };
                } else if (__value__ == (3868174i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_6.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3868281i32;
                    } else {
                        _gotoNext = 3868310i32;
                    };
                } else if (__value__ == (3868281i32)) {
                    _i_5++;
                    _gotoNext = 3868059i32;
                } else if (__value__ == (3868310i32)) {
                    _name = _t_6?.__copy__();
                    _gotoNext = 3867378i32;
                } else if (__value__ == (3868351i32)) {
                    if (_err_8 != null) {
                        _gotoNext = 3868365i32;
                    } else {
                        _gotoNext = 3868110i32;
                    };
                } else if (__value__ == (3868365i32)) {
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_8 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3868110i32;
                } else if (__value__ == (3868407i32)) {
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3867378i32;
                } else if (__value__ == (3868429i32)) {
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
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
