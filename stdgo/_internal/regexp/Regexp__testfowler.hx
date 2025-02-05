package stdgo._internal.regexp;
function _testFowler(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _file:stdgo.GoString):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _match_5016142:Bool = false;
            var _c_5015492:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _ok_5015167:Bool = false;
            var readingBreak = false;
            var _ok_5014071:Bool = false;
            var _i_5010909:stdgo.GoInt = (0 : stdgo.GoInt);
            var _field_5010864:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
            var _err_5010138:stdgo.Error = (null : stdgo.Error);
            var _keys_5015744 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            var _i_5015756 = @:invalid_type null;
            var _pos_5015199:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            var _f_5010912:stdgo.GoString = ("" : stdgo.GoString);
            var _err_5010311:stdgo.Error = (null : stdgo.Error);
            var _values_5015744 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var _c_5015751:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _values_5015485 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var _f_5014580:stdgo.GoString = ("" : stdgo.GoString);
            var _flag_5013848:stdgo.GoString = ("" : stdgo.GoString);
            var _f_5010135:stdgo.Ref<stdgo._internal.os.Os_file.File> = (null : stdgo.Ref<stdgo._internal.os.Os_file.File>);
            var _have_5016331:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            var _pattern_5015513:stdgo.GoString = ("" : stdgo.GoString);
            var _err_5015845:stdgo.Error = (null : stdgo.Error);
            var _re_5015841:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
            var _i_5015497 = @:invalid_type null;
            var _shouldMatch_5015186:Bool = false;
            var _b_5010221:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>);
            var _syn_5015536:stdgo._internal.regexp.syntax.Syntax_flags.Flags = ((0 : stdgo.GoUInt16) : stdgo._internal.regexp.syntax.Syntax_flags.Flags);
            var _keys_5015485 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            var _text_5015111:stdgo.GoString = ("" : stdgo.GoString);
            var _lineno_5010246:stdgo.GoInt = (0 : stdgo.GoInt);
            var _shouldCompile_5015171:Bool = false;
            var _line_5010305:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRegexp_5010259:stdgo.GoString = ("" : stdgo.GoString);
            var _gotoNext = 0i32;
            var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
            while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
                {
                    final __value__ = _gotoNext;
                    if (__value__ == (0i32)) {
                        {
                            var __tmp__ = stdgo._internal.os.Os_open.open(_file?.__copy__());
                            _f_5010135 = @:tmpset0 __tmp__._0;
                            _err_5010138 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_5010138 != null) {
                            _gotoNext = 5010174i32;
                        } else {
                            _gotoNext = 5010204i32;
                        };
                    } else if (__value__ == (5010174i32)) {
                        @:check2r _t.error(stdgo.Go.toInterface(_err_5010138));
                        return;
                        _gotoNext = 5010204i32;
                    } else if (__value__ == (5010204i32)) {
                        {
                            final __f__ = @:check2r _f_5010135.close;
                            __deferstack__.unshift({ ran : false, f : () -> __f__() });
                        };
                        _b_5010221 = stdgo._internal.bufio.Bufio_newreader.newReader(stdgo.Go.asInterface(_f_5010135));
                        _lineno_5010246 = (0 : stdgo.GoInt);
                        _lastRegexp_5010259 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _gotoNext = 5010276i32;
                    } else if (__value__ == (5010276i32)) {
                        var __blank__ = 0i32;
                        readingBreak = false;
                        _gotoNext = 5010286i32;
                    } else if (__value__ == (5010286i32)) {
                        if (!readingBreak) {
                            _gotoNext = 5010290i32;
                        } else {
                            _gotoNext = 5016770i32;
                        };
                    } else if (__value__ == (5010290i32)) {
                        _lineno_5010246++;
                        {
                            var __tmp__ = @:check2r _b_5010221.readString((10 : stdgo.GoUInt8));
                            _line_5010305 = @:tmpset0 __tmp__._0?.__copy__();
                            _err_5010311 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_5010311 != null) {
                            _gotoNext = 5010353i32;
                        } else {
                            _gotoNext = 5010771i32;
                        };
                    } else if (__value__ == (5010353i32)) {
                        if (stdgo.Go.toInterface(_err_5010311) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                            _gotoNext = 5010375i32;
                        } else {
                            _gotoNext = 5010430i32;
                        };
                    } else if (__value__ == (5010375i32)) {
                        @:check2r _t.errorf(("%s:%d: %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5010246), stdgo.Go.toInterface(_err_5010311));
                        _gotoNext = 5010430i32;
                    } else if (__value__ == (5010430i32)) {
                        readingBreak = true;
                        _gotoNext = 5010286i32;
                    } else if (__value__ == (5010771i32)) {
                        if (((_line_5010305[(0 : stdgo.GoInt)] == (35 : stdgo.GoUInt8)) || (_line_5010305[(0 : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 5010808i32;
                        } else {
                            _gotoNext = 5010836i32;
                        };
                    } else if (__value__ == (5010808i32)) {
                        _gotoNext = 5010286i32;
                    } else if (__value__ == (5010836i32)) {
                        _line_5010305 = (_line_5010305.__slice__(0, ((_line_5010305.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_5010864 = @:check2r stdgo._internal.regexp.Regexp__notab._notab.findAllString(_line_5010305?.__copy__(), (-1 : stdgo.GoInt));
                        if ((0i32 : stdgo.GoInt) < (_field_5010864.length)) {
                            _gotoNext = 5011070i32;
                        } else {
                            _gotoNext = 5011075i32;
                        };
                    } else if (__value__ == (5010909i32)) {
                        _i_5010909++;
                        _gotoNext = 5011071i32;
                    } else if (__value__ == (5010929i32)) {
                        _f_5010912 = _field_5010864[(_i_5010909 : stdgo.GoInt)]?.__copy__();
                        if (_f_5010912 == (("NULL" : stdgo.GoString))) {
                            _gotoNext = 5010949i32;
                        } else {
                            _gotoNext = 5010977i32;
                        };
                    } else if (__value__ == (5010949i32)) {
                        _field_5010864[(_i_5010909 : stdgo.GoInt)] = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _gotoNext = 5010977i32;
                    } else if (__value__ == (5010977i32)) {
                        if (_f_5010912 == (("NIL" : stdgo.GoString))) {
                            _gotoNext = 5010991i32;
                        } else {
                            _gotoNext = 5010909i32;
                        };
                    } else if (__value__ == (5010991i32)) {
                        @:check2r _t.logf(("%s:%d: skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5010246), stdgo.Go.toInterface(_line_5010305));
                        _gotoNext = 5010286i32;
                    } else if (__value__ == (5011070i32)) {
                        {
                            final __tmp__0 = 0i32;
                            final __tmp__1 = _field_5010864[(0i32 : stdgo.GoInt)]?.__copy__();
                            _i_5010909 = __tmp__0;
                            _f_5010912 = __tmp__1;
                        };
                        _gotoNext = 5011071i32;
                    } else if (__value__ == (5011071i32)) {
                        if (_i_5010909 < (_field_5010864.length)) {
                            _gotoNext = 5010929i32;
                        } else {
                            _gotoNext = 5011075i32;
                        };
                    } else if (__value__ == (5011075i32)) {
                        if ((_field_5010864.length) == ((0 : stdgo.GoInt))) {
                            _gotoNext = 5011094i32;
                        } else {
                            _gotoNext = 5013848i32;
                        };
                    } else if (__value__ == (5011094i32)) {
                        _gotoNext = 5010286i32;
                    } else if (__value__ == (5013848i32)) {
                        _flag_5013848 = _field_5010864[(0 : stdgo.GoInt)]?.__copy__();
                        _gotoNext = 5013867i32;
                    } else if (__value__ == (5013867i32)) {
                        {
                            final __value__ = _flag_5013848[(0 : stdgo.GoInt)];
                            if (__value__ == ((63 : stdgo.GoUInt8)) || __value__ == ((38 : stdgo.GoUInt8)) || __value__ == ((124 : stdgo.GoUInt8)) || __value__ == ((59 : stdgo.GoUInt8)) || __value__ == ((123 : stdgo.GoUInt8)) || __value__ == ((125 : stdgo.GoUInt8))) {
                                _gotoNext = 5013886i32;
                            } else if (__value__ == ((58 : stdgo.GoUInt8))) {
                                _gotoNext = 5014054i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8)) || __value__ == ((78 : stdgo.GoUInt8)) || __value__ == ((84 : stdgo.GoUInt8)) || __value__ == ((48 : stdgo.GoUInt8)) || __value__ == ((49 : stdgo.GoUInt8)) || __value__ == ((50 : stdgo.GoUInt8)) || __value__ == ((51 : stdgo.GoUInt8)) || __value__ == ((52 : stdgo.GoUInt8)) || __value__ == ((53 : stdgo.GoUInt8)) || __value__ == ((54 : stdgo.GoUInt8)) || __value__ == ((55 : stdgo.GoUInt8)) || __value__ == ((56 : stdgo.GoUInt8)) || __value__ == ((57 : stdgo.GoUInt8))) {
                                _gotoNext = 5014190i32;
                            } else {
                                _gotoNext = 5014393i32;
                            };
                        };
                    } else if (__value__ == (5013886i32)) {
                        _flag_5013848 = (_flag_5013848.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        if (_flag_5013848 == ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 5014024i32;
                        } else {
                            _gotoNext = 5014393i32;
                        };
                    } else if (__value__ == (5014024i32)) {
                        _gotoNext = 5010286i32;
                    } else if (__value__ == (5014054i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_flag_5013848.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (":" : stdgo.GoString));
                                _flag_5013848 = @:tmpset0 __tmp__._1?.__copy__();
                                _ok_5014071 = @:tmpset0 __tmp__._2;
                            };
                            if (!_ok_5014071) {
                                _gotoNext = 5014131i32;
                            } else {
                                _gotoNext = 5014393i32;
                            };
                        };
                    } else if (__value__ == (5014131i32)) {
                        @:check2r _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line_5010305));
                        _gotoNext = 5010286i32;
                    } else if (__value__ == (5014190i32)) {
                        @:check2r _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line_5010305));
                        _gotoNext = 5010286i32;
                    } else if (__value__ == (5014393i32)) {
                        if (((_field_5010864.length) < (4 : stdgo.GoInt) : Bool)) {
                            _gotoNext = 5014411i32;
                        } else {
                            _gotoNext = 5014544i32;
                        };
                    } else if (__value__ == (5014411i32)) {
                        @:check2r _t.errorf(("%s:%d: too few fields: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5010246), stdgo.Go.toInterface(_line_5010305));
                        _gotoNext = 5010286i32;
                    } else if (__value__ == (5014544i32)) {
                        if (stdgo._internal.strings.Strings_contains.contains(_flag_5013848?.__copy__(), ("$" : stdgo.GoString))) {
                            _gotoNext = 5014575i32;
                        } else {
                            _gotoNext = 5014994i32;
                        };
                    } else if (__value__ == (5014575i32)) {
                        _f_5014580 = ((("\"" : stdgo.GoString) + _field_5010864[(1 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_f_5014580?.__copy__());
                                _field_5010864[(1 : stdgo.GoInt)] = @:tmpset0 __tmp__._0?.__copy__();
                                _err_5010311 = @:tmpset0 __tmp__._1;
                            };
                            if (_err_5010311 != null) {
                                _gotoNext = 5014659i32;
                            } else {
                                _gotoNext = 5014727i32;
                            };
                        };
                    } else if (__value__ == (5014659i32)) {
                        @:check2r _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5010246), stdgo.Go.toInterface(_f_5014580));
                        _gotoNext = 5014727i32;
                    } else if (__value__ == (5014727i32)) {
                        _f_5014580 = ((("\"" : stdgo.GoString) + _field_5010864[(2 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_f_5014580?.__copy__());
                                _field_5010864[(2 : stdgo.GoInt)] = @:tmpset0 __tmp__._0?.__copy__();
                                _err_5010311 = @:tmpset0 __tmp__._1;
                            };
                            if (_err_5010311 != null) {
                                _gotoNext = 5014805i32;
                            } else {
                                _gotoNext = 5014994i32;
                            };
                        };
                    } else if (__value__ == (5014805i32)) {
                        @:check2r _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5010246), stdgo.Go.toInterface(_f_5014580));
                        _gotoNext = 5014994i32;
                    } else if (__value__ == (5014994i32)) {
                        if (_field_5010864[(1 : stdgo.GoInt)] == (("SAME" : stdgo.GoString))) {
                            _gotoNext = 5015016i32;
                        } else {
                            _gotoNext = 5015049i32;
                        };
                    } else if (__value__ == (5015016i32)) {
                        _field_5010864[(1 : stdgo.GoInt)] = _lastRegexp_5010259?.__copy__();
                        _gotoNext = 5015049i32;
                    } else if (__value__ == (5015049i32)) {
                        _lastRegexp_5010259 = _field_5010864[(1 : stdgo.GoInt)]?.__copy__();
                        _text_5015111 = _field_5010864[(2 : stdgo.GoInt)]?.__copy__();
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp__parsefowlerresult._parseFowlerResult(_field_5010864[(3 : stdgo.GoInt)]?.__copy__());
                            _ok_5015167 = @:tmpset0 __tmp__._0;
                            _shouldCompile_5015171 = @:tmpset0 __tmp__._1;
                            _shouldMatch_5015186 = @:tmpset0 __tmp__._2;
                            _pos_5015199 = @:tmpset0 __tmp__._3;
                        };
                        if (!_ok_5015167) {
                            _gotoNext = 5015243i32;
                        } else {
                            _gotoNext = 5015399i32;
                        };
                    } else if (__value__ == (5015243i32)) {
                        @:check2r _t.errorf(("%s:%d: cannot parse result %#q" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5010246), stdgo.Go.toInterface(_field_5010864[(3 : stdgo.GoInt)]));
                        _gotoNext = 5010286i32;
                    } else if (__value__ == (5015399i32)) {
                        _gotoNext = 5015399i32;
                        _keys_5015485 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                        _values_5015485 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                        for (_key => _value in _flag_5013848) {
                            _keys_5015485 = (_keys_5015485.__append__(_key));
                            _values_5015485 = (_values_5015485.__append__(_value));
                        };
                        if ((0i32 : stdgo.GoInt) < (_keys_5015485.length)) {
                            _gotoNext = 5016764i32;
                        } else {
                            _gotoNext = 5010286i32;
                        };
                    } else if (__value__ == (5015497i32)) {
                        _i_5015497++;
                        _gotoNext = 5016765i32;
                    } else if (__value__ == (5015508i32)) {
                        _c_5015492 = _values_5015485[@:invalid_index_invalid_type _i_5015497];
                        var __blank__ = _keys_5015485[@:invalid_index_invalid_type _i_5015497];
                        _pattern_5015513 = _field_5010864[(1 : stdgo.GoInt)]?.__copy__();
                        _syn_5015536 = (4 : stdgo._internal.regexp.syntax.Syntax_flags.Flags);
                        _gotoNext = 5015576i32;
                    } else if (__value__ == (5015576i32)) {
                        {
                            final __value__ = _c_5015492;
                            if (__value__ == ((69 : stdgo.GoInt32))) {
                                _gotoNext = 5015623i32;
                            } else if (__value__ == ((76 : stdgo.GoInt32))) {
                                _gotoNext = 5015677i32;
                            } else {
                                _gotoNext = 5015590i32;
                            };
                        };
                    } else if (__value__ == (5015590i32)) {
                        _i_5015497++;
                        _gotoNext = 5016765i32;
                    } else if (__value__ == (5015623i32)) {
                        _gotoNext = 5015744i32;
                    } else if (__value__ == (5015677i32)) {
                        _pattern_5015513 = stdgo._internal.regexp.Regexp_quotemeta.quoteMeta(_pattern_5015513?.__copy__())?.__copy__();
                        _gotoNext = 5015744i32;
                    } else if (__value__ == (5015744i32)) {
                        _keys_5015744 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                        _values_5015744 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                        for (_key => _value in _flag_5013848) {
                            _keys_5015744 = (_keys_5015744.__append__(_key));
                            _values_5015744 = (_values_5015744.__append__(_value));
                        };
                        if ((0i32 : stdgo.GoInt) < (_keys_5015744.length)) {
                            _gotoNext = 5015834i32;
                        } else {
                            _gotoNext = 5015841i32;
                        };
                    } else if (__value__ == (5015756i32)) {
                        _i_5015756++;
                        _gotoNext = 5015835i32;
                    } else if (__value__ == (5015767i32)) {
                        _c_5015751 = _values_5015744[@:invalid_index_invalid_type _i_5015756];
                        var __blank__ = _keys_5015744[@:invalid_index_invalid_type _i_5015756];
                        _gotoNext = 5015773i32;
                    } else if (__value__ == (5015773i32)) {
                        {
                            final __value__ = _c_5015751;
                            if (__value__ == ((105 : stdgo.GoInt32))) {
                                _gotoNext = 5015788i32;
                            } else {
                                _gotoNext = 5015756i32;
                            };
                        };
                    } else if (__value__ == (5015788i32)) {
                        _syn_5015536 = (_syn_5015536 | ((1 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_flags.Flags);
                        _gotoNext = 5015756i32;
                    } else if (__value__ == (5015834i32)) {
                        _i_5015756 = 0i32;
                        _gotoNext = 5015835i32;
                    } else if (__value__ == (5015835i32)) {
                        if (_i_5015756 < (_keys_5015744.length)) {
                            _gotoNext = 5015767i32;
                        } else {
                            _gotoNext = 5015841i32;
                        };
                    } else if (__value__ == (5015841i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp__compile._compile(_pattern_5015513?.__copy__(), _syn_5015536, true);
                            _re_5015841 = @:tmpset0 __tmp__._0;
                            _err_5015845 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_5015845 != null) {
                            _gotoNext = 5015897i32;
                        } else {
                            _gotoNext = 5016024i32;
                        };
                    } else if (__value__ == (5015897i32)) {
                        if (_shouldCompile_5015171) {
                            _gotoNext = 5015920i32;
                        } else {
                            _gotoNext = 5015999i32;
                        };
                    } else if (__value__ == (5015920i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q did not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5010246), stdgo.Go.toInterface(_pattern_5015513));
                        _gotoNext = 5015999i32;
                    } else if (__value__ == (5015999i32)) {
                        _i_5015497++;
                        _gotoNext = 5016765i32;
                    } else if (__value__ == (5016024i32)) {
                        if (!_shouldCompile_5015171) {
                            _gotoNext = 5016042i32;
                        } else {
                            _gotoNext = 5016142i32;
                        };
                    } else if (__value__ == (5016042i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q should not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5010246), stdgo.Go.toInterface(_pattern_5015513));
                        _i_5015497++;
                        _gotoNext = 5016765i32;
                    } else if (__value__ == (5016142i32)) {
                        _match_5016142 = @:check2r _re_5015841.matchString(_text_5015111?.__copy__());
                        if (_match_5016142 != (_shouldMatch_5015186)) {
                            _gotoNext = 5016199i32;
                        } else {
                            _gotoNext = 5016331i32;
                        };
                    } else if (__value__ == (5016199i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q.Match(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5010246), stdgo.Go.toInterface(_pattern_5015513), stdgo.Go.toInterface(_text_5015111), stdgo.Go.toInterface(_match_5016142), stdgo.Go.toInterface(_shouldMatch_5015186));
                        _i_5015497++;
                        _gotoNext = 5016765i32;
                    } else if (__value__ == (5016331i32)) {
                        _have_5016331 = @:check2r _re_5015841.findStringSubmatchIndex(_text_5015111?.__copy__());
                        if ((((_have_5016331.length) > (0 : stdgo.GoInt) : Bool)) != (_match_5016142)) {
                            _gotoNext = 5016403i32;
                        } else {
                            _gotoNext = 5016571i32;
                        };
                    } else if (__value__ == (5016403i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q.Match(%#q) = %v, but %#q.FindSubmatchIndex(%#q) = %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5010246), stdgo.Go.toInterface(_pattern_5015513), stdgo.Go.toInterface(_text_5015111), stdgo.Go.toInterface(_match_5016142), stdgo.Go.toInterface(_pattern_5015513), stdgo.Go.toInterface(_text_5015111), stdgo.Go.toInterface(_have_5016331));
                        _i_5015497++;
                        _gotoNext = 5016765i32;
                    } else if (__value__ == (5016571i32)) {
                        if (((_have_5016331.length) > (_pos_5015199.length) : Bool)) {
                            _gotoNext = 5016595i32;
                        } else {
                            _gotoNext = 5016632i32;
                        };
                    } else if (__value__ == (5016595i32)) {
                        _have_5016331 = (_have_5016331.__slice__(0, (_pos_5015199.length)) : stdgo.Slice<stdgo.GoInt>);
                        _gotoNext = 5016632i32;
                    } else if (__value__ == (5016632i32)) {
                        if (!stdgo._internal.regexp.Regexp__same._same(_have_5016331, _pos_5015199)) {
                            _gotoNext = 5016652i32;
                        } else {
                            _gotoNext = 5015497i32;
                        };
                    } else if (__value__ == (5016652i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q.FindSubmatchIndex(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5010246), stdgo.Go.toInterface(_pattern_5015513), stdgo.Go.toInterface(_text_5015111), stdgo.Go.toInterface(_have_5016331), stdgo.Go.toInterface(_pos_5015199));
                        _gotoNext = 5015497i32;
                    } else if (__value__ == (5016764i32)) {
                        _i_5015497 = 0i32;
                        _gotoNext = 5016765i32;
                    } else if (__value__ == (5016765i32)) {
                        if (_i_5015497 < (_keys_5015485.length)) {
                            _gotoNext = 5015508i32;
                        } else {
                            _gotoNext = 5010286i32;
                        };
                    } else if (__value__ == (5016770i32)) {
                        _gotoNext = -1i32;
                    };
                };
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        };
    }
