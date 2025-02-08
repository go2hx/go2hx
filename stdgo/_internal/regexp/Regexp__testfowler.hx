package stdgo._internal.regexp;
function _testFowler(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _file:stdgo.GoString):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _keys_4989608 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            var _flag_4987971:stdgo.GoString = ("" : stdgo.GoString);
            var _f_4984258:stdgo.Ref<stdgo._internal.os.Os_file.File> = (null : stdgo.Ref<stdgo._internal.os.Os_file.File>);
            var _match_4990265:Bool = false;
            var _f_4988703:stdgo.GoString = ("" : stdgo.GoString);
            var _i_4985032:stdgo.GoInt = (0 : stdgo.GoInt);
            var _lastRegexp_4984382:stdgo.GoString = ("" : stdgo.GoString);
            var _err_4989968:stdgo.Error = (null : stdgo.Error);
            var _pos_4989322:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            var _values_4989608 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var _lineno_4984369:stdgo.GoInt = (0 : stdgo.GoInt);
            var _err_4984261:stdgo.Error = (null : stdgo.Error);
            var _i_4989620 = @:invalid_type null;
            var _ok_4988194:Bool = false;
            var _f_4985035:stdgo.GoString = ("" : stdgo.GoString);
            var _re_4989964:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
            var _values_4989867 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var _keys_4989867 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            var _syn_4989659:stdgo._internal.regexp.syntax.Syntax_flags.Flags = ((0 : stdgo.GoUInt16) : stdgo._internal.regexp.syntax.Syntax_flags.Flags);
            var _field_4984987:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
            var readingBreak = false;
            var _have_4990454:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            var _c_4989874:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _i_4989879 = @:invalid_type null;
            var _shouldMatch_4989309:Bool = false;
            var _shouldCompile_4989294:Bool = false;
            var _text_4989234:stdgo.GoString = ("" : stdgo.GoString);
            var _c_4989615:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _ok_4989290:Bool = false;
            var _line_4984428:stdgo.GoString = ("" : stdgo.GoString);
            var _b_4984344:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>);
            var _pattern_4989636:stdgo.GoString = ("" : stdgo.GoString);
            var _err_4984434:stdgo.Error = (null : stdgo.Error);
            var _gotoNext = 0i32;
            var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
            while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
                {
                    final __value__ = _gotoNext;
                    if (__value__ == (0i32)) {
                        {
                            var __tmp__ = stdgo._internal.os.Os_open.open(_file?.__copy__());
                            _f_4984258 = @:tmpset0 __tmp__._0;
                            _err_4984261 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_4984261 != null) {
                            _gotoNext = 4984297i32;
                        } else {
                            _gotoNext = 4984327i32;
                        };
                    } else if (__value__ == (4984297i32)) {
                        @:check2r _t.error(stdgo.Go.toInterface(_err_4984261));
                        return;
                        _gotoNext = 4984327i32;
                    } else if (__value__ == (4984327i32)) {
                        {
                            final __f__ = @:check2r _f_4984258.close;
                            __deferstack__.unshift({ ran : false, f : () -> __f__() });
                        };
                        _b_4984344 = stdgo._internal.bufio.Bufio_newreader.newReader(stdgo.Go.asInterface(_f_4984258));
                        _lineno_4984369 = (0 : stdgo.GoInt);
                        _lastRegexp_4984382 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _gotoNext = 4984399i32;
                    } else if (__value__ == (4984399i32)) {
                        var __blank__ = 0i32;
                        readingBreak = false;
                        _gotoNext = 4984409i32;
                    } else if (__value__ == (4984409i32)) {
                        if (!readingBreak) {
                            _gotoNext = 4984413i32;
                        } else {
                            _gotoNext = 4990893i32;
                        };
                    } else if (__value__ == (4984413i32)) {
                        _lineno_4984369++;
                        {
                            var __tmp__ = @:check2r _b_4984344.readString((10 : stdgo.GoUInt8));
                            _line_4984428 = @:tmpset0 __tmp__._0?.__copy__();
                            _err_4984434 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_4984434 != null) {
                            _gotoNext = 4984476i32;
                        } else {
                            _gotoNext = 4984894i32;
                        };
                    } else if (__value__ == (4984476i32)) {
                        if (stdgo.Go.toInterface(_err_4984434) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                            _gotoNext = 4984498i32;
                        } else {
                            _gotoNext = 4984553i32;
                        };
                    } else if (__value__ == (4984498i32)) {
                        @:check2r _t.errorf(("%s:%d: %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4984369), stdgo.Go.toInterface(_err_4984434));
                        _gotoNext = 4984553i32;
                    } else if (__value__ == (4984553i32)) {
                        readingBreak = true;
                        _gotoNext = 4984409i32;
                    } else if (__value__ == (4984894i32)) {
                        if (((_line_4984428[(0 : stdgo.GoInt)] == (35 : stdgo.GoUInt8)) || (_line_4984428[(0 : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 4984931i32;
                        } else {
                            _gotoNext = 4984959i32;
                        };
                    } else if (__value__ == (4984931i32)) {
                        _gotoNext = 4984409i32;
                    } else if (__value__ == (4984959i32)) {
                        _line_4984428 = (_line_4984428.__slice__(0, ((_line_4984428.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_4984987 = @:check2r stdgo._internal.regexp.Regexp__notab._notab.findAllString(_line_4984428?.__copy__(), (-1 : stdgo.GoInt));
                        if ((0i32 : stdgo.GoInt) < (_field_4984987.length)) {
                            _gotoNext = 4985193i32;
                        } else {
                            _gotoNext = 4985198i32;
                        };
                    } else if (__value__ == (4985032i32)) {
                        _i_4985032++;
                        _gotoNext = 4985194i32;
                    } else if (__value__ == (4985052i32)) {
                        _f_4985035 = _field_4984987[(_i_4985032 : stdgo.GoInt)]?.__copy__();
                        if (_f_4985035 == (("NULL" : stdgo.GoString))) {
                            _gotoNext = 4985072i32;
                        } else {
                            _gotoNext = 4985100i32;
                        };
                    } else if (__value__ == (4985072i32)) {
                        _field_4984987[(_i_4985032 : stdgo.GoInt)] = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _gotoNext = 4985100i32;
                    } else if (__value__ == (4985100i32)) {
                        if (_f_4985035 == (("NIL" : stdgo.GoString))) {
                            _gotoNext = 4985114i32;
                        } else {
                            _gotoNext = 4985032i32;
                        };
                    } else if (__value__ == (4985114i32)) {
                        @:check2r _t.logf(("%s:%d: skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4984369), stdgo.Go.toInterface(_line_4984428));
                        _gotoNext = 4984409i32;
                    } else if (__value__ == (4985193i32)) {
                        {
                            final __tmp__0 = 0i32;
                            final __tmp__1 = _field_4984987[(0i32 : stdgo.GoInt)]?.__copy__();
                            _i_4985032 = __tmp__0;
                            _f_4985035 = __tmp__1;
                        };
                        _gotoNext = 4985194i32;
                    } else if (__value__ == (4985194i32)) {
                        if (_i_4985032 < (_field_4984987.length)) {
                            _gotoNext = 4985052i32;
                        } else {
                            _gotoNext = 4985198i32;
                        };
                    } else if (__value__ == (4985198i32)) {
                        if ((_field_4984987.length) == ((0 : stdgo.GoInt))) {
                            _gotoNext = 4985217i32;
                        } else {
                            _gotoNext = 4987971i32;
                        };
                    } else if (__value__ == (4985217i32)) {
                        _gotoNext = 4984409i32;
                    } else if (__value__ == (4987971i32)) {
                        _flag_4987971 = _field_4984987[(0 : stdgo.GoInt)]?.__copy__();
                        _gotoNext = 4987990i32;
                    } else if (__value__ == (4987990i32)) {
                        {
                            final __value__ = _flag_4987971[(0 : stdgo.GoInt)];
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
                        _flag_4987971 = (_flag_4987971.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        if (_flag_4987971 == ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 4988147i32;
                        } else {
                            _gotoNext = 4988516i32;
                        };
                    } else if (__value__ == (4988147i32)) {
                        _gotoNext = 4984409i32;
                    } else if (__value__ == (4988177i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_flag_4987971.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (":" : stdgo.GoString));
                                _flag_4987971 = @:tmpset0 __tmp__._1?.__copy__();
                                _ok_4988194 = @:tmpset0 __tmp__._2;
                            };
                            if (!_ok_4988194) {
                                _gotoNext = 4988254i32;
                            } else {
                                _gotoNext = 4988516i32;
                            };
                        };
                    } else if (__value__ == (4988254i32)) {
                        @:check2r _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line_4984428));
                        _gotoNext = 4984409i32;
                    } else if (__value__ == (4988313i32)) {
                        @:check2r _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line_4984428));
                        _gotoNext = 4984409i32;
                    } else if (__value__ == (4988516i32)) {
                        if (((_field_4984987.length) < (4 : stdgo.GoInt) : Bool)) {
                            _gotoNext = 4988534i32;
                        } else {
                            _gotoNext = 4988667i32;
                        };
                    } else if (__value__ == (4988534i32)) {
                        @:check2r _t.errorf(("%s:%d: too few fields: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4984369), stdgo.Go.toInterface(_line_4984428));
                        _gotoNext = 4984409i32;
                    } else if (__value__ == (4988667i32)) {
                        if (stdgo._internal.strings.Strings_contains.contains(_flag_4987971?.__copy__(), ("$" : stdgo.GoString))) {
                            _gotoNext = 4988698i32;
                        } else {
                            _gotoNext = 4989117i32;
                        };
                    } else if (__value__ == (4988698i32)) {
                        _f_4988703 = ((("\"" : stdgo.GoString) + _field_4984987[(1 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_f_4988703?.__copy__());
                                _field_4984987[(1 : stdgo.GoInt)] = @:tmpset0 __tmp__._0?.__copy__();
                                _err_4984434 = @:tmpset0 __tmp__._1;
                            };
                            if (_err_4984434 != null) {
                                _gotoNext = 4988782i32;
                            } else {
                                _gotoNext = 4988850i32;
                            };
                        };
                    } else if (__value__ == (4988782i32)) {
                        @:check2r _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4984369), stdgo.Go.toInterface(_f_4988703));
                        _gotoNext = 4988850i32;
                    } else if (__value__ == (4988850i32)) {
                        _f_4988703 = ((("\"" : stdgo.GoString) + _field_4984987[(2 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_f_4988703?.__copy__());
                                _field_4984987[(2 : stdgo.GoInt)] = @:tmpset0 __tmp__._0?.__copy__();
                                _err_4984434 = @:tmpset0 __tmp__._1;
                            };
                            if (_err_4984434 != null) {
                                _gotoNext = 4988928i32;
                            } else {
                                _gotoNext = 4989117i32;
                            };
                        };
                    } else if (__value__ == (4988928i32)) {
                        @:check2r _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4984369), stdgo.Go.toInterface(_f_4988703));
                        _gotoNext = 4989117i32;
                    } else if (__value__ == (4989117i32)) {
                        if (_field_4984987[(1 : stdgo.GoInt)] == (("SAME" : stdgo.GoString))) {
                            _gotoNext = 4989139i32;
                        } else {
                            _gotoNext = 4989172i32;
                        };
                    } else if (__value__ == (4989139i32)) {
                        _field_4984987[(1 : stdgo.GoInt)] = _lastRegexp_4984382?.__copy__();
                        _gotoNext = 4989172i32;
                    } else if (__value__ == (4989172i32)) {
                        _lastRegexp_4984382 = _field_4984987[(1 : stdgo.GoInt)]?.__copy__();
                        _text_4989234 = _field_4984987[(2 : stdgo.GoInt)]?.__copy__();
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp__parsefowlerresult._parseFowlerResult(_field_4984987[(3 : stdgo.GoInt)]?.__copy__());
                            _ok_4989290 = @:tmpset0 __tmp__._0;
                            _shouldCompile_4989294 = @:tmpset0 __tmp__._1;
                            _shouldMatch_4989309 = @:tmpset0 __tmp__._2;
                            _pos_4989322 = @:tmpset0 __tmp__._3;
                        };
                        if (!_ok_4989290) {
                            _gotoNext = 4989366i32;
                        } else {
                            _gotoNext = 4989522i32;
                        };
                    } else if (__value__ == (4989366i32)) {
                        @:check2r _t.errorf(("%s:%d: cannot parse result %#q" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4984369), stdgo.Go.toInterface(_field_4984987[(3 : stdgo.GoInt)]));
                        _gotoNext = 4984409i32;
                    } else if (__value__ == (4989522i32)) {
                        _gotoNext = 4989522i32;
                        _keys_4989608 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                        _values_4989608 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                        for (_key => _value in _flag_4987971) {
                            _keys_4989608 = (_keys_4989608.__append__(_key));
                            _values_4989608 = (_values_4989608.__append__(_value));
                        };
                        if ((0i32 : stdgo.GoInt) < (_keys_4989608.length)) {
                            _gotoNext = 4990887i32;
                        } else {
                            _gotoNext = 4984409i32;
                        };
                    } else if (__value__ == (4989620i32)) {
                        _i_4989620++;
                        _gotoNext = 4990888i32;
                    } else if (__value__ == (4989631i32)) {
                        _c_4989615 = _values_4989608[@:invalid_index_invalid_type _i_4989620];
                        var __blank__ = _keys_4989608[@:invalid_index_invalid_type _i_4989620];
                        _pattern_4989636 = _field_4984987[(1 : stdgo.GoInt)]?.__copy__();
                        _syn_4989659 = (4 : stdgo._internal.regexp.syntax.Syntax_flags.Flags);
                        _gotoNext = 4989699i32;
                    } else if (__value__ == (4989699i32)) {
                        {
                            final __value__ = _c_4989615;
                            if (__value__ == ((69 : stdgo.GoInt32))) {
                                _gotoNext = 4989746i32;
                            } else if (__value__ == ((76 : stdgo.GoInt32))) {
                                _gotoNext = 4989800i32;
                            } else {
                                _gotoNext = 4989713i32;
                            };
                        };
                    } else if (__value__ == (4989713i32)) {
                        _i_4989620++;
                        _gotoNext = 4990888i32;
                    } else if (__value__ == (4989746i32)) {
                        _gotoNext = 4989867i32;
                    } else if (__value__ == (4989800i32)) {
                        _pattern_4989636 = stdgo._internal.regexp.Regexp_quotemeta.quoteMeta(_pattern_4989636?.__copy__())?.__copy__();
                        _gotoNext = 4989867i32;
                    } else if (__value__ == (4989867i32)) {
                        _keys_4989867 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                        _values_4989867 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                        for (_key => _value in _flag_4987971) {
                            _keys_4989867 = (_keys_4989867.__append__(_key));
                            _values_4989867 = (_values_4989867.__append__(_value));
                        };
                        if ((0i32 : stdgo.GoInt) < (_keys_4989867.length)) {
                            _gotoNext = 4989957i32;
                        } else {
                            _gotoNext = 4989964i32;
                        };
                    } else if (__value__ == (4989879i32)) {
                        _i_4989879++;
                        _gotoNext = 4989958i32;
                    } else if (__value__ == (4989890i32)) {
                        _c_4989874 = _values_4989867[@:invalid_index_invalid_type _i_4989879];
                        var __blank__ = _keys_4989867[@:invalid_index_invalid_type _i_4989879];
                        _gotoNext = 4989896i32;
                    } else if (__value__ == (4989896i32)) {
                        {
                            final __value__ = _c_4989874;
                            if (__value__ == ((105 : stdgo.GoInt32))) {
                                _gotoNext = 4989911i32;
                            } else {
                                _gotoNext = 4989879i32;
                            };
                        };
                    } else if (__value__ == (4989911i32)) {
                        _syn_4989659 = (_syn_4989659 | ((1 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_flags.Flags);
                        _gotoNext = 4989879i32;
                    } else if (__value__ == (4989957i32)) {
                        _i_4989879 = 0i32;
                        _gotoNext = 4989958i32;
                    } else if (__value__ == (4989958i32)) {
                        if (_i_4989879 < (_keys_4989867.length)) {
                            _gotoNext = 4989890i32;
                        } else {
                            _gotoNext = 4989964i32;
                        };
                    } else if (__value__ == (4989964i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp__compile._compile(_pattern_4989636?.__copy__(), _syn_4989659, true);
                            _re_4989964 = @:tmpset0 __tmp__._0;
                            _err_4989968 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_4989968 != null) {
                            _gotoNext = 4990020i32;
                        } else {
                            _gotoNext = 4990147i32;
                        };
                    } else if (__value__ == (4990020i32)) {
                        if (_shouldCompile_4989294) {
                            _gotoNext = 4990043i32;
                        } else {
                            _gotoNext = 4990122i32;
                        };
                    } else if (__value__ == (4990043i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q did not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4984369), stdgo.Go.toInterface(_pattern_4989636));
                        _gotoNext = 4990122i32;
                    } else if (__value__ == (4990122i32)) {
                        _i_4989620++;
                        _gotoNext = 4990888i32;
                    } else if (__value__ == (4990147i32)) {
                        if (!_shouldCompile_4989294) {
                            _gotoNext = 4990165i32;
                        } else {
                            _gotoNext = 4990265i32;
                        };
                    } else if (__value__ == (4990165i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q should not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4984369), stdgo.Go.toInterface(_pattern_4989636));
                        _i_4989620++;
                        _gotoNext = 4990888i32;
                    } else if (__value__ == (4990265i32)) {
                        _match_4990265 = @:check2r _re_4989964.matchString(_text_4989234?.__copy__());
                        if (_match_4990265 != (_shouldMatch_4989309)) {
                            _gotoNext = 4990322i32;
                        } else {
                            _gotoNext = 4990454i32;
                        };
                    } else if (__value__ == (4990322i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q.Match(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4984369), stdgo.Go.toInterface(_pattern_4989636), stdgo.Go.toInterface(_text_4989234), stdgo.Go.toInterface(_match_4990265), stdgo.Go.toInterface(_shouldMatch_4989309));
                        _i_4989620++;
                        _gotoNext = 4990888i32;
                    } else if (__value__ == (4990454i32)) {
                        _have_4990454 = @:check2r _re_4989964.findStringSubmatchIndex(_text_4989234?.__copy__());
                        if ((((_have_4990454.length) > (0 : stdgo.GoInt) : Bool)) != (_match_4990265)) {
                            _gotoNext = 4990526i32;
                        } else {
                            _gotoNext = 4990694i32;
                        };
                    } else if (__value__ == (4990526i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q.Match(%#q) = %v, but %#q.FindSubmatchIndex(%#q) = %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4984369), stdgo.Go.toInterface(_pattern_4989636), stdgo.Go.toInterface(_text_4989234), stdgo.Go.toInterface(_match_4990265), stdgo.Go.toInterface(_pattern_4989636), stdgo.Go.toInterface(_text_4989234), stdgo.Go.toInterface(_have_4990454));
                        _i_4989620++;
                        _gotoNext = 4990888i32;
                    } else if (__value__ == (4990694i32)) {
                        if (((_have_4990454.length) > (_pos_4989322.length) : Bool)) {
                            _gotoNext = 4990718i32;
                        } else {
                            _gotoNext = 4990755i32;
                        };
                    } else if (__value__ == (4990718i32)) {
                        _have_4990454 = (_have_4990454.__slice__(0, (_pos_4989322.length)) : stdgo.Slice<stdgo.GoInt>);
                        _gotoNext = 4990755i32;
                    } else if (__value__ == (4990755i32)) {
                        if (!stdgo._internal.regexp.Regexp__same._same(_have_4990454, _pos_4989322)) {
                            _gotoNext = 4990775i32;
                        } else {
                            _gotoNext = 4989620i32;
                        };
                    } else if (__value__ == (4990775i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q.FindSubmatchIndex(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4984369), stdgo.Go.toInterface(_pattern_4989636), stdgo.Go.toInterface(_text_4989234), stdgo.Go.toInterface(_have_4990454), stdgo.Go.toInterface(_pos_4989322));
                        _gotoNext = 4989620i32;
                    } else if (__value__ == (4990887i32)) {
                        _i_4989620 = 0i32;
                        _gotoNext = 4990888i32;
                    } else if (__value__ == (4990888i32)) {
                        if (_i_4989620 < (_keys_4989608.length)) {
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
