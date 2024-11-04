package stdgo._internal.regexp;
function _testFowler(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _file:stdgo.GoString):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _pattern_4831927:stdgo.GoString = ("" : stdgo.GoString);
            var _flag_4830262:stdgo.GoString = ("" : stdgo.GoString);
            var _line_4826719:stdgo.GoString = ("" : stdgo.GoString);
            var _f_4826549:stdgo.Ref<stdgo._internal.os.Os_File.File> = (null : stdgo.Ref<stdgo._internal.os.Os_File.File>);
            var _keys_4832158 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            var _i_4832170 = @:invalid_type null;
            var _shouldMatch_4831600:Bool = false;
            var _shouldCompile_4831585:Bool = false;
            var _i_4827323:stdgo.GoInt = (0 : stdgo.GoInt);
            var _field_4827278:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
            var _values_4831899 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var _pos_4831613:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            var _ok_4831581:Bool = false;
            var _text_4831525:stdgo.GoString = ("" : stdgo.GoString);
            var _err_4826725:stdgo.Error = (null : stdgo.Error);
            var _match_4832556:Bool = false;
            var _lastRegexp_4826673:stdgo.GoString = ("" : stdgo.GoString);
            var _have_4832745:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            var _err_4832259:stdgo.Error = (null : stdgo.Error);
            var _c_4831906:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _lineno_4826660:stdgo.GoInt = (0 : stdgo.GoInt);
            var _c_4832165:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _i_4831911 = @:invalid_type null;
            var _ok_4830485:Bool = false;
            var readingBreak = false;
            var _re_4832255:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
            var _values_4832158 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var _keys_4831899 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            var _f_4830994:stdgo.GoString = ("" : stdgo.GoString);
            var _err_4826552:stdgo.Error = (null : stdgo.Error);
            var _syn_4831950:stdgo._internal.regexp.syntax.Syntax_Flags.Flags = ((0 : stdgo.GoUInt16) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
            var _f_4827326:stdgo.GoString = ("" : stdgo.GoString);
            var _b_4826635:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
            var _gotoNext = 0i32;
            var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
            while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
                {
                    final __value__ = _gotoNext;
                    if (__value__ == (0i32)) {
                        {
                            var __tmp__ = stdgo._internal.os.Os_open.open(_file?.__copy__());
                            _f_4826549 = __tmp__._0;
                            _err_4826552 = __tmp__._1;
                        };
                        if (_err_4826552 != null) {
                            _gotoNext = 4826588i32;
                        } else {
                            _gotoNext = 4826618i32;
                        };
                    } else if (__value__ == (4826588i32)) {
                        _t.error(stdgo.Go.toInterface(_err_4826552));
                        return;
                        _gotoNext = 4826618i32;
                    } else if (__value__ == (4826618i32)) {
                        __deferstack__.unshift(() -> _f_4826549.close());
                        _b_4826635 = stdgo._internal.bufio.Bufio_newReader.newReader(stdgo.Go.asInterface(_f_4826549));
                        _lineno_4826660 = (0 : stdgo.GoInt);
                        _lastRegexp_4826673 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 4826690i32;
                    } else if (__value__ == (4826690i32)) {
                        var __blank__ = 0i32;
                        readingBreak = false;
                        _gotoNext = 4826700i32;
                    } else if (__value__ == (4826700i32)) {
                        if (!readingBreak) {
                            _gotoNext = 4826704i32;
                        } else {
                            _gotoNext = 4833184i32;
                        };
                    } else if (__value__ == (4826704i32)) {
                        _lineno_4826660++;
                        {
                            var __tmp__ = _b_4826635.readString((10 : stdgo.GoUInt8));
                            _line_4826719 = __tmp__._0?.__copy__();
                            _err_4826725 = __tmp__._1;
                        };
                        if (_err_4826725 != null) {
                            _gotoNext = 4826767i32;
                        } else {
                            _gotoNext = 4827185i32;
                        };
                    } else if (__value__ == (4826767i32)) {
                        if (stdgo.Go.toInterface(_err_4826725) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                            _gotoNext = 4826789i32;
                        } else {
                            _gotoNext = 4826844i32;
                        };
                    } else if (__value__ == (4826789i32)) {
                        _t.errorf(("%s:%d: %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4826660), stdgo.Go.toInterface(_err_4826725));
                        _gotoNext = 4826844i32;
                    } else if (__value__ == (4826844i32)) {
                        readingBreak = true;
                        _gotoNext = 4826700i32;
                    } else if (__value__ == (4827185i32)) {
                        if (((_line_4826719[(0 : stdgo.GoInt)] == (35 : stdgo.GoUInt8)) || (_line_4826719[(0 : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 4827222i32;
                        } else {
                            _gotoNext = 4827250i32;
                        };
                    } else if (__value__ == (4827222i32)) {
                        _gotoNext = 4826700i32;
                    } else if (__value__ == (4827250i32)) {
                        _line_4826719 = (_line_4826719.__slice__(0, ((_line_4826719.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_4827278 = stdgo._internal.regexp.Regexp__notab._notab.findAllString(_line_4826719?.__copy__(), (-1 : stdgo.GoInt));
                        if ((0i32 : stdgo.GoInt) < (_field_4827278.length)) {
                            _gotoNext = 4827484i32;
                        } else {
                            _gotoNext = 4827489i32;
                        };
                    } else if (__value__ == (4827323i32)) {
                        _i_4827323++;
                        _gotoNext = 4827485i32;
                    } else if (__value__ == (4827343i32)) {
                        _f_4827326 = _field_4827278[(_i_4827323 : stdgo.GoInt)]?.__copy__();
                        if (_f_4827326 == (("NULL" : stdgo.GoString))) {
                            _gotoNext = 4827363i32;
                        } else {
                            _gotoNext = 4827391i32;
                        };
                    } else if (__value__ == (4827363i32)) {
                        _field_4827278[(_i_4827323 : stdgo.GoInt)] = stdgo.Go.str()?.__copy__();
                        _gotoNext = 4827391i32;
                    } else if (__value__ == (4827391i32)) {
                        if (_f_4827326 == (("NIL" : stdgo.GoString))) {
                            _gotoNext = 4827405i32;
                        } else {
                            _gotoNext = 4827323i32;
                        };
                    } else if (__value__ == (4827405i32)) {
                        _t.logf(("%s:%d: skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4826660), stdgo.Go.toInterface(_line_4826719));
                        _gotoNext = 4826700i32;
                    } else if (__value__ == (4827484i32)) {
                        {
                            final __tmp__0 = 0i32;
                            final __tmp__1 = _field_4827278[(0i32 : stdgo.GoInt)]?.__copy__();
                            _i_4827323 = __tmp__0;
                            _f_4827326 = __tmp__1;
                        };
                        _gotoNext = 4827485i32;
                    } else if (__value__ == (4827485i32)) {
                        if (_i_4827323 < (_field_4827278.length)) {
                            _gotoNext = 4827343i32;
                        } else {
                            _gotoNext = 4827489i32;
                        };
                    } else if (__value__ == (4827489i32)) {
                        if ((_field_4827278.length) == ((0 : stdgo.GoInt))) {
                            _gotoNext = 4827508i32;
                        } else {
                            _gotoNext = 4830262i32;
                        };
                    } else if (__value__ == (4827508i32)) {
                        _gotoNext = 4826700i32;
                    } else if (__value__ == (4830262i32)) {
                        _flag_4830262 = _field_4827278[(0 : stdgo.GoInt)]?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 4830281i32;
                    } else if (__value__ == (4830281i32)) {
                        {
                            final __value__ = _flag_4830262[(0 : stdgo.GoInt)];
                            if (__value__ == ((63 : stdgo.GoUInt8)) || __value__ == ((38 : stdgo.GoUInt8)) || __value__ == ((124 : stdgo.GoUInt8)) || __value__ == ((59 : stdgo.GoUInt8)) || __value__ == ((123 : stdgo.GoUInt8)) || __value__ == ((125 : stdgo.GoUInt8))) {
                                _gotoNext = 4830300i32;
                            } else if (__value__ == ((58 : stdgo.GoUInt8))) {
                                _gotoNext = 4830468i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8)) || __value__ == ((78 : stdgo.GoUInt8)) || __value__ == ((84 : stdgo.GoUInt8)) || __value__ == ((48 : stdgo.GoUInt8)) || __value__ == ((49 : stdgo.GoUInt8)) || __value__ == ((50 : stdgo.GoUInt8)) || __value__ == ((51 : stdgo.GoUInt8)) || __value__ == ((52 : stdgo.GoUInt8)) || __value__ == ((53 : stdgo.GoUInt8)) || __value__ == ((54 : stdgo.GoUInt8)) || __value__ == ((55 : stdgo.GoUInt8)) || __value__ == ((56 : stdgo.GoUInt8)) || __value__ == ((57 : stdgo.GoUInt8))) {
                                _gotoNext = 4830604i32;
                            } else {
                                _gotoNext = 4830807i32;
                            };
                        };
                    } else if (__value__ == (4830300i32)) {
                        _flag_4830262 = (_flag_4830262.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        if (_flag_4830262 == (stdgo.Go.str())) {
                            _gotoNext = 4830438i32;
                        } else {
                            _gotoNext = 4830807i32;
                        };
                    } else if (__value__ == (4830438i32)) {
                        _gotoNext = 4826700i32;
                    } else if (__value__ == (4830468i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_flag_4830262.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (":" : stdgo.GoString));
                                _flag_4830262 = __tmp__._1?.__copy__();
                                _ok_4830485 = __tmp__._2;
                            };
                            if (!_ok_4830485) {
                                _gotoNext = 4830545i32;
                            } else {
                                _gotoNext = 4830807i32;
                            };
                        };
                    } else if (__value__ == (4830545i32)) {
                        _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line_4826719));
                        _gotoNext = 4826700i32;
                    } else if (__value__ == (4830604i32)) {
                        _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line_4826719));
                        _gotoNext = 4826700i32;
                    } else if (__value__ == (4830807i32)) {
                        if (((_field_4827278.length) < (4 : stdgo.GoInt) : Bool)) {
                            _gotoNext = 4830825i32;
                        } else {
                            _gotoNext = 4830958i32;
                        };
                    } else if (__value__ == (4830825i32)) {
                        _t.errorf(("%s:%d: too few fields: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4826660), stdgo.Go.toInterface(_line_4826719));
                        _gotoNext = 4826700i32;
                    } else if (__value__ == (4830958i32)) {
                        if (stdgo._internal.strings.Strings_contains.contains(_flag_4830262?.__copy__(), ("$" : stdgo.GoString))) {
                            _gotoNext = 4830989i32;
                        } else {
                            _gotoNext = 4831408i32;
                        };
                    } else if (__value__ == (4830989i32)) {
                        _f_4830994 = ((("\"" : stdgo.GoString) + _field_4827278[(1 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_f_4830994?.__copy__());
                                _field_4827278[(1 : stdgo.GoInt)] = __tmp__._0?.__copy__();
                                _err_4826725 = __tmp__._1;
                            };
                            if (_err_4826725 != null) {
                                _gotoNext = 4831073i32;
                            } else {
                                _gotoNext = 4831141i32;
                            };
                        };
                    } else if (__value__ == (4831073i32)) {
                        _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4826660), stdgo.Go.toInterface(_f_4830994));
                        _gotoNext = 4831141i32;
                    } else if (__value__ == (4831141i32)) {
                        _f_4830994 = ((("\"" : stdgo.GoString) + _field_4827278[(2 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_f_4830994?.__copy__());
                                _field_4827278[(2 : stdgo.GoInt)] = __tmp__._0?.__copy__();
                                _err_4826725 = __tmp__._1;
                            };
                            if (_err_4826725 != null) {
                                _gotoNext = 4831219i32;
                            } else {
                                _gotoNext = 4831408i32;
                            };
                        };
                    } else if (__value__ == (4831219i32)) {
                        _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4826660), stdgo.Go.toInterface(_f_4830994));
                        _gotoNext = 4831408i32;
                    } else if (__value__ == (4831408i32)) {
                        if (_field_4827278[(1 : stdgo.GoInt)] == (("SAME" : stdgo.GoString))) {
                            _gotoNext = 4831430i32;
                        } else {
                            _gotoNext = 4831463i32;
                        };
                    } else if (__value__ == (4831430i32)) {
                        _field_4827278[(1 : stdgo.GoInt)] = _lastRegexp_4826673?.__copy__();
                        _gotoNext = 4831463i32;
                    } else if (__value__ == (4831463i32)) {
                        _lastRegexp_4826673 = _field_4827278[(1 : stdgo.GoInt)]?.__copy__();
                        _text_4831525 = _field_4827278[(2 : stdgo.GoInt)]?.__copy__();
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp__parseFowlerResult._parseFowlerResult(_field_4827278[(3 : stdgo.GoInt)]?.__copy__());
                            _ok_4831581 = __tmp__._0;
                            _shouldCompile_4831585 = __tmp__._1;
                            _shouldMatch_4831600 = __tmp__._2;
                            _pos_4831613 = __tmp__._3;
                        };
                        if (!_ok_4831581) {
                            _gotoNext = 4831657i32;
                        } else {
                            _gotoNext = 4831813i32;
                        };
                    } else if (__value__ == (4831657i32)) {
                        _t.errorf(("%s:%d: cannot parse result %#q" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4826660), stdgo.Go.toInterface(_field_4827278[(3 : stdgo.GoInt)]));
                        _gotoNext = 4826700i32;
                    } else if (__value__ == (4831813i32)) {
                        _gotoNext = 4831813i32;
                        _keys_4831899 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                        _values_4831899 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                        for (_key => _value in _flag_4830262) {
                            _keys_4831899 = (_keys_4831899.__append__(_key));
                            _values_4831899 = (_values_4831899.__append__(_value));
                        };
                        if ((0i32 : stdgo.GoInt) < (_flag_4830262.length)) {
                            _gotoNext = 4833178i32;
                        } else {
                            _gotoNext = 4833184i32;
                        };
                    } else if (__value__ == (4831911i32)) {
                        _i_4831911++;
                        _gotoNext = 4833179i32;
                    } else if (__value__ == (4831922i32)) {
                        _c_4831906 = _values_4831899[@:invalid_index_invalid_type _i_4831911];
                        var __blank__ = _keys_4831899[@:invalid_index_invalid_type _i_4831911];
                        _pattern_4831927 = _field_4827278[(1 : stdgo.GoInt)]?.__copy__();
                        _syn_4831950 = (4 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        var __blank__ = 0i32;
                        _gotoNext = 4831990i32;
                    } else if (__value__ == (4831990i32)) {
                        {
                            final __value__ = _c_4831906;
                            if (__value__ == ((69 : stdgo.GoInt32))) {
                                _gotoNext = 4832037i32;
                            } else if (__value__ == ((76 : stdgo.GoInt32))) {
                                _gotoNext = 4832091i32;
                            } else {
                                _gotoNext = 4832004i32;
                            };
                        };
                    } else if (__value__ == (4832004i32)) {
                        _gotoNext = 4831899i32;
                    } else if (__value__ == (4832037i32)) {
                        _gotoNext = 4832158i32;
                    } else if (__value__ == (4832091i32)) {
                        _pattern_4831927 = stdgo._internal.regexp.Regexp_quoteMeta.quoteMeta(_pattern_4831927?.__copy__())?.__copy__();
                        _gotoNext = 4832158i32;
                    } else if (__value__ == (4832158i32)) {
                        _keys_4832158 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                        _values_4832158 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                        for (_key => _value in _flag_4830262) {
                            _keys_4832158 = (_keys_4832158.__append__(_key));
                            _values_4832158 = (_values_4832158.__append__(_value));
                        };
                        if ((0i32 : stdgo.GoInt) < (_flag_4830262.length)) {
                            _gotoNext = 4832248i32;
                        } else {
                            _gotoNext = 4832255i32;
                        };
                    } else if (__value__ == (4832170i32)) {
                        _i_4832170++;
                        _gotoNext = 4832249i32;
                    } else if (__value__ == (4832181i32)) {
                        _c_4832165 = _values_4832158[@:invalid_index_invalid_type _i_4832170];
                        var __blank__ = _keys_4832158[@:invalid_index_invalid_type _i_4832170];
                        var __blank__ = 0i32;
                        _gotoNext = 4832187i32;
                    } else if (__value__ == (4832187i32)) {
                        {
                            final __value__ = _c_4832165;
                            if (__value__ == ((105 : stdgo.GoInt32))) {
                                _gotoNext = 4832202i32;
                            } else {
                                _gotoNext = 4832170i32;
                            };
                        };
                    } else if (__value__ == (4832202i32)) {
                        _syn_4831950 = (_syn_4831950 | ((1 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 4832170i32;
                    } else if (__value__ == (4832248i32)) {
                        _i_4832170 = 0i32;
                        _gotoNext = 4832249i32;
                    } else if (__value__ == (4832249i32)) {
                        if (_i_4832170 < (_keys_4832158.length)) {
                            _gotoNext = 4832181i32;
                        } else {
                            _gotoNext = 4832255i32;
                        };
                    } else if (__value__ == (4832255i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp__compile._compile(_pattern_4831927?.__copy__(), _syn_4831950, true);
                            _re_4832255 = __tmp__._0;
                            _err_4832259 = __tmp__._1;
                        };
                        if (_err_4832259 != null) {
                            _gotoNext = 4832311i32;
                        } else {
                            _gotoNext = 4832438i32;
                        };
                    } else if (__value__ == (4832311i32)) {
                        if (_shouldCompile_4831585) {
                            _gotoNext = 4832334i32;
                        } else {
                            _gotoNext = 4832413i32;
                        };
                    } else if (__value__ == (4832334i32)) {
                        _t.errorf(("%s:%d: %#q did not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4826660), stdgo.Go.toInterface(_pattern_4831927));
                        _gotoNext = 4832413i32;
                    } else if (__value__ == (4832413i32)) {
                        _gotoNext = 4831899i32;
                    } else if (__value__ == (4832438i32)) {
                        if (!_shouldCompile_4831585) {
                            _gotoNext = 4832456i32;
                        } else {
                            _gotoNext = 4832556i32;
                        };
                    } else if (__value__ == (4832456i32)) {
                        _t.errorf(("%s:%d: %#q should not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4826660), stdgo.Go.toInterface(_pattern_4831927));
                        _gotoNext = 4831899i32;
                    } else if (__value__ == (4832556i32)) {
                        _match_4832556 = _re_4832255.matchString(_text_4831525?.__copy__());
                        if (_match_4832556 != (_shouldMatch_4831600)) {
                            _gotoNext = 4832613i32;
                        } else {
                            _gotoNext = 4832745i32;
                        };
                    } else if (__value__ == (4832613i32)) {
                        _t.errorf(("%s:%d: %#q.Match(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4826660), stdgo.Go.toInterface(_pattern_4831927), stdgo.Go.toInterface(_text_4831525), stdgo.Go.toInterface(_match_4832556), stdgo.Go.toInterface(_shouldMatch_4831600));
                        _gotoNext = 4831899i32;
                    } else if (__value__ == (4832745i32)) {
                        _have_4832745 = _re_4832255.findStringSubmatchIndex(_text_4831525?.__copy__());
                        if ((((_have_4832745.length) > (0 : stdgo.GoInt) : Bool)) != (_match_4832556)) {
                            _gotoNext = 4832817i32;
                        } else {
                            _gotoNext = 4832985i32;
                        };
                    } else if (__value__ == (4832817i32)) {
                        _t.errorf(("%s:%d: %#q.Match(%#q) = %v, but %#q.FindSubmatchIndex(%#q) = %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4826660), stdgo.Go.toInterface(_pattern_4831927), stdgo.Go.toInterface(_text_4831525), stdgo.Go.toInterface(_match_4832556), stdgo.Go.toInterface(_pattern_4831927), stdgo.Go.toInterface(_text_4831525), stdgo.Go.toInterface(_have_4832745));
                        _gotoNext = 4831899i32;
                    } else if (__value__ == (4832985i32)) {
                        if (((_have_4832745.length) > (_pos_4831613.length) : Bool)) {
                            _gotoNext = 4833009i32;
                        } else {
                            _gotoNext = 4833046i32;
                        };
                    } else if (__value__ == (4833009i32)) {
                        _have_4832745 = (_have_4832745.__slice__(0, (_pos_4831613.length)) : stdgo.Slice<stdgo.GoInt>);
                        _gotoNext = 4833046i32;
                    } else if (__value__ == (4833046i32)) {
                        if (!stdgo._internal.regexp.Regexp__same._same(_have_4832745, _pos_4831613)) {
                            _gotoNext = 4833066i32;
                        } else {
                            _gotoNext = 4831911i32;
                        };
                    } else if (__value__ == (4833066i32)) {
                        _t.errorf(("%s:%d: %#q.FindSubmatchIndex(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4826660), stdgo.Go.toInterface(_pattern_4831927), stdgo.Go.toInterface(_text_4831525), stdgo.Go.toInterface(_have_4832745), stdgo.Go.toInterface(_pos_4831613));
                        _gotoNext = 4831911i32;
                    } else if (__value__ == (4833178i32)) {
                        _i_4831911 = 0i32;
                        _gotoNext = 4833179i32;
                    } else if (__value__ == (4833179i32)) {
                        if (_i_4831911 < (_keys_4831899.length)) {
                            _gotoNext = 4831922i32;
                        } else {
                            _gotoNext = 4833184i32;
                        };
                    } else if (__value__ == (4833184i32)) {
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
