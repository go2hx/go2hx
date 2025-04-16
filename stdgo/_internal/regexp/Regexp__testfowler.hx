package stdgo._internal.regexp;
function _testFowler(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _file:stdgo.GoString):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _iterator_4885554 = @:invalid_type null;
            var _shouldCompile_54:Bool = false;
            var _ok_50:Bool = false;
            var _line_44:stdgo.GoString = ("" : stdgo.GoString);
            var _err_62:stdgo.Error = (null : stdgo.Error);
            var _syn_59:stdgo._internal.regexp.syntax.Syntax_flags.Flags = ((0 : stdgo.GoUInt16) : stdgo._internal.regexp.syntax.Syntax_flags.Flags);
            var _c_57:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _shouldMatch_55:Bool = false;
            var readingBreak = false;
            var _pattern_58:stdgo.GoString = ("" : stdgo.GoString);
            var _values_4885542 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var _ok_53:Bool = false;
            var _flag_49:stdgo.GoString = ("" : stdgo.GoString);
            var _f_48:stdgo.GoString = ("" : stdgo.GoString);
            var _i_47:stdgo.GoInt = (0 : stdgo.GoInt);
            var _values_4885801 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var _iterator_4885813 = @:invalid_type null;
            var _lastRegexp_43:stdgo.GoString = ("" : stdgo.GoString);
            var _f_39:stdgo.Ref<stdgo._internal.os.Os_file.File> = (null : stdgo.Ref<stdgo._internal.os.Os_file.File>);
            var _have_64:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            var _match_63:Bool = false;
            var _keys_4885801 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            var _field_46:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
            var _lineno_42:stdgo.GoInt = (0 : stdgo.GoInt);
            var _err_40:stdgo.Error = (null : stdgo.Error);
            var _re_61:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
            var _c_60:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _text_52:stdgo.GoString = ("" : stdgo.GoString);
            var _err_45:stdgo.Error = (null : stdgo.Error);
            var _keys_4885542 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            var _pos_56:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            var _f_51:stdgo.GoString = ("" : stdgo.GoString);
            var _b_41:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>);
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
                            _gotoNext = 4880231i32;
                        } else {
                            _gotoNext = 4880261i32;
                        };
                    } else if (__value__ == (4880231i32)) {
                        @:check2r _t.error(stdgo.Go.toInterface(_err_40));
                        return;
                        _gotoNext = 4880261i32;
                    } else if (__value__ == (4880261i32)) {
                        {
                            final __f__ = @:check2r _f_39.close;
                            __deferstack__.unshift({ ran : false, f : () -> __f__() });
                        };
                        _b_41 = stdgo._internal.bufio.Bufio_newreader.newReader(stdgo.Go.asInterface(_f_39));
                        _lineno_42 = (0 : stdgo.GoInt);
                        _lastRegexp_43 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _gotoNext = 4880333i32;
                    } else if (__value__ == (4880333i32)) {
                        0i32;
                        readingBreak = false;
                        _gotoNext = 4880343i32;
                    } else if (__value__ == (4880343i32)) {
                        if (!readingBreak) {
                            _gotoNext = 4880347i32;
                        } else {
                            _gotoNext = 4886827i32;
                        };
                    } else if (__value__ == (4880347i32)) {
                        _lineno_42++;
                        {
                            var __tmp__ = @:check2r _b_41.readString((10 : stdgo.GoUInt8));
                            _line_44 = @:tmpset0 __tmp__._0?.__copy__();
                            _err_45 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_45 != null) {
                            _gotoNext = 4880410i32;
                        } else {
                            _gotoNext = 4880828i32;
                        };
                    } else if (__value__ == (4880410i32)) {
                        if (stdgo.Go.toInterface(_err_45) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                            _gotoNext = 4880432i32;
                        } else {
                            _gotoNext = 4880487i32;
                        };
                    } else if (__value__ == (4880432i32)) {
                        @:check2r _t.errorf(("%s:%d: %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_42), stdgo.Go.toInterface(_err_45));
                        _gotoNext = 4880487i32;
                    } else if (__value__ == (4880487i32)) {
                        readingBreak = true;
                        _gotoNext = 4880343i32;
                    } else if (__value__ == (4880828i32)) {
                        if (((_line_44[(0 : stdgo.GoInt)] == (35 : stdgo.GoUInt8)) || (_line_44[(0 : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 4880865i32;
                        } else {
                            _gotoNext = 4880893i32;
                        };
                    } else if (__value__ == (4880865i32)) {
                        _gotoNext = 4880343i32;
                    } else if (__value__ == (4880893i32)) {
                        _line_44 = (_line_44.__slice__(0, ((_line_44.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_46 = @:check2r stdgo._internal.regexp.Regexp__notab._notab.findAllString(_line_44?.__copy__(), (-1 : stdgo.GoInt));
                        if ((0i32 : stdgo.GoInt) < (_field_46.length)) {
                            _gotoNext = 4881127i32;
                        } else {
                            _gotoNext = 4881132i32;
                        };
                    } else if (__value__ == (4880966i32)) {
                        _i_47++;
                        _gotoNext = 4881128i32;
                    } else if (__value__ == (4880986i32)) {
                        _f_48 = _field_46[(_i_47 : stdgo.GoInt)]?.__copy__();
                        if (_f_48 == (("NULL" : stdgo.GoString))) {
                            _gotoNext = 4881006i32;
                        } else {
                            _gotoNext = 4881034i32;
                        };
                    } else if (__value__ == (4881006i32)) {
                        _field_46[(_i_47 : stdgo.GoInt)] = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _gotoNext = 4881034i32;
                    } else if (__value__ == (4881034i32)) {
                        if (_f_48 == (("NIL" : stdgo.GoString))) {
                            _gotoNext = 4881048i32;
                        } else {
                            _gotoNext = 4880966i32;
                        };
                    } else if (__value__ == (4881048i32)) {
                        @:check2r _t.logf(("%s:%d: skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_42), stdgo.Go.toInterface(_line_44));
                        _gotoNext = 4880343i32;
                    } else if (__value__ == (4881127i32)) {
                        {
                            final __tmp__0 = 0i32;
                            final __tmp__1 = _field_46[(0i32 : stdgo.GoInt)]?.__copy__();
                            _i_47 = @:binopAssign __tmp__0;
                            _f_48 = @:binopAssign __tmp__1;
                        };
                        _gotoNext = 4881128i32;
                    } else if (__value__ == (4881128i32)) {
                        if (_i_47 < (_field_46.length)) {
                            _gotoNext = 4880986i32;
                        } else {
                            _gotoNext = 4881132i32;
                        };
                    } else if (__value__ == (4881132i32)) {
                        if ((_field_46.length) == ((0 : stdgo.GoInt))) {
                            _gotoNext = 4881151i32;
                        } else {
                            _gotoNext = 4883905i32;
                        };
                    } else if (__value__ == (4881151i32)) {
                        _gotoNext = 4880343i32;
                    } else if (__value__ == (4883905i32)) {
                        _flag_49 = _field_46[(0 : stdgo.GoInt)]?.__copy__();
                        _gotoNext = 4883924i32;
                    } else if (__value__ == (4883924i32)) {
                        {
                            final __value__ = _flag_49[(0 : stdgo.GoInt)];
                            if (__value__ == ((63 : stdgo.GoUInt8)) || __value__ == ((38 : stdgo.GoUInt8)) || __value__ == ((124 : stdgo.GoUInt8)) || __value__ == ((59 : stdgo.GoUInt8)) || __value__ == ((123 : stdgo.GoUInt8)) || __value__ == ((125 : stdgo.GoUInt8))) {
                                _gotoNext = 4883943i32;
                            } else if (__value__ == ((58 : stdgo.GoUInt8))) {
                                _gotoNext = 4884111i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8)) || __value__ == ((78 : stdgo.GoUInt8)) || __value__ == ((84 : stdgo.GoUInt8)) || __value__ == ((48 : stdgo.GoUInt8)) || __value__ == ((49 : stdgo.GoUInt8)) || __value__ == ((50 : stdgo.GoUInt8)) || __value__ == ((51 : stdgo.GoUInt8)) || __value__ == ((52 : stdgo.GoUInt8)) || __value__ == ((53 : stdgo.GoUInt8)) || __value__ == ((54 : stdgo.GoUInt8)) || __value__ == ((55 : stdgo.GoUInt8)) || __value__ == ((56 : stdgo.GoUInt8)) || __value__ == ((57 : stdgo.GoUInt8))) {
                                _gotoNext = 4884247i32;
                            } else {
                                _gotoNext = 4884450i32;
                            };
                        };
                    } else if (__value__ == (4883943i32)) {
                        _flag_49 = (_flag_49.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        if (_flag_49 == ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 4884081i32;
                        } else {
                            _gotoNext = 4884450i32;
                        };
                    } else if (__value__ == (4884081i32)) {
                        _gotoNext = 4880343i32;
                    } else if (__value__ == (4884111i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_flag_49.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (":" : stdgo.GoString));
                                _flag_49 = @:tmpset0 __tmp__._1?.__copy__();
                                _ok_50 = @:tmpset0 __tmp__._2;
                            };
                            if (!_ok_50) {
                                _gotoNext = 4884188i32;
                            } else {
                                _gotoNext = 4884450i32;
                            };
                        };
                    } else if (__value__ == (4884188i32)) {
                        @:check2r _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line_44));
                        _gotoNext = 4880343i32;
                    } else if (__value__ == (4884247i32)) {
                        @:check2r _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line_44));
                        _gotoNext = 4880343i32;
                    } else if (__value__ == (4884450i32)) {
                        if (((_field_46.length) < (4 : stdgo.GoInt) : Bool)) {
                            _gotoNext = 4884468i32;
                        } else {
                            _gotoNext = 4884601i32;
                        };
                    } else if (__value__ == (4884468i32)) {
                        @:check2r _t.errorf(("%s:%d: too few fields: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_42), stdgo.Go.toInterface(_line_44));
                        _gotoNext = 4880343i32;
                    } else if (__value__ == (4884601i32)) {
                        if (stdgo._internal.strings.Strings_contains.contains(_flag_49?.__copy__(), ("$" : stdgo.GoString))) {
                            _gotoNext = 4884632i32;
                        } else {
                            _gotoNext = 4885051i32;
                        };
                    } else if (__value__ == (4884632i32)) {
                        _f_51 = ((("\"" : stdgo.GoString) + _field_46[(1 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_f_51?.__copy__());
                                _field_46[(1 : stdgo.GoInt)] = @:tmpset0 __tmp__._0?.__copy__();
                                _err_45 = @:tmpset0 __tmp__._1;
                            };
                            if (_err_45 != null) {
                                _gotoNext = 4884716i32;
                            } else {
                                _gotoNext = 4884784i32;
                            };
                        };
                    } else if (__value__ == (4884716i32)) {
                        @:check2r _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_42), stdgo.Go.toInterface(_f_51));
                        _gotoNext = 4884784i32;
                    } else if (__value__ == (4884784i32)) {
                        _f_51 = ((("\"" : stdgo.GoString) + _field_46[(2 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_f_51?.__copy__());
                                _field_46[(2 : stdgo.GoInt)] = @:tmpset0 __tmp__._0?.__copy__();
                                _err_45 = @:tmpset0 __tmp__._1;
                            };
                            if (_err_45 != null) {
                                _gotoNext = 4884862i32;
                            } else {
                                _gotoNext = 4885051i32;
                            };
                        };
                    } else if (__value__ == (4884862i32)) {
                        @:check2r _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_42), stdgo.Go.toInterface(_f_51));
                        _gotoNext = 4885051i32;
                    } else if (__value__ == (4885051i32)) {
                        if (_field_46[(1 : stdgo.GoInt)] == (("SAME" : stdgo.GoString))) {
                            _gotoNext = 4885073i32;
                        } else {
                            _gotoNext = 4885106i32;
                        };
                    } else if (__value__ == (4885073i32)) {
                        _field_46[(1 : stdgo.GoInt)] = _lastRegexp_43?.__copy__();
                        _gotoNext = 4885106i32;
                    } else if (__value__ == (4885106i32)) {
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
                            _gotoNext = 4885300i32;
                        } else {
                            _gotoNext = 4885456i32;
                        };
                    } else if (__value__ == (4885300i32)) {
                        @:check2r _t.errorf(("%s:%d: cannot parse result %#q" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_42), stdgo.Go.toInterface(_field_46[(3 : stdgo.GoInt)]));
                        _gotoNext = 4880343i32;
                    } else if (__value__ == (4885456i32)) {
                        _gotoNext = 4885456i32;
                        _keys_4885542 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                        _values_4885542 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                        for (_key => _value in _flag_49) {
                            _keys_4885542 = _keys_4885542.__append__(_key);
                            _values_4885542 = _values_4885542.__append__(_value);
                        };
                        if ((0i32 : stdgo.GoInt) < (_keys_4885542.length)) {
                            _gotoNext = 4886821i32;
                        } else {
                            _gotoNext = 4880343i32;
                        };
                    } else if (__value__ == (4885554i32)) {
                        _iterator_4885554++;
                        _gotoNext = 4886822i32;
                    } else if (__value__ == (4885565i32)) {
                        _c_57 = _values_4885542[@:invalid_index_invalid_type _iterator_4885554];
                        _keys_4885542[@:invalid_index_invalid_type _iterator_4885554];
                        _pattern_58 = _field_46[(1 : stdgo.GoInt)]?.__copy__();
                        _syn_59 = (4 : stdgo._internal.regexp.syntax.Syntax_flags.Flags);
                        _gotoNext = 4885633i32;
                    } else if (__value__ == (4885633i32)) {
                        {
                            final __value__ = _c_57;
                            if (__value__ == ((69 : stdgo.GoInt32))) {
                                _gotoNext = 4885680i32;
                            } else if (__value__ == ((76 : stdgo.GoInt32))) {
                                _gotoNext = 4885734i32;
                            } else {
                                _gotoNext = 4885647i32;
                            };
                        };
                    } else if (__value__ == (4885647i32)) {
                        _iterator_4885554++;
                        _gotoNext = 4886822i32;
                    } else if (__value__ == (4885680i32)) {
                        _gotoNext = 4885801i32;
                    } else if (__value__ == (4885734i32)) {
                        _pattern_58 = stdgo._internal.regexp.Regexp_quotemeta.quoteMeta(_pattern_58?.__copy__())?.__copy__();
                        _gotoNext = 4885801i32;
                    } else if (__value__ == (4885801i32)) {
                        _keys_4885801 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                        _values_4885801 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                        for (_key => _value in _flag_49) {
                            _keys_4885801 = _keys_4885801.__append__(_key);
                            _values_4885801 = _values_4885801.__append__(_value);
                        };
                        if ((0i32 : stdgo.GoInt) < (_keys_4885801.length)) {
                            _gotoNext = 4885891i32;
                        } else {
                            _gotoNext = 4885898i32;
                        };
                    } else if (__value__ == (4885813i32)) {
                        _iterator_4885813++;
                        _gotoNext = 4885892i32;
                    } else if (__value__ == (4885824i32)) {
                        _c_60 = _values_4885801[@:invalid_index_invalid_type _iterator_4885813];
                        _keys_4885801[@:invalid_index_invalid_type _iterator_4885813];
                        _gotoNext = 4885830i32;
                    } else if (__value__ == (4885830i32)) {
                        {
                            final __value__ = _c_60;
                            if (__value__ == ((105 : stdgo.GoInt32))) {
                                _gotoNext = 4885845i32;
                            } else {
                                _gotoNext = 4885813i32;
                            };
                        };
                    } else if (__value__ == (4885845i32)) {
                        _syn_59 = (_syn_59 | ((1 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_flags.Flags);
                        _gotoNext = 4885813i32;
                    } else if (__value__ == (4885891i32)) {
                        _iterator_4885813 = 0i32;
                        _gotoNext = 4885892i32;
                    } else if (__value__ == (4885892i32)) {
                        if (_iterator_4885813 < (_keys_4885801.length)) {
                            _gotoNext = 4885824i32;
                        } else {
                            _gotoNext = 4885898i32;
                        };
                    } else if (__value__ == (4885898i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp__compile._compile(_pattern_58?.__copy__(), _syn_59, true);
                            _re_61 = @:tmpset0 __tmp__._0;
                            _err_62 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_62 != null) {
                            _gotoNext = 4885954i32;
                        } else {
                            _gotoNext = 4886081i32;
                        };
                    } else if (__value__ == (4885954i32)) {
                        if (_shouldCompile_54) {
                            _gotoNext = 4885977i32;
                        } else {
                            _gotoNext = 4886056i32;
                        };
                    } else if (__value__ == (4885977i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q did not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_42), stdgo.Go.toInterface(_pattern_58));
                        _gotoNext = 4886056i32;
                    } else if (__value__ == (4886056i32)) {
                        _iterator_4885554++;
                        _gotoNext = 4886822i32;
                    } else if (__value__ == (4886081i32)) {
                        if (!_shouldCompile_54) {
                            _gotoNext = 4886099i32;
                        } else {
                            _gotoNext = 4886199i32;
                        };
                    } else if (__value__ == (4886099i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q should not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_42), stdgo.Go.toInterface(_pattern_58));
                        _iterator_4885554++;
                        _gotoNext = 4886822i32;
                    } else if (__value__ == (4886199i32)) {
                        _match_63 = @:check2r _re_61.matchString(_text_52?.__copy__());
                        if (_match_63 != (_shouldMatch_55)) {
                            _gotoNext = 4886256i32;
                        } else {
                            _gotoNext = 4886388i32;
                        };
                    } else if (__value__ == (4886256i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q.Match(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_42), stdgo.Go.toInterface(_pattern_58), stdgo.Go.toInterface(_text_52), stdgo.Go.toInterface(_match_63), stdgo.Go.toInterface(_shouldMatch_55));
                        _iterator_4885554++;
                        _gotoNext = 4886822i32;
                    } else if (__value__ == (4886388i32)) {
                        _have_64 = @:check2r _re_61.findStringSubmatchIndex(_text_52?.__copy__());
                        if ((((_have_64.length) > (0 : stdgo.GoInt) : Bool)) != (_match_63)) {
                            _gotoNext = 4886460i32;
                        } else {
                            _gotoNext = 4886628i32;
                        };
                    } else if (__value__ == (4886460i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q.Match(%#q) = %v, but %#q.FindSubmatchIndex(%#q) = %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_42), stdgo.Go.toInterface(_pattern_58), stdgo.Go.toInterface(_text_52), stdgo.Go.toInterface(_match_63), stdgo.Go.toInterface(_pattern_58), stdgo.Go.toInterface(_text_52), stdgo.Go.toInterface(_have_64));
                        _iterator_4885554++;
                        _gotoNext = 4886822i32;
                    } else if (__value__ == (4886628i32)) {
                        if (((_have_64.length) > (_pos_56.length) : Bool)) {
                            _gotoNext = 4886652i32;
                        } else {
                            _gotoNext = 4886689i32;
                        };
                    } else if (__value__ == (4886652i32)) {
                        _have_64 = (_have_64.__slice__(0, (_pos_56.length)) : stdgo.Slice<stdgo.GoInt>);
                        _gotoNext = 4886689i32;
                    } else if (__value__ == (4886689i32)) {
                        if (!stdgo._internal.regexp.Regexp__same._same(_have_64, _pos_56)) {
                            _gotoNext = 4886709i32;
                        } else {
                            _gotoNext = 4885554i32;
                        };
                    } else if (__value__ == (4886709i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q.FindSubmatchIndex(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_42), stdgo.Go.toInterface(_pattern_58), stdgo.Go.toInterface(_text_52), stdgo.Go.toInterface(_have_64), stdgo.Go.toInterface(_pos_56));
                        _gotoNext = 4885554i32;
                    } else if (__value__ == (4886821i32)) {
                        _iterator_4885554 = 0i32;
                        _gotoNext = 4886822i32;
                    } else if (__value__ == (4886822i32)) {
                        if (_iterator_4885554 < (_keys_4885542.length)) {
                            _gotoNext = 4885565i32;
                        } else {
                            _gotoNext = 4880343i32;
                        };
                    } else if (__value__ == (4886827i32)) {
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
