package stdgo._internal.regexp;
function _testFowler(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _file:stdgo.GoString):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _c_5150296:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _keys_5150289 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            var _i_5145713:stdgo.GoInt = (0 : stdgo.GoInt);
            var _field_5145668:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
            var _err_5150649:stdgo.Error = (null : stdgo.Error);
            var _pattern_5150317:stdgo.GoString = ("" : stdgo.GoString);
            var _f_5149384:stdgo.GoString = ("" : stdgo.GoString);
            var _flag_5148652:stdgo.GoString = ("" : stdgo.GoString);
            var _re_5150645:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
            var _c_5150555:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _syn_5150340:stdgo._internal.regexp.syntax.Syntax_Flags.Flags = ((0 : stdgo.GoUInt16) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
            var _err_5144942:stdgo.Error = (null : stdgo.Error);
            var _ok_5148875:Bool = false;
            var _f_5144939:stdgo.Ref<stdgo._internal.os.Os_File.File> = (null : stdgo.Ref<stdgo._internal.os.Os_File.File>);
            var _values_5150289 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var _text_5149915:stdgo.GoString = ("" : stdgo.GoString);
            var readingBreak = false;
            var _lastRegexp_5145063:stdgo.GoString = ("" : stdgo.GoString);
            var _have_5151135:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            var _f_5145716:stdgo.GoString = ("" : stdgo.GoString);
            var _i_5150301 = @:invalid_type null;
            var _pos_5150003:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            var _shouldMatch_5149990:Bool = false;
            var _b_5145025:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
            var _match_5150946:Bool = false;
            var _i_5150560 = @:invalid_type null;
            var _shouldCompile_5149975:Bool = false;
            var _ok_5149971:Bool = false;
            var _err_5145115:stdgo.Error = (null : stdgo.Error);
            var _line_5145109:stdgo.GoString = ("" : stdgo.GoString);
            var _lineno_5145050:stdgo.GoInt = (0 : stdgo.GoInt);
            var _values_5150548 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var _keys_5150548 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            var _gotoNext = 0i32;
            var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
            while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
                {
                    final __value__ = _gotoNext;
                    if (__value__ == (0i32)) {
                        {
                            var __tmp__ = stdgo._internal.os.Os_open.open(_file?.__copy__());
                            _f_5144939 = @:tmpset0 __tmp__._0;
                            _err_5144942 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_5144942 != null) {
                            _gotoNext = 5144978i32;
                        } else {
                            _gotoNext = 5145008i32;
                        };
                    } else if (__value__ == (5144978i32)) {
                        @:check2r _t.error(stdgo.Go.toInterface(_err_5144942));
                        return;
                        _gotoNext = 5145008i32;
                    } else if (__value__ == (5145008i32)) {
                        {
                            final __f__ = @:check2r _f_5144939.close;
                            __deferstack__.unshift({ ran : false, f : () -> __f__() });
                        };
                        _b_5145025 = stdgo._internal.bufio.Bufio_newReader.newReader(stdgo.Go.asInterface(_f_5144939));
                        _lineno_5145050 = (0 : stdgo.GoInt);
                        _lastRegexp_5145063 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _gotoNext = 5145080i32;
                    } else if (__value__ == (5145080i32)) {
                        var __blank__ = 0i32;
                        readingBreak = false;
                        _gotoNext = 5145090i32;
                    } else if (__value__ == (5145090i32)) {
                        if (!readingBreak) {
                            _gotoNext = 5145094i32;
                        } else {
                            _gotoNext = 5151574i32;
                        };
                    } else if (__value__ == (5145094i32)) {
                        _lineno_5145050++;
                        {
                            var __tmp__ = @:check2r _b_5145025.readString((10 : stdgo.GoUInt8));
                            _line_5145109 = @:tmpset0 __tmp__._0?.__copy__();
                            _err_5145115 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_5145115 != null) {
                            _gotoNext = 5145157i32;
                        } else {
                            _gotoNext = 5145575i32;
                        };
                    } else if (__value__ == (5145157i32)) {
                        if (stdgo.Go.toInterface(_err_5145115) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eOF.eOF))) {
                            _gotoNext = 5145179i32;
                        } else {
                            _gotoNext = 5145234i32;
                        };
                    } else if (__value__ == (5145179i32)) {
                        @:check2r _t.errorf(("%s:%d: %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5145050), stdgo.Go.toInterface(_err_5145115));
                        _gotoNext = 5145234i32;
                    } else if (__value__ == (5145234i32)) {
                        readingBreak = true;
                        _gotoNext = 5145090i32;
                    } else if (__value__ == (5145575i32)) {
                        if (((_line_5145109[(0 : stdgo.GoInt)] == (35 : stdgo.GoUInt8)) || (_line_5145109[(0 : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 5145612i32;
                        } else {
                            _gotoNext = 5145640i32;
                        };
                    } else if (__value__ == (5145612i32)) {
                        _gotoNext = 5145090i32;
                    } else if (__value__ == (5145640i32)) {
                        _line_5145109 = (_line_5145109.__slice__(0, ((_line_5145109.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_5145668 = @:check2r stdgo._internal.regexp.Regexp__notab._notab.findAllString(_line_5145109?.__copy__(), (-1 : stdgo.GoInt));
                        if ((0i32 : stdgo.GoInt) < (_field_5145668.length)) {
                            _gotoNext = 5145874i32;
                        } else {
                            _gotoNext = 5145879i32;
                        };
                    } else if (__value__ == (5145713i32)) {
                        _i_5145713++;
                        _gotoNext = 5145875i32;
                    } else if (__value__ == (5145733i32)) {
                        _f_5145716 = _field_5145668[(_i_5145713 : stdgo.GoInt)]?.__copy__();
                        if (_f_5145716 == (("NULL" : stdgo.GoString))) {
                            _gotoNext = 5145753i32;
                        } else {
                            _gotoNext = 5145781i32;
                        };
                    } else if (__value__ == (5145753i32)) {
                        _field_5145668[(_i_5145713 : stdgo.GoInt)] = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _gotoNext = 5145781i32;
                    } else if (__value__ == (5145781i32)) {
                        if (_f_5145716 == (("NIL" : stdgo.GoString))) {
                            _gotoNext = 5145795i32;
                        } else {
                            _gotoNext = 5145713i32;
                        };
                    } else if (__value__ == (5145795i32)) {
                        @:check2r _t.logf(("%s:%d: skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5145050), stdgo.Go.toInterface(_line_5145109));
                        _gotoNext = 5145090i32;
                    } else if (__value__ == (5145874i32)) {
                        {
                            final __tmp__0 = 0i32;
                            final __tmp__1 = _field_5145668[(0i32 : stdgo.GoInt)]?.__copy__();
                            _i_5145713 = __tmp__0;
                            _f_5145716 = __tmp__1;
                        };
                        _gotoNext = 5145875i32;
                    } else if (__value__ == (5145875i32)) {
                        if (_i_5145713 < (_field_5145668.length)) {
                            _gotoNext = 5145733i32;
                        } else {
                            _gotoNext = 5145879i32;
                        };
                    } else if (__value__ == (5145879i32)) {
                        if ((_field_5145668.length) == ((0 : stdgo.GoInt))) {
                            _gotoNext = 5145898i32;
                        } else {
                            _gotoNext = 5148652i32;
                        };
                    } else if (__value__ == (5145898i32)) {
                        _gotoNext = 5145090i32;
                    } else if (__value__ == (5148652i32)) {
                        _flag_5148652 = _field_5145668[(0 : stdgo.GoInt)]?.__copy__();
                        _gotoNext = 5148671i32;
                    } else if (__value__ == (5148671i32)) {
                        {
                            final __value__ = _flag_5148652[(0 : stdgo.GoInt)];
                            if (__value__ == ((63 : stdgo.GoUInt8)) || __value__ == ((38 : stdgo.GoUInt8)) || __value__ == ((124 : stdgo.GoUInt8)) || __value__ == ((59 : stdgo.GoUInt8)) || __value__ == ((123 : stdgo.GoUInt8)) || __value__ == ((125 : stdgo.GoUInt8))) {
                                _gotoNext = 5148690i32;
                            } else if (__value__ == ((58 : stdgo.GoUInt8))) {
                                _gotoNext = 5148858i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8)) || __value__ == ((78 : stdgo.GoUInt8)) || __value__ == ((84 : stdgo.GoUInt8)) || __value__ == ((48 : stdgo.GoUInt8)) || __value__ == ((49 : stdgo.GoUInt8)) || __value__ == ((50 : stdgo.GoUInt8)) || __value__ == ((51 : stdgo.GoUInt8)) || __value__ == ((52 : stdgo.GoUInt8)) || __value__ == ((53 : stdgo.GoUInt8)) || __value__ == ((54 : stdgo.GoUInt8)) || __value__ == ((55 : stdgo.GoUInt8)) || __value__ == ((56 : stdgo.GoUInt8)) || __value__ == ((57 : stdgo.GoUInt8))) {
                                _gotoNext = 5148994i32;
                            } else {
                                _gotoNext = 5149197i32;
                            };
                        };
                    } else if (__value__ == (5148690i32)) {
                        _flag_5148652 = (_flag_5148652.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        if (_flag_5148652 == ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 5148828i32;
                        } else {
                            _gotoNext = 5149197i32;
                        };
                    } else if (__value__ == (5148828i32)) {
                        _gotoNext = 5145090i32;
                    } else if (__value__ == (5148858i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_flag_5148652.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (":" : stdgo.GoString));
                                _flag_5148652 = @:tmpset0 __tmp__._1?.__copy__();
                                _ok_5148875 = @:tmpset0 __tmp__._2;
                            };
                            if (!_ok_5148875) {
                                _gotoNext = 5148935i32;
                            } else {
                                _gotoNext = 5149197i32;
                            };
                        };
                    } else if (__value__ == (5148935i32)) {
                        @:check2r _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line_5145109));
                        _gotoNext = 5145090i32;
                    } else if (__value__ == (5148994i32)) {
                        @:check2r _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line_5145109));
                        _gotoNext = 5145090i32;
                    } else if (__value__ == (5149197i32)) {
                        if (((_field_5145668.length) < (4 : stdgo.GoInt) : Bool)) {
                            _gotoNext = 5149215i32;
                        } else {
                            _gotoNext = 5149348i32;
                        };
                    } else if (__value__ == (5149215i32)) {
                        @:check2r _t.errorf(("%s:%d: too few fields: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5145050), stdgo.Go.toInterface(_line_5145109));
                        _gotoNext = 5145090i32;
                    } else if (__value__ == (5149348i32)) {
                        if (stdgo._internal.strings.Strings_contains.contains(_flag_5148652?.__copy__(), ("$" : stdgo.GoString))) {
                            _gotoNext = 5149379i32;
                        } else {
                            _gotoNext = 5149798i32;
                        };
                    } else if (__value__ == (5149379i32)) {
                        _f_5149384 = ((("\"" : stdgo.GoString) + _field_5145668[(1 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_f_5149384?.__copy__());
                                _field_5145668[(1 : stdgo.GoInt)] = @:tmpset0 __tmp__._0?.__copy__();
                                _err_5145115 = @:tmpset0 __tmp__._1;
                            };
                            if (_err_5145115 != null) {
                                _gotoNext = 5149463i32;
                            } else {
                                _gotoNext = 5149531i32;
                            };
                        };
                    } else if (__value__ == (5149463i32)) {
                        @:check2r _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5145050), stdgo.Go.toInterface(_f_5149384));
                        _gotoNext = 5149531i32;
                    } else if (__value__ == (5149531i32)) {
                        _f_5149384 = ((("\"" : stdgo.GoString) + _field_5145668[(2 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_f_5149384?.__copy__());
                                _field_5145668[(2 : stdgo.GoInt)] = @:tmpset0 __tmp__._0?.__copy__();
                                _err_5145115 = @:tmpset0 __tmp__._1;
                            };
                            if (_err_5145115 != null) {
                                _gotoNext = 5149609i32;
                            } else {
                                _gotoNext = 5149798i32;
                            };
                        };
                    } else if (__value__ == (5149609i32)) {
                        @:check2r _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5145050), stdgo.Go.toInterface(_f_5149384));
                        _gotoNext = 5149798i32;
                    } else if (__value__ == (5149798i32)) {
                        if (_field_5145668[(1 : stdgo.GoInt)] == (("SAME" : stdgo.GoString))) {
                            _gotoNext = 5149820i32;
                        } else {
                            _gotoNext = 5149853i32;
                        };
                    } else if (__value__ == (5149820i32)) {
                        _field_5145668[(1 : stdgo.GoInt)] = _lastRegexp_5145063?.__copy__();
                        _gotoNext = 5149853i32;
                    } else if (__value__ == (5149853i32)) {
                        _lastRegexp_5145063 = _field_5145668[(1 : stdgo.GoInt)]?.__copy__();
                        _text_5149915 = _field_5145668[(2 : stdgo.GoInt)]?.__copy__();
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp__parseFowlerResult._parseFowlerResult(_field_5145668[(3 : stdgo.GoInt)]?.__copy__());
                            _ok_5149971 = @:tmpset0 __tmp__._0;
                            _shouldCompile_5149975 = @:tmpset0 __tmp__._1;
                            _shouldMatch_5149990 = @:tmpset0 __tmp__._2;
                            _pos_5150003 = @:tmpset0 __tmp__._3;
                        };
                        if (!_ok_5149971) {
                            _gotoNext = 5150047i32;
                        } else {
                            _gotoNext = 5150203i32;
                        };
                    } else if (__value__ == (5150047i32)) {
                        @:check2r _t.errorf(("%s:%d: cannot parse result %#q" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5145050), stdgo.Go.toInterface(_field_5145668[(3 : stdgo.GoInt)]));
                        _gotoNext = 5145090i32;
                    } else if (__value__ == (5150203i32)) {
                        _gotoNext = 5150203i32;
                        _keys_5150289 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                        _values_5150289 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                        for (_key => _value in _flag_5148652) {
                            _keys_5150289 = (_keys_5150289.__append__(_key));
                            _values_5150289 = (_values_5150289.__append__(_value));
                        };
                        if ((0i32 : stdgo.GoInt) < (_keys_5150289.length)) {
                            _gotoNext = 5151568i32;
                        } else {
                            _gotoNext = 5145090i32;
                        };
                    } else if (__value__ == (5150301i32)) {
                        _i_5150301++;
                        _gotoNext = 5151569i32;
                    } else if (__value__ == (5150312i32)) {
                        _c_5150296 = _values_5150289[@:invalid_index_invalid_type _i_5150301];
                        var __blank__ = _keys_5150289[@:invalid_index_invalid_type _i_5150301];
                        _pattern_5150317 = _field_5145668[(1 : stdgo.GoInt)]?.__copy__();
                        _syn_5150340 = (4 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 5150380i32;
                    } else if (__value__ == (5150380i32)) {
                        {
                            final __value__ = _c_5150296;
                            if (__value__ == ((69 : stdgo.GoInt32))) {
                                _gotoNext = 5150427i32;
                            } else if (__value__ == ((76 : stdgo.GoInt32))) {
                                _gotoNext = 5150481i32;
                            } else {
                                _gotoNext = 5150394i32;
                            };
                        };
                    } else if (__value__ == (5150394i32)) {
                        _i_5150301++;
                        _gotoNext = 5151569i32;
                    } else if (__value__ == (5150427i32)) {
                        _gotoNext = 5150548i32;
                    } else if (__value__ == (5150481i32)) {
                        _pattern_5150317 = stdgo._internal.regexp.Regexp_quoteMeta.quoteMeta(_pattern_5150317?.__copy__())?.__copy__();
                        _gotoNext = 5150548i32;
                    } else if (__value__ == (5150548i32)) {
                        _keys_5150548 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                        _values_5150548 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                        for (_key => _value in _flag_5148652) {
                            _keys_5150548 = (_keys_5150548.__append__(_key));
                            _values_5150548 = (_values_5150548.__append__(_value));
                        };
                        if ((0i32 : stdgo.GoInt) < (_keys_5150548.length)) {
                            _gotoNext = 5150638i32;
                        } else {
                            _gotoNext = 5150645i32;
                        };
                    } else if (__value__ == (5150560i32)) {
                        _i_5150560++;
                        _gotoNext = 5150639i32;
                    } else if (__value__ == (5150571i32)) {
                        _c_5150555 = _values_5150548[@:invalid_index_invalid_type _i_5150560];
                        var __blank__ = _keys_5150548[@:invalid_index_invalid_type _i_5150560];
                        _gotoNext = 5150577i32;
                    } else if (__value__ == (5150577i32)) {
                        {
                            final __value__ = _c_5150555;
                            if (__value__ == ((105 : stdgo.GoInt32))) {
                                _gotoNext = 5150592i32;
                            } else {
                                _gotoNext = 5150560i32;
                            };
                        };
                    } else if (__value__ == (5150592i32)) {
                        _syn_5150340 = (_syn_5150340 | ((1 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 5150560i32;
                    } else if (__value__ == (5150638i32)) {
                        _i_5150560 = 0i32;
                        _gotoNext = 5150639i32;
                    } else if (__value__ == (5150639i32)) {
                        if (_i_5150560 < (_keys_5150548.length)) {
                            _gotoNext = 5150571i32;
                        } else {
                            _gotoNext = 5150645i32;
                        };
                    } else if (__value__ == (5150645i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp__compile._compile(_pattern_5150317?.__copy__(), _syn_5150340, true);
                            _re_5150645 = @:tmpset0 __tmp__._0;
                            _err_5150649 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_5150649 != null) {
                            _gotoNext = 5150701i32;
                        } else {
                            _gotoNext = 5150828i32;
                        };
                    } else if (__value__ == (5150701i32)) {
                        if (_shouldCompile_5149975) {
                            _gotoNext = 5150724i32;
                        } else {
                            _gotoNext = 5150803i32;
                        };
                    } else if (__value__ == (5150724i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q did not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5145050), stdgo.Go.toInterface(_pattern_5150317));
                        _gotoNext = 5150803i32;
                    } else if (__value__ == (5150803i32)) {
                        _i_5150301++;
                        _gotoNext = 5151569i32;
                    } else if (__value__ == (5150828i32)) {
                        if (!_shouldCompile_5149975) {
                            _gotoNext = 5150846i32;
                        } else {
                            _gotoNext = 5150946i32;
                        };
                    } else if (__value__ == (5150846i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q should not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5145050), stdgo.Go.toInterface(_pattern_5150317));
                        _i_5150301++;
                        _gotoNext = 5151569i32;
                    } else if (__value__ == (5150946i32)) {
                        _match_5150946 = @:check2r _re_5150645.matchString(_text_5149915?.__copy__());
                        if (_match_5150946 != (_shouldMatch_5149990)) {
                            _gotoNext = 5151003i32;
                        } else {
                            _gotoNext = 5151135i32;
                        };
                    } else if (__value__ == (5151003i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q.Match(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5145050), stdgo.Go.toInterface(_pattern_5150317), stdgo.Go.toInterface(_text_5149915), stdgo.Go.toInterface(_match_5150946), stdgo.Go.toInterface(_shouldMatch_5149990));
                        _i_5150301++;
                        _gotoNext = 5151569i32;
                    } else if (__value__ == (5151135i32)) {
                        _have_5151135 = @:check2r _re_5150645.findStringSubmatchIndex(_text_5149915?.__copy__());
                        if ((((_have_5151135.length) > (0 : stdgo.GoInt) : Bool)) != (_match_5150946)) {
                            _gotoNext = 5151207i32;
                        } else {
                            _gotoNext = 5151375i32;
                        };
                    } else if (__value__ == (5151207i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q.Match(%#q) = %v, but %#q.FindSubmatchIndex(%#q) = %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5145050), stdgo.Go.toInterface(_pattern_5150317), stdgo.Go.toInterface(_text_5149915), stdgo.Go.toInterface(_match_5150946), stdgo.Go.toInterface(_pattern_5150317), stdgo.Go.toInterface(_text_5149915), stdgo.Go.toInterface(_have_5151135));
                        _i_5150301++;
                        _gotoNext = 5151569i32;
                    } else if (__value__ == (5151375i32)) {
                        if (((_have_5151135.length) > (_pos_5150003.length) : Bool)) {
                            _gotoNext = 5151399i32;
                        } else {
                            _gotoNext = 5151436i32;
                        };
                    } else if (__value__ == (5151399i32)) {
                        _have_5151135 = (_have_5151135.__slice__(0, (_pos_5150003.length)) : stdgo.Slice<stdgo.GoInt>);
                        _gotoNext = 5151436i32;
                    } else if (__value__ == (5151436i32)) {
                        if (!stdgo._internal.regexp.Regexp__same._same(_have_5151135, _pos_5150003)) {
                            _gotoNext = 5151456i32;
                        } else {
                            _gotoNext = 5150301i32;
                        };
                    } else if (__value__ == (5151456i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q.FindSubmatchIndex(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5145050), stdgo.Go.toInterface(_pattern_5150317), stdgo.Go.toInterface(_text_5149915), stdgo.Go.toInterface(_have_5151135), stdgo.Go.toInterface(_pos_5150003));
                        _gotoNext = 5150301i32;
                    } else if (__value__ == (5151568i32)) {
                        _i_5150301 = 0i32;
                        _gotoNext = 5151569i32;
                    } else if (__value__ == (5151569i32)) {
                        if (_i_5150301 < (_keys_5150289.length)) {
                            _gotoNext = 5150312i32;
                        } else {
                            _gotoNext = 5145090i32;
                        };
                    } else if (__value__ == (5151574i32)) {
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
