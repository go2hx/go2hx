package stdgo._internal.regexp;
function _testFowler(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _file:stdgo.GoString):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _f_4948553:stdgo.Ref<stdgo._internal.os.Os_File.File> = (null : stdgo.Ref<stdgo._internal.os.Os_File.File>);
            var _match_4954560:Bool = false;
            var _re_4954259:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
            var _keys_4953903 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            var _i_4953915 = @:invalid_type null;
            var _pos_4953617:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            var _lastRegexp_4948677:stdgo.GoString = ("" : stdgo.GoString);
            var _pattern_4953931:stdgo.GoString = ("" : stdgo.GoString);
            var _have_4954749:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            var _i_4949327:stdgo.GoInt = (0 : stdgo.GoInt);
            var _values_4954162 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var _keys_4954162 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            var _f_4952998:stdgo.GoString = ("" : stdgo.GoString);
            var _err_4948556:stdgo.Error = (null : stdgo.Error);
            var _field_4949282:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
            var readingBreak = false;
            var _syn_4953954:stdgo._internal.regexp.syntax.Syntax_Flags.Flags = ((0 : stdgo.GoUInt16) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
            var _shouldMatch_4953604:Bool = false;
            var _flag_4952266:stdgo.GoString = ("" : stdgo.GoString);
            var _b_4948639:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
            var _c_4954169:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _i_4954174 = @:invalid_type null;
            var _c_4953910:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _values_4953903 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var _ok_4952489:Bool = false;
            var _lineno_4948664:stdgo.GoInt = (0 : stdgo.GoInt);
            var _err_4948729:stdgo.Error = (null : stdgo.Error);
            var _shouldCompile_4953589:Bool = false;
            var _ok_4953585:Bool = false;
            var _line_4948723:stdgo.GoString = ("" : stdgo.GoString);
            var _err_4954263:stdgo.Error = (null : stdgo.Error);
            var _text_4953529:stdgo.GoString = ("" : stdgo.GoString);
            var _f_4949330:stdgo.GoString = ("" : stdgo.GoString);
            var _gotoNext = 0i32;
            var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
            while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
                {
                    final __value__ = _gotoNext;
                    if (__value__ == (0i32)) {
                        {
                            var __tmp__ = stdgo._internal.os.Os_open.open(_file?.__copy__());
                            _f_4948553 = __tmp__._0;
                            _err_4948556 = __tmp__._1;
                        };
                        if (_err_4948556 != null) {
                            _gotoNext = 4948592i32;
                        } else {
                            _gotoNext = 4948622i32;
                        };
                    } else if (__value__ == (4948592i32)) {
                        _t.error(stdgo.Go.toInterface(_err_4948556));
                        return;
                        _gotoNext = 4948622i32;
                    } else if (__value__ == (4948622i32)) {
                        __deferstack__.unshift(() -> _f_4948553.close());
                        _b_4948639 = stdgo._internal.bufio.Bufio_newReader.newReader(stdgo.Go.asInterface(_f_4948553));
                        _lineno_4948664 = (0 : stdgo.GoInt);
                        _lastRegexp_4948677 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 4948694i32;
                    } else if (__value__ == (4948694i32)) {
                        var __blank__ = 0i32;
                        readingBreak = false;
                        _gotoNext = 4948704i32;
                    } else if (__value__ == (4948704i32)) {
                        if (!readingBreak) {
                            _gotoNext = 4948708i32;
                        } else {
                            _gotoNext = 4955188i32;
                        };
                    } else if (__value__ == (4948708i32)) {
                        _lineno_4948664++;
                        {
                            var __tmp__ = _b_4948639.readString((10 : stdgo.GoUInt8));
                            _line_4948723 = __tmp__._0?.__copy__();
                            _err_4948729 = __tmp__._1;
                        };
                        if (_err_4948729 != null) {
                            _gotoNext = 4948771i32;
                        } else {
                            _gotoNext = 4949189i32;
                        };
                    } else if (__value__ == (4948771i32)) {
                        if (stdgo.Go.toInterface(_err_4948729) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                            _gotoNext = 4948793i32;
                        } else {
                            _gotoNext = 4948848i32;
                        };
                    } else if (__value__ == (4948793i32)) {
                        _t.errorf(("%s:%d: %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4948664), stdgo.Go.toInterface(_err_4948729));
                        _gotoNext = 4948848i32;
                    } else if (__value__ == (4948848i32)) {
                        readingBreak = true;
                        _gotoNext = 4948704i32;
                    } else if (__value__ == (4949189i32)) {
                        if (((_line_4948723[(0 : stdgo.GoInt)] == (35 : stdgo.GoUInt8)) || (_line_4948723[(0 : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 4949226i32;
                        } else {
                            _gotoNext = 4949254i32;
                        };
                    } else if (__value__ == (4949226i32)) {
                        _gotoNext = 4948704i32;
                    } else if (__value__ == (4949254i32)) {
                        _line_4948723 = (_line_4948723.__slice__(0, ((_line_4948723.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_4949282 = stdgo._internal.regexp.Regexp__notab._notab.findAllString(_line_4948723?.__copy__(), (-1 : stdgo.GoInt));
                        if ((0i32 : stdgo.GoInt) < (_field_4949282.length)) {
                            _gotoNext = 4949488i32;
                        } else {
                            _gotoNext = 4949493i32;
                        };
                    } else if (__value__ == (4949327i32)) {
                        _i_4949327++;
                        _gotoNext = 4949489i32;
                    } else if (__value__ == (4949347i32)) {
                        _f_4949330 = _field_4949282[(_i_4949327 : stdgo.GoInt)]?.__copy__();
                        if (_f_4949330 == (("NULL" : stdgo.GoString))) {
                            _gotoNext = 4949367i32;
                        } else {
                            _gotoNext = 4949395i32;
                        };
                    } else if (__value__ == (4949367i32)) {
                        _field_4949282[(_i_4949327 : stdgo.GoInt)] = stdgo.Go.str()?.__copy__();
                        _gotoNext = 4949395i32;
                    } else if (__value__ == (4949395i32)) {
                        if (_f_4949330 == (("NIL" : stdgo.GoString))) {
                            _gotoNext = 4949409i32;
                        } else {
                            _gotoNext = 4949327i32;
                        };
                    } else if (__value__ == (4949409i32)) {
                        _t.logf(("%s:%d: skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4948664), stdgo.Go.toInterface(_line_4948723));
                        _gotoNext = 4948704i32;
                    } else if (__value__ == (4949488i32)) {
                        {
                            final __tmp__0 = 0i32;
                            final __tmp__1 = _field_4949282[(0i32 : stdgo.GoInt)]?.__copy__();
                            _i_4949327 = __tmp__0;
                            _f_4949330 = __tmp__1;
                        };
                        _gotoNext = 4949489i32;
                    } else if (__value__ == (4949489i32)) {
                        if (_i_4949327 < (_field_4949282.length)) {
                            _gotoNext = 4949347i32;
                        } else {
                            _gotoNext = 4949493i32;
                        };
                    } else if (__value__ == (4949493i32)) {
                        if ((_field_4949282.length) == ((0 : stdgo.GoInt))) {
                            _gotoNext = 4949512i32;
                        } else {
                            _gotoNext = 4952266i32;
                        };
                    } else if (__value__ == (4949512i32)) {
                        _gotoNext = 4948704i32;
                    } else if (__value__ == (4952266i32)) {
                        _flag_4952266 = _field_4949282[(0 : stdgo.GoInt)]?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 4952285i32;
                    } else if (__value__ == (4952285i32)) {
                        {
                            final __value__ = _flag_4952266[(0 : stdgo.GoInt)];
                            if (__value__ == ((63 : stdgo.GoUInt8)) || __value__ == ((38 : stdgo.GoUInt8)) || __value__ == ((124 : stdgo.GoUInt8)) || __value__ == ((59 : stdgo.GoUInt8)) || __value__ == ((123 : stdgo.GoUInt8)) || __value__ == ((125 : stdgo.GoUInt8))) {
                                _gotoNext = 4952304i32;
                            } else if (__value__ == ((58 : stdgo.GoUInt8))) {
                                _gotoNext = 4952472i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8)) || __value__ == ((78 : stdgo.GoUInt8)) || __value__ == ((84 : stdgo.GoUInt8)) || __value__ == ((48 : stdgo.GoUInt8)) || __value__ == ((49 : stdgo.GoUInt8)) || __value__ == ((50 : stdgo.GoUInt8)) || __value__ == ((51 : stdgo.GoUInt8)) || __value__ == ((52 : stdgo.GoUInt8)) || __value__ == ((53 : stdgo.GoUInt8)) || __value__ == ((54 : stdgo.GoUInt8)) || __value__ == ((55 : stdgo.GoUInt8)) || __value__ == ((56 : stdgo.GoUInt8)) || __value__ == ((57 : stdgo.GoUInt8))) {
                                _gotoNext = 4952608i32;
                            } else {
                                _gotoNext = 4952811i32;
                            };
                        };
                    } else if (__value__ == (4952304i32)) {
                        _flag_4952266 = (_flag_4952266.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        if (_flag_4952266 == (stdgo.Go.str())) {
                            _gotoNext = 4952442i32;
                        } else {
                            _gotoNext = 4952811i32;
                        };
                    } else if (__value__ == (4952442i32)) {
                        _gotoNext = 4948704i32;
                    } else if (__value__ == (4952472i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_flag_4952266.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (":" : stdgo.GoString));
                                _flag_4952266 = __tmp__._1?.__copy__();
                                _ok_4952489 = __tmp__._2;
                            };
                            if (!_ok_4952489) {
                                _gotoNext = 4952549i32;
                            } else {
                                _gotoNext = 4952811i32;
                            };
                        };
                    } else if (__value__ == (4952549i32)) {
                        _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line_4948723));
                        _gotoNext = 4948704i32;
                    } else if (__value__ == (4952608i32)) {
                        _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line_4948723));
                        _gotoNext = 4948704i32;
                    } else if (__value__ == (4952811i32)) {
                        if (((_field_4949282.length) < (4 : stdgo.GoInt) : Bool)) {
                            _gotoNext = 4952829i32;
                        } else {
                            _gotoNext = 4952962i32;
                        };
                    } else if (__value__ == (4952829i32)) {
                        _t.errorf(("%s:%d: too few fields: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4948664), stdgo.Go.toInterface(_line_4948723));
                        _gotoNext = 4948704i32;
                    } else if (__value__ == (4952962i32)) {
                        if (stdgo._internal.strings.Strings_contains.contains(_flag_4952266?.__copy__(), ("$" : stdgo.GoString))) {
                            _gotoNext = 4952993i32;
                        } else {
                            _gotoNext = 4953412i32;
                        };
                    } else if (__value__ == (4952993i32)) {
                        _f_4952998 = ((("\"" : stdgo.GoString) + _field_4949282[(1 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_f_4952998?.__copy__());
                                _field_4949282[(1 : stdgo.GoInt)] = __tmp__._0?.__copy__();
                                _err_4948729 = __tmp__._1;
                            };
                            if (_err_4948729 != null) {
                                _gotoNext = 4953077i32;
                            } else {
                                _gotoNext = 4953145i32;
                            };
                        };
                    } else if (__value__ == (4953077i32)) {
                        _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4948664), stdgo.Go.toInterface(_f_4952998));
                        _gotoNext = 4953145i32;
                    } else if (__value__ == (4953145i32)) {
                        _f_4952998 = ((("\"" : stdgo.GoString) + _field_4949282[(2 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_f_4952998?.__copy__());
                                _field_4949282[(2 : stdgo.GoInt)] = __tmp__._0?.__copy__();
                                _err_4948729 = __tmp__._1;
                            };
                            if (_err_4948729 != null) {
                                _gotoNext = 4953223i32;
                            } else {
                                _gotoNext = 4953412i32;
                            };
                        };
                    } else if (__value__ == (4953223i32)) {
                        _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4948664), stdgo.Go.toInterface(_f_4952998));
                        _gotoNext = 4953412i32;
                    } else if (__value__ == (4953412i32)) {
                        if (_field_4949282[(1 : stdgo.GoInt)] == (("SAME" : stdgo.GoString))) {
                            _gotoNext = 4953434i32;
                        } else {
                            _gotoNext = 4953467i32;
                        };
                    } else if (__value__ == (4953434i32)) {
                        _field_4949282[(1 : stdgo.GoInt)] = _lastRegexp_4948677?.__copy__();
                        _gotoNext = 4953467i32;
                    } else if (__value__ == (4953467i32)) {
                        _lastRegexp_4948677 = _field_4949282[(1 : stdgo.GoInt)]?.__copy__();
                        _text_4953529 = _field_4949282[(2 : stdgo.GoInt)]?.__copy__();
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp__parseFowlerResult._parseFowlerResult(_field_4949282[(3 : stdgo.GoInt)]?.__copy__());
                            _ok_4953585 = __tmp__._0;
                            _shouldCompile_4953589 = __tmp__._1;
                            _shouldMatch_4953604 = __tmp__._2;
                            _pos_4953617 = __tmp__._3;
                        };
                        if (!_ok_4953585) {
                            _gotoNext = 4953661i32;
                        } else {
                            _gotoNext = 4953817i32;
                        };
                    } else if (__value__ == (4953661i32)) {
                        _t.errorf(("%s:%d: cannot parse result %#q" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4948664), stdgo.Go.toInterface(_field_4949282[(3 : stdgo.GoInt)]));
                        _gotoNext = 4948704i32;
                    } else if (__value__ == (4953817i32)) {
                        _gotoNext = 4953817i32;
                        _keys_4953903 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                        _values_4953903 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                        for (_key => _value in _flag_4952266) {
                            _keys_4953903 = (_keys_4953903.__append__(_key));
                            _values_4953903 = (_values_4953903.__append__(_value));
                        };
                        if ((0i32 : stdgo.GoInt) < (_keys_4953903.length)) {
                            _gotoNext = 4955182i32;
                        } else {
                            _gotoNext = 4955188i32;
                        };
                    } else if (__value__ == (4953915i32)) {
                        _i_4953915++;
                        _gotoNext = 4955183i32;
                    } else if (__value__ == (4953926i32)) {
                        _c_4953910 = _values_4953903[@:invalid_index_invalid_type _i_4953915];
                        var __blank__ = _keys_4953903[@:invalid_index_invalid_type _i_4953915];
                        _pattern_4953931 = _field_4949282[(1 : stdgo.GoInt)]?.__copy__();
                        _syn_4953954 = (4 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        var __blank__ = 0i32;
                        _gotoNext = 4953994i32;
                    } else if (__value__ == (4953994i32)) {
                        {
                            final __value__ = _c_4953910;
                            if (__value__ == ((69 : stdgo.GoInt32))) {
                                _gotoNext = 4954041i32;
                            } else if (__value__ == ((76 : stdgo.GoInt32))) {
                                _gotoNext = 4954095i32;
                            } else {
                                _gotoNext = 4954008i32;
                            };
                        };
                    } else if (__value__ == (4954008i32)) {
                        _i_4953915++;
                        _gotoNext = 4955183i32;
                    } else if (__value__ == (4954041i32)) {
                        _gotoNext = 4954162i32;
                    } else if (__value__ == (4954095i32)) {
                        _pattern_4953931 = stdgo._internal.regexp.Regexp_quoteMeta.quoteMeta(_pattern_4953931?.__copy__())?.__copy__();
                        _gotoNext = 4954162i32;
                    } else if (__value__ == (4954162i32)) {
                        _keys_4954162 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                        _values_4954162 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                        for (_key => _value in _flag_4952266) {
                            _keys_4954162 = (_keys_4954162.__append__(_key));
                            _values_4954162 = (_values_4954162.__append__(_value));
                        };
                        if ((0i32 : stdgo.GoInt) < (_keys_4954162.length)) {
                            _gotoNext = 4954252i32;
                        } else {
                            _gotoNext = 4954259i32;
                        };
                    } else if (__value__ == (4954174i32)) {
                        _i_4954174++;
                        _gotoNext = 4954253i32;
                    } else if (__value__ == (4954185i32)) {
                        _c_4954169 = _values_4954162[@:invalid_index_invalid_type _i_4954174];
                        var __blank__ = _keys_4954162[@:invalid_index_invalid_type _i_4954174];
                        var __blank__ = 0i32;
                        _gotoNext = 4954191i32;
                    } else if (__value__ == (4954191i32)) {
                        {
                            final __value__ = _c_4954169;
                            if (__value__ == ((105 : stdgo.GoInt32))) {
                                _gotoNext = 4954206i32;
                            } else {
                                _gotoNext = 4954174i32;
                            };
                        };
                    } else if (__value__ == (4954206i32)) {
                        _syn_4953954 = (_syn_4953954 | ((1 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 4954174i32;
                    } else if (__value__ == (4954252i32)) {
                        _i_4954174 = 0i32;
                        _gotoNext = 4954253i32;
                    } else if (__value__ == (4954253i32)) {
                        if (_i_4954174 < (_keys_4954162.length)) {
                            _gotoNext = 4954185i32;
                        } else {
                            _gotoNext = 4954259i32;
                        };
                    } else if (__value__ == (4954259i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp__compile._compile(_pattern_4953931?.__copy__(), _syn_4953954, true);
                            _re_4954259 = __tmp__._0;
                            _err_4954263 = __tmp__._1;
                        };
                        if (_err_4954263 != null) {
                            _gotoNext = 4954315i32;
                        } else {
                            _gotoNext = 4954442i32;
                        };
                    } else if (__value__ == (4954315i32)) {
                        if (_shouldCompile_4953589) {
                            _gotoNext = 4954338i32;
                        } else {
                            _gotoNext = 4954417i32;
                        };
                    } else if (__value__ == (4954338i32)) {
                        _t.errorf(("%s:%d: %#q did not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4948664), stdgo.Go.toInterface(_pattern_4953931));
                        _gotoNext = 4954417i32;
                    } else if (__value__ == (4954417i32)) {
                        _i_4953915++;
                        _gotoNext = 4955183i32;
                    } else if (__value__ == (4954442i32)) {
                        if (!_shouldCompile_4953589) {
                            _gotoNext = 4954460i32;
                        } else {
                            _gotoNext = 4954560i32;
                        };
                    } else if (__value__ == (4954460i32)) {
                        _t.errorf(("%s:%d: %#q should not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4948664), stdgo.Go.toInterface(_pattern_4953931));
                        _i_4953915++;
                        _gotoNext = 4955183i32;
                    } else if (__value__ == (4954560i32)) {
                        _match_4954560 = _re_4954259.matchString(_text_4953529?.__copy__());
                        if (_match_4954560 != (_shouldMatch_4953604)) {
                            _gotoNext = 4954617i32;
                        } else {
                            _gotoNext = 4954749i32;
                        };
                    } else if (__value__ == (4954617i32)) {
                        _t.errorf(("%s:%d: %#q.Match(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4948664), stdgo.Go.toInterface(_pattern_4953931), stdgo.Go.toInterface(_text_4953529), stdgo.Go.toInterface(_match_4954560), stdgo.Go.toInterface(_shouldMatch_4953604));
                        _i_4953915++;
                        _gotoNext = 4955183i32;
                    } else if (__value__ == (4954749i32)) {
                        _have_4954749 = _re_4954259.findStringSubmatchIndex(_text_4953529?.__copy__());
                        if ((((_have_4954749.length) > (0 : stdgo.GoInt) : Bool)) != (_match_4954560)) {
                            _gotoNext = 4954821i32;
                        } else {
                            _gotoNext = 4954989i32;
                        };
                    } else if (__value__ == (4954821i32)) {
                        _t.errorf(("%s:%d: %#q.Match(%#q) = %v, but %#q.FindSubmatchIndex(%#q) = %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4948664), stdgo.Go.toInterface(_pattern_4953931), stdgo.Go.toInterface(_text_4953529), stdgo.Go.toInterface(_match_4954560), stdgo.Go.toInterface(_pattern_4953931), stdgo.Go.toInterface(_text_4953529), stdgo.Go.toInterface(_have_4954749));
                        _i_4953915++;
                        _gotoNext = 4955183i32;
                    } else if (__value__ == (4954989i32)) {
                        if (((_have_4954749.length) > (_pos_4953617.length) : Bool)) {
                            _gotoNext = 4955013i32;
                        } else {
                            _gotoNext = 4955050i32;
                        };
                    } else if (__value__ == (4955013i32)) {
                        _have_4954749 = (_have_4954749.__slice__(0, (_pos_4953617.length)) : stdgo.Slice<stdgo.GoInt>);
                        _gotoNext = 4955050i32;
                    } else if (__value__ == (4955050i32)) {
                        if (!stdgo._internal.regexp.Regexp__same._same(_have_4954749, _pos_4953617)) {
                            _gotoNext = 4955070i32;
                        } else {
                            _gotoNext = 4953915i32;
                        };
                    } else if (__value__ == (4955070i32)) {
                        _t.errorf(("%s:%d: %#q.FindSubmatchIndex(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4948664), stdgo.Go.toInterface(_pattern_4953931), stdgo.Go.toInterface(_text_4953529), stdgo.Go.toInterface(_have_4954749), stdgo.Go.toInterface(_pos_4953617));
                        _gotoNext = 4953915i32;
                    } else if (__value__ == (4955182i32)) {
                        _i_4953915 = 0i32;
                        _gotoNext = 4955183i32;
                    } else if (__value__ == (4955183i32)) {
                        if (_i_4953915 < (_keys_4953903.length)) {
                            _gotoNext = 4953926i32;
                        } else {
                            _gotoNext = 4955188i32;
                        };
                    } else if (__value__ == (4955188i32)) {
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
