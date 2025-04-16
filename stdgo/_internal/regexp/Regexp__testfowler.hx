package stdgo._internal.regexp;
function _testFowler(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _file:stdgo.GoString):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _syn_59:stdgo._internal.regexp.syntax.Syntax_flags.Flags = ((0 : stdgo.GoUInt16) : stdgo._internal.regexp.syntax.Syntax_flags.Flags);
            var _line_44:stdgo.GoString = ("" : stdgo.GoString);
            var _have_64:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            var _re_61:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
            var _i_47:stdgo.GoInt = (0 : stdgo.GoInt);
            var _f_39:stdgo.Ref<stdgo._internal.os.Os_file.File> = (null : stdgo.Ref<stdgo._internal.os.Os_file.File>);
            var _match_63:Bool = false;
            var _iterator_5009831 = @:invalid_type null;
            var _f_48:stdgo.GoString = ("" : stdgo.GoString);
            var _shouldCompile_54:Bool = false;
            var _text_52:stdgo.GoString = ("" : stdgo.GoString);
            var _iterator_5009572 = @:invalid_type null;
            var _shouldMatch_55:Bool = false;
            var _ok_50:Bool = false;
            var readingBreak = false;
            var _keys_5009819 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            var _pattern_58:stdgo.GoString = ("" : stdgo.GoString);
            var _c_57:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _err_45:stdgo.Error = (null : stdgo.Error);
            var _values_5009819 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var _err_62:stdgo.Error = (null : stdgo.Error);
            var _b_41:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>);
            var _flag_49:stdgo.GoString = ("" : stdgo.GoString);
            var _field_46:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
            var _values_5009560 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var _f_51:stdgo.GoString = ("" : stdgo.GoString);
            var _lineno_42:stdgo.GoInt = (0 : stdgo.GoInt);
            var _err_40:stdgo.Error = (null : stdgo.Error);
            var _c_60:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _keys_5009560 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            var _pos_56:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            var _ok_53:Bool = false;
            var _lastRegexp_43:stdgo.GoString = ("" : stdgo.GoString);
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
                            _gotoNext = 5004249i32;
                        } else {
                            _gotoNext = 5004279i32;
                        };
                    } else if (__value__ == (5004249i32)) {
                        @:check2r _t.error(stdgo.Go.toInterface(_err_40));
                        return;
                        _gotoNext = 5004279i32;
                    } else if (__value__ == (5004279i32)) {
                        {
                            final __f__ = @:check2r _f_39.close;
                            __deferstack__.unshift({ ran : false, f : () -> __f__() });
                        };
                        _b_41 = stdgo._internal.bufio.Bufio_newreader.newReader(stdgo.Go.asInterface(_f_39));
                        _lineno_42 = (0 : stdgo.GoInt);
                        _lastRegexp_43 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _gotoNext = 5004351i32;
                    } else if (__value__ == (5004351i32)) {
                        0i32;
                        readingBreak = false;
                        _gotoNext = 5004361i32;
                    } else if (__value__ == (5004361i32)) {
                        if (!readingBreak) {
                            _gotoNext = 5004365i32;
                        } else {
                            _gotoNext = 5010845i32;
                        };
                    } else if (__value__ == (5004365i32)) {
                        _lineno_42++;
                        {
                            var __tmp__ = @:check2r _b_41.readString((10 : stdgo.GoUInt8));
                            _line_44 = @:tmpset0 __tmp__._0?.__copy__();
                            _err_45 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_45 != null) {
                            _gotoNext = 5004428i32;
                        } else {
                            _gotoNext = 5004846i32;
                        };
                    } else if (__value__ == (5004428i32)) {
                        if (stdgo.Go.toInterface(_err_45) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                            _gotoNext = 5004450i32;
                        } else {
                            _gotoNext = 5004505i32;
                        };
                    } else if (__value__ == (5004450i32)) {
                        @:check2r _t.errorf(("%s:%d: %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_42), stdgo.Go.toInterface(_err_45));
                        _gotoNext = 5004505i32;
                    } else if (__value__ == (5004505i32)) {
                        readingBreak = true;
                        _gotoNext = 5004361i32;
                    } else if (__value__ == (5004846i32)) {
                        if (((_line_44[(0 : stdgo.GoInt)] == (35 : stdgo.GoUInt8)) || (_line_44[(0 : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 5004883i32;
                        } else {
                            _gotoNext = 5004911i32;
                        };
                    } else if (__value__ == (5004883i32)) {
                        _gotoNext = 5004361i32;
                    } else if (__value__ == (5004911i32)) {
                        _line_44 = (_line_44.__slice__(0, ((_line_44.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_46 = @:check2r stdgo._internal.regexp.Regexp__notab._notab.findAllString(_line_44?.__copy__(), (-1 : stdgo.GoInt));
                        if ((0i32 : stdgo.GoInt) < (_field_46.length)) {
                            _gotoNext = 5005145i32;
                        } else {
                            _gotoNext = 5005150i32;
                        };
                    } else if (__value__ == (5004984i32)) {
                        _i_47++;
                        _gotoNext = 5005146i32;
                    } else if (__value__ == (5005004i32)) {
                        _f_48 = _field_46[(_i_47 : stdgo.GoInt)]?.__copy__();
                        if (_f_48 == (("NULL" : stdgo.GoString))) {
                            _gotoNext = 5005024i32;
                        } else {
                            _gotoNext = 5005052i32;
                        };
                    } else if (__value__ == (5005024i32)) {
                        _field_46[(_i_47 : stdgo.GoInt)] = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _gotoNext = 5005052i32;
                    } else if (__value__ == (5005052i32)) {
                        if (_f_48 == (("NIL" : stdgo.GoString))) {
                            _gotoNext = 5005066i32;
                        } else {
                            _gotoNext = 5004984i32;
                        };
                    } else if (__value__ == (5005066i32)) {
                        @:check2r _t.logf(("%s:%d: skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_42), stdgo.Go.toInterface(_line_44));
                        _gotoNext = 5004361i32;
                    } else if (__value__ == (5005145i32)) {
                        {
                            final __tmp__0 = 0i32;
                            final __tmp__1 = _field_46[(0i32 : stdgo.GoInt)]?.__copy__();
                            _i_47 = @:binopAssign __tmp__0;
                            _f_48 = @:binopAssign __tmp__1;
                        };
                        _gotoNext = 5005146i32;
                    } else if (__value__ == (5005146i32)) {
                        if (_i_47 < (_field_46.length)) {
                            _gotoNext = 5005004i32;
                        } else {
                            _gotoNext = 5005150i32;
                        };
                    } else if (__value__ == (5005150i32)) {
                        if ((_field_46.length) == ((0 : stdgo.GoInt))) {
                            _gotoNext = 5005169i32;
                        } else {
                            _gotoNext = 5007923i32;
                        };
                    } else if (__value__ == (5005169i32)) {
                        _gotoNext = 5004361i32;
                    } else if (__value__ == (5007923i32)) {
                        _flag_49 = _field_46[(0 : stdgo.GoInt)]?.__copy__();
                        _gotoNext = 5007942i32;
                    } else if (__value__ == (5007942i32)) {
                        {
                            final __value__ = _flag_49[(0 : stdgo.GoInt)];
                            if (__value__ == ((63 : stdgo.GoUInt8)) || __value__ == ((38 : stdgo.GoUInt8)) || __value__ == ((124 : stdgo.GoUInt8)) || __value__ == ((59 : stdgo.GoUInt8)) || __value__ == ((123 : stdgo.GoUInt8)) || __value__ == ((125 : stdgo.GoUInt8))) {
                                _gotoNext = 5007961i32;
                            } else if (__value__ == ((58 : stdgo.GoUInt8))) {
                                _gotoNext = 5008129i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8)) || __value__ == ((78 : stdgo.GoUInt8)) || __value__ == ((84 : stdgo.GoUInt8)) || __value__ == ((48 : stdgo.GoUInt8)) || __value__ == ((49 : stdgo.GoUInt8)) || __value__ == ((50 : stdgo.GoUInt8)) || __value__ == ((51 : stdgo.GoUInt8)) || __value__ == ((52 : stdgo.GoUInt8)) || __value__ == ((53 : stdgo.GoUInt8)) || __value__ == ((54 : stdgo.GoUInt8)) || __value__ == ((55 : stdgo.GoUInt8)) || __value__ == ((56 : stdgo.GoUInt8)) || __value__ == ((57 : stdgo.GoUInt8))) {
                                _gotoNext = 5008265i32;
                            } else {
                                _gotoNext = 5008468i32;
                            };
                        };
                    } else if (__value__ == (5007961i32)) {
                        _flag_49 = (_flag_49.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        if (_flag_49 == ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 5008099i32;
                        } else {
                            _gotoNext = 5008468i32;
                        };
                    } else if (__value__ == (5008099i32)) {
                        _gotoNext = 5004361i32;
                    } else if (__value__ == (5008129i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_flag_49.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (":" : stdgo.GoString));
                                _flag_49 = @:tmpset0 __tmp__._1?.__copy__();
                                _ok_50 = @:tmpset0 __tmp__._2;
                            };
                            if (!_ok_50) {
                                _gotoNext = 5008206i32;
                            } else {
                                _gotoNext = 5008468i32;
                            };
                        };
                    } else if (__value__ == (5008206i32)) {
                        @:check2r _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line_44));
                        _gotoNext = 5004361i32;
                    } else if (__value__ == (5008265i32)) {
                        @:check2r _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line_44));
                        _gotoNext = 5004361i32;
                    } else if (__value__ == (5008468i32)) {
                        if (((_field_46.length) < (4 : stdgo.GoInt) : Bool)) {
                            _gotoNext = 5008486i32;
                        } else {
                            _gotoNext = 5008619i32;
                        };
                    } else if (__value__ == (5008486i32)) {
                        @:check2r _t.errorf(("%s:%d: too few fields: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_42), stdgo.Go.toInterface(_line_44));
                        _gotoNext = 5004361i32;
                    } else if (__value__ == (5008619i32)) {
                        if (stdgo._internal.strings.Strings_contains.contains(_flag_49?.__copy__(), ("$" : stdgo.GoString))) {
                            _gotoNext = 5008650i32;
                        } else {
                            _gotoNext = 5009069i32;
                        };
                    } else if (__value__ == (5008650i32)) {
                        _f_51 = ((("\"" : stdgo.GoString) + _field_46[(1 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_f_51?.__copy__());
                                _field_46[(1 : stdgo.GoInt)] = @:tmpset0 __tmp__._0?.__copy__();
                                _err_45 = @:tmpset0 __tmp__._1;
                            };
                            if (_err_45 != null) {
                                _gotoNext = 5008734i32;
                            } else {
                                _gotoNext = 5008802i32;
                            };
                        };
                    } else if (__value__ == (5008734i32)) {
                        @:check2r _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_42), stdgo.Go.toInterface(_f_51));
                        _gotoNext = 5008802i32;
                    } else if (__value__ == (5008802i32)) {
                        _f_51 = ((("\"" : stdgo.GoString) + _field_46[(2 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_f_51?.__copy__());
                                _field_46[(2 : stdgo.GoInt)] = @:tmpset0 __tmp__._0?.__copy__();
                                _err_45 = @:tmpset0 __tmp__._1;
                            };
                            if (_err_45 != null) {
                                _gotoNext = 5008880i32;
                            } else {
                                _gotoNext = 5009069i32;
                            };
                        };
                    } else if (__value__ == (5008880i32)) {
                        @:check2r _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_42), stdgo.Go.toInterface(_f_51));
                        _gotoNext = 5009069i32;
                    } else if (__value__ == (5009069i32)) {
                        if (_field_46[(1 : stdgo.GoInt)] == (("SAME" : stdgo.GoString))) {
                            _gotoNext = 5009091i32;
                        } else {
                            _gotoNext = 5009124i32;
                        };
                    } else if (__value__ == (5009091i32)) {
                        _field_46[(1 : stdgo.GoInt)] = _lastRegexp_43?.__copy__();
                        _gotoNext = 5009124i32;
                    } else if (__value__ == (5009124i32)) {
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
                            _gotoNext = 5009318i32;
                        } else {
                            _gotoNext = 5009474i32;
                        };
                    } else if (__value__ == (5009318i32)) {
                        @:check2r _t.errorf(("%s:%d: cannot parse result %#q" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_42), stdgo.Go.toInterface(_field_46[(3 : stdgo.GoInt)]));
                        _gotoNext = 5004361i32;
                    } else if (__value__ == (5009474i32)) {
                        _gotoNext = 5009474i32;
                        _keys_5009560 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                        _values_5009560 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                        for (_key => _value in _flag_49) {
                            _keys_5009560 = _keys_5009560.__append__(_key);
                            _values_5009560 = _values_5009560.__append__(_value);
                        };
                        if ((0i32 : stdgo.GoInt) < (_keys_5009560.length)) {
                            _gotoNext = 5010839i32;
                        } else {
                            _gotoNext = 5004361i32;
                        };
                    } else if (__value__ == (5009572i32)) {
                        _iterator_5009572++;
                        _gotoNext = 5010840i32;
                    } else if (__value__ == (5009583i32)) {
                        _c_57 = _values_5009560[@:invalid_index_invalid_type _iterator_5009572];
                        _keys_5009560[@:invalid_index_invalid_type _iterator_5009572];
                        _pattern_58 = _field_46[(1 : stdgo.GoInt)]?.__copy__();
                        _syn_59 = (4 : stdgo._internal.regexp.syntax.Syntax_flags.Flags);
                        _gotoNext = 5009651i32;
                    } else if (__value__ == (5009651i32)) {
                        {
                            final __value__ = _c_57;
                            if (__value__ == ((69 : stdgo.GoInt32))) {
                                _gotoNext = 5009698i32;
                            } else if (__value__ == ((76 : stdgo.GoInt32))) {
                                _gotoNext = 5009752i32;
                            } else {
                                _gotoNext = 5009665i32;
                            };
                        };
                    } else if (__value__ == (5009665i32)) {
                        _iterator_5009572++;
                        _gotoNext = 5010840i32;
                    } else if (__value__ == (5009698i32)) {
                        _gotoNext = 5009819i32;
                    } else if (__value__ == (5009752i32)) {
                        _pattern_58 = stdgo._internal.regexp.Regexp_quotemeta.quoteMeta(_pattern_58?.__copy__())?.__copy__();
                        _gotoNext = 5009819i32;
                    } else if (__value__ == (5009819i32)) {
                        _keys_5009819 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                        _values_5009819 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                        for (_key => _value in _flag_49) {
                            _keys_5009819 = _keys_5009819.__append__(_key);
                            _values_5009819 = _values_5009819.__append__(_value);
                        };
                        if ((0i32 : stdgo.GoInt) < (_keys_5009819.length)) {
                            _gotoNext = 5009909i32;
                        } else {
                            _gotoNext = 5009916i32;
                        };
                    } else if (__value__ == (5009831i32)) {
                        _iterator_5009831++;
                        _gotoNext = 5009910i32;
                    } else if (__value__ == (5009842i32)) {
                        _c_60 = _values_5009819[@:invalid_index_invalid_type _iterator_5009831];
                        _keys_5009819[@:invalid_index_invalid_type _iterator_5009831];
                        _gotoNext = 5009848i32;
                    } else if (__value__ == (5009848i32)) {
                        {
                            final __value__ = _c_60;
                            if (__value__ == ((105 : stdgo.GoInt32))) {
                                _gotoNext = 5009863i32;
                            } else {
                                _gotoNext = 5009831i32;
                            };
                        };
                    } else if (__value__ == (5009863i32)) {
                        _syn_59 = (_syn_59 | ((1 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_flags.Flags);
                        _gotoNext = 5009831i32;
                    } else if (__value__ == (5009909i32)) {
                        _iterator_5009831 = 0i32;
                        _gotoNext = 5009910i32;
                    } else if (__value__ == (5009910i32)) {
                        if (_iterator_5009831 < (_keys_5009819.length)) {
                            _gotoNext = 5009842i32;
                        } else {
                            _gotoNext = 5009916i32;
                        };
                    } else if (__value__ == (5009916i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp__compile._compile(_pattern_58?.__copy__(), _syn_59, true);
                            _re_61 = @:tmpset0 __tmp__._0;
                            _err_62 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_62 != null) {
                            _gotoNext = 5009972i32;
                        } else {
                            _gotoNext = 5010099i32;
                        };
                    } else if (__value__ == (5009972i32)) {
                        if (_shouldCompile_54) {
                            _gotoNext = 5009995i32;
                        } else {
                            _gotoNext = 5010074i32;
                        };
                    } else if (__value__ == (5009995i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q did not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_42), stdgo.Go.toInterface(_pattern_58));
                        _gotoNext = 5010074i32;
                    } else if (__value__ == (5010074i32)) {
                        _iterator_5009572++;
                        _gotoNext = 5010840i32;
                    } else if (__value__ == (5010099i32)) {
                        if (!_shouldCompile_54) {
                            _gotoNext = 5010117i32;
                        } else {
                            _gotoNext = 5010217i32;
                        };
                    } else if (__value__ == (5010117i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q should not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_42), stdgo.Go.toInterface(_pattern_58));
                        _iterator_5009572++;
                        _gotoNext = 5010840i32;
                    } else if (__value__ == (5010217i32)) {
                        _match_63 = @:check2r _re_61.matchString(_text_52?.__copy__());
                        if (_match_63 != (_shouldMatch_55)) {
                            _gotoNext = 5010274i32;
                        } else {
                            _gotoNext = 5010406i32;
                        };
                    } else if (__value__ == (5010274i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q.Match(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_42), stdgo.Go.toInterface(_pattern_58), stdgo.Go.toInterface(_text_52), stdgo.Go.toInterface(_match_63), stdgo.Go.toInterface(_shouldMatch_55));
                        _iterator_5009572++;
                        _gotoNext = 5010840i32;
                    } else if (__value__ == (5010406i32)) {
                        _have_64 = @:check2r _re_61.findStringSubmatchIndex(_text_52?.__copy__());
                        if ((((_have_64.length) > (0 : stdgo.GoInt) : Bool)) != (_match_63)) {
                            _gotoNext = 5010478i32;
                        } else {
                            _gotoNext = 5010646i32;
                        };
                    } else if (__value__ == (5010478i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q.Match(%#q) = %v, but %#q.FindSubmatchIndex(%#q) = %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_42), stdgo.Go.toInterface(_pattern_58), stdgo.Go.toInterface(_text_52), stdgo.Go.toInterface(_match_63), stdgo.Go.toInterface(_pattern_58), stdgo.Go.toInterface(_text_52), stdgo.Go.toInterface(_have_64));
                        _iterator_5009572++;
                        _gotoNext = 5010840i32;
                    } else if (__value__ == (5010646i32)) {
                        if (((_have_64.length) > (_pos_56.length) : Bool)) {
                            _gotoNext = 5010670i32;
                        } else {
                            _gotoNext = 5010707i32;
                        };
                    } else if (__value__ == (5010670i32)) {
                        _have_64 = (_have_64.__slice__(0, (_pos_56.length)) : stdgo.Slice<stdgo.GoInt>);
                        _gotoNext = 5010707i32;
                    } else if (__value__ == (5010707i32)) {
                        if (!stdgo._internal.regexp.Regexp__same._same(_have_64, _pos_56)) {
                            _gotoNext = 5010727i32;
                        } else {
                            _gotoNext = 5009572i32;
                        };
                    } else if (__value__ == (5010727i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q.FindSubmatchIndex(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_42), stdgo.Go.toInterface(_pattern_58), stdgo.Go.toInterface(_text_52), stdgo.Go.toInterface(_have_64), stdgo.Go.toInterface(_pos_56));
                        _gotoNext = 5009572i32;
                    } else if (__value__ == (5010839i32)) {
                        _iterator_5009572 = 0i32;
                        _gotoNext = 5010840i32;
                    } else if (__value__ == (5010840i32)) {
                        if (_iterator_5009572 < (_keys_5009560.length)) {
                            _gotoNext = 5009583i32;
                        } else {
                            _gotoNext = 5004361i32;
                        };
                    } else if (__value__ == (5010845i32)) {
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
