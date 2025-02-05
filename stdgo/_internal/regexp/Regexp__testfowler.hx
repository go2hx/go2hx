package stdgo._internal.regexp;
function _testFowler(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _file:stdgo.GoString):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _keys_5133617 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            var _i_5133629 = @:invalid_type null;
            var _shouldCompile_5133303:Bool = false;
            var _ok_5133299:Bool = false;
            var _ok_5132203:Bool = false;
            var _have_5134463:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            var _i_5129041:stdgo.GoInt = (0 : stdgo.GoInt);
            var _syn_5133668:stdgo._internal.regexp.syntax.Syntax_flags.Flags = ((0 : stdgo.GoUInt16) : stdgo._internal.regexp.syntax.Syntax_flags.Flags);
            var _values_5133617 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var _f_5128267:stdgo.Ref<stdgo._internal.os.Os_file.File> = (null : stdgo.Ref<stdgo._internal.os.Os_file.File>);
            var _values_5133876 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var _keys_5133876 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            var _err_5128443:stdgo.Error = (null : stdgo.Error);
            var _err_5128270:stdgo.Error = (null : stdgo.Error);
            var _c_5133624:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _f_5129044:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRegexp_5128391:stdgo.GoString = ("" : stdgo.GoString);
            var _match_5134274:Bool = false;
            var _re_5133973:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
            var _i_5133888 = @:invalid_type null;
            var _shouldMatch_5133318:Bool = false;
            var _f_5132712:stdgo.GoString = ("" : stdgo.GoString);
            var readingBreak = false;
            var _lineno_5128378:stdgo.GoInt = (0 : stdgo.GoInt);
            var _err_5133977:stdgo.Error = (null : stdgo.Error);
            var _c_5133883:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _pos_5133331:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            var _text_5133243:stdgo.GoString = ("" : stdgo.GoString);
            var _flag_5131980:stdgo.GoString = ("" : stdgo.GoString);
            var _field_5128996:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
            var _line_5128437:stdgo.GoString = ("" : stdgo.GoString);
            var _pattern_5133645:stdgo.GoString = ("" : stdgo.GoString);
            var _b_5128353:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>);
            var _gotoNext = 0i32;
            var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
            while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
                {
                    final __value__ = _gotoNext;
                    if (__value__ == (0i32)) {
                        {
                            var __tmp__ = stdgo._internal.os.Os_open.open(_file?.__copy__());
                            _f_5128267 = @:tmpset0 __tmp__._0;
                            _err_5128270 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_5128270 != null) {
                            _gotoNext = 5128306i32;
                        } else {
                            _gotoNext = 5128336i32;
                        };
                    } else if (__value__ == (5128306i32)) {
                        @:check2r _t.error(stdgo.Go.toInterface(_err_5128270));
                        return;
                        _gotoNext = 5128336i32;
                    } else if (__value__ == (5128336i32)) {
                        {
                            final __f__ = @:check2r _f_5128267.close;
                            __deferstack__.unshift({ ran : false, f : () -> __f__() });
                        };
                        _b_5128353 = stdgo._internal.bufio.Bufio_newreader.newReader(stdgo.Go.asInterface(_f_5128267));
                        _lineno_5128378 = (0 : stdgo.GoInt);
                        _lastRegexp_5128391 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _gotoNext = 5128408i32;
                    } else if (__value__ == (5128408i32)) {
                        var __blank__ = 0i32;
                        readingBreak = false;
                        _gotoNext = 5128418i32;
                    } else if (__value__ == (5128418i32)) {
                        if (!readingBreak) {
                            _gotoNext = 5128422i32;
                        } else {
                            _gotoNext = 5134902i32;
                        };
                    } else if (__value__ == (5128422i32)) {
                        _lineno_5128378++;
                        {
                            var __tmp__ = @:check2r _b_5128353.readString((10 : stdgo.GoUInt8));
                            _line_5128437 = @:tmpset0 __tmp__._0?.__copy__();
                            _err_5128443 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_5128443 != null) {
                            _gotoNext = 5128485i32;
                        } else {
                            _gotoNext = 5128903i32;
                        };
                    } else if (__value__ == (5128485i32)) {
                        if (stdgo.Go.toInterface(_err_5128443) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                            _gotoNext = 5128507i32;
                        } else {
                            _gotoNext = 5128562i32;
                        };
                    } else if (__value__ == (5128507i32)) {
                        @:check2r _t.errorf(("%s:%d: %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5128378), stdgo.Go.toInterface(_err_5128443));
                        _gotoNext = 5128562i32;
                    } else if (__value__ == (5128562i32)) {
                        readingBreak = true;
                        _gotoNext = 5128418i32;
                    } else if (__value__ == (5128903i32)) {
                        if (((_line_5128437[(0 : stdgo.GoInt)] == (35 : stdgo.GoUInt8)) || (_line_5128437[(0 : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 5128940i32;
                        } else {
                            _gotoNext = 5128968i32;
                        };
                    } else if (__value__ == (5128940i32)) {
                        _gotoNext = 5128418i32;
                    } else if (__value__ == (5128968i32)) {
                        _line_5128437 = (_line_5128437.__slice__(0, ((_line_5128437.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_5128996 = @:check2r stdgo._internal.regexp.Regexp__notab._notab.findAllString(_line_5128437?.__copy__(), (-1 : stdgo.GoInt));
                        if ((0i32 : stdgo.GoInt) < (_field_5128996.length)) {
                            _gotoNext = 5129202i32;
                        } else {
                            _gotoNext = 5129207i32;
                        };
                    } else if (__value__ == (5129041i32)) {
                        _i_5129041++;
                        _gotoNext = 5129203i32;
                    } else if (__value__ == (5129061i32)) {
                        _f_5129044 = _field_5128996[(_i_5129041 : stdgo.GoInt)]?.__copy__();
                        if (_f_5129044 == (("NULL" : stdgo.GoString))) {
                            _gotoNext = 5129081i32;
                        } else {
                            _gotoNext = 5129109i32;
                        };
                    } else if (__value__ == (5129081i32)) {
                        _field_5128996[(_i_5129041 : stdgo.GoInt)] = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _gotoNext = 5129109i32;
                    } else if (__value__ == (5129109i32)) {
                        if (_f_5129044 == (("NIL" : stdgo.GoString))) {
                            _gotoNext = 5129123i32;
                        } else {
                            _gotoNext = 5129041i32;
                        };
                    } else if (__value__ == (5129123i32)) {
                        @:check2r _t.logf(("%s:%d: skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5128378), stdgo.Go.toInterface(_line_5128437));
                        _gotoNext = 5128418i32;
                    } else if (__value__ == (5129202i32)) {
                        {
                            final __tmp__0 = 0i32;
                            final __tmp__1 = _field_5128996[(0i32 : stdgo.GoInt)]?.__copy__();
                            _i_5129041 = __tmp__0;
                            _f_5129044 = __tmp__1;
                        };
                        _gotoNext = 5129203i32;
                    } else if (__value__ == (5129203i32)) {
                        if (_i_5129041 < (_field_5128996.length)) {
                            _gotoNext = 5129061i32;
                        } else {
                            _gotoNext = 5129207i32;
                        };
                    } else if (__value__ == (5129207i32)) {
                        if ((_field_5128996.length) == ((0 : stdgo.GoInt))) {
                            _gotoNext = 5129226i32;
                        } else {
                            _gotoNext = 5131980i32;
                        };
                    } else if (__value__ == (5129226i32)) {
                        _gotoNext = 5128418i32;
                    } else if (__value__ == (5131980i32)) {
                        _flag_5131980 = _field_5128996[(0 : stdgo.GoInt)]?.__copy__();
                        _gotoNext = 5131999i32;
                    } else if (__value__ == (5131999i32)) {
                        {
                            final __value__ = _flag_5131980[(0 : stdgo.GoInt)];
                            if (__value__ == ((63 : stdgo.GoUInt8)) || __value__ == ((38 : stdgo.GoUInt8)) || __value__ == ((124 : stdgo.GoUInt8)) || __value__ == ((59 : stdgo.GoUInt8)) || __value__ == ((123 : stdgo.GoUInt8)) || __value__ == ((125 : stdgo.GoUInt8))) {
                                _gotoNext = 5132018i32;
                            } else if (__value__ == ((58 : stdgo.GoUInt8))) {
                                _gotoNext = 5132186i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8)) || __value__ == ((78 : stdgo.GoUInt8)) || __value__ == ((84 : stdgo.GoUInt8)) || __value__ == ((48 : stdgo.GoUInt8)) || __value__ == ((49 : stdgo.GoUInt8)) || __value__ == ((50 : stdgo.GoUInt8)) || __value__ == ((51 : stdgo.GoUInt8)) || __value__ == ((52 : stdgo.GoUInt8)) || __value__ == ((53 : stdgo.GoUInt8)) || __value__ == ((54 : stdgo.GoUInt8)) || __value__ == ((55 : stdgo.GoUInt8)) || __value__ == ((56 : stdgo.GoUInt8)) || __value__ == ((57 : stdgo.GoUInt8))) {
                                _gotoNext = 5132322i32;
                            } else {
                                _gotoNext = 5132525i32;
                            };
                        };
                    } else if (__value__ == (5132018i32)) {
                        _flag_5131980 = (_flag_5131980.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        if (_flag_5131980 == ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 5132156i32;
                        } else {
                            _gotoNext = 5132525i32;
                        };
                    } else if (__value__ == (5132156i32)) {
                        _gotoNext = 5128418i32;
                    } else if (__value__ == (5132186i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_flag_5131980.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (":" : stdgo.GoString));
                                _flag_5131980 = @:tmpset0 __tmp__._1?.__copy__();
                                _ok_5132203 = @:tmpset0 __tmp__._2;
                            };
                            if (!_ok_5132203) {
                                _gotoNext = 5132263i32;
                            } else {
                                _gotoNext = 5132525i32;
                            };
                        };
                    } else if (__value__ == (5132263i32)) {
                        @:check2r _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line_5128437));
                        _gotoNext = 5128418i32;
                    } else if (__value__ == (5132322i32)) {
                        @:check2r _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line_5128437));
                        _gotoNext = 5128418i32;
                    } else if (__value__ == (5132525i32)) {
                        if (((_field_5128996.length) < (4 : stdgo.GoInt) : Bool)) {
                            _gotoNext = 5132543i32;
                        } else {
                            _gotoNext = 5132676i32;
                        };
                    } else if (__value__ == (5132543i32)) {
                        @:check2r _t.errorf(("%s:%d: too few fields: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5128378), stdgo.Go.toInterface(_line_5128437));
                        _gotoNext = 5128418i32;
                    } else if (__value__ == (5132676i32)) {
                        if (stdgo._internal.strings.Strings_contains.contains(_flag_5131980?.__copy__(), ("$" : stdgo.GoString))) {
                            _gotoNext = 5132707i32;
                        } else {
                            _gotoNext = 5133126i32;
                        };
                    } else if (__value__ == (5132707i32)) {
                        _f_5132712 = ((("\"" : stdgo.GoString) + _field_5128996[(1 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_f_5132712?.__copy__());
                                _field_5128996[(1 : stdgo.GoInt)] = @:tmpset0 __tmp__._0?.__copy__();
                                _err_5128443 = @:tmpset0 __tmp__._1;
                            };
                            if (_err_5128443 != null) {
                                _gotoNext = 5132791i32;
                            } else {
                                _gotoNext = 5132859i32;
                            };
                        };
                    } else if (__value__ == (5132791i32)) {
                        @:check2r _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5128378), stdgo.Go.toInterface(_f_5132712));
                        _gotoNext = 5132859i32;
                    } else if (__value__ == (5132859i32)) {
                        _f_5132712 = ((("\"" : stdgo.GoString) + _field_5128996[(2 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_f_5132712?.__copy__());
                                _field_5128996[(2 : stdgo.GoInt)] = @:tmpset0 __tmp__._0?.__copy__();
                                _err_5128443 = @:tmpset0 __tmp__._1;
                            };
                            if (_err_5128443 != null) {
                                _gotoNext = 5132937i32;
                            } else {
                                _gotoNext = 5133126i32;
                            };
                        };
                    } else if (__value__ == (5132937i32)) {
                        @:check2r _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5128378), stdgo.Go.toInterface(_f_5132712));
                        _gotoNext = 5133126i32;
                    } else if (__value__ == (5133126i32)) {
                        if (_field_5128996[(1 : stdgo.GoInt)] == (("SAME" : stdgo.GoString))) {
                            _gotoNext = 5133148i32;
                        } else {
                            _gotoNext = 5133181i32;
                        };
                    } else if (__value__ == (5133148i32)) {
                        _field_5128996[(1 : stdgo.GoInt)] = _lastRegexp_5128391?.__copy__();
                        _gotoNext = 5133181i32;
                    } else if (__value__ == (5133181i32)) {
                        _lastRegexp_5128391 = _field_5128996[(1 : stdgo.GoInt)]?.__copy__();
                        _text_5133243 = _field_5128996[(2 : stdgo.GoInt)]?.__copy__();
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp__parsefowlerresult._parseFowlerResult(_field_5128996[(3 : stdgo.GoInt)]?.__copy__());
                            _ok_5133299 = @:tmpset0 __tmp__._0;
                            _shouldCompile_5133303 = @:tmpset0 __tmp__._1;
                            _shouldMatch_5133318 = @:tmpset0 __tmp__._2;
                            _pos_5133331 = @:tmpset0 __tmp__._3;
                        };
                        if (!_ok_5133299) {
                            _gotoNext = 5133375i32;
                        } else {
                            _gotoNext = 5133531i32;
                        };
                    } else if (__value__ == (5133375i32)) {
                        @:check2r _t.errorf(("%s:%d: cannot parse result %#q" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5128378), stdgo.Go.toInterface(_field_5128996[(3 : stdgo.GoInt)]));
                        _gotoNext = 5128418i32;
                    } else if (__value__ == (5133531i32)) {
                        _gotoNext = 5133531i32;
                        _keys_5133617 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                        _values_5133617 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                        for (_key => _value in _flag_5131980) {
                            _keys_5133617 = (_keys_5133617.__append__(_key));
                            _values_5133617 = (_values_5133617.__append__(_value));
                        };
                        if ((0i32 : stdgo.GoInt) < (_keys_5133617.length)) {
                            _gotoNext = 5134896i32;
                        } else {
                            _gotoNext = 5128418i32;
                        };
                    } else if (__value__ == (5133629i32)) {
                        _i_5133629++;
                        _gotoNext = 5134897i32;
                    } else if (__value__ == (5133640i32)) {
                        _c_5133624 = _values_5133617[@:invalid_index_invalid_type _i_5133629];
                        var __blank__ = _keys_5133617[@:invalid_index_invalid_type _i_5133629];
                        _pattern_5133645 = _field_5128996[(1 : stdgo.GoInt)]?.__copy__();
                        _syn_5133668 = (4 : stdgo._internal.regexp.syntax.Syntax_flags.Flags);
                        _gotoNext = 5133708i32;
                    } else if (__value__ == (5133708i32)) {
                        {
                            final __value__ = _c_5133624;
                            if (__value__ == ((69 : stdgo.GoInt32))) {
                                _gotoNext = 5133755i32;
                            } else if (__value__ == ((76 : stdgo.GoInt32))) {
                                _gotoNext = 5133809i32;
                            } else {
                                _gotoNext = 5133722i32;
                            };
                        };
                    } else if (__value__ == (5133722i32)) {
                        _i_5133629++;
                        _gotoNext = 5134897i32;
                    } else if (__value__ == (5133755i32)) {
                        _gotoNext = 5133876i32;
                    } else if (__value__ == (5133809i32)) {
                        _pattern_5133645 = stdgo._internal.regexp.Regexp_quotemeta.quoteMeta(_pattern_5133645?.__copy__())?.__copy__();
                        _gotoNext = 5133876i32;
                    } else if (__value__ == (5133876i32)) {
                        _keys_5133876 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                        _values_5133876 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                        for (_key => _value in _flag_5131980) {
                            _keys_5133876 = (_keys_5133876.__append__(_key));
                            _values_5133876 = (_values_5133876.__append__(_value));
                        };
                        if ((0i32 : stdgo.GoInt) < (_keys_5133876.length)) {
                            _gotoNext = 5133966i32;
                        } else {
                            _gotoNext = 5133973i32;
                        };
                    } else if (__value__ == (5133888i32)) {
                        _i_5133888++;
                        _gotoNext = 5133967i32;
                    } else if (__value__ == (5133899i32)) {
                        _c_5133883 = _values_5133876[@:invalid_index_invalid_type _i_5133888];
                        var __blank__ = _keys_5133876[@:invalid_index_invalid_type _i_5133888];
                        _gotoNext = 5133905i32;
                    } else if (__value__ == (5133905i32)) {
                        {
                            final __value__ = _c_5133883;
                            if (__value__ == ((105 : stdgo.GoInt32))) {
                                _gotoNext = 5133920i32;
                            } else {
                                _gotoNext = 5133888i32;
                            };
                        };
                    } else if (__value__ == (5133920i32)) {
                        _syn_5133668 = (_syn_5133668 | ((1 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_flags.Flags);
                        _gotoNext = 5133888i32;
                    } else if (__value__ == (5133966i32)) {
                        _i_5133888 = 0i32;
                        _gotoNext = 5133967i32;
                    } else if (__value__ == (5133967i32)) {
                        if (_i_5133888 < (_keys_5133876.length)) {
                            _gotoNext = 5133899i32;
                        } else {
                            _gotoNext = 5133973i32;
                        };
                    } else if (__value__ == (5133973i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp__compile._compile(_pattern_5133645?.__copy__(), _syn_5133668, true);
                            _re_5133973 = @:tmpset0 __tmp__._0;
                            _err_5133977 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_5133977 != null) {
                            _gotoNext = 5134029i32;
                        } else {
                            _gotoNext = 5134156i32;
                        };
                    } else if (__value__ == (5134029i32)) {
                        if (_shouldCompile_5133303) {
                            _gotoNext = 5134052i32;
                        } else {
                            _gotoNext = 5134131i32;
                        };
                    } else if (__value__ == (5134052i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q did not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5128378), stdgo.Go.toInterface(_pattern_5133645));
                        _gotoNext = 5134131i32;
                    } else if (__value__ == (5134131i32)) {
                        _i_5133629++;
                        _gotoNext = 5134897i32;
                    } else if (__value__ == (5134156i32)) {
                        if (!_shouldCompile_5133303) {
                            _gotoNext = 5134174i32;
                        } else {
                            _gotoNext = 5134274i32;
                        };
                    } else if (__value__ == (5134174i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q should not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5128378), stdgo.Go.toInterface(_pattern_5133645));
                        _i_5133629++;
                        _gotoNext = 5134897i32;
                    } else if (__value__ == (5134274i32)) {
                        _match_5134274 = @:check2r _re_5133973.matchString(_text_5133243?.__copy__());
                        if (_match_5134274 != (_shouldMatch_5133318)) {
                            _gotoNext = 5134331i32;
                        } else {
                            _gotoNext = 5134463i32;
                        };
                    } else if (__value__ == (5134331i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q.Match(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5128378), stdgo.Go.toInterface(_pattern_5133645), stdgo.Go.toInterface(_text_5133243), stdgo.Go.toInterface(_match_5134274), stdgo.Go.toInterface(_shouldMatch_5133318));
                        _i_5133629++;
                        _gotoNext = 5134897i32;
                    } else if (__value__ == (5134463i32)) {
                        _have_5134463 = @:check2r _re_5133973.findStringSubmatchIndex(_text_5133243?.__copy__());
                        if ((((_have_5134463.length) > (0 : stdgo.GoInt) : Bool)) != (_match_5134274)) {
                            _gotoNext = 5134535i32;
                        } else {
                            _gotoNext = 5134703i32;
                        };
                    } else if (__value__ == (5134535i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q.Match(%#q) = %v, but %#q.FindSubmatchIndex(%#q) = %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5128378), stdgo.Go.toInterface(_pattern_5133645), stdgo.Go.toInterface(_text_5133243), stdgo.Go.toInterface(_match_5134274), stdgo.Go.toInterface(_pattern_5133645), stdgo.Go.toInterface(_text_5133243), stdgo.Go.toInterface(_have_5134463));
                        _i_5133629++;
                        _gotoNext = 5134897i32;
                    } else if (__value__ == (5134703i32)) {
                        if (((_have_5134463.length) > (_pos_5133331.length) : Bool)) {
                            _gotoNext = 5134727i32;
                        } else {
                            _gotoNext = 5134764i32;
                        };
                    } else if (__value__ == (5134727i32)) {
                        _have_5134463 = (_have_5134463.__slice__(0, (_pos_5133331.length)) : stdgo.Slice<stdgo.GoInt>);
                        _gotoNext = 5134764i32;
                    } else if (__value__ == (5134764i32)) {
                        if (!stdgo._internal.regexp.Regexp__same._same(_have_5134463, _pos_5133331)) {
                            _gotoNext = 5134784i32;
                        } else {
                            _gotoNext = 5133629i32;
                        };
                    } else if (__value__ == (5134784i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q.FindSubmatchIndex(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5128378), stdgo.Go.toInterface(_pattern_5133645), stdgo.Go.toInterface(_text_5133243), stdgo.Go.toInterface(_have_5134463), stdgo.Go.toInterface(_pos_5133331));
                        _gotoNext = 5133629i32;
                    } else if (__value__ == (5134896i32)) {
                        _i_5133629 = 0i32;
                        _gotoNext = 5134897i32;
                    } else if (__value__ == (5134897i32)) {
                        if (_i_5133629 < (_keys_5133617.length)) {
                            _gotoNext = 5133640i32;
                        } else {
                            _gotoNext = 5128418i32;
                        };
                    } else if (__value__ == (5134902i32)) {
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
