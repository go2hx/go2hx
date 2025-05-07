package stdgo._internal.go.build;
function _parseGoEmbed(_args:stdgo.GoString, _pos:stdgo._internal.go.token.Token_position.Position):{ var _0 : stdgo.Slice<stdgo._internal.go.build.Build_t_fileembed.T_fileEmbed>; var _1 : stdgo.Error; } {
        var _q_108:stdgo.GoString = ("" : stdgo.GoString);
        var _i_107:stdgo.GoInt = (0 : stdgo.GoInt);
        var _trimSpace_99:() -> Void = null;
        var _i_103:stdgo.GoInt = (0 : stdgo.GoInt);
        var _list_100:stdgo.Slice<stdgo._internal.go.build.Build_t_fileembed.T_fileEmbed> = (null : stdgo.Slice<stdgo._internal.go.build.Build_t_fileembed.T_fileEmbed>);
        var _trimBytes_98:stdgo.GoInt -> Void = null;
        var _ok_106:Bool = false;
        var _keys_4376072 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _j_105:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_104:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _path_101:stdgo.GoString = ("" : stdgo.GoString);
        var _values_4376072 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _iterator_4376084 = @:invalid_type null;
        var _pathPos_102:stdgo._internal.go.token.Token_position.Position = ({} : stdgo._internal.go.token.Token_position.Position);
        var _r_110:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var switchBreak = false;
        var _err_109:stdgo.Error = (null : stdgo.Error);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _trimBytes_98 = function(_n:stdgo.GoInt):Void {
                        _pos.offset = (_pos.offset + (_n) : stdgo.GoInt);
                        _pos.column = (_pos.column + (stdgo._internal.unicode.utf8.Utf8_runecountinstring.runeCountInString((_args.__slice__(0, _n) : stdgo.GoString)?.__copy__())) : stdgo.GoInt);
                        _args = (_args.__slice__(_n) : stdgo.GoString)?.__copy__();
                    };
                    _trimSpace_99 = function():Void {
                        var _trim = (stdgo._internal.strings.Strings_trimleftfunc.trimLeftFunc(_args?.__copy__(), stdgo._internal.unicode.Unicode_isspace.isSpace)?.__copy__() : stdgo.GoString);
                        //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L553"
                        _trimBytes_98(((_args.length) - (_trim.length) : stdgo.GoInt));
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L557"
                    _trimSpace_99();
                    _gotoNext = 4375934i64;
                } else if (__value__ == (4375934i64)) {
                    //"file://#L0"
                    if (_args != ((stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 4375975i64;
                    } else {
                        _gotoNext = 4377074i64;
                    };
                } else if (__value__ == (4375975i64)) {
                    _pathPos_102 = _pos?.__copy__();
                    _gotoNext = 4376013i64;
                } else if (__value__ == (4376013i64)) {
                    switchBreak = false;
                    _gotoNext = 4376023i64;
                } else if (__value__ == (4376023i64)) {
                    //"file://#L0"
                    if (!switchBreak) {
                        //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L561"
                        {
                            final __value__ = _args[(0 : stdgo.GoInt)];
                            if (__value__ == ((96 : stdgo.GoUInt8))) {
                                _gotoNext = 4376196i64;
                            } else if (__value__ == ((34 : stdgo.GoUInt8))) {
                                _gotoNext = 4376393i64;
                            } else {
                                _gotoNext = 4376042i64;
                            };
                        };
                    } else {
                        _gotoNext = 4376852i64;
                    };
                } else if (__value__ == (4376042i64)) {
                    _i_103 = (_args.length);
                    _keys_4376072 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_4376072 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L564"
                    for (_key => _value in _args) {
                        _keys_4376072 = _keys_4376072.__append__(_key);
                        _values_4376072 = _values_4376072.__append__(_value);
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L564"
                    if ((0i64 : stdgo.GoInt) < (_keys_4376072.length)) {
                        _gotoNext = 4376155i64;
                    } else {
                        _gotoNext = 4376161i64;
                    };
                } else if (__value__ == (4376084i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L564"
                    _iterator_4376084++;
                    _gotoNext = 4376156i64;
                } else if (__value__ == (4376095i64)) {
                    _c_104 = _values_4376072[@:invalid_index_invalid_type _iterator_4376084];
                    _j_105 = _keys_4376072[@:invalid_index_invalid_type _iterator_4376084];
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L565"
                    if (stdgo._internal.unicode.Unicode_isspace.isSpace(_c_104)) {
                        _gotoNext = 4376123i64;
                    } else {
                        _gotoNext = 4376084i64;
                    };
                } else if (__value__ == (4376123i64)) {
                    _i_103 = _j_105;
                    _gotoNext = 4376161i64;
                } else if (__value__ == (4376155i64)) {
                    _iterator_4376084 = 0i64;
                    _gotoNext = 4376156i64;
                } else if (__value__ == (4376156i64)) {
                    //"file://#L0"
                    if (_iterator_4376084 < (_keys_4376072.length)) {
                        _gotoNext = 4376095i64;
                    } else {
                        _gotoNext = 4376161i64;
                    };
                } else if (__value__ == (4376161i64)) {
                    _path_101 = (_args.__slice__(0, _i_103) : stdgo.GoString)?.__copy__();
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L571"
                    _trimBytes_98(_i_103);
                    _gotoNext = 4376852i64;
                } else if (__value__ == (4376196i64)) {
                    {
                        var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_args.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("`" : stdgo.GoString));
                        _path_101 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_106 = @:tmpset0 __tmp__._2;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L576"
                    if (!_ok_106) {
                        _gotoNext = 4376275i64;
                    } else {
                        _gotoNext = 4376361i64;
                    };
                } else if (__value__ == (4376275i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L577"
                    return { _0 : (null : stdgo.Slice<stdgo._internal.go.build.Build_t_fileembed.T_fileEmbed>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid quoted string in //go:embed: %s" : stdgo.GoString), stdgo.Go.toInterface(_args)) };
                    _gotoNext = 4376361i64;
                } else if (__value__ == (4376361i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L579"
                    _trimBytes_98((((1 : stdgo.GoInt) + (_path_101.length) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt));
                    _gotoNext = 4376852i64;
                } else if (__value__ == (4376393i64)) {
                    _i_107 = (1 : stdgo.GoInt);
                    0i64;
                    _gotoNext = 4376416i64;
                } else if (__value__ == (4376416i64)) {
                    //"file://#L0"
                    if ((_i_107 < (_args.length) : Bool)) {
                        _gotoNext = 4376441i64;
                    } else {
                        _gotoNext = 4376744i64;
                    };
                } else if (__value__ == (4376437i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L583"
                    _i_107++;
                    _gotoNext = 4376416i64;
                } else if (__value__ == (4376441i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L584"
                    if (_args[(_i_107 : stdgo.GoInt)] == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 4376466i64;
                    } else {
                        _gotoNext = 4376501i64;
                    };
                } else if (__value__ == (4376466i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L585"
                    _i_107++;
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L583"
                    _i_107++;
                    _gotoNext = 4376416i64;
                } else if (__value__ == (4376501i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L588"
                    if (_args[(_i_107 : stdgo.GoInt)] == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 4376519i64;
                    } else {
                        _gotoNext = 4376437i64;
                    };
                } else if (__value__ == (4376519i64)) {
                    {
                        var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote((_args.__slice__(0, (_i_107 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _q_108 = @:tmpset0 __tmp__._0?.__copy__();
                        _err_109 = @:tmpset0 __tmp__._1;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L590"
                    if (_err_109 != null) {
                        _gotoNext = 4376583i64;
                    } else {
                        _gotoNext = 4376681i64;
                    };
                } else if (__value__ == (4376583i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L591"
                    return { _0 : (null : stdgo.Slice<stdgo._internal.go.build.Build_t_fileembed.T_fileEmbed>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid quoted string in //go:embed: %s" : stdgo.GoString), stdgo.Go.toInterface((_args.__slice__(0, (_i_107 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString))) };
                    _gotoNext = 4376681i64;
                } else if (__value__ == (4376681i64)) {
                    _path_101 = _q_108?.__copy__();
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L594"
                    _trimBytes_98((_i_107 + (1 : stdgo.GoInt) : stdgo.GoInt));
                    switchBreak = true;
                    _gotoNext = 4376023i64;
                } else if (__value__ == (4376744i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L598"
                    if ((_i_107 >= (_args.length) : Bool)) {
                        _gotoNext = 4376762i64;
                    } else {
                        _gotoNext = 4376852i64;
                    };
                } else if (__value__ == (4376762i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L599"
                    return { _0 : (null : stdgo.Slice<stdgo._internal.go.build.Build_t_fileembed.T_fileEmbed>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid quoted string in //go:embed: %s" : stdgo.GoString), stdgo.Go.toInterface(_args)) };
                    _gotoNext = 4376852i64;
                } else if (__value__ == (4376852i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L603"
                    if (_args != ((stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 4376866i64;
                    } else {
                        _gotoNext = 4377024i64;
                    };
                } else if (__value__ == (4376866i64)) {
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_args?.__copy__());
                        _r_110 = @:tmpset0 __tmp__._0;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L605"
                    if (!stdgo._internal.unicode.Unicode_isspace.isSpace(_r_110)) {
                        _gotoNext = 4376935i64;
                    } else {
                        _gotoNext = 4377024i64;
                    };
                } else if (__value__ == (4376935i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L606"
                    return { _0 : (null : stdgo.Slice<stdgo._internal.go.build.Build_t_fileembed.T_fileEmbed>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid quoted string in //go:embed: %s" : stdgo.GoString), stdgo.Go.toInterface(_args)) };
                    _gotoNext = 4377024i64;
                } else if (__value__ == (4377024i64)) {
                    _list_100 = (_list_100.__append__((new stdgo._internal.go.build.Build_t_fileembed.T_fileEmbed(_path_101?.__copy__(), _pathPos_102?.__copy__()) : stdgo._internal.go.build.Build_t_fileembed.T_fileEmbed)) : stdgo.Slice<stdgo._internal.go.build.Build_t_fileembed.T_fileEmbed>);
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L557"
                    _trimSpace_99();
                    _gotoNext = 4375934i64;
                } else if (__value__ == (4377074i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L611"
                    return { _0 : _list_100, _1 : (null : stdgo.Error) };
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
