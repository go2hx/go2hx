package stdgo._internal.regexp;
function _testFowler(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _file:stdgo.GoString):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _syn_4944268:stdgo._internal.regexp.syntax.Syntax_Flags.Flags = ((0 : stdgo.GoUInt16) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
            var _f_4943312:stdgo.GoString = ("" : stdgo.GoString);
            var _err_4939043:stdgo.Error = (null : stdgo.Error);
            var _lastRegexp_4938991:stdgo.GoString = ("" : stdgo.GoString);
            var _lineno_4938978:stdgo.GoInt = (0 : stdgo.GoInt);
            var _keys_4944217 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            var _shouldMatch_4943918:Bool = false;
            var _shouldCompile_4943903:Bool = false;
            var _ok_4943899:Bool = false;
            var _re_4944573:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
            var _pattern_4944245:stdgo.GoString = ("" : stdgo.GoString);
            var _ok_4942803:Bool = false;
            var _f_4939644:stdgo.GoString = ("" : stdgo.GoString);
            var _i_4939641:stdgo.GoInt = (0 : stdgo.GoInt);
            var _b_4938953:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
            var _have_4945063:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            var _c_4944224:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _i_4944229 = @:invalid_type null;
            var _values_4944217 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var _text_4943843:stdgo.GoString = ("" : stdgo.GoString);
            var _flag_4942580:stdgo.GoString = ("" : stdgo.GoString);
            var _f_4938867:stdgo.Ref<stdgo._internal.os.Os_File.File> = (null : stdgo.Ref<stdgo._internal.os.Os_File.File>);
            var _values_4944476 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var _keys_4944476 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            var _field_4939596:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
            var _c_4944483:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _pos_4943931:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            var readingBreak = false;
            var _match_4944874:Bool = false;
            var _err_4944577:stdgo.Error = (null : stdgo.Error);
            var _i_4944488 = @:invalid_type null;
            var _line_4939037:stdgo.GoString = ("" : stdgo.GoString);
            var _err_4938870:stdgo.Error = (null : stdgo.Error);
            var _gotoNext = 0i32;
            var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
            while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
                {
                    final __value__ = _gotoNext;
                    if (__value__ == (0i32)) {
                        {
                            var __tmp__ = stdgo._internal.os.Os_open.open(_file?.__copy__());
                            _f_4938867 = __tmp__._0;
                            _err_4938870 = __tmp__._1;
                        };
                        if (_err_4938870 != null) {
                            _gotoNext = 4938906i32;
                        } else {
                            _gotoNext = 4938936i32;
                        };
                    } else if (__value__ == (4938906i32)) {
                        _t.error(stdgo.Go.toInterface(_err_4938870));
                        return;
                        _gotoNext = 4938936i32;
                    } else if (__value__ == (4938936i32)) {
                        __deferstack__.unshift(() -> _f_4938867.close());
                        _b_4938953 = stdgo._internal.bufio.Bufio_newReader.newReader(stdgo.Go.asInterface(_f_4938867));
                        _lineno_4938978 = (0 : stdgo.GoInt);
                        _lastRegexp_4938991 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 4939008i32;
                    } else if (__value__ == (4939008i32)) {
                        var __blank__ = 0i32;
                        readingBreak = false;
                        _gotoNext = 4939018i32;
                    } else if (__value__ == (4939018i32)) {
                        if (!readingBreak) {
                            _gotoNext = 4939022i32;
                        } else {
                            _gotoNext = 4945502i32;
                        };
                    } else if (__value__ == (4939022i32)) {
                        _lineno_4938978++;
                        {
                            var __tmp__ = _b_4938953.readString((10 : stdgo.GoUInt8));
                            _line_4939037 = __tmp__._0?.__copy__();
                            _err_4939043 = __tmp__._1;
                        };
                        if (_err_4939043 != null) {
                            _gotoNext = 4939085i32;
                        } else {
                            _gotoNext = 4939503i32;
                        };
                    } else if (__value__ == (4939085i32)) {
                        if (stdgo.Go.toInterface(_err_4939043) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                            _gotoNext = 4939107i32;
                        } else {
                            _gotoNext = 4939162i32;
                        };
                    } else if (__value__ == (4939107i32)) {
                        _t.errorf(("%s:%d: %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4938978), stdgo.Go.toInterface(_err_4939043));
                        _gotoNext = 4939162i32;
                    } else if (__value__ == (4939162i32)) {
                        readingBreak = true;
                        _gotoNext = 4939018i32;
                    } else if (__value__ == (4939503i32)) {
                        if (((_line_4939037[(0 : stdgo.GoInt)] == (35 : stdgo.GoUInt8)) || (_line_4939037[(0 : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 4939540i32;
                        } else {
                            _gotoNext = 4939568i32;
                        };
                    } else if (__value__ == (4939540i32)) {
                        _gotoNext = 4939018i32;
                    } else if (__value__ == (4939568i32)) {
                        _line_4939037 = (_line_4939037.__slice__(0, ((_line_4939037.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_4939596 = stdgo._internal.regexp.Regexp__notab._notab.findAllString(_line_4939037?.__copy__(), (-1 : stdgo.GoInt));
                        if ((0i32 : stdgo.GoInt) < (_field_4939596.length)) {
                            _gotoNext = 4939802i32;
                        } else {
                            _gotoNext = 4939807i32;
                        };
                    } else if (__value__ == (4939641i32)) {
                        _i_4939641++;
                        _gotoNext = 4939803i32;
                    } else if (__value__ == (4939661i32)) {
                        _f_4939644 = _field_4939596[(_i_4939641 : stdgo.GoInt)]?.__copy__();
                        if (_f_4939644 == (("NULL" : stdgo.GoString))) {
                            _gotoNext = 4939681i32;
                        } else {
                            _gotoNext = 4939709i32;
                        };
                    } else if (__value__ == (4939681i32)) {
                        _field_4939596[(_i_4939641 : stdgo.GoInt)] = stdgo.Go.str()?.__copy__();
                        _gotoNext = 4939709i32;
                    } else if (__value__ == (4939709i32)) {
                        if (_f_4939644 == (("NIL" : stdgo.GoString))) {
                            _gotoNext = 4939723i32;
                        } else {
                            _gotoNext = 4939641i32;
                        };
                    } else if (__value__ == (4939723i32)) {
                        _t.logf(("%s:%d: skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4938978), stdgo.Go.toInterface(_line_4939037));
                        _gotoNext = 4939018i32;
                    } else if (__value__ == (4939802i32)) {
                        {
                            final __tmp__0 = 0i32;
                            final __tmp__1 = _field_4939596[(0i32 : stdgo.GoInt)]?.__copy__();
                            _i_4939641 = __tmp__0;
                            _f_4939644 = __tmp__1;
                        };
                        _gotoNext = 4939803i32;
                    } else if (__value__ == (4939803i32)) {
                        if (_i_4939641 < (_field_4939596.length)) {
                            _gotoNext = 4939661i32;
                        } else {
                            _gotoNext = 4939807i32;
                        };
                    } else if (__value__ == (4939807i32)) {
                        if ((_field_4939596.length) == ((0 : stdgo.GoInt))) {
                            _gotoNext = 4939826i32;
                        } else {
                            _gotoNext = 4942580i32;
                        };
                    } else if (__value__ == (4939826i32)) {
                        _gotoNext = 4939018i32;
                    } else if (__value__ == (4942580i32)) {
                        _flag_4942580 = _field_4939596[(0 : stdgo.GoInt)]?.__copy__();
                        _gotoNext = 4942599i32;
                    } else if (__value__ == (4942599i32)) {
                        {
                            final __value__ = _flag_4942580[(0 : stdgo.GoInt)];
                            if (__value__ == ((63 : stdgo.GoUInt8)) || __value__ == ((38 : stdgo.GoUInt8)) || __value__ == ((124 : stdgo.GoUInt8)) || __value__ == ((59 : stdgo.GoUInt8)) || __value__ == ((123 : stdgo.GoUInt8)) || __value__ == ((125 : stdgo.GoUInt8))) {
                                _gotoNext = 4942618i32;
                            } else if (__value__ == ((58 : stdgo.GoUInt8))) {
                                _gotoNext = 4942786i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8)) || __value__ == ((78 : stdgo.GoUInt8)) || __value__ == ((84 : stdgo.GoUInt8)) || __value__ == ((48 : stdgo.GoUInt8)) || __value__ == ((49 : stdgo.GoUInt8)) || __value__ == ((50 : stdgo.GoUInt8)) || __value__ == ((51 : stdgo.GoUInt8)) || __value__ == ((52 : stdgo.GoUInt8)) || __value__ == ((53 : stdgo.GoUInt8)) || __value__ == ((54 : stdgo.GoUInt8)) || __value__ == ((55 : stdgo.GoUInt8)) || __value__ == ((56 : stdgo.GoUInt8)) || __value__ == ((57 : stdgo.GoUInt8))) {
                                _gotoNext = 4942922i32;
                            } else {
                                _gotoNext = 4943125i32;
                            };
                        };
                    } else if (__value__ == (4942618i32)) {
                        _flag_4942580 = (_flag_4942580.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        if (_flag_4942580 == (stdgo.Go.str())) {
                            _gotoNext = 4942756i32;
                        } else {
                            _gotoNext = 4943125i32;
                        };
                    } else if (__value__ == (4942756i32)) {
                        _gotoNext = 4939018i32;
                    } else if (__value__ == (4942786i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_flag_4942580.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (":" : stdgo.GoString));
                                _flag_4942580 = __tmp__._1?.__copy__();
                                _ok_4942803 = __tmp__._2;
                            };
                            if (!_ok_4942803) {
                                _gotoNext = 4942863i32;
                            } else {
                                _gotoNext = 4943125i32;
                            };
                        };
                    } else if (__value__ == (4942863i32)) {
                        _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line_4939037));
                        _gotoNext = 4939018i32;
                    } else if (__value__ == (4942922i32)) {
                        _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line_4939037));
                        _gotoNext = 4939018i32;
                    } else if (__value__ == (4943125i32)) {
                        if (((_field_4939596.length) < (4 : stdgo.GoInt) : Bool)) {
                            _gotoNext = 4943143i32;
                        } else {
                            _gotoNext = 4943276i32;
                        };
                    } else if (__value__ == (4943143i32)) {
                        _t.errorf(("%s:%d: too few fields: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4938978), stdgo.Go.toInterface(_line_4939037));
                        _gotoNext = 4939018i32;
                    } else if (__value__ == (4943276i32)) {
                        if (stdgo._internal.strings.Strings_contains.contains(_flag_4942580?.__copy__(), ("$" : stdgo.GoString))) {
                            _gotoNext = 4943307i32;
                        } else {
                            _gotoNext = 4943726i32;
                        };
                    } else if (__value__ == (4943307i32)) {
                        _f_4943312 = ((("\"" : stdgo.GoString) + _field_4939596[(1 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_f_4943312?.__copy__());
                                _field_4939596[(1 : stdgo.GoInt)] = __tmp__._0?.__copy__();
                                _err_4939043 = __tmp__._1;
                            };
                            if (_err_4939043 != null) {
                                _gotoNext = 4943391i32;
                            } else {
                                _gotoNext = 4943459i32;
                            };
                        };
                    } else if (__value__ == (4943391i32)) {
                        _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4938978), stdgo.Go.toInterface(_f_4943312));
                        _gotoNext = 4943459i32;
                    } else if (__value__ == (4943459i32)) {
                        _f_4943312 = ((("\"" : stdgo.GoString) + _field_4939596[(2 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_f_4943312?.__copy__());
                                _field_4939596[(2 : stdgo.GoInt)] = __tmp__._0?.__copy__();
                                _err_4939043 = __tmp__._1;
                            };
                            if (_err_4939043 != null) {
                                _gotoNext = 4943537i32;
                            } else {
                                _gotoNext = 4943726i32;
                            };
                        };
                    } else if (__value__ == (4943537i32)) {
                        _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4938978), stdgo.Go.toInterface(_f_4943312));
                        _gotoNext = 4943726i32;
                    } else if (__value__ == (4943726i32)) {
                        if (_field_4939596[(1 : stdgo.GoInt)] == (("SAME" : stdgo.GoString))) {
                            _gotoNext = 4943748i32;
                        } else {
                            _gotoNext = 4943781i32;
                        };
                    } else if (__value__ == (4943748i32)) {
                        _field_4939596[(1 : stdgo.GoInt)] = _lastRegexp_4938991?.__copy__();
                        _gotoNext = 4943781i32;
                    } else if (__value__ == (4943781i32)) {
                        _lastRegexp_4938991 = _field_4939596[(1 : stdgo.GoInt)]?.__copy__();
                        _text_4943843 = _field_4939596[(2 : stdgo.GoInt)]?.__copy__();
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp__parseFowlerResult._parseFowlerResult(_field_4939596[(3 : stdgo.GoInt)]?.__copy__());
                            _ok_4943899 = __tmp__._0;
                            _shouldCompile_4943903 = __tmp__._1;
                            _shouldMatch_4943918 = __tmp__._2;
                            _pos_4943931 = __tmp__._3;
                        };
                        if (!_ok_4943899) {
                            _gotoNext = 4943975i32;
                        } else {
                            _gotoNext = 4944131i32;
                        };
                    } else if (__value__ == (4943975i32)) {
                        _t.errorf(("%s:%d: cannot parse result %#q" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4938978), stdgo.Go.toInterface(_field_4939596[(3 : stdgo.GoInt)]));
                        _gotoNext = 4939018i32;
                    } else if (__value__ == (4944131i32)) {
                        _gotoNext = 4944131i32;
                        _keys_4944217 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                        _values_4944217 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                        for (_key => _value in _flag_4942580) {
                            _keys_4944217 = (_keys_4944217.__append__(_key));
                            _values_4944217 = (_values_4944217.__append__(_value));
                        };
                        if ((0i32 : stdgo.GoInt) < (_keys_4944217.length)) {
                            _gotoNext = 4945496i32;
                        } else {
                            _gotoNext = 4945502i32;
                        };
                    } else if (__value__ == (4944229i32)) {
                        _i_4944229++;
                        _gotoNext = 4945497i32;
                    } else if (__value__ == (4944240i32)) {
                        _c_4944224 = _values_4944217[@:invalid_index_invalid_type _i_4944229];
                        var __blank__ = _keys_4944217[@:invalid_index_invalid_type _i_4944229];
                        _pattern_4944245 = _field_4939596[(1 : stdgo.GoInt)]?.__copy__();
                        _syn_4944268 = (4 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 4944308i32;
                    } else if (__value__ == (4944308i32)) {
                        {
                            final __value__ = _c_4944224;
                            if (__value__ == ((69 : stdgo.GoInt32))) {
                                _gotoNext = 4944355i32;
                            } else if (__value__ == ((76 : stdgo.GoInt32))) {
                                _gotoNext = 4944409i32;
                            } else {
                                _gotoNext = 4944322i32;
                            };
                        };
                    } else if (__value__ == (4944322i32)) {
                        _i_4944229++;
                        _gotoNext = 4945497i32;
                    } else if (__value__ == (4944355i32)) {
                        _gotoNext = 4944476i32;
                    } else if (__value__ == (4944409i32)) {
                        _pattern_4944245 = stdgo._internal.regexp.Regexp_quoteMeta.quoteMeta(_pattern_4944245?.__copy__())?.__copy__();
                        _gotoNext = 4944476i32;
                    } else if (__value__ == (4944476i32)) {
                        _keys_4944476 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                        _values_4944476 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                        for (_key => _value in _flag_4942580) {
                            _keys_4944476 = (_keys_4944476.__append__(_key));
                            _values_4944476 = (_values_4944476.__append__(_value));
                        };
                        if ((0i32 : stdgo.GoInt) < (_keys_4944476.length)) {
                            _gotoNext = 4944566i32;
                        } else {
                            _gotoNext = 4944573i32;
                        };
                    } else if (__value__ == (4944488i32)) {
                        _i_4944488++;
                        _gotoNext = 4944567i32;
                    } else if (__value__ == (4944499i32)) {
                        _c_4944483 = _values_4944476[@:invalid_index_invalid_type _i_4944488];
                        var __blank__ = _keys_4944476[@:invalid_index_invalid_type _i_4944488];
                        _gotoNext = 4944505i32;
                    } else if (__value__ == (4944505i32)) {
                        {
                            final __value__ = _c_4944483;
                            if (__value__ == ((105 : stdgo.GoInt32))) {
                                _gotoNext = 4944520i32;
                            } else {
                                _gotoNext = 4944488i32;
                            };
                        };
                    } else if (__value__ == (4944520i32)) {
                        _syn_4944268 = (_syn_4944268 | ((1 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 4944488i32;
                    } else if (__value__ == (4944566i32)) {
                        _i_4944488 = 0i32;
                        _gotoNext = 4944567i32;
                    } else if (__value__ == (4944567i32)) {
                        if (_i_4944488 < (_keys_4944476.length)) {
                            _gotoNext = 4944499i32;
                        } else {
                            _gotoNext = 4944573i32;
                        };
                    } else if (__value__ == (4944573i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp__compile._compile(_pattern_4944245?.__copy__(), _syn_4944268, true);
                            _re_4944573 = __tmp__._0;
                            _err_4944577 = __tmp__._1;
                        };
                        if (_err_4944577 != null) {
                            _gotoNext = 4944629i32;
                        } else {
                            _gotoNext = 4944756i32;
                        };
                    } else if (__value__ == (4944629i32)) {
                        if (_shouldCompile_4943903) {
                            _gotoNext = 4944652i32;
                        } else {
                            _gotoNext = 4944731i32;
                        };
                    } else if (__value__ == (4944652i32)) {
                        _t.errorf(("%s:%d: %#q did not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4938978), stdgo.Go.toInterface(_pattern_4944245));
                        _gotoNext = 4944731i32;
                    } else if (__value__ == (4944731i32)) {
                        _i_4944229++;
                        _gotoNext = 4945497i32;
                    } else if (__value__ == (4944756i32)) {
                        if (!_shouldCompile_4943903) {
                            _gotoNext = 4944774i32;
                        } else {
                            _gotoNext = 4944874i32;
                        };
                    } else if (__value__ == (4944774i32)) {
                        _t.errorf(("%s:%d: %#q should not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4938978), stdgo.Go.toInterface(_pattern_4944245));
                        _i_4944229++;
                        _gotoNext = 4945497i32;
                    } else if (__value__ == (4944874i32)) {
                        _match_4944874 = _re_4944573.matchString(_text_4943843?.__copy__());
                        if (_match_4944874 != (_shouldMatch_4943918)) {
                            _gotoNext = 4944931i32;
                        } else {
                            _gotoNext = 4945063i32;
                        };
                    } else if (__value__ == (4944931i32)) {
                        _t.errorf(("%s:%d: %#q.Match(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4938978), stdgo.Go.toInterface(_pattern_4944245), stdgo.Go.toInterface(_text_4943843), stdgo.Go.toInterface(_match_4944874), stdgo.Go.toInterface(_shouldMatch_4943918));
                        _i_4944229++;
                        _gotoNext = 4945497i32;
                    } else if (__value__ == (4945063i32)) {
                        _have_4945063 = _re_4944573.findStringSubmatchIndex(_text_4943843?.__copy__());
                        if ((((_have_4945063.length) > (0 : stdgo.GoInt) : Bool)) != (_match_4944874)) {
                            _gotoNext = 4945135i32;
                        } else {
                            _gotoNext = 4945303i32;
                        };
                    } else if (__value__ == (4945135i32)) {
                        _t.errorf(("%s:%d: %#q.Match(%#q) = %v, but %#q.FindSubmatchIndex(%#q) = %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4938978), stdgo.Go.toInterface(_pattern_4944245), stdgo.Go.toInterface(_text_4943843), stdgo.Go.toInterface(_match_4944874), stdgo.Go.toInterface(_pattern_4944245), stdgo.Go.toInterface(_text_4943843), stdgo.Go.toInterface(_have_4945063));
                        _i_4944229++;
                        _gotoNext = 4945497i32;
                    } else if (__value__ == (4945303i32)) {
                        if (((_have_4945063.length) > (_pos_4943931.length) : Bool)) {
                            _gotoNext = 4945327i32;
                        } else {
                            _gotoNext = 4945364i32;
                        };
                    } else if (__value__ == (4945327i32)) {
                        _have_4945063 = (_have_4945063.__slice__(0, (_pos_4943931.length)) : stdgo.Slice<stdgo.GoInt>);
                        _gotoNext = 4945364i32;
                    } else if (__value__ == (4945364i32)) {
                        if (!stdgo._internal.regexp.Regexp__same._same(_have_4945063, _pos_4943931)) {
                            _gotoNext = 4945384i32;
                        } else {
                            _gotoNext = 4944229i32;
                        };
                    } else if (__value__ == (4945384i32)) {
                        _t.errorf(("%s:%d: %#q.FindSubmatchIndex(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4938978), stdgo.Go.toInterface(_pattern_4944245), stdgo.Go.toInterface(_text_4943843), stdgo.Go.toInterface(_have_4945063), stdgo.Go.toInterface(_pos_4943931));
                        _gotoNext = 4944229i32;
                    } else if (__value__ == (4945496i32)) {
                        _i_4944229 = 0i32;
                        _gotoNext = 4945497i32;
                    } else if (__value__ == (4945497i32)) {
                        if (_i_4944229 < (_keys_4944217.length)) {
                            _gotoNext = 4944240i32;
                        } else {
                            _gotoNext = 4945502i32;
                        };
                    } else if (__value__ == (4945502i32)) {
                        _gotoNext = -1i32;
                    };
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
