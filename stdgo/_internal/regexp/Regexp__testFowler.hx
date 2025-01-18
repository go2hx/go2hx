package stdgo._internal.regexp;
function _testFowler(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _file:stdgo.GoString):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _match_4918786:Bool = false;
            var _field_4913508:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
            var _line_4912949:stdgo.GoString = ("" : stdgo.GoString);
            var _syn_4918180:stdgo._internal.regexp.syntax.Syntax_Flags.Flags = ((0 : stdgo.GoUInt16) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
            var _pattern_4918157:stdgo.GoString = ("" : stdgo.GoString);
            var _f_4917224:stdgo.GoString = ("" : stdgo.GoString);
            var _values_4918129 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var _shouldMatch_4917830:Bool = false;
            var _i_4913553:stdgo.GoInt = (0 : stdgo.GoInt);
            var _err_4912955:stdgo.Error = (null : stdgo.Error);
            var _ok_4917811:Bool = false;
            var _f_4913556:stdgo.GoString = ("" : stdgo.GoString);
            var _b_4912865:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
            var _shouldCompile_4917815:Bool = false;
            var _ok_4916715:Bool = false;
            var _flag_4916492:stdgo.GoString = ("" : stdgo.GoString);
            var readingBreak = false;
            var _lineno_4912890:stdgo.GoInt = (0 : stdgo.GoInt);
            var _values_4918388 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var _i_4918400 = @:invalid_type null;
            var _keys_4918129 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            var _re_4918485:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
            var _c_4918395:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _keys_4918388 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            var _c_4918136:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _f_4912779:stdgo.Ref<stdgo._internal.os.Os_File.File> = (null : stdgo.Ref<stdgo._internal.os.Os_File.File>);
            var _err_4918489:stdgo.Error = (null : stdgo.Error);
            var _i_4918141 = @:invalid_type null;
            var _pos_4917843:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            var _lastRegexp_4912903:stdgo.GoString = ("" : stdgo.GoString);
            var _err_4912782:stdgo.Error = (null : stdgo.Error);
            var _have_4918975:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            var _text_4917755:stdgo.GoString = ("" : stdgo.GoString);
            var _gotoNext = 0i32;
            var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
            while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
                {
                    final __value__ = _gotoNext;
                    if (__value__ == (0i32)) {
                        {
                            var __tmp__ = stdgo._internal.os.Os_open.open(_file?.__copy__());
                            _f_4912779 = @:tmpset0 __tmp__._0;
                            _err_4912782 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_4912782 != null) {
                            _gotoNext = 4912818i32;
                        } else {
                            _gotoNext = 4912848i32;
                        };
                    } else if (__value__ == (4912818i32)) {
                        @:check2r _t.error(stdgo.Go.toInterface(_err_4912782));
                        return;
                        _gotoNext = 4912848i32;
                    } else if (__value__ == (4912848i32)) {
                        {
                            final __f__ = @:check2r _f_4912779.close;
                            __deferstack__.unshift({ ran : false, f : () -> __f__() });
                        };
                        _b_4912865 = stdgo._internal.bufio.Bufio_newReader.newReader(stdgo.Go.asInterface(_f_4912779));
                        _lineno_4912890 = (0 : stdgo.GoInt);
                        _lastRegexp_4912903 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 4912920i32;
                    } else if (__value__ == (4912920i32)) {
                        var __blank__ = 0i32;
                        readingBreak = false;
                        _gotoNext = 4912930i32;
                    } else if (__value__ == (4912930i32)) {
                        if (!readingBreak) {
                            _gotoNext = 4912934i32;
                        } else {
                            _gotoNext = 4919414i32;
                        };
                    } else if (__value__ == (4912934i32)) {
                        _lineno_4912890++;
                        {
                            var __tmp__ = @:check2r _b_4912865.readString((10 : stdgo.GoUInt8));
                            _line_4912949 = @:tmpset0 __tmp__._0?.__copy__();
                            _err_4912955 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_4912955 != null) {
                            _gotoNext = 4912997i32;
                        } else {
                            _gotoNext = 4913415i32;
                        };
                    } else if (__value__ == (4912997i32)) {
                        if (stdgo.Go.toInterface(_err_4912955) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eOF.eOF))) {
                            _gotoNext = 4913019i32;
                        } else {
                            _gotoNext = 4913074i32;
                        };
                    } else if (__value__ == (4913019i32)) {
                        @:check2r _t.errorf(("%s:%d: %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4912890), stdgo.Go.toInterface(_err_4912955));
                        _gotoNext = 4913074i32;
                    } else if (__value__ == (4913074i32)) {
                        readingBreak = true;
                        _gotoNext = 4912930i32;
                    } else if (__value__ == (4913415i32)) {
                        if (((_line_4912949[(0 : stdgo.GoInt)] == (35 : stdgo.GoUInt8)) || (_line_4912949[(0 : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 4913452i32;
                        } else {
                            _gotoNext = 4913480i32;
                        };
                    } else if (__value__ == (4913452i32)) {
                        _gotoNext = 4912930i32;
                    } else if (__value__ == (4913480i32)) {
                        _line_4912949 = (_line_4912949.__slice__(0, ((_line_4912949.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_4913508 = @:check2r stdgo._internal.regexp.Regexp__notab._notab.findAllString(_line_4912949?.__copy__(), (-1 : stdgo.GoInt));
                        if ((0i32 : stdgo.GoInt) < (_field_4913508.length)) {
                            _gotoNext = 4913714i32;
                        } else {
                            _gotoNext = 4913719i32;
                        };
                    } else if (__value__ == (4913553i32)) {
                        _i_4913553++;
                        _gotoNext = 4913715i32;
                    } else if (__value__ == (4913573i32)) {
                        _f_4913556 = _field_4913508[(_i_4913553 : stdgo.GoInt)]?.__copy__();
                        if (_f_4913556 == (("NULL" : stdgo.GoString))) {
                            _gotoNext = 4913593i32;
                        } else {
                            _gotoNext = 4913621i32;
                        };
                    } else if (__value__ == (4913593i32)) {
                        _field_4913508[(_i_4913553 : stdgo.GoInt)] = stdgo.Go.str()?.__copy__();
                        _gotoNext = 4913621i32;
                    } else if (__value__ == (4913621i32)) {
                        if (_f_4913556 == (("NIL" : stdgo.GoString))) {
                            _gotoNext = 4913635i32;
                        } else {
                            _gotoNext = 4913553i32;
                        };
                    } else if (__value__ == (4913635i32)) {
                        @:check2r _t.logf(("%s:%d: skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4912890), stdgo.Go.toInterface(_line_4912949));
                        _gotoNext = 4912930i32;
                    } else if (__value__ == (4913714i32)) {
                        {
                            final __tmp__0 = 0i32;
                            final __tmp__1 = _field_4913508[(0i32 : stdgo.GoInt)]?.__copy__();
                            _i_4913553 = __tmp__0;
                            _f_4913556 = __tmp__1;
                        };
                        _gotoNext = 4913715i32;
                    } else if (__value__ == (4913715i32)) {
                        if (_i_4913553 < (_field_4913508.length)) {
                            _gotoNext = 4913573i32;
                        } else {
                            _gotoNext = 4913719i32;
                        };
                    } else if (__value__ == (4913719i32)) {
                        if ((_field_4913508.length) == ((0 : stdgo.GoInt))) {
                            _gotoNext = 4913738i32;
                        } else {
                            _gotoNext = 4916492i32;
                        };
                    } else if (__value__ == (4913738i32)) {
                        _gotoNext = 4912930i32;
                    } else if (__value__ == (4916492i32)) {
                        _flag_4916492 = _field_4913508[(0 : stdgo.GoInt)]?.__copy__();
                        _gotoNext = 4916511i32;
                    } else if (__value__ == (4916511i32)) {
                        {
                            final __value__ = _flag_4916492[(0 : stdgo.GoInt)];
                            if (__value__ == ((63 : stdgo.GoUInt8)) || __value__ == ((38 : stdgo.GoUInt8)) || __value__ == ((124 : stdgo.GoUInt8)) || __value__ == ((59 : stdgo.GoUInt8)) || __value__ == ((123 : stdgo.GoUInt8)) || __value__ == ((125 : stdgo.GoUInt8))) {
                                _gotoNext = 4916530i32;
                            } else if (__value__ == ((58 : stdgo.GoUInt8))) {
                                _gotoNext = 4916698i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8)) || __value__ == ((78 : stdgo.GoUInt8)) || __value__ == ((84 : stdgo.GoUInt8)) || __value__ == ((48 : stdgo.GoUInt8)) || __value__ == ((49 : stdgo.GoUInt8)) || __value__ == ((50 : stdgo.GoUInt8)) || __value__ == ((51 : stdgo.GoUInt8)) || __value__ == ((52 : stdgo.GoUInt8)) || __value__ == ((53 : stdgo.GoUInt8)) || __value__ == ((54 : stdgo.GoUInt8)) || __value__ == ((55 : stdgo.GoUInt8)) || __value__ == ((56 : stdgo.GoUInt8)) || __value__ == ((57 : stdgo.GoUInt8))) {
                                _gotoNext = 4916834i32;
                            } else {
                                _gotoNext = 4917037i32;
                            };
                        };
                    } else if (__value__ == (4916530i32)) {
                        _flag_4916492 = (_flag_4916492.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        if (_flag_4916492 == (stdgo.Go.str())) {
                            _gotoNext = 4916668i32;
                        } else {
                            _gotoNext = 4917037i32;
                        };
                    } else if (__value__ == (4916668i32)) {
                        _gotoNext = 4912930i32;
                    } else if (__value__ == (4916698i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_flag_4916492.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (":" : stdgo.GoString));
                                _flag_4916492 = @:tmpset0 __tmp__._1?.__copy__();
                                _ok_4916715 = @:tmpset0 __tmp__._2;
                            };
                            if (!_ok_4916715) {
                                _gotoNext = 4916775i32;
                            } else {
                                _gotoNext = 4917037i32;
                            };
                        };
                    } else if (__value__ == (4916775i32)) {
                        @:check2r _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line_4912949));
                        _gotoNext = 4912930i32;
                    } else if (__value__ == (4916834i32)) {
                        @:check2r _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line_4912949));
                        _gotoNext = 4912930i32;
                    } else if (__value__ == (4917037i32)) {
                        if (((_field_4913508.length) < (4 : stdgo.GoInt) : Bool)) {
                            _gotoNext = 4917055i32;
                        } else {
                            _gotoNext = 4917188i32;
                        };
                    } else if (__value__ == (4917055i32)) {
                        @:check2r _t.errorf(("%s:%d: too few fields: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4912890), stdgo.Go.toInterface(_line_4912949));
                        _gotoNext = 4912930i32;
                    } else if (__value__ == (4917188i32)) {
                        if (stdgo._internal.strings.Strings_contains.contains(_flag_4916492?.__copy__(), ("$" : stdgo.GoString))) {
                            _gotoNext = 4917219i32;
                        } else {
                            _gotoNext = 4917638i32;
                        };
                    } else if (__value__ == (4917219i32)) {
                        _f_4917224 = ((("\"" : stdgo.GoString) + _field_4913508[(1 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_f_4917224?.__copy__());
                                _field_4913508[(1 : stdgo.GoInt)] = @:tmpset0 __tmp__._0?.__copy__();
                                _err_4912955 = @:tmpset0 __tmp__._1;
                            };
                            if (_err_4912955 != null) {
                                _gotoNext = 4917303i32;
                            } else {
                                _gotoNext = 4917371i32;
                            };
                        };
                    } else if (__value__ == (4917303i32)) {
                        @:check2r _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4912890), stdgo.Go.toInterface(_f_4917224));
                        _gotoNext = 4917371i32;
                    } else if (__value__ == (4917371i32)) {
                        _f_4917224 = ((("\"" : stdgo.GoString) + _field_4913508[(2 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_f_4917224?.__copy__());
                                _field_4913508[(2 : stdgo.GoInt)] = @:tmpset0 __tmp__._0?.__copy__();
                                _err_4912955 = @:tmpset0 __tmp__._1;
                            };
                            if (_err_4912955 != null) {
                                _gotoNext = 4917449i32;
                            } else {
                                _gotoNext = 4917638i32;
                            };
                        };
                    } else if (__value__ == (4917449i32)) {
                        @:check2r _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4912890), stdgo.Go.toInterface(_f_4917224));
                        _gotoNext = 4917638i32;
                    } else if (__value__ == (4917638i32)) {
                        if (_field_4913508[(1 : stdgo.GoInt)] == (("SAME" : stdgo.GoString))) {
                            _gotoNext = 4917660i32;
                        } else {
                            _gotoNext = 4917693i32;
                        };
                    } else if (__value__ == (4917660i32)) {
                        _field_4913508[(1 : stdgo.GoInt)] = _lastRegexp_4912903?.__copy__();
                        _gotoNext = 4917693i32;
                    } else if (__value__ == (4917693i32)) {
                        _lastRegexp_4912903 = _field_4913508[(1 : stdgo.GoInt)]?.__copy__();
                        _text_4917755 = _field_4913508[(2 : stdgo.GoInt)]?.__copy__();
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp__parseFowlerResult._parseFowlerResult(_field_4913508[(3 : stdgo.GoInt)]?.__copy__());
                            _ok_4917811 = @:tmpset0 __tmp__._0;
                            _shouldCompile_4917815 = @:tmpset0 __tmp__._1;
                            _shouldMatch_4917830 = @:tmpset0 __tmp__._2;
                            _pos_4917843 = @:tmpset0 __tmp__._3;
                        };
                        if (!_ok_4917811) {
                            _gotoNext = 4917887i32;
                        } else {
                            _gotoNext = 4918043i32;
                        };
                    } else if (__value__ == (4917887i32)) {
                        @:check2r _t.errorf(("%s:%d: cannot parse result %#q" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4912890), stdgo.Go.toInterface(_field_4913508[(3 : stdgo.GoInt)]));
                        _gotoNext = 4912930i32;
                    } else if (__value__ == (4918043i32)) {
                        _gotoNext = 4918043i32;
                        _keys_4918129 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                        _values_4918129 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                        for (_key => _value in _flag_4916492) {
                            _keys_4918129 = (_keys_4918129.__append__(_key));
                            _values_4918129 = (_values_4918129.__append__(_value));
                        };
                        if ((0i32 : stdgo.GoInt) < (_keys_4918129.length)) {
                            _gotoNext = 4919408i32;
                        } else {
                            _gotoNext = 4912930i32;
                        };
                    } else if (__value__ == (4918141i32)) {
                        _i_4918141++;
                        _gotoNext = 4919409i32;
                    } else if (__value__ == (4918152i32)) {
                        _c_4918136 = _values_4918129[@:invalid_index_invalid_type _i_4918141];
                        var __blank__ = _keys_4918129[@:invalid_index_invalid_type _i_4918141];
                        _pattern_4918157 = _field_4913508[(1 : stdgo.GoInt)]?.__copy__();
                        _syn_4918180 = (4 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 4918220i32;
                    } else if (__value__ == (4918220i32)) {
                        {
                            final __value__ = _c_4918136;
                            if (__value__ == ((69 : stdgo.GoInt32))) {
                                _gotoNext = 4918267i32;
                            } else if (__value__ == ((76 : stdgo.GoInt32))) {
                                _gotoNext = 4918321i32;
                            } else {
                                _gotoNext = 4918234i32;
                            };
                        };
                    } else if (__value__ == (4918234i32)) {
                        _i_4918141++;
                        _gotoNext = 4919409i32;
                    } else if (__value__ == (4918267i32)) {
                        _gotoNext = 4918388i32;
                    } else if (__value__ == (4918321i32)) {
                        _pattern_4918157 = stdgo._internal.regexp.Regexp_quoteMeta.quoteMeta(_pattern_4918157?.__copy__())?.__copy__();
                        _gotoNext = 4918388i32;
                    } else if (__value__ == (4918388i32)) {
                        _keys_4918388 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                        _values_4918388 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                        for (_key => _value in _flag_4916492) {
                            _keys_4918388 = (_keys_4918388.__append__(_key));
                            _values_4918388 = (_values_4918388.__append__(_value));
                        };
                        if ((0i32 : stdgo.GoInt) < (_keys_4918388.length)) {
                            _gotoNext = 4918478i32;
                        } else {
                            _gotoNext = 4918485i32;
                        };
                    } else if (__value__ == (4918400i32)) {
                        _i_4918400++;
                        _gotoNext = 4918479i32;
                    } else if (__value__ == (4918411i32)) {
                        _c_4918395 = _values_4918388[@:invalid_index_invalid_type _i_4918400];
                        var __blank__ = _keys_4918388[@:invalid_index_invalid_type _i_4918400];
                        _gotoNext = 4918417i32;
                    } else if (__value__ == (4918417i32)) {
                        {
                            final __value__ = _c_4918395;
                            if (__value__ == ((105 : stdgo.GoInt32))) {
                                _gotoNext = 4918432i32;
                            } else {
                                _gotoNext = 4918400i32;
                            };
                        };
                    } else if (__value__ == (4918432i32)) {
                        _syn_4918180 = (_syn_4918180 | ((1 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 4918400i32;
                    } else if (__value__ == (4918478i32)) {
                        _i_4918400 = 0i32;
                        _gotoNext = 4918479i32;
                    } else if (__value__ == (4918479i32)) {
                        if (_i_4918400 < (_keys_4918388.length)) {
                            _gotoNext = 4918411i32;
                        } else {
                            _gotoNext = 4918485i32;
                        };
                    } else if (__value__ == (4918485i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp__compile._compile(_pattern_4918157?.__copy__(), _syn_4918180, true);
                            _re_4918485 = @:tmpset0 __tmp__._0;
                            _err_4918489 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_4918489 != null) {
                            _gotoNext = 4918541i32;
                        } else {
                            _gotoNext = 4918668i32;
                        };
                    } else if (__value__ == (4918541i32)) {
                        if (_shouldCompile_4917815) {
                            _gotoNext = 4918564i32;
                        } else {
                            _gotoNext = 4918643i32;
                        };
                    } else if (__value__ == (4918564i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q did not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4912890), stdgo.Go.toInterface(_pattern_4918157));
                        _gotoNext = 4918643i32;
                    } else if (__value__ == (4918643i32)) {
                        _i_4918141++;
                        _gotoNext = 4919409i32;
                    } else if (__value__ == (4918668i32)) {
                        if (!_shouldCompile_4917815) {
                            _gotoNext = 4918686i32;
                        } else {
                            _gotoNext = 4918786i32;
                        };
                    } else if (__value__ == (4918686i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q should not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4912890), stdgo.Go.toInterface(_pattern_4918157));
                        _i_4918141++;
                        _gotoNext = 4919409i32;
                    } else if (__value__ == (4918786i32)) {
                        _match_4918786 = @:check2r _re_4918485.matchString(_text_4917755?.__copy__());
                        if (_match_4918786 != (_shouldMatch_4917830)) {
                            _gotoNext = 4918843i32;
                        } else {
                            _gotoNext = 4918975i32;
                        };
                    } else if (__value__ == (4918843i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q.Match(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4912890), stdgo.Go.toInterface(_pattern_4918157), stdgo.Go.toInterface(_text_4917755), stdgo.Go.toInterface(_match_4918786), stdgo.Go.toInterface(_shouldMatch_4917830));
                        _i_4918141++;
                        _gotoNext = 4919409i32;
                    } else if (__value__ == (4918975i32)) {
                        _have_4918975 = @:check2r _re_4918485.findStringSubmatchIndex(_text_4917755?.__copy__());
                        if ((((_have_4918975.length) > (0 : stdgo.GoInt) : Bool)) != (_match_4918786)) {
                            _gotoNext = 4919047i32;
                        } else {
                            _gotoNext = 4919215i32;
                        };
                    } else if (__value__ == (4919047i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q.Match(%#q) = %v, but %#q.FindSubmatchIndex(%#q) = %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4912890), stdgo.Go.toInterface(_pattern_4918157), stdgo.Go.toInterface(_text_4917755), stdgo.Go.toInterface(_match_4918786), stdgo.Go.toInterface(_pattern_4918157), stdgo.Go.toInterface(_text_4917755), stdgo.Go.toInterface(_have_4918975));
                        _i_4918141++;
                        _gotoNext = 4919409i32;
                    } else if (__value__ == (4919215i32)) {
                        if (((_have_4918975.length) > (_pos_4917843.length) : Bool)) {
                            _gotoNext = 4919239i32;
                        } else {
                            _gotoNext = 4919276i32;
                        };
                    } else if (__value__ == (4919239i32)) {
                        _have_4918975 = (_have_4918975.__slice__(0, (_pos_4917843.length)) : stdgo.Slice<stdgo.GoInt>);
                        _gotoNext = 4919276i32;
                    } else if (__value__ == (4919276i32)) {
                        if (!stdgo._internal.regexp.Regexp__same._same(_have_4918975, _pos_4917843)) {
                            _gotoNext = 4919296i32;
                        } else {
                            _gotoNext = 4918141i32;
                        };
                    } else if (__value__ == (4919296i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q.FindSubmatchIndex(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4912890), stdgo.Go.toInterface(_pattern_4918157), stdgo.Go.toInterface(_text_4917755), stdgo.Go.toInterface(_have_4918975), stdgo.Go.toInterface(_pos_4917843));
                        _gotoNext = 4918141i32;
                    } else if (__value__ == (4919408i32)) {
                        _i_4918141 = 0i32;
                        _gotoNext = 4919409i32;
                    } else if (__value__ == (4919409i32)) {
                        if (_i_4918141 < (_keys_4918129.length)) {
                            _gotoNext = 4918152i32;
                        } else {
                            _gotoNext = 4912930i32;
                        };
                    } else if (__value__ == (4919414i32)) {
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
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
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
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        };
    }
