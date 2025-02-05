package stdgo._internal.regexp;
function _testFowler(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _file:stdgo.GoString):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _pos_5015708:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            var _i_5016006 = @:invalid_type null;
            var _match_5016651:Bool = false;
            var _b_5010730:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>);
            var _err_5010647:stdgo.Error = (null : stdgo.Error);
            var _f_5010644:stdgo.Ref<stdgo._internal.os.Os_file.File> = (null : stdgo.Ref<stdgo._internal.os.Os_file.File>);
            var _err_5016354:stdgo.Error = (null : stdgo.Error);
            var _shouldMatch_5015695:Bool = false;
            var _field_5011373:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
            var readingBreak = false;
            var _lineno_5010755:stdgo.GoInt = (0 : stdgo.GoInt);
            var _values_5015994 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var _shouldCompile_5015680:Bool = false;
            var _ok_5014580:Bool = false;
            var _keys_5016253 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            var _c_5016001:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _re_5016350:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
            var _line_5010814:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRegexp_5010768:stdgo.GoString = ("" : stdgo.GoString);
            var _keys_5015994 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            var _f_5015089:stdgo.GoString = ("" : stdgo.GoString);
            var _err_5010820:stdgo.Error = (null : stdgo.Error);
            var _syn_5016045:stdgo._internal.regexp.syntax.Syntax_flags.Flags = ((0 : stdgo.GoUInt16) : stdgo._internal.regexp.syntax.Syntax_flags.Flags);
            var _pattern_5016022:stdgo.GoString = ("" : stdgo.GoString);
            var _i_5016265 = @:invalid_type null;
            var _text_5015620:stdgo.GoString = ("" : stdgo.GoString);
            var _f_5011421:stdgo.GoString = ("" : stdgo.GoString);
            var _have_5016840:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            var _values_5016253 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var _ok_5015676:Bool = false;
            var _flag_5014357:stdgo.GoString = ("" : stdgo.GoString);
            var _i_5011418:stdgo.GoInt = (0 : stdgo.GoInt);
            var _c_5016260:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _gotoNext = 0i32;
            var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
            while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
                {
                    final __value__ = _gotoNext;
                    if (__value__ == (0i32)) {
                        {
                            var __tmp__ = stdgo._internal.os.Os_open.open(_file?.__copy__());
                            _f_5010644 = @:tmpset0 __tmp__._0;
                            _err_5010647 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_5010647 != null) {
                            _gotoNext = 5010683i32;
                        } else {
                            _gotoNext = 5010713i32;
                        };
                    } else if (__value__ == (5010683i32)) {
                        @:check2r _t.error(stdgo.Go.toInterface(_err_5010647));
                        return;
                        _gotoNext = 5010713i32;
                    } else if (__value__ == (5010713i32)) {
                        {
                            final __f__ = @:check2r _f_5010644.close;
                            __deferstack__.unshift({ ran : false, f : () -> __f__() });
                        };
                        _b_5010730 = stdgo._internal.bufio.Bufio_newreader.newReader(stdgo.Go.asInterface(_f_5010644));
                        _lineno_5010755 = (0 : stdgo.GoInt);
                        _lastRegexp_5010768 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _gotoNext = 5010785i32;
                    } else if (__value__ == (5010785i32)) {
                        var __blank__ = 0i32;
                        readingBreak = false;
                        _gotoNext = 5010795i32;
                    } else if (__value__ == (5010795i32)) {
                        if (!readingBreak) {
                            _gotoNext = 5010799i32;
                        } else {
                            _gotoNext = 5017279i32;
                        };
                    } else if (__value__ == (5010799i32)) {
                        _lineno_5010755++;
                        {
                            var __tmp__ = @:check2r _b_5010730.readString((10 : stdgo.GoUInt8));
                            _line_5010814 = @:tmpset0 __tmp__._0?.__copy__();
                            _err_5010820 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_5010820 != null) {
                            _gotoNext = 5010862i32;
                        } else {
                            _gotoNext = 5011280i32;
                        };
                    } else if (__value__ == (5010862i32)) {
                        if (stdgo.Go.toInterface(_err_5010820) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                            _gotoNext = 5010884i32;
                        } else {
                            _gotoNext = 5010939i32;
                        };
                    } else if (__value__ == (5010884i32)) {
                        @:check2r _t.errorf(("%s:%d: %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5010755), stdgo.Go.toInterface(_err_5010820));
                        _gotoNext = 5010939i32;
                    } else if (__value__ == (5010939i32)) {
                        readingBreak = true;
                        _gotoNext = 5010795i32;
                    } else if (__value__ == (5011280i32)) {
                        if (((_line_5010814[(0 : stdgo.GoInt)] == (35 : stdgo.GoUInt8)) || (_line_5010814[(0 : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 5011317i32;
                        } else {
                            _gotoNext = 5011345i32;
                        };
                    } else if (__value__ == (5011317i32)) {
                        _gotoNext = 5010795i32;
                    } else if (__value__ == (5011345i32)) {
                        _line_5010814 = (_line_5010814.__slice__(0, ((_line_5010814.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_5011373 = @:check2r stdgo._internal.regexp.Regexp__notab._notab.findAllString(_line_5010814?.__copy__(), (-1 : stdgo.GoInt));
                        if ((0i32 : stdgo.GoInt) < (_field_5011373.length)) {
                            _gotoNext = 5011579i32;
                        } else {
                            _gotoNext = 5011584i32;
                        };
                    } else if (__value__ == (5011418i32)) {
                        _i_5011418++;
                        _gotoNext = 5011580i32;
                    } else if (__value__ == (5011438i32)) {
                        _f_5011421 = _field_5011373[(_i_5011418 : stdgo.GoInt)]?.__copy__();
                        if (_f_5011421 == (("NULL" : stdgo.GoString))) {
                            _gotoNext = 5011458i32;
                        } else {
                            _gotoNext = 5011486i32;
                        };
                    } else if (__value__ == (5011458i32)) {
                        _field_5011373[(_i_5011418 : stdgo.GoInt)] = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _gotoNext = 5011486i32;
                    } else if (__value__ == (5011486i32)) {
                        if (_f_5011421 == (("NIL" : stdgo.GoString))) {
                            _gotoNext = 5011500i32;
                        } else {
                            _gotoNext = 5011418i32;
                        };
                    } else if (__value__ == (5011500i32)) {
                        @:check2r _t.logf(("%s:%d: skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5010755), stdgo.Go.toInterface(_line_5010814));
                        _gotoNext = 5010795i32;
                    } else if (__value__ == (5011579i32)) {
                        {
                            final __tmp__0 = 0i32;
                            final __tmp__1 = _field_5011373[(0i32 : stdgo.GoInt)]?.__copy__();
                            _i_5011418 = __tmp__0;
                            _f_5011421 = __tmp__1;
                        };
                        _gotoNext = 5011580i32;
                    } else if (__value__ == (5011580i32)) {
                        if (_i_5011418 < (_field_5011373.length)) {
                            _gotoNext = 5011438i32;
                        } else {
                            _gotoNext = 5011584i32;
                        };
                    } else if (__value__ == (5011584i32)) {
                        if ((_field_5011373.length) == ((0 : stdgo.GoInt))) {
                            _gotoNext = 5011603i32;
                        } else {
                            _gotoNext = 5014357i32;
                        };
                    } else if (__value__ == (5011603i32)) {
                        _gotoNext = 5010795i32;
                    } else if (__value__ == (5014357i32)) {
                        _flag_5014357 = _field_5011373[(0 : stdgo.GoInt)]?.__copy__();
                        _gotoNext = 5014376i32;
                    } else if (__value__ == (5014376i32)) {
                        {
                            final __value__ = _flag_5014357[(0 : stdgo.GoInt)];
                            if (__value__ == ((63 : stdgo.GoUInt8)) || __value__ == ((38 : stdgo.GoUInt8)) || __value__ == ((124 : stdgo.GoUInt8)) || __value__ == ((59 : stdgo.GoUInt8)) || __value__ == ((123 : stdgo.GoUInt8)) || __value__ == ((125 : stdgo.GoUInt8))) {
                                _gotoNext = 5014395i32;
                            } else if (__value__ == ((58 : stdgo.GoUInt8))) {
                                _gotoNext = 5014563i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8)) || __value__ == ((78 : stdgo.GoUInt8)) || __value__ == ((84 : stdgo.GoUInt8)) || __value__ == ((48 : stdgo.GoUInt8)) || __value__ == ((49 : stdgo.GoUInt8)) || __value__ == ((50 : stdgo.GoUInt8)) || __value__ == ((51 : stdgo.GoUInt8)) || __value__ == ((52 : stdgo.GoUInt8)) || __value__ == ((53 : stdgo.GoUInt8)) || __value__ == ((54 : stdgo.GoUInt8)) || __value__ == ((55 : stdgo.GoUInt8)) || __value__ == ((56 : stdgo.GoUInt8)) || __value__ == ((57 : stdgo.GoUInt8))) {
                                _gotoNext = 5014699i32;
                            } else {
                                _gotoNext = 5014902i32;
                            };
                        };
                    } else if (__value__ == (5014395i32)) {
                        _flag_5014357 = (_flag_5014357.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        if (_flag_5014357 == ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 5014533i32;
                        } else {
                            _gotoNext = 5014902i32;
                        };
                    } else if (__value__ == (5014533i32)) {
                        _gotoNext = 5010795i32;
                    } else if (__value__ == (5014563i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_flag_5014357.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (":" : stdgo.GoString));
                                _flag_5014357 = @:tmpset0 __tmp__._1?.__copy__();
                                _ok_5014580 = @:tmpset0 __tmp__._2;
                            };
                            if (!_ok_5014580) {
                                _gotoNext = 5014640i32;
                            } else {
                                _gotoNext = 5014902i32;
                            };
                        };
                    } else if (__value__ == (5014640i32)) {
                        @:check2r _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line_5010814));
                        _gotoNext = 5010795i32;
                    } else if (__value__ == (5014699i32)) {
                        @:check2r _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line_5010814));
                        _gotoNext = 5010795i32;
                    } else if (__value__ == (5014902i32)) {
                        if (((_field_5011373.length) < (4 : stdgo.GoInt) : Bool)) {
                            _gotoNext = 5014920i32;
                        } else {
                            _gotoNext = 5015053i32;
                        };
                    } else if (__value__ == (5014920i32)) {
                        @:check2r _t.errorf(("%s:%d: too few fields: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5010755), stdgo.Go.toInterface(_line_5010814));
                        _gotoNext = 5010795i32;
                    } else if (__value__ == (5015053i32)) {
                        if (stdgo._internal.strings.Strings_contains.contains(_flag_5014357?.__copy__(), ("$" : stdgo.GoString))) {
                            _gotoNext = 5015084i32;
                        } else {
                            _gotoNext = 5015503i32;
                        };
                    } else if (__value__ == (5015084i32)) {
                        _f_5015089 = ((("\"" : stdgo.GoString) + _field_5011373[(1 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_f_5015089?.__copy__());
                                _field_5011373[(1 : stdgo.GoInt)] = @:tmpset0 __tmp__._0?.__copy__();
                                _err_5010820 = @:tmpset0 __tmp__._1;
                            };
                            if (_err_5010820 != null) {
                                _gotoNext = 5015168i32;
                            } else {
                                _gotoNext = 5015236i32;
                            };
                        };
                    } else if (__value__ == (5015168i32)) {
                        @:check2r _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5010755), stdgo.Go.toInterface(_f_5015089));
                        _gotoNext = 5015236i32;
                    } else if (__value__ == (5015236i32)) {
                        _f_5015089 = ((("\"" : stdgo.GoString) + _field_5011373[(2 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_f_5015089?.__copy__());
                                _field_5011373[(2 : stdgo.GoInt)] = @:tmpset0 __tmp__._0?.__copy__();
                                _err_5010820 = @:tmpset0 __tmp__._1;
                            };
                            if (_err_5010820 != null) {
                                _gotoNext = 5015314i32;
                            } else {
                                _gotoNext = 5015503i32;
                            };
                        };
                    } else if (__value__ == (5015314i32)) {
                        @:check2r _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5010755), stdgo.Go.toInterface(_f_5015089));
                        _gotoNext = 5015503i32;
                    } else if (__value__ == (5015503i32)) {
                        if (_field_5011373[(1 : stdgo.GoInt)] == (("SAME" : stdgo.GoString))) {
                            _gotoNext = 5015525i32;
                        } else {
                            _gotoNext = 5015558i32;
                        };
                    } else if (__value__ == (5015525i32)) {
                        _field_5011373[(1 : stdgo.GoInt)] = _lastRegexp_5010768?.__copy__();
                        _gotoNext = 5015558i32;
                    } else if (__value__ == (5015558i32)) {
                        _lastRegexp_5010768 = _field_5011373[(1 : stdgo.GoInt)]?.__copy__();
                        _text_5015620 = _field_5011373[(2 : stdgo.GoInt)]?.__copy__();
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp__parsefowlerresult._parseFowlerResult(_field_5011373[(3 : stdgo.GoInt)]?.__copy__());
                            _ok_5015676 = @:tmpset0 __tmp__._0;
                            _shouldCompile_5015680 = @:tmpset0 __tmp__._1;
                            _shouldMatch_5015695 = @:tmpset0 __tmp__._2;
                            _pos_5015708 = @:tmpset0 __tmp__._3;
                        };
                        if (!_ok_5015676) {
                            _gotoNext = 5015752i32;
                        } else {
                            _gotoNext = 5015908i32;
                        };
                    } else if (__value__ == (5015752i32)) {
                        @:check2r _t.errorf(("%s:%d: cannot parse result %#q" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5010755), stdgo.Go.toInterface(_field_5011373[(3 : stdgo.GoInt)]));
                        _gotoNext = 5010795i32;
                    } else if (__value__ == (5015908i32)) {
                        _gotoNext = 5015908i32;
                        _keys_5015994 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                        _values_5015994 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                        for (_key => _value in _flag_5014357) {
                            _keys_5015994 = (_keys_5015994.__append__(_key));
                            _values_5015994 = (_values_5015994.__append__(_value));
                        };
                        if ((0i32 : stdgo.GoInt) < (_keys_5015994.length)) {
                            _gotoNext = 5017273i32;
                        } else {
                            _gotoNext = 5010795i32;
                        };
                    } else if (__value__ == (5016006i32)) {
                        _i_5016006++;
                        _gotoNext = 5017274i32;
                    } else if (__value__ == (5016017i32)) {
                        _c_5016001 = _values_5015994[@:invalid_index_invalid_type _i_5016006];
                        var __blank__ = _keys_5015994[@:invalid_index_invalid_type _i_5016006];
                        _pattern_5016022 = _field_5011373[(1 : stdgo.GoInt)]?.__copy__();
                        _syn_5016045 = (4 : stdgo._internal.regexp.syntax.Syntax_flags.Flags);
                        _gotoNext = 5016085i32;
                    } else if (__value__ == (5016085i32)) {
                        {
                            final __value__ = _c_5016001;
                            if (__value__ == ((69 : stdgo.GoInt32))) {
                                _gotoNext = 5016132i32;
                            } else if (__value__ == ((76 : stdgo.GoInt32))) {
                                _gotoNext = 5016186i32;
                            } else {
                                _gotoNext = 5016099i32;
                            };
                        };
                    } else if (__value__ == (5016099i32)) {
                        _i_5016006++;
                        _gotoNext = 5017274i32;
                    } else if (__value__ == (5016132i32)) {
                        _gotoNext = 5016253i32;
                    } else if (__value__ == (5016186i32)) {
                        _pattern_5016022 = stdgo._internal.regexp.Regexp_quotemeta.quoteMeta(_pattern_5016022?.__copy__())?.__copy__();
                        _gotoNext = 5016253i32;
                    } else if (__value__ == (5016253i32)) {
                        _keys_5016253 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                        _values_5016253 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                        for (_key => _value in _flag_5014357) {
                            _keys_5016253 = (_keys_5016253.__append__(_key));
                            _values_5016253 = (_values_5016253.__append__(_value));
                        };
                        if ((0i32 : stdgo.GoInt) < (_keys_5016253.length)) {
                            _gotoNext = 5016343i32;
                        } else {
                            _gotoNext = 5016350i32;
                        };
                    } else if (__value__ == (5016265i32)) {
                        _i_5016265++;
                        _gotoNext = 5016344i32;
                    } else if (__value__ == (5016276i32)) {
                        _c_5016260 = _values_5016253[@:invalid_index_invalid_type _i_5016265];
                        var __blank__ = _keys_5016253[@:invalid_index_invalid_type _i_5016265];
                        _gotoNext = 5016282i32;
                    } else if (__value__ == (5016282i32)) {
                        {
                            final __value__ = _c_5016260;
                            if (__value__ == ((105 : stdgo.GoInt32))) {
                                _gotoNext = 5016297i32;
                            } else {
                                _gotoNext = 5016265i32;
                            };
                        };
                    } else if (__value__ == (5016297i32)) {
                        _syn_5016045 = (_syn_5016045 | ((1 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_flags.Flags);
                        _gotoNext = 5016265i32;
                    } else if (__value__ == (5016343i32)) {
                        _i_5016265 = 0i32;
                        _gotoNext = 5016344i32;
                    } else if (__value__ == (5016344i32)) {
                        if (_i_5016265 < (_keys_5016253.length)) {
                            _gotoNext = 5016276i32;
                        } else {
                            _gotoNext = 5016350i32;
                        };
                    } else if (__value__ == (5016350i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp__compile._compile(_pattern_5016022?.__copy__(), _syn_5016045, true);
                            _re_5016350 = @:tmpset0 __tmp__._0;
                            _err_5016354 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_5016354 != null) {
                            _gotoNext = 5016406i32;
                        } else {
                            _gotoNext = 5016533i32;
                        };
                    } else if (__value__ == (5016406i32)) {
                        if (_shouldCompile_5015680) {
                            _gotoNext = 5016429i32;
                        } else {
                            _gotoNext = 5016508i32;
                        };
                    } else if (__value__ == (5016429i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q did not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5010755), stdgo.Go.toInterface(_pattern_5016022));
                        _gotoNext = 5016508i32;
                    } else if (__value__ == (5016508i32)) {
                        _i_5016006++;
                        _gotoNext = 5017274i32;
                    } else if (__value__ == (5016533i32)) {
                        if (!_shouldCompile_5015680) {
                            _gotoNext = 5016551i32;
                        } else {
                            _gotoNext = 5016651i32;
                        };
                    } else if (__value__ == (5016551i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q should not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5010755), stdgo.Go.toInterface(_pattern_5016022));
                        _i_5016006++;
                        _gotoNext = 5017274i32;
                    } else if (__value__ == (5016651i32)) {
                        _match_5016651 = @:check2r _re_5016350.matchString(_text_5015620?.__copy__());
                        if (_match_5016651 != (_shouldMatch_5015695)) {
                            _gotoNext = 5016708i32;
                        } else {
                            _gotoNext = 5016840i32;
                        };
                    } else if (__value__ == (5016708i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q.Match(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5010755), stdgo.Go.toInterface(_pattern_5016022), stdgo.Go.toInterface(_text_5015620), stdgo.Go.toInterface(_match_5016651), stdgo.Go.toInterface(_shouldMatch_5015695));
                        _i_5016006++;
                        _gotoNext = 5017274i32;
                    } else if (__value__ == (5016840i32)) {
                        _have_5016840 = @:check2r _re_5016350.findStringSubmatchIndex(_text_5015620?.__copy__());
                        if ((((_have_5016840.length) > (0 : stdgo.GoInt) : Bool)) != (_match_5016651)) {
                            _gotoNext = 5016912i32;
                        } else {
                            _gotoNext = 5017080i32;
                        };
                    } else if (__value__ == (5016912i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q.Match(%#q) = %v, but %#q.FindSubmatchIndex(%#q) = %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5010755), stdgo.Go.toInterface(_pattern_5016022), stdgo.Go.toInterface(_text_5015620), stdgo.Go.toInterface(_match_5016651), stdgo.Go.toInterface(_pattern_5016022), stdgo.Go.toInterface(_text_5015620), stdgo.Go.toInterface(_have_5016840));
                        _i_5016006++;
                        _gotoNext = 5017274i32;
                    } else if (__value__ == (5017080i32)) {
                        if (((_have_5016840.length) > (_pos_5015708.length) : Bool)) {
                            _gotoNext = 5017104i32;
                        } else {
                            _gotoNext = 5017141i32;
                        };
                    } else if (__value__ == (5017104i32)) {
                        _have_5016840 = (_have_5016840.__slice__(0, (_pos_5015708.length)) : stdgo.Slice<stdgo.GoInt>);
                        _gotoNext = 5017141i32;
                    } else if (__value__ == (5017141i32)) {
                        if (!stdgo._internal.regexp.Regexp__same._same(_have_5016840, _pos_5015708)) {
                            _gotoNext = 5017161i32;
                        } else {
                            _gotoNext = 5016006i32;
                        };
                    } else if (__value__ == (5017161i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q.FindSubmatchIndex(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5010755), stdgo.Go.toInterface(_pattern_5016022), stdgo.Go.toInterface(_text_5015620), stdgo.Go.toInterface(_have_5016840), stdgo.Go.toInterface(_pos_5015708));
                        _gotoNext = 5016006i32;
                    } else if (__value__ == (5017273i32)) {
                        _i_5016006 = 0i32;
                        _gotoNext = 5017274i32;
                    } else if (__value__ == (5017274i32)) {
                        if (_i_5016006 < (_keys_5015994.length)) {
                            _gotoNext = 5016017i32;
                        } else {
                            _gotoNext = 5010795i32;
                        };
                    } else if (__value__ == (5017279i32)) {
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
