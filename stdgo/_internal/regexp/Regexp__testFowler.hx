package stdgo._internal.regexp;
function _testFowler(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _file:stdgo.GoString):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _shouldMatch_4846053:Bool = false;
            var _keys_4846352 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            var _ok_4846034:Bool = false;
            var _lineno_4841113:stdgo.GoInt = (0 : stdgo.GoInt);
            var _b_4841088:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
            var _err_4841005:stdgo.Error = (null : stdgo.Error);
            var _re_4846708:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
            var _line_4841172:stdgo.GoString = ("" : stdgo.GoString);
            var _f_4845447:stdgo.GoString = ("" : stdgo.GoString);
            var _f_4841779:stdgo.GoString = ("" : stdgo.GoString);
            var _i_4841776:stdgo.GoInt = (0 : stdgo.GoInt);
            var _pattern_4846380:stdgo.GoString = ("" : stdgo.GoString);
            var _c_4846359:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _err_4846712:stdgo.Error = (null : stdgo.Error);
            var _flag_4844715:stdgo.GoString = ("" : stdgo.GoString);
            var _pos_4846066:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            var _ok_4844938:Bool = false;
            var readingBreak = false;
            var _have_4847198:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            var _match_4847009:Bool = false;
            var _values_4846611 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var _shouldCompile_4846038:Bool = false;
            var _text_4845978:stdgo.GoString = ("" : stdgo.GoString);
            var _field_4841731:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
            var _c_4846618:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _keys_4846611 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            var _i_4846623 = @:invalid_type null;
            var _syn_4846403:stdgo._internal.regexp.syntax.Syntax_Flags.Flags = ((0 : stdgo.GoUInt16) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
            var _i_4846364 = @:invalid_type null;
            var _err_4841178:stdgo.Error = (null : stdgo.Error);
            var _lastRegexp_4841126:stdgo.GoString = ("" : stdgo.GoString);
            var _f_4841002:stdgo.Ref<stdgo._internal.os.Os_File.File> = (null : stdgo.Ref<stdgo._internal.os.Os_File.File>);
            var _values_4846352 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var _gotoNext = 0i32;
            var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
            while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
                {
                    final __value__ = _gotoNext;
                    if (__value__ == (0i32)) {
                        {
                            var __tmp__ = stdgo._internal.os.Os_open.open(_file?.__copy__());
                            _f_4841002 = __tmp__._0;
                            _err_4841005 = __tmp__._1;
                        };
                        if (_err_4841005 != null) {
                            _gotoNext = 4841041i32;
                        } else {
                            _gotoNext = 4841071i32;
                        };
                    } else if (__value__ == (4841041i32)) {
                        _t.error(stdgo.Go.toInterface(_err_4841005));
                        return;
                        _gotoNext = 4841071i32;
                    } else if (__value__ == (4841071i32)) {
                        {
                            final __f__ = _f_4841002.close;
                            __deferstack__.unshift(() -> __f__());
                        };
                        _b_4841088 = stdgo._internal.bufio.Bufio_newReader.newReader(stdgo.Go.asInterface(_f_4841002));
                        _lineno_4841113 = (0 : stdgo.GoInt);
                        _lastRegexp_4841126 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 4841143i32;
                    } else if (__value__ == (4841143i32)) {
                        var __blank__ = 0i32;
                        readingBreak = false;
                        _gotoNext = 4841153i32;
                    } else if (__value__ == (4841153i32)) {
                        if (!readingBreak) {
                            _gotoNext = 4841157i32;
                        } else {
                            _gotoNext = 4847637i32;
                        };
                    } else if (__value__ == (4841157i32)) {
                        _lineno_4841113++;
                        {
                            var __tmp__ = _b_4841088.readString((10 : stdgo.GoUInt8));
                            _line_4841172 = __tmp__._0?.__copy__();
                            _err_4841178 = __tmp__._1;
                        };
                        if (_err_4841178 != null) {
                            _gotoNext = 4841220i32;
                        } else {
                            _gotoNext = 4841638i32;
                        };
                    } else if (__value__ == (4841220i32)) {
                        if (stdgo.Go.toInterface(_err_4841178) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                            _gotoNext = 4841242i32;
                        } else {
                            _gotoNext = 4841297i32;
                        };
                    } else if (__value__ == (4841242i32)) {
                        _t.errorf(("%s:%d: %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4841113), stdgo.Go.toInterface(_err_4841178));
                        _gotoNext = 4841297i32;
                    } else if (__value__ == (4841297i32)) {
                        readingBreak = true;
                        _gotoNext = 4841153i32;
                    } else if (__value__ == (4841638i32)) {
                        if (((_line_4841172[(0 : stdgo.GoInt)] == (35 : stdgo.GoUInt8)) || (_line_4841172[(0 : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 4841675i32;
                        } else {
                            _gotoNext = 4841703i32;
                        };
                    } else if (__value__ == (4841675i32)) {
                        _gotoNext = 4841153i32;
                    } else if (__value__ == (4841703i32)) {
                        _line_4841172 = (_line_4841172.__slice__(0, ((_line_4841172.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_4841731 = stdgo._internal.regexp.Regexp__notab._notab.findAllString(_line_4841172?.__copy__(), (-1 : stdgo.GoInt));
                        if ((0i32 : stdgo.GoInt) < (_field_4841731.length)) {
                            _gotoNext = 4841937i32;
                        } else {
                            _gotoNext = 4841942i32;
                        };
                    } else if (__value__ == (4841776i32)) {
                        _i_4841776++;
                        _gotoNext = 4841938i32;
                    } else if (__value__ == (4841796i32)) {
                        _f_4841779 = _field_4841731[(_i_4841776 : stdgo.GoInt)]?.__copy__();
                        if (_f_4841779 == (("NULL" : stdgo.GoString))) {
                            _gotoNext = 4841816i32;
                        } else {
                            _gotoNext = 4841844i32;
                        };
                    } else if (__value__ == (4841816i32)) {
                        _field_4841731[(_i_4841776 : stdgo.GoInt)] = stdgo.Go.str()?.__copy__();
                        _gotoNext = 4841844i32;
                    } else if (__value__ == (4841844i32)) {
                        if (_f_4841779 == (("NIL" : stdgo.GoString))) {
                            _gotoNext = 4841858i32;
                        } else {
                            _gotoNext = 4841776i32;
                        };
                    } else if (__value__ == (4841858i32)) {
                        _t.logf(("%s:%d: skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4841113), stdgo.Go.toInterface(_line_4841172));
                        _gotoNext = 4841153i32;
                    } else if (__value__ == (4841937i32)) {
                        {
                            final __tmp__0 = 0i32;
                            final __tmp__1 = _field_4841731[(0i32 : stdgo.GoInt)]?.__copy__();
                            _i_4841776 = __tmp__0;
                            _f_4841779 = __tmp__1;
                        };
                        _gotoNext = 4841938i32;
                    } else if (__value__ == (4841938i32)) {
                        if (_i_4841776 < (_field_4841731.length)) {
                            _gotoNext = 4841796i32;
                        } else {
                            _gotoNext = 4841942i32;
                        };
                    } else if (__value__ == (4841942i32)) {
                        if ((_field_4841731.length) == ((0 : stdgo.GoInt))) {
                            _gotoNext = 4841961i32;
                        } else {
                            _gotoNext = 4844715i32;
                        };
                    } else if (__value__ == (4841961i32)) {
                        _gotoNext = 4841153i32;
                    } else if (__value__ == (4844715i32)) {
                        _flag_4844715 = _field_4841731[(0 : stdgo.GoInt)]?.__copy__();
                        _gotoNext = 4844734i32;
                    } else if (__value__ == (4844734i32)) {
                        {
                            final __value__ = _flag_4844715[(0 : stdgo.GoInt)];
                            if (__value__ == ((63 : stdgo.GoUInt8)) || __value__ == ((38 : stdgo.GoUInt8)) || __value__ == ((124 : stdgo.GoUInt8)) || __value__ == ((59 : stdgo.GoUInt8)) || __value__ == ((123 : stdgo.GoUInt8)) || __value__ == ((125 : stdgo.GoUInt8))) {
                                _gotoNext = 4844753i32;
                            } else if (__value__ == ((58 : stdgo.GoUInt8))) {
                                _gotoNext = 4844921i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8)) || __value__ == ((78 : stdgo.GoUInt8)) || __value__ == ((84 : stdgo.GoUInt8)) || __value__ == ((48 : stdgo.GoUInt8)) || __value__ == ((49 : stdgo.GoUInt8)) || __value__ == ((50 : stdgo.GoUInt8)) || __value__ == ((51 : stdgo.GoUInt8)) || __value__ == ((52 : stdgo.GoUInt8)) || __value__ == ((53 : stdgo.GoUInt8)) || __value__ == ((54 : stdgo.GoUInt8)) || __value__ == ((55 : stdgo.GoUInt8)) || __value__ == ((56 : stdgo.GoUInt8)) || __value__ == ((57 : stdgo.GoUInt8))) {
                                _gotoNext = 4845057i32;
                            } else {
                                _gotoNext = 4845260i32;
                            };
                        };
                    } else if (__value__ == (4844753i32)) {
                        _flag_4844715 = (_flag_4844715.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        if (_flag_4844715 == (stdgo.Go.str())) {
                            _gotoNext = 4844891i32;
                        } else {
                            _gotoNext = 4845260i32;
                        };
                    } else if (__value__ == (4844891i32)) {
                        _gotoNext = 4841153i32;
                    } else if (__value__ == (4844921i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_flag_4844715.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (":" : stdgo.GoString));
                                _flag_4844715 = __tmp__._1?.__copy__();
                                _ok_4844938 = __tmp__._2;
                            };
                            if (!_ok_4844938) {
                                _gotoNext = 4844998i32;
                            } else {
                                _gotoNext = 4845260i32;
                            };
                        };
                    } else if (__value__ == (4844998i32)) {
                        _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line_4841172));
                        _gotoNext = 4841153i32;
                    } else if (__value__ == (4845057i32)) {
                        _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line_4841172));
                        _gotoNext = 4841153i32;
                    } else if (__value__ == (4845260i32)) {
                        if (((_field_4841731.length) < (4 : stdgo.GoInt) : Bool)) {
                            _gotoNext = 4845278i32;
                        } else {
                            _gotoNext = 4845411i32;
                        };
                    } else if (__value__ == (4845278i32)) {
                        _t.errorf(("%s:%d: too few fields: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4841113), stdgo.Go.toInterface(_line_4841172));
                        _gotoNext = 4841153i32;
                    } else if (__value__ == (4845411i32)) {
                        if (stdgo._internal.strings.Strings_contains.contains(_flag_4844715?.__copy__(), ("$" : stdgo.GoString))) {
                            _gotoNext = 4845442i32;
                        } else {
                            _gotoNext = 4845861i32;
                        };
                    } else if (__value__ == (4845442i32)) {
                        _f_4845447 = ((("\"" : stdgo.GoString) + _field_4841731[(1 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_f_4845447?.__copy__());
                                _field_4841731[(1 : stdgo.GoInt)] = __tmp__._0?.__copy__();
                                _err_4841178 = __tmp__._1;
                            };
                            if (_err_4841178 != null) {
                                _gotoNext = 4845526i32;
                            } else {
                                _gotoNext = 4845594i32;
                            };
                        };
                    } else if (__value__ == (4845526i32)) {
                        _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4841113), stdgo.Go.toInterface(_f_4845447));
                        _gotoNext = 4845594i32;
                    } else if (__value__ == (4845594i32)) {
                        _f_4845447 = ((("\"" : stdgo.GoString) + _field_4841731[(2 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_f_4845447?.__copy__());
                                _field_4841731[(2 : stdgo.GoInt)] = __tmp__._0?.__copy__();
                                _err_4841178 = __tmp__._1;
                            };
                            if (_err_4841178 != null) {
                                _gotoNext = 4845672i32;
                            } else {
                                _gotoNext = 4845861i32;
                            };
                        };
                    } else if (__value__ == (4845672i32)) {
                        _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4841113), stdgo.Go.toInterface(_f_4845447));
                        _gotoNext = 4845861i32;
                    } else if (__value__ == (4845861i32)) {
                        if (_field_4841731[(1 : stdgo.GoInt)] == (("SAME" : stdgo.GoString))) {
                            _gotoNext = 4845883i32;
                        } else {
                            _gotoNext = 4845916i32;
                        };
                    } else if (__value__ == (4845883i32)) {
                        _field_4841731[(1 : stdgo.GoInt)] = _lastRegexp_4841126?.__copy__();
                        _gotoNext = 4845916i32;
                    } else if (__value__ == (4845916i32)) {
                        _lastRegexp_4841126 = _field_4841731[(1 : stdgo.GoInt)]?.__copy__();
                        _text_4845978 = _field_4841731[(2 : stdgo.GoInt)]?.__copy__();
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp__parseFowlerResult._parseFowlerResult(_field_4841731[(3 : stdgo.GoInt)]?.__copy__());
                            _ok_4846034 = __tmp__._0;
                            _shouldCompile_4846038 = __tmp__._1;
                            _shouldMatch_4846053 = __tmp__._2;
                            _pos_4846066 = __tmp__._3;
                        };
                        if (!_ok_4846034) {
                            _gotoNext = 4846110i32;
                        } else {
                            _gotoNext = 4846266i32;
                        };
                    } else if (__value__ == (4846110i32)) {
                        _t.errorf(("%s:%d: cannot parse result %#q" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4841113), stdgo.Go.toInterface(_field_4841731[(3 : stdgo.GoInt)]));
                        _gotoNext = 4841153i32;
                    } else if (__value__ == (4846266i32)) {
                        _gotoNext = 4846266i32;
                        _keys_4846352 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                        _values_4846352 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                        for (_key => _value in _flag_4844715) {
                            _keys_4846352 = (_keys_4846352.__append__(_key));
                            _values_4846352 = (_values_4846352.__append__(_value));
                        };
                        if ((0i32 : stdgo.GoInt) < (_keys_4846352.length)) {
                            _gotoNext = 4847631i32;
                        } else {
                            _gotoNext = 4841153i32;
                        };
                    } else if (__value__ == (4846364i32)) {
                        _i_4846364++;
                        _gotoNext = 4847632i32;
                    } else if (__value__ == (4846375i32)) {
                        _c_4846359 = _values_4846352[@:invalid_index_invalid_type _i_4846364];
                        var __blank__ = _keys_4846352[@:invalid_index_invalid_type _i_4846364];
                        _pattern_4846380 = _field_4841731[(1 : stdgo.GoInt)]?.__copy__();
                        _syn_4846403 = (4 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 4846443i32;
                    } else if (__value__ == (4846443i32)) {
                        {
                            final __value__ = _c_4846359;
                            if (__value__ == ((69 : stdgo.GoInt32))) {
                                _gotoNext = 4846490i32;
                            } else if (__value__ == ((76 : stdgo.GoInt32))) {
                                _gotoNext = 4846544i32;
                            } else {
                                _gotoNext = 4846457i32;
                            };
                        };
                    } else if (__value__ == (4846457i32)) {
                        _i_4846364++;
                        _gotoNext = 4847632i32;
                    } else if (__value__ == (4846490i32)) {
                        _gotoNext = 4846611i32;
                    } else if (__value__ == (4846544i32)) {
                        _pattern_4846380 = stdgo._internal.regexp.Regexp_quoteMeta.quoteMeta(_pattern_4846380?.__copy__())?.__copy__();
                        _gotoNext = 4846611i32;
                    } else if (__value__ == (4846611i32)) {
                        _keys_4846611 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                        _values_4846611 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                        for (_key => _value in _flag_4844715) {
                            _keys_4846611 = (_keys_4846611.__append__(_key));
                            _values_4846611 = (_values_4846611.__append__(_value));
                        };
                        if ((0i32 : stdgo.GoInt) < (_keys_4846611.length)) {
                            _gotoNext = 4846701i32;
                        } else {
                            _gotoNext = 4846708i32;
                        };
                    } else if (__value__ == (4846623i32)) {
                        _i_4846623++;
                        _gotoNext = 4846702i32;
                    } else if (__value__ == (4846634i32)) {
                        _c_4846618 = _values_4846611[@:invalid_index_invalid_type _i_4846623];
                        var __blank__ = _keys_4846611[@:invalid_index_invalid_type _i_4846623];
                        _gotoNext = 4846640i32;
                    } else if (__value__ == (4846640i32)) {
                        {
                            final __value__ = _c_4846618;
                            if (__value__ == ((105 : stdgo.GoInt32))) {
                                _gotoNext = 4846655i32;
                            } else {
                                _gotoNext = 4846623i32;
                            };
                        };
                    } else if (__value__ == (4846655i32)) {
                        _syn_4846403 = (_syn_4846403 | ((1 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 4846623i32;
                    } else if (__value__ == (4846701i32)) {
                        _i_4846623 = 0i32;
                        _gotoNext = 4846702i32;
                    } else if (__value__ == (4846702i32)) {
                        if (_i_4846623 < (_keys_4846611.length)) {
                            _gotoNext = 4846634i32;
                        } else {
                            _gotoNext = 4846708i32;
                        };
                    } else if (__value__ == (4846708i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp__compile._compile(_pattern_4846380?.__copy__(), _syn_4846403, true);
                            _re_4846708 = __tmp__._0;
                            _err_4846712 = __tmp__._1;
                        };
                        if (_err_4846712 != null) {
                            _gotoNext = 4846764i32;
                        } else {
                            _gotoNext = 4846891i32;
                        };
                    } else if (__value__ == (4846764i32)) {
                        if (_shouldCompile_4846038) {
                            _gotoNext = 4846787i32;
                        } else {
                            _gotoNext = 4846866i32;
                        };
                    } else if (__value__ == (4846787i32)) {
                        _t.errorf(("%s:%d: %#q did not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4841113), stdgo.Go.toInterface(_pattern_4846380));
                        _gotoNext = 4846866i32;
                    } else if (__value__ == (4846866i32)) {
                        _i_4846364++;
                        _gotoNext = 4847632i32;
                    } else if (__value__ == (4846891i32)) {
                        if (!_shouldCompile_4846038) {
                            _gotoNext = 4846909i32;
                        } else {
                            _gotoNext = 4847009i32;
                        };
                    } else if (__value__ == (4846909i32)) {
                        _t.errorf(("%s:%d: %#q should not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4841113), stdgo.Go.toInterface(_pattern_4846380));
                        _i_4846364++;
                        _gotoNext = 4847632i32;
                    } else if (__value__ == (4847009i32)) {
                        _match_4847009 = _re_4846708.matchString(_text_4845978?.__copy__());
                        if (_match_4847009 != (_shouldMatch_4846053)) {
                            _gotoNext = 4847066i32;
                        } else {
                            _gotoNext = 4847198i32;
                        };
                    } else if (__value__ == (4847066i32)) {
                        _t.errorf(("%s:%d: %#q.Match(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4841113), stdgo.Go.toInterface(_pattern_4846380), stdgo.Go.toInterface(_text_4845978), stdgo.Go.toInterface(_match_4847009), stdgo.Go.toInterface(_shouldMatch_4846053));
                        _i_4846364++;
                        _gotoNext = 4847632i32;
                    } else if (__value__ == (4847198i32)) {
                        _have_4847198 = _re_4846708.findStringSubmatchIndex(_text_4845978?.__copy__());
                        if ((((_have_4847198.length) > (0 : stdgo.GoInt) : Bool)) != (_match_4847009)) {
                            _gotoNext = 4847270i32;
                        } else {
                            _gotoNext = 4847438i32;
                        };
                    } else if (__value__ == (4847270i32)) {
                        _t.errorf(("%s:%d: %#q.Match(%#q) = %v, but %#q.FindSubmatchIndex(%#q) = %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4841113), stdgo.Go.toInterface(_pattern_4846380), stdgo.Go.toInterface(_text_4845978), stdgo.Go.toInterface(_match_4847009), stdgo.Go.toInterface(_pattern_4846380), stdgo.Go.toInterface(_text_4845978), stdgo.Go.toInterface(_have_4847198));
                        _i_4846364++;
                        _gotoNext = 4847632i32;
                    } else if (__value__ == (4847438i32)) {
                        if (((_have_4847198.length) > (_pos_4846066.length) : Bool)) {
                            _gotoNext = 4847462i32;
                        } else {
                            _gotoNext = 4847499i32;
                        };
                    } else if (__value__ == (4847462i32)) {
                        _have_4847198 = (_have_4847198.__slice__(0, (_pos_4846066.length)) : stdgo.Slice<stdgo.GoInt>);
                        _gotoNext = 4847499i32;
                    } else if (__value__ == (4847499i32)) {
                        if (!stdgo._internal.regexp.Regexp__same._same(_have_4847198, _pos_4846066)) {
                            _gotoNext = 4847519i32;
                        } else {
                            _gotoNext = 4846364i32;
                        };
                    } else if (__value__ == (4847519i32)) {
                        _t.errorf(("%s:%d: %#q.FindSubmatchIndex(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4841113), stdgo.Go.toInterface(_pattern_4846380), stdgo.Go.toInterface(_text_4845978), stdgo.Go.toInterface(_have_4847198), stdgo.Go.toInterface(_pos_4846066));
                        _gotoNext = 4846364i32;
                    } else if (__value__ == (4847631i32)) {
                        _i_4846364 = 0i32;
                        _gotoNext = 4847632i32;
                    } else if (__value__ == (4847632i32)) {
                        if (_i_4846364 < (_keys_4846352.length)) {
                            _gotoNext = 4846375i32;
                        } else {
                            _gotoNext = 4841153i32;
                        };
                    } else if (__value__ == (4847637i32)) {
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
