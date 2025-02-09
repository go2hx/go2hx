package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var _err_4086614:stdgo.Error = (null : stdgo.Error);
        var _ok_4086610:Bool = false;
        var _chunk_4085910:stdgo.GoString = ("" : stdgo.GoString);
        var _star_4085894:Bool = false;
        var patternBreak = false;
        var _t_4086607:stdgo.GoString = ("" : stdgo.GoString);
        var _i_4086550:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_4086165:stdgo.Error = (null : stdgo.Error);
        var _ok_4086161:Bool = false;
        var _t_4086158:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 4085855i32;
                } else if (__value__ == (4085855i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 4085865i32;
                } else if (__value__ == (4085865i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 4085886i32;
                    } else {
                        _gotoNext = 4086916i32;
                    };
                } else if (__value__ == (4085886i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanchunk._scanChunk(_pattern?.__copy__());
                        _star_4085894 = @:tmpset0 __tmp__._0;
                        _chunk_4085910 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_4085894 && (_chunk_4085910 == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 4085992i32;
                    } else {
                        _gotoNext = 4086158i32;
                    };
                } else if (__value__ == (4085992i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4086158i32;
                } else if (__value__ == (4086158i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchchunk._matchChunk(_chunk_4085910?.__copy__(), _name?.__copy__());
                        _t_4086158 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_4086161 = @:tmpset0 __tmp__._1;
                        _err_4086165 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_4086161 && (((_t_4086158.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 4086396i32;
                    } else {
                        _gotoNext = 4086428i32;
                    };
                } else if (__value__ == (4086396i32)) {
                    _name = _t_4086158?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 4085865i32;
                } else if (__value__ == (4086428i32)) {
                    if (_err_4086165 != null) {
                        _gotoNext = 4086442i32;
                    } else {
                        _gotoNext = 4086471i32;
                    };
                } else if (__value__ == (4086442i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_4086165 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4086471i32;
                } else if (__value__ == (4086471i32)) {
                    if (_star_4085894) {
                        _gotoNext = 4086479i32;
                    } else {
                        _gotoNext = 4086894i32;
                    };
                } else if (__value__ == (4086479i32)) {
                    _i_4086550 = (0 : stdgo.GoInt);
                    _gotoNext = 4086546i32;
                } else if (__value__ == (4086546i32)) {
                    if (((_i_4086550 < (_name.length) : Bool) && (_name[(_i_4086550 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4086601i32;
                    } else {
                        _gotoNext = 4086894i32;
                    };
                } else if (__value__ == (4086597i32)) {
                    _i_4086550++;
                    _gotoNext = 4086546i32;
                } else if (__value__ == (4086601i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchchunk._matchChunk(_chunk_4085910?.__copy__(), (_name.__slice__((_i_4086550 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_4086607 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_4086610 = @:tmpset0 __tmp__._1;
                        _err_4086614 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_4086610) {
                        _gotoNext = 4086661i32;
                    } else {
                        _gotoNext = 4086838i32;
                    };
                } else if (__value__ == (4086661i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_4086607.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 4086768i32;
                    } else {
                        _gotoNext = 4086797i32;
                    };
                } else if (__value__ == (4086768i32)) {
                    _i_4086550++;
                    _gotoNext = 4086546i32;
                } else if (__value__ == (4086797i32)) {
                    _name = _t_4086607?.__copy__();
                    _gotoNext = 4085865i32;
                } else if (__value__ == (4086838i32)) {
                    if (_err_4086614 != null) {
                        _gotoNext = 4086852i32;
                    } else {
                        _gotoNext = 4086597i32;
                    };
                } else if (__value__ == (4086852i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_4086614 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4086597i32;
                } else if (__value__ == (4086894i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4085865i32;
                } else if (__value__ == (4086916i32)) {
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
