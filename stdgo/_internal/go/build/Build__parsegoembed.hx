package stdgo._internal.go.build;
function _parseGoEmbed(_args:stdgo.GoString, _pos:stdgo._internal.go.token.Token_position.Position):{ var _0 : stdgo.Slice<stdgo._internal.go.build.Build_t_fileembed.T_fileEmbed>; var _1 : stdgo.Error; } {
        var _i_107:stdgo.GoInt = (0 : stdgo.GoInt);
        var _j_105:stdgo.GoInt = (0 : stdgo.GoInt);
        var _trimSpace_99:() -> Void = null;
        var _err_109:stdgo.Error = (null : stdgo.Error);
        var _iterator_4438724 = @:invalid_type null;
        var _i_103:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_106:Bool = false;
        var _c_104:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _keys_4438712 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _list_100:stdgo.Slice<stdgo._internal.go.build.Build_t_fileembed.T_fileEmbed> = (null : stdgo.Slice<stdgo._internal.go.build.Build_t_fileembed.T_fileEmbed>);
        var _trimBytes_98:stdgo.GoInt -> Void = null;
        var _r_110:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var switchBreak = false;
        var _q_108:stdgo.GoString = ("" : stdgo.GoString);
        var _values_4438712 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _pathPos_102:stdgo._internal.go.token.Token_position.Position = ({} : stdgo._internal.go.token.Token_position.Position);
        var _path_101:stdgo.GoString = ("" : stdgo.GoString);
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
                    _gotoNext = 4438574i64;
                } else if (__value__ == (4438574i64)) {
                    //"file://#L0"
                    if (_args != ((stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 4438615i64;
                    } else {
                        _gotoNext = 4439714i64;
                    };
                } else if (__value__ == (4438615i64)) {
                    _pathPos_102 = _pos?.__copy__();
                    _gotoNext = 4438653i64;
                } else if (__value__ == (4438653i64)) {
                    switchBreak = false;
                    _gotoNext = 4438663i64;
                } else if (__value__ == (4438663i64)) {
                    //"file://#L0"
                    if (!switchBreak) {
                        //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L561"
                        {
                            final __value__ = _args[(0 : stdgo.GoInt)];
                            if (__value__ == ((96 : stdgo.GoUInt8))) {
                                _gotoNext = 4438836i64;
                            } else if (__value__ == ((34 : stdgo.GoUInt8))) {
                                _gotoNext = 4439033i64;
                            } else {
                                _gotoNext = 4438682i64;
                            };
                        };
                    } else {
                        _gotoNext = 4439492i64;
                    };
                } else if (__value__ == (4438682i64)) {
                    _i_103 = (_args.length);
                    _keys_4438712 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_4438712 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L564"
                    for (_key => _value in _args) {
                        _keys_4438712 = _keys_4438712.__append__(_key);
                        _values_4438712 = _values_4438712.__append__(_value);
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L564"
                    if ((0i64 : stdgo.GoInt) < (_keys_4438712.length)) {
                        _gotoNext = 4438795i64;
                    } else {
                        _gotoNext = 4438801i64;
                    };
                } else if (__value__ == (4438724i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L564"
                    _iterator_4438724++;
                    _gotoNext = 4438796i64;
                } else if (__value__ == (4438735i64)) {
                    _c_104 = _values_4438712[@:invalid_index_invalid_type _iterator_4438724];
                    _j_105 = _keys_4438712[@:invalid_index_invalid_type _iterator_4438724];
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L565"
                    if (stdgo._internal.unicode.Unicode_isspace.isSpace(_c_104)) {
                        _gotoNext = 4438763i64;
                    } else {
                        _gotoNext = 4438724i64;
                    };
                } else if (__value__ == (4438763i64)) {
                    _i_103 = _j_105;
                    _gotoNext = 4438801i64;
                } else if (__value__ == (4438795i64)) {
                    _iterator_4438724 = 0i64;
                    _gotoNext = 4438796i64;
                } else if (__value__ == (4438796i64)) {
                    //"file://#L0"
                    if (_iterator_4438724 < (_keys_4438712.length)) {
                        _gotoNext = 4438735i64;
                    } else {
                        _gotoNext = 4438801i64;
                    };
                } else if (__value__ == (4438801i64)) {
                    _path_101 = (_args.__slice__(0, _i_103) : stdgo.GoString)?.__copy__();
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L571"
                    _trimBytes_98(_i_103);
                    _gotoNext = 4439492i64;
                } else if (__value__ == (4438836i64)) {
                    {
                        var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_args.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("`" : stdgo.GoString));
                        _path_101 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_106 = @:tmpset0 __tmp__._2;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L576"
                    if (!_ok_106) {
                        _gotoNext = 4438915i64;
                    } else {
                        _gotoNext = 4439001i64;
                    };
                } else if (__value__ == (4438915i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L577"
                    return { _0 : (null : stdgo.Slice<stdgo._internal.go.build.Build_t_fileembed.T_fileEmbed>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid quoted string in //go:embed: %s" : stdgo.GoString), stdgo.Go.toInterface(_args)) };
                    _gotoNext = 4439001i64;
                } else if (__value__ == (4439001i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L579"
                    _trimBytes_98((((1 : stdgo.GoInt) + (_path_101.length) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt));
                    _gotoNext = 4439492i64;
                } else if (__value__ == (4439033i64)) {
                    _i_107 = (1 : stdgo.GoInt);
                    0i64;
                    _gotoNext = 4439056i64;
                } else if (__value__ == (4439056i64)) {
                    //"file://#L0"
                    if ((_i_107 < (_args.length) : Bool)) {
                        _gotoNext = 4439081i64;
                    } else {
                        _gotoNext = 4439384i64;
                    };
                } else if (__value__ == (4439077i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L583"
                    _i_107++;
                    _gotoNext = 4439056i64;
                } else if (__value__ == (4439081i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L584"
                    if (_args[(_i_107 : stdgo.GoInt)] == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 4439106i64;
                    } else {
                        _gotoNext = 4439141i64;
                    };
                } else if (__value__ == (4439106i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L585"
                    _i_107++;
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L583"
                    _i_107++;
                    _gotoNext = 4439056i64;
                } else if (__value__ == (4439141i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L588"
                    if (_args[(_i_107 : stdgo.GoInt)] == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 4439159i64;
                    } else {
                        _gotoNext = 4439077i64;
                    };
                } else if (__value__ == (4439159i64)) {
                    {
                        var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote((_args.__slice__(0, (_i_107 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _q_108 = @:tmpset0 __tmp__._0?.__copy__();
                        _err_109 = @:tmpset0 __tmp__._1;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L590"
                    if (_err_109 != null) {
                        _gotoNext = 4439223i64;
                    } else {
                        _gotoNext = 4439321i64;
                    };
                } else if (__value__ == (4439223i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L591"
                    return { _0 : (null : stdgo.Slice<stdgo._internal.go.build.Build_t_fileembed.T_fileEmbed>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid quoted string in //go:embed: %s" : stdgo.GoString), stdgo.Go.toInterface((_args.__slice__(0, (_i_107 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString))) };
                    _gotoNext = 4439321i64;
                } else if (__value__ == (4439321i64)) {
                    _path_101 = _q_108?.__copy__();
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L594"
                    _trimBytes_98((_i_107 + (1 : stdgo.GoInt) : stdgo.GoInt));
                    switchBreak = true;
                    _gotoNext = 4438663i64;
                } else if (__value__ == (4439384i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L598"
                    if ((_i_107 >= (_args.length) : Bool)) {
                        _gotoNext = 4439402i64;
                    } else {
                        _gotoNext = 4439492i64;
                    };
                } else if (__value__ == (4439402i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L599"
                    return { _0 : (null : stdgo.Slice<stdgo._internal.go.build.Build_t_fileembed.T_fileEmbed>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid quoted string in //go:embed: %s" : stdgo.GoString), stdgo.Go.toInterface(_args)) };
                    _gotoNext = 4439492i64;
                } else if (__value__ == (4439492i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L603"
                    if (_args != ((stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 4439506i64;
                    } else {
                        _gotoNext = 4439664i64;
                    };
                } else if (__value__ == (4439506i64)) {
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_args?.__copy__());
                        _r_110 = @:tmpset0 __tmp__._0;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L605"
                    if (!stdgo._internal.unicode.Unicode_isspace.isSpace(_r_110)) {
                        _gotoNext = 4439575i64;
                    } else {
                        _gotoNext = 4439664i64;
                    };
                } else if (__value__ == (4439575i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L606"
                    return { _0 : (null : stdgo.Slice<stdgo._internal.go.build.Build_t_fileembed.T_fileEmbed>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid quoted string in //go:embed: %s" : stdgo.GoString), stdgo.Go.toInterface(_args)) };
                    _gotoNext = 4439664i64;
                } else if (__value__ == (4439664i64)) {
                    _list_100 = (_list_100.__append__((new stdgo._internal.go.build.Build_t_fileembed.T_fileEmbed(_path_101?.__copy__(), _pathPos_102?.__copy__()) : stdgo._internal.go.build.Build_t_fileembed.T_fileEmbed)) : stdgo.Slice<stdgo._internal.go.build.Build_t_fileembed.T_fileEmbed>);
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L557"
                    _trimSpace_99();
                    _gotoNext = 4438574i64;
                } else if (__value__ == (4439714i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L611"
                    return { _0 : _list_100, _1 : (null : stdgo.Error) };
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
