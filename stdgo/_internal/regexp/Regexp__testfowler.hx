package stdgo._internal.regexp;
function _testFowler(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _file:stdgo.GoString):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _values_4989608 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var _lastRegexp_43:stdgo.GoString = ("" : stdgo.GoString);
            var _b_41:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>);
            var _f_39:stdgo.Ref<stdgo._internal.os.Os_file.File> = (null : stdgo.Ref<stdgo._internal.os.Os_file.File>);
            var _match_63:Bool = false;
            var _c_57:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _shouldCompile_54:Bool = false;
            var _ok_50:Bool = false;
            var _line_44:stdgo.GoString = ("" : stdgo.GoString);
            var _err_40:stdgo.Error = (null : stdgo.Error);
            var _c_60:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _pattern_58:stdgo.GoString = ("" : stdgo.GoString);
            var _keys_4989608 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            var _f_48:stdgo.GoString = ("" : stdgo.GoString);
            var _err_45:stdgo.Error = (null : stdgo.Error);
            var _values_4989867 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var _syn_59:stdgo._internal.regexp.syntax.Syntax_flags.Flags = ((0 : stdgo.GoUInt16) : stdgo._internal.regexp.syntax.Syntax_flags.Flags);
            var _pos_56:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            var _f_51:stdgo.GoString = ("" : stdgo.GoString);
            var _lineno_42:stdgo.GoInt = (0 : stdgo.GoInt);
            var _re_61:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
            var _iterator_4989879 = @:invalid_type null;
            var _shouldMatch_55:Bool = false;
            var _flag_49:stdgo.GoString = ("" : stdgo.GoString);
            var _err_62:stdgo.Error = (null : stdgo.Error);
            var _field_46:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
            var readingBreak = false;
            var _keys_4989867 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            var _ok_53:Bool = false;
            var _text_52:stdgo.GoString = ("" : stdgo.GoString);
            var _have_64:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            var _iterator_4989620 = @:invalid_type null;
            var _i_47:stdgo.GoInt = (0 : stdgo.GoInt);
            var _gotoNext = 0i32;
            _gotoNext == ((0i32 : stdgo.GoInt));
            while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
                {
                    final __value__ = _gotoNext;
                    if (__value__ == (0i32)) {
                        {
                            var __tmp__ = stdgo._internal.os.Os_open.open(_file?.__copy__());
                            _f_39 = @:tmpset0 __tmp__._0;
                            _err_40 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_40 != null) {
                            _gotoNext = 4984297i32;
                        } else {
                            _gotoNext = 4984327i32;
                        };
                    } else if (__value__ == (4984297i32)) {
                        @:check2r _t.error(stdgo.Go.toInterface(_err_40));
                        return;
                        _gotoNext = 4984327i32;
                    } else if (__value__ == (4984327i32)) {
                        {
                            final __f__ = @:check2r _f_39.close;
                            __deferstack__.unshift({ ran : false, f : () -> __f__() });
                        };
                        _b_41 = stdgo._internal.bufio.Bufio_newreader.newReader(stdgo.Go.asInterface(_f_39));
                        _lineno_42 = (0 : stdgo.GoInt);
                        _lastRegexp_43 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _gotoNext = 4984399i32;
                    } else if (__value__ == (4984399i32)) {
                        0i32;
                        readingBreak = false;
                        _gotoNext = 4984409i32;
                    } else if (__value__ == (4984409i32)) {
                        if (!readingBreak) {
                            _gotoNext = 4984413i32;
                        } else {
                            _gotoNext = 4990893i32;
                        };
                    } else if (__value__ == (4984413i32)) {
                        _lineno_42++;
                        {
                            var __tmp__ = @:check2r _b_41.readString((10 : stdgo.GoUInt8));
                            _line_44 = @:tmpset0 __tmp__._0?.__copy__();
                            _err_45 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_45 != null) {
                            _gotoNext = 4984476i32;
                        } else {
                            _gotoNext = 4984894i32;
                        };
                    } else if (__value__ == (4984476i32)) {
                        if (stdgo.Go.toInterface(_err_45) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                            _gotoNext = 4984498i32;
                        } else {
                            _gotoNext = 4984553i32;
                        };
                    } else if (__value__ == (4984498i32)) {
                        @:check2r _t.errorf(("%s:%d: %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_42), stdgo.Go.toInterface(_err_45));
                        _gotoNext = 4984553i32;
                    } else if (__value__ == (4984553i32)) {
                        readingBreak = true;
                        _gotoNext = 4984409i32;
                    } else if (__value__ == (4984894i32)) {
                        if (((_line_44[(0 : stdgo.GoInt)] == (35 : stdgo.GoUInt8)) || (_line_44[(0 : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 4984931i32;
                        } else {
                            _gotoNext = 4984959i32;
                        };
                    } else if (__value__ == (4984931i32)) {
                        _gotoNext = 4984409i32;
                    } else if (__value__ == (4984959i32)) {
                        _line_44 = (_line_44.__slice__(0, ((_line_44.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_46 = @:check2r stdgo._internal.regexp.Regexp__notab._notab.findAllString(_line_44?.__copy__(), (-1 : stdgo.GoInt));
                        if ((0i32 : stdgo.GoInt) < (_field_46.length)) {
                            _gotoNext = 4985193i32;
                        } else {
                            _gotoNext = 4985198i32;
                        };
                    } else if (__value__ == (4985032i32)) {
                        _i_47++;
                        _gotoNext = 4985194i32;
                    } else if (__value__ == (4985052i32)) {
                        _f_48 = _field_46[(_i_47 : stdgo.GoInt)]?.__copy__();
                        if (_f_48 == (("NULL" : stdgo.GoString))) {
                            _gotoNext = 4985072i32;
                        } else {
                            _gotoNext = 4985100i32;
                        };
                    } else if (__value__ == (4985072i32)) {
                        _field_46[(_i_47 : stdgo.GoInt)] = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _gotoNext = 4985100i32;
                    } else if (__value__ == (4985100i32)) {
                        if (_f_48 == (("NIL" : stdgo.GoString))) {
                            _gotoNext = 4985114i32;
                        } else {
                            _gotoNext = 4985032i32;
                        };
                    } else if (__value__ == (4985114i32)) {
                        @:check2r _t.logf(("%s:%d: skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_42), stdgo.Go.toInterface(_line_44));
                        _gotoNext = 4984409i32;
                    } else if (__value__ == (4985193i32)) {
                        {
                            final __tmp__0 = 0i32;
                            final __tmp__1 = _field_46[(0i32 : stdgo.GoInt)]?.__copy__();
                            _i_47 = @:binopAssign __tmp__0;
                            _f_48 = @:binopAssign __tmp__1;
                        };
                        _gotoNext = 4985194i32;
                    } else if (__value__ == (4985194i32)) {
                        if (_i_47 < (_field_46.length)) {
                            _gotoNext = 4985052i32;
                        } else {
                            _gotoNext = 4985198i32;
                        };
                    } else if (__value__ == (4985198i32)) {
                        if ((_field_46.length) == ((0 : stdgo.GoInt))) {
                            _gotoNext = 4985217i32;
                        } else {
                            _gotoNext = 4987971i32;
                        };
                    } else if (__value__ == (4985217i32)) {
                        _gotoNext = 4984409i32;
                    } else if (__value__ == (4987971i32)) {
                        _flag_49 = _field_46[(0 : stdgo.GoInt)]?.__copy__();
                        _gotoNext = 4987990i32;
                    } else if (__value__ == (4987990i32)) {
                        {
                            final __value__ = _flag_49[(0 : stdgo.GoInt)];
                            if (__value__ == ((63 : stdgo.GoUInt8)) || __value__ == ((38 : stdgo.GoUInt8)) || __value__ == ((124 : stdgo.GoUInt8)) || __value__ == ((59 : stdgo.GoUInt8)) || __value__ == ((123 : stdgo.GoUInt8)) || __value__ == ((125 : stdgo.GoUInt8))) {
                                _gotoNext = 4988009i32;
                            } else if (__value__ == ((58 : stdgo.GoUInt8))) {
                                _gotoNext = 4988177i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8)) || __value__ == ((78 : stdgo.GoUInt8)) || __value__ == ((84 : stdgo.GoUInt8)) || __value__ == ((48 : stdgo.GoUInt8)) || __value__ == ((49 : stdgo.GoUInt8)) || __value__ == ((50 : stdgo.GoUInt8)) || __value__ == ((51 : stdgo.GoUInt8)) || __value__ == ((52 : stdgo.GoUInt8)) || __value__ == ((53 : stdgo.GoUInt8)) || __value__ == ((54 : stdgo.GoUInt8)) || __value__ == ((55 : stdgo.GoUInt8)) || __value__ == ((56 : stdgo.GoUInt8)) || __value__ == ((57 : stdgo.GoUInt8))) {
                                _gotoNext = 4988313i32;
                            } else {
                                _gotoNext = 4988516i32;
                            };
                        };
                    } else if (__value__ == (4988009i32)) {
                        _flag_49 = (_flag_49.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        if (_flag_49 == ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 4988147i32;
                        } else {
                            _gotoNext = 4988516i32;
                        };
                    } else if (__value__ == (4988147i32)) {
                        _gotoNext = 4984409i32;
                    } else if (__value__ == (4988177i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_flag_49.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (":" : stdgo.GoString));
                                _flag_49 = @:tmpset0 __tmp__._1?.__copy__();
                                _ok_50 = @:tmpset0 __tmp__._2;
                            };
                            if (!_ok_50) {
                                _gotoNext = 4988254i32;
                            } else {
                                _gotoNext = 4988516i32;
                            };
                        };
                    } else if (__value__ == (4988254i32)) {
                        @:check2r _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line_44));
                        _gotoNext = 4984409i32;
                    } else if (__value__ == (4988313i32)) {
                        @:check2r _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line_44));
                        _gotoNext = 4984409i32;
                    } else if (__value__ == (4988516i32)) {
                        if (((_field_46.length) < (4 : stdgo.GoInt) : Bool)) {
                            _gotoNext = 4988534i32;
                        } else {
                            _gotoNext = 4988667i32;
                        };
                    } else if (__value__ == (4988534i32)) {
                        @:check2r _t.errorf(("%s:%d: too few fields: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_42), stdgo.Go.toInterface(_line_44));
                        _gotoNext = 4984409i32;
                    } else if (__value__ == (4988667i32)) {
                        if (stdgo._internal.strings.Strings_contains.contains(_flag_49?.__copy__(), ("$" : stdgo.GoString))) {
                            _gotoNext = 4988698i32;
                        } else {
                            _gotoNext = 4989117i32;
                        };
                    } else if (__value__ == (4988698i32)) {
                        _f_51 = ((("\"" : stdgo.GoString) + _field_46[(1 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_f_51?.__copy__());
                                _field_46[(1 : stdgo.GoInt)] = @:tmpset0 __tmp__._0?.__copy__();
                                _err_45 = @:tmpset0 __tmp__._1;
                            };
                            if (_err_45 != null) {
                                _gotoNext = 4988782i32;
                            } else {
                                _gotoNext = 4988850i32;
                            };
                        };
                    } else if (__value__ == (4988782i32)) {
                        @:check2r _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_42), stdgo.Go.toInterface(_f_51));
                        _gotoNext = 4988850i32;
                    } else if (__value__ == (4988850i32)) {
                        _f_51 = ((("\"" : stdgo.GoString) + _field_46[(2 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_f_51?.__copy__());
                                _field_46[(2 : stdgo.GoInt)] = @:tmpset0 __tmp__._0?.__copy__();
                                _err_45 = @:tmpset0 __tmp__._1;
                            };
                            if (_err_45 != null) {
                                _gotoNext = 4988928i32;
                            } else {
                                _gotoNext = 4989117i32;
                            };
                        };
                    } else if (__value__ == (4988928i32)) {
                        @:check2r _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_42), stdgo.Go.toInterface(_f_51));
                        _gotoNext = 4989117i32;
                    } else if (__value__ == (4989117i32)) {
                        if (_field_46[(1 : stdgo.GoInt)] == (("SAME" : stdgo.GoString))) {
                            _gotoNext = 4989139i32;
                        } else {
                            _gotoNext = 4989172i32;
                        };
                    } else if (__value__ == (4989139i32)) {
                        _field_46[(1 : stdgo.GoInt)] = _lastRegexp_43?.__copy__();
                        _gotoNext = 4989172i32;
                    } else if (__value__ == (4989172i32)) {
                        _lastRegexp_43 = _field_46[(1 : stdgo.GoInt)]?.__copy__();
                        _text_52 = _field_46[(2 : stdgo.GoInt)]?.__copy__();
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp__parsefowlerresult._parseFowlerResult(_field_46[(3 : stdgo.GoInt)]?.__copy__());
                            _ok_53 = @:tmpset0 __tmp__._0;
                            _shouldCompile_54 = @:tmpset0 __tmp__._1;
                            _shouldMatch_55 = @:tmpset0 __tmp__._2;
                            _pos_56 = @:tmpset0 __tmp__._3;
                        };
                        if (!_ok_53) {
                            _gotoNext = 4989366i32;
                        } else {
                            _gotoNext = 4989522i32;
                        };
                    } else if (__value__ == (4989366i32)) {
                        @:check2r _t.errorf(("%s:%d: cannot parse result %#q" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_42), stdgo.Go.toInterface(_field_46[(3 : stdgo.GoInt)]));
                        _gotoNext = 4984409i32;
                    } else if (__value__ == (4989522i32)) {
                        _gotoNext = 4989522i32;
                        _keys_4989608 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                        _values_4989608 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                        for (_key => _value in _flag_49) {
                            _keys_4989608 = (_keys_4989608.__append__(_key));
                            _values_4989608 = (_values_4989608.__append__(_value));
                        };
                        if ((0i32 : stdgo.GoInt) < (_keys_4989608.length)) {
                            _gotoNext = 4990887i32;
                        } else {
                            _gotoNext = 4984409i32;
                        };
                    } else if (__value__ == (4989620i32)) {
                        _iterator_4989620++;
                        _gotoNext = 4990888i32;
                    } else if (__value__ == (4989631i32)) {
                        _c_57 = _values_4989608[@:invalid_index_invalid_type _iterator_4989620];
                        _keys_4989608[@:invalid_index_invalid_type _iterator_4989620];
                        _pattern_58 = _field_46[(1 : stdgo.GoInt)]?.__copy__();
                        _syn_59 = (4 : stdgo._internal.regexp.syntax.Syntax_flags.Flags);
                        _gotoNext = 4989699i32;
                    } else if (__value__ == (4989699i32)) {
                        {
                            final __value__ = _c_57;
                            if (__value__ == ((69 : stdgo.GoInt32))) {
                                _gotoNext = 4989746i32;
                            } else if (__value__ == ((76 : stdgo.GoInt32))) {
                                _gotoNext = 4989800i32;
                            } else {
                                _gotoNext = 4989713i32;
                            };
                        };
                    } else if (__value__ == (4989713i32)) {
                        _iterator_4989620++;
                        _gotoNext = 4990888i32;
                    } else if (__value__ == (4989746i32)) {
                        _gotoNext = 4989867i32;
                    } else if (__value__ == (4989800i32)) {
                        _pattern_58 = stdgo._internal.regexp.Regexp_quotemeta.quoteMeta(_pattern_58?.__copy__())?.__copy__();
                        _gotoNext = 4989867i32;
                    } else if (__value__ == (4989867i32)) {
                        _keys_4989867 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                        _values_4989867 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                        for (_key => _value in _flag_49) {
                            _keys_4989867 = (_keys_4989867.__append__(_key));
                            _values_4989867 = (_values_4989867.__append__(_value));
                        };
                        if ((0i32 : stdgo.GoInt) < (_keys_4989867.length)) {
                            _gotoNext = 4989957i32;
                        } else {
                            _gotoNext = 4989964i32;
                        };
                    } else if (__value__ == (4989879i32)) {
                        _iterator_4989879++;
                        _gotoNext = 4989958i32;
                    } else if (__value__ == (4989890i32)) {
                        _c_60 = _values_4989867[@:invalid_index_invalid_type _iterator_4989879];
                        _keys_4989867[@:invalid_index_invalid_type _iterator_4989879];
                        _gotoNext = 4989896i32;
                    } else if (__value__ == (4989896i32)) {
                        {
                            final __value__ = _c_60;
                            if (__value__ == ((105 : stdgo.GoInt32))) {
                                _gotoNext = 4989911i32;
                            } else {
                                _gotoNext = 4989879i32;
                            };
                        };
                    } else if (__value__ == (4989911i32)) {
                        _syn_59 = (_syn_59 | ((1 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_flags.Flags);
                        _gotoNext = 4989879i32;
                    } else if (__value__ == (4989957i32)) {
                        _iterator_4989879 = 0i32;
                        _gotoNext = 4989958i32;
                    } else if (__value__ == (4989958i32)) {
                        if (_iterator_4989879 < (_keys_4989867.length)) {
                            _gotoNext = 4989890i32;
                        } else {
                            _gotoNext = 4989964i32;
                        };
                    } else if (__value__ == (4989964i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp__compile._compile(_pattern_58?.__copy__(), _syn_59, true);
                            _re_61 = @:tmpset0 __tmp__._0;
                            _err_62 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_62 != null) {
                            _gotoNext = 4990020i32;
                        } else {
                            _gotoNext = 4990147i32;
                        };
                    } else if (__value__ == (4990020i32)) {
                        if (_shouldCompile_54) {
                            _gotoNext = 4990043i32;
                        } else {
                            _gotoNext = 4990122i32;
                        };
                    } else if (__value__ == (4990043i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q did not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_42), stdgo.Go.toInterface(_pattern_58));
                        _gotoNext = 4990122i32;
                    } else if (__value__ == (4990122i32)) {
                        _iterator_4989620++;
                        _gotoNext = 4990888i32;
                    } else if (__value__ == (4990147i32)) {
                        if (!_shouldCompile_54) {
                            _gotoNext = 4990165i32;
                        } else {
                            _gotoNext = 4990265i32;
                        };
                    } else if (__value__ == (4990165i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q should not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_42), stdgo.Go.toInterface(_pattern_58));
                        _iterator_4989620++;
                        _gotoNext = 4990888i32;
                    } else if (__value__ == (4990265i32)) {
                        _match_63 = @:check2r _re_61.matchString(_text_52?.__copy__());
                        if (_match_63 != (_shouldMatch_55)) {
                            _gotoNext = 4990322i32;
                        } else {
                            _gotoNext = 4990454i32;
                        };
                    } else if (__value__ == (4990322i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q.Match(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_42), stdgo.Go.toInterface(_pattern_58), stdgo.Go.toInterface(_text_52), stdgo.Go.toInterface(_match_63), stdgo.Go.toInterface(_shouldMatch_55));
                        _iterator_4989620++;
                        _gotoNext = 4990888i32;
                    } else if (__value__ == (4990454i32)) {
                        _have_64 = @:check2r _re_61.findStringSubmatchIndex(_text_52?.__copy__());
                        if ((((_have_64.length) > (0 : stdgo.GoInt) : Bool)) != (_match_63)) {
                            _gotoNext = 4990526i32;
                        } else {
                            _gotoNext = 4990694i32;
                        };
                    } else if (__value__ == (4990526i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q.Match(%#q) = %v, but %#q.FindSubmatchIndex(%#q) = %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_42), stdgo.Go.toInterface(_pattern_58), stdgo.Go.toInterface(_text_52), stdgo.Go.toInterface(_match_63), stdgo.Go.toInterface(_pattern_58), stdgo.Go.toInterface(_text_52), stdgo.Go.toInterface(_have_64));
                        _iterator_4989620++;
                        _gotoNext = 4990888i32;
                    } else if (__value__ == (4990694i32)) {
                        if (((_have_64.length) > (_pos_56.length) : Bool)) {
                            _gotoNext = 4990718i32;
                        } else {
                            _gotoNext = 4990755i32;
                        };
                    } else if (__value__ == (4990718i32)) {
                        _have_64 = (_have_64.__slice__(0, (_pos_56.length)) : stdgo.Slice<stdgo.GoInt>);
                        _gotoNext = 4990755i32;
                    } else if (__value__ == (4990755i32)) {
                        if (!stdgo._internal.regexp.Regexp__same._same(_have_64, _pos_56)) {
                            _gotoNext = 4990775i32;
                        } else {
                            _gotoNext = 4989620i32;
                        };
                    } else if (__value__ == (4990775i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q.FindSubmatchIndex(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_42), stdgo.Go.toInterface(_pattern_58), stdgo.Go.toInterface(_text_52), stdgo.Go.toInterface(_have_64), stdgo.Go.toInterface(_pos_56));
                        _gotoNext = 4989620i32;
                    } else if (__value__ == (4990887i32)) {
                        _iterator_4989620 = 0i32;
                        _gotoNext = 4990888i32;
                    } else if (__value__ == (4990888i32)) {
                        if (_iterator_4989620 < (_keys_4989608.length)) {
                            _gotoNext = 4989631i32;
                        } else {
                            _gotoNext = 4984409i32;
                        };
                    } else if (__value__ == (4990893i32)) {
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
