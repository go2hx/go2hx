package stdgo._internal.regexp;
function _testFowler(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _file:stdgo.GoString):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _f_4934577:stdgo.GoString = ("" : stdgo.GoString);
            var _err_4930308:stdgo.Error = (null : stdgo.Error);
            var _lastRegexp_4930256:stdgo.GoString = ("" : stdgo.GoString);
            var _shouldMatch_4935183:Bool = false;
            var _keys_4935741 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            var _shouldCompile_4935168:Bool = false;
            var _lineno_4930243:stdgo.GoInt = (0 : stdgo.GoInt);
            var _i_4935753 = @:invalid_type null;
            var _i_4935494 = @:invalid_type null;
            var _i_4930906:stdgo.GoInt = (0 : stdgo.GoInt);
            var _have_4936328:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            var _err_4935842:stdgo.Error = (null : stdgo.Error);
            var _field_4930861:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
            var _line_4930302:stdgo.GoString = ("" : stdgo.GoString);
            var _err_4930135:stdgo.Error = (null : stdgo.Error);
            var _match_4936139:Bool = false;
            var _keys_4935482 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            var _pos_4935196:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            var _text_4935108:stdgo.GoString = ("" : stdgo.GoString);
            var _flag_4933845:stdgo.GoString = ("" : stdgo.GoString);
            var _re_4935838:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
            var _c_4935748:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var readingBreak = false;
            var _values_4935482 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var _ok_4934068:Bool = false;
            var _b_4930218:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
            var _values_4935741 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var _syn_4935533:stdgo._internal.regexp.syntax.Syntax_Flags.Flags = ((0 : stdgo.GoUInt16) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
            var _pattern_4935510:stdgo.GoString = ("" : stdgo.GoString);
            var _ok_4935164:Bool = false;
            var _f_4930909:stdgo.GoString = ("" : stdgo.GoString);
            var _f_4930132:stdgo.Ref<stdgo._internal.os.Os_File.File> = (null : stdgo.Ref<stdgo._internal.os.Os_File.File>);
            var _c_4935489:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _gotoNext = 0i32;
            var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
            while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
                {
                    final __value__ = _gotoNext;
                    if (__value__ == (0i32)) {
                        {
                            var __tmp__ = stdgo._internal.os.Os_open.open(_file?.__copy__());
                            _f_4930132 = __tmp__._0;
                            _err_4930135 = __tmp__._1;
                        };
                        if (_err_4930135 != null) {
                            _gotoNext = 4930171i32;
                        } else {
                            _gotoNext = 4930201i32;
                        };
                    } else if (__value__ == (4930171i32)) {
                        _t.error(stdgo.Go.toInterface(_err_4930135));
                        return;
                        _gotoNext = 4930201i32;
                    } else if (__value__ == (4930201i32)) {
                        __deferstack__.unshift(() -> _f_4930132.close());
                        _b_4930218 = stdgo._internal.bufio.Bufio_newReader.newReader(stdgo.Go.asInterface(_f_4930132));
                        _lineno_4930243 = (0 : stdgo.GoInt);
                        _lastRegexp_4930256 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 4930273i32;
                    } else if (__value__ == (4930273i32)) {
                        var __blank__ = 0i32;
                        readingBreak = false;
                        _gotoNext = 4930283i32;
                    } else if (__value__ == (4930283i32)) {
                        if (!readingBreak) {
                            _gotoNext = 4930287i32;
                        } else {
                            _gotoNext = 4936767i32;
                        };
                    } else if (__value__ == (4930287i32)) {
                        _lineno_4930243++;
                        {
                            var __tmp__ = _b_4930218.readString((10 : stdgo.GoUInt8));
                            _line_4930302 = __tmp__._0?.__copy__();
                            _err_4930308 = __tmp__._1;
                        };
                        if (_err_4930308 != null) {
                            _gotoNext = 4930350i32;
                        } else {
                            _gotoNext = 4930768i32;
                        };
                    } else if (__value__ == (4930350i32)) {
                        if (stdgo.Go.toInterface(_err_4930308) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                            _gotoNext = 4930372i32;
                        } else {
                            _gotoNext = 4930427i32;
                        };
                    } else if (__value__ == (4930372i32)) {
                        _t.errorf(("%s:%d: %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4930243), stdgo.Go.toInterface(_err_4930308));
                        _gotoNext = 4930427i32;
                    } else if (__value__ == (4930427i32)) {
                        readingBreak = true;
                        _gotoNext = 4930283i32;
                    } else if (__value__ == (4930768i32)) {
                        if (((_line_4930302[(0 : stdgo.GoInt)] == (35 : stdgo.GoUInt8)) || (_line_4930302[(0 : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 4930805i32;
                        } else {
                            _gotoNext = 4930833i32;
                        };
                    } else if (__value__ == (4930805i32)) {
                        _gotoNext = 4930283i32;
                    } else if (__value__ == (4930833i32)) {
                        _line_4930302 = (_line_4930302.__slice__(0, ((_line_4930302.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_4930861 = stdgo._internal.regexp.Regexp__notab._notab.findAllString(_line_4930302?.__copy__(), (-1 : stdgo.GoInt));
                        if ((0i32 : stdgo.GoInt) < (_field_4930861.length)) {
                            _gotoNext = 4931067i32;
                        } else {
                            _gotoNext = 4931072i32;
                        };
                    } else if (__value__ == (4930906i32)) {
                        _i_4930906++;
                        _gotoNext = 4931068i32;
                    } else if (__value__ == (4930926i32)) {
                        _f_4930909 = _field_4930861[(_i_4930906 : stdgo.GoInt)]?.__copy__();
                        if (_f_4930909 == (("NULL" : stdgo.GoString))) {
                            _gotoNext = 4930946i32;
                        } else {
                            _gotoNext = 4930974i32;
                        };
                    } else if (__value__ == (4930946i32)) {
                        _field_4930861[(_i_4930906 : stdgo.GoInt)] = stdgo.Go.str()?.__copy__();
                        _gotoNext = 4930974i32;
                    } else if (__value__ == (4930974i32)) {
                        if (_f_4930909 == (("NIL" : stdgo.GoString))) {
                            _gotoNext = 4930988i32;
                        } else {
                            _gotoNext = 4930906i32;
                        };
                    } else if (__value__ == (4930988i32)) {
                        _t.logf(("%s:%d: skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4930243), stdgo.Go.toInterface(_line_4930302));
                        _gotoNext = 4930283i32;
                    } else if (__value__ == (4931067i32)) {
                        {
                            final __tmp__0 = 0i32;
                            final __tmp__1 = _field_4930861[(0i32 : stdgo.GoInt)]?.__copy__();
                            _i_4930906 = __tmp__0;
                            _f_4930909 = __tmp__1;
                        };
                        _gotoNext = 4931068i32;
                    } else if (__value__ == (4931068i32)) {
                        if (_i_4930906 < (_field_4930861.length)) {
                            _gotoNext = 4930926i32;
                        } else {
                            _gotoNext = 4931072i32;
                        };
                    } else if (__value__ == (4931072i32)) {
                        if ((_field_4930861.length) == ((0 : stdgo.GoInt))) {
                            _gotoNext = 4931091i32;
                        } else {
                            _gotoNext = 4933845i32;
                        };
                    } else if (__value__ == (4931091i32)) {
                        _gotoNext = 4930283i32;
                    } else if (__value__ == (4933845i32)) {
                        _flag_4933845 = _field_4930861[(0 : stdgo.GoInt)]?.__copy__();
                        _gotoNext = 4933864i32;
                    } else if (__value__ == (4933864i32)) {
                        {
                            final __value__ = _flag_4933845[(0 : stdgo.GoInt)];
                            if (__value__ == ((63 : stdgo.GoUInt8)) || __value__ == ((38 : stdgo.GoUInt8)) || __value__ == ((124 : stdgo.GoUInt8)) || __value__ == ((59 : stdgo.GoUInt8)) || __value__ == ((123 : stdgo.GoUInt8)) || __value__ == ((125 : stdgo.GoUInt8))) {
                                _gotoNext = 4933883i32;
                            } else if (__value__ == ((58 : stdgo.GoUInt8))) {
                                _gotoNext = 4934051i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8)) || __value__ == ((78 : stdgo.GoUInt8)) || __value__ == ((84 : stdgo.GoUInt8)) || __value__ == ((48 : stdgo.GoUInt8)) || __value__ == ((49 : stdgo.GoUInt8)) || __value__ == ((50 : stdgo.GoUInt8)) || __value__ == ((51 : stdgo.GoUInt8)) || __value__ == ((52 : stdgo.GoUInt8)) || __value__ == ((53 : stdgo.GoUInt8)) || __value__ == ((54 : stdgo.GoUInt8)) || __value__ == ((55 : stdgo.GoUInt8)) || __value__ == ((56 : stdgo.GoUInt8)) || __value__ == ((57 : stdgo.GoUInt8))) {
                                _gotoNext = 4934187i32;
                            } else {
                                _gotoNext = 4934390i32;
                            };
                        };
                    } else if (__value__ == (4933883i32)) {
                        _flag_4933845 = (_flag_4933845.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        if (_flag_4933845 == (stdgo.Go.str())) {
                            _gotoNext = 4934021i32;
                        } else {
                            _gotoNext = 4934390i32;
                        };
                    } else if (__value__ == (4934021i32)) {
                        _gotoNext = 4930283i32;
                    } else if (__value__ == (4934051i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_flag_4933845.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (":" : stdgo.GoString));
                                _flag_4933845 = __tmp__._1?.__copy__();
                                _ok_4934068 = __tmp__._2;
                            };
                            if (!_ok_4934068) {
                                _gotoNext = 4934128i32;
                            } else {
                                _gotoNext = 4934390i32;
                            };
                        };
                    } else if (__value__ == (4934128i32)) {
                        _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line_4930302));
                        _gotoNext = 4930283i32;
                    } else if (__value__ == (4934187i32)) {
                        _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line_4930302));
                        _gotoNext = 4930283i32;
                    } else if (__value__ == (4934390i32)) {
                        if (((_field_4930861.length) < (4 : stdgo.GoInt) : Bool)) {
                            _gotoNext = 4934408i32;
                        } else {
                            _gotoNext = 4934541i32;
                        };
                    } else if (__value__ == (4934408i32)) {
                        _t.errorf(("%s:%d: too few fields: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4930243), stdgo.Go.toInterface(_line_4930302));
                        _gotoNext = 4930283i32;
                    } else if (__value__ == (4934541i32)) {
                        if (stdgo._internal.strings.Strings_contains.contains(_flag_4933845?.__copy__(), ("$" : stdgo.GoString))) {
                            _gotoNext = 4934572i32;
                        } else {
                            _gotoNext = 4934991i32;
                        };
                    } else if (__value__ == (4934572i32)) {
                        _f_4934577 = ((("\"" : stdgo.GoString) + _field_4930861[(1 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_f_4934577?.__copy__());
                                _field_4930861[(1 : stdgo.GoInt)] = __tmp__._0?.__copy__();
                                _err_4930308 = __tmp__._1;
                            };
                            if (_err_4930308 != null) {
                                _gotoNext = 4934656i32;
                            } else {
                                _gotoNext = 4934724i32;
                            };
                        };
                    } else if (__value__ == (4934656i32)) {
                        _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4930243), stdgo.Go.toInterface(_f_4934577));
                        _gotoNext = 4934724i32;
                    } else if (__value__ == (4934724i32)) {
                        _f_4934577 = ((("\"" : stdgo.GoString) + _field_4930861[(2 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_f_4934577?.__copy__());
                                _field_4930861[(2 : stdgo.GoInt)] = __tmp__._0?.__copy__();
                                _err_4930308 = __tmp__._1;
                            };
                            if (_err_4930308 != null) {
                                _gotoNext = 4934802i32;
                            } else {
                                _gotoNext = 4934991i32;
                            };
                        };
                    } else if (__value__ == (4934802i32)) {
                        _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4930243), stdgo.Go.toInterface(_f_4934577));
                        _gotoNext = 4934991i32;
                    } else if (__value__ == (4934991i32)) {
                        if (_field_4930861[(1 : stdgo.GoInt)] == (("SAME" : stdgo.GoString))) {
                            _gotoNext = 4935013i32;
                        } else {
                            _gotoNext = 4935046i32;
                        };
                    } else if (__value__ == (4935013i32)) {
                        _field_4930861[(1 : stdgo.GoInt)] = _lastRegexp_4930256?.__copy__();
                        _gotoNext = 4935046i32;
                    } else if (__value__ == (4935046i32)) {
                        _lastRegexp_4930256 = _field_4930861[(1 : stdgo.GoInt)]?.__copy__();
                        _text_4935108 = _field_4930861[(2 : stdgo.GoInt)]?.__copy__();
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp__parseFowlerResult._parseFowlerResult(_field_4930861[(3 : stdgo.GoInt)]?.__copy__());
                            _ok_4935164 = __tmp__._0;
                            _shouldCompile_4935168 = __tmp__._1;
                            _shouldMatch_4935183 = __tmp__._2;
                            _pos_4935196 = __tmp__._3;
                        };
                        if (!_ok_4935164) {
                            _gotoNext = 4935240i32;
                        } else {
                            _gotoNext = 4935396i32;
                        };
                    } else if (__value__ == (4935240i32)) {
                        _t.errorf(("%s:%d: cannot parse result %#q" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4930243), stdgo.Go.toInterface(_field_4930861[(3 : stdgo.GoInt)]));
                        _gotoNext = 4930283i32;
                    } else if (__value__ == (4935396i32)) {
                        _gotoNext = 4935396i32;
                        _keys_4935482 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                        _values_4935482 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                        for (_key => _value in _flag_4933845) {
                            _keys_4935482 = (_keys_4935482.__append__(_key));
                            _values_4935482 = (_values_4935482.__append__(_value));
                        };
                        if ((0i32 : stdgo.GoInt) < (_keys_4935482.length)) {
                            _gotoNext = 4936761i32;
                        } else {
                            _gotoNext = 4936767i32;
                        };
                    } else if (__value__ == (4935494i32)) {
                        _i_4935494++;
                        _gotoNext = 4936762i32;
                    } else if (__value__ == (4935505i32)) {
                        _c_4935489 = _values_4935482[@:invalid_index_invalid_type _i_4935494];
                        var __blank__ = _keys_4935482[@:invalid_index_invalid_type _i_4935494];
                        _pattern_4935510 = _field_4930861[(1 : stdgo.GoInt)]?.__copy__();
                        _syn_4935533 = (4 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 4935573i32;
                    } else if (__value__ == (4935573i32)) {
                        {
                            final __value__ = _c_4935489;
                            if (__value__ == ((69 : stdgo.GoInt32))) {
                                _gotoNext = 4935620i32;
                            } else if (__value__ == ((76 : stdgo.GoInt32))) {
                                _gotoNext = 4935674i32;
                            } else {
                                _gotoNext = 4935587i32;
                            };
                        };
                    } else if (__value__ == (4935587i32)) {
                        _i_4935494++;
                        _gotoNext = 4936762i32;
                    } else if (__value__ == (4935620i32)) {
                        _gotoNext = 4935741i32;
                    } else if (__value__ == (4935674i32)) {
                        _pattern_4935510 = stdgo._internal.regexp.Regexp_quoteMeta.quoteMeta(_pattern_4935510?.__copy__())?.__copy__();
                        _gotoNext = 4935741i32;
                    } else if (__value__ == (4935741i32)) {
                        _keys_4935741 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                        _values_4935741 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                        for (_key => _value in _flag_4933845) {
                            _keys_4935741 = (_keys_4935741.__append__(_key));
                            _values_4935741 = (_values_4935741.__append__(_value));
                        };
                        if ((0i32 : stdgo.GoInt) < (_keys_4935741.length)) {
                            _gotoNext = 4935831i32;
                        } else {
                            _gotoNext = 4935838i32;
                        };
                    } else if (__value__ == (4935753i32)) {
                        _i_4935753++;
                        _gotoNext = 4935832i32;
                    } else if (__value__ == (4935764i32)) {
                        _c_4935748 = _values_4935741[@:invalid_index_invalid_type _i_4935753];
                        var __blank__ = _keys_4935741[@:invalid_index_invalid_type _i_4935753];
                        _gotoNext = 4935770i32;
                    } else if (__value__ == (4935770i32)) {
                        {
                            final __value__ = _c_4935748;
                            if (__value__ == ((105 : stdgo.GoInt32))) {
                                _gotoNext = 4935785i32;
                            } else {
                                _gotoNext = 4935753i32;
                            };
                        };
                    } else if (__value__ == (4935785i32)) {
                        _syn_4935533 = (_syn_4935533 | ((1 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 4935753i32;
                    } else if (__value__ == (4935831i32)) {
                        _i_4935753 = 0i32;
                        _gotoNext = 4935832i32;
                    } else if (__value__ == (4935832i32)) {
                        if (_i_4935753 < (_keys_4935741.length)) {
                            _gotoNext = 4935764i32;
                        } else {
                            _gotoNext = 4935838i32;
                        };
                    } else if (__value__ == (4935838i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp__compile._compile(_pattern_4935510?.__copy__(), _syn_4935533, true);
                            _re_4935838 = __tmp__._0;
                            _err_4935842 = __tmp__._1;
                        };
                        if (_err_4935842 != null) {
                            _gotoNext = 4935894i32;
                        } else {
                            _gotoNext = 4936021i32;
                        };
                    } else if (__value__ == (4935894i32)) {
                        if (_shouldCompile_4935168) {
                            _gotoNext = 4935917i32;
                        } else {
                            _gotoNext = 4935996i32;
                        };
                    } else if (__value__ == (4935917i32)) {
                        _t.errorf(("%s:%d: %#q did not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4930243), stdgo.Go.toInterface(_pattern_4935510));
                        _gotoNext = 4935996i32;
                    } else if (__value__ == (4935996i32)) {
                        _i_4935494++;
                        _gotoNext = 4936762i32;
                    } else if (__value__ == (4936021i32)) {
                        if (!_shouldCompile_4935168) {
                            _gotoNext = 4936039i32;
                        } else {
                            _gotoNext = 4936139i32;
                        };
                    } else if (__value__ == (4936039i32)) {
                        _t.errorf(("%s:%d: %#q should not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4930243), stdgo.Go.toInterface(_pattern_4935510));
                        _i_4935494++;
                        _gotoNext = 4936762i32;
                    } else if (__value__ == (4936139i32)) {
                        _match_4936139 = _re_4935838.matchString(_text_4935108?.__copy__());
                        if (_match_4936139 != (_shouldMatch_4935183)) {
                            _gotoNext = 4936196i32;
                        } else {
                            _gotoNext = 4936328i32;
                        };
                    } else if (__value__ == (4936196i32)) {
                        _t.errorf(("%s:%d: %#q.Match(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4930243), stdgo.Go.toInterface(_pattern_4935510), stdgo.Go.toInterface(_text_4935108), stdgo.Go.toInterface(_match_4936139), stdgo.Go.toInterface(_shouldMatch_4935183));
                        _i_4935494++;
                        _gotoNext = 4936762i32;
                    } else if (__value__ == (4936328i32)) {
                        _have_4936328 = _re_4935838.findStringSubmatchIndex(_text_4935108?.__copy__());
                        if ((((_have_4936328.length) > (0 : stdgo.GoInt) : Bool)) != (_match_4936139)) {
                            _gotoNext = 4936400i32;
                        } else {
                            _gotoNext = 4936568i32;
                        };
                    } else if (__value__ == (4936400i32)) {
                        _t.errorf(("%s:%d: %#q.Match(%#q) = %v, but %#q.FindSubmatchIndex(%#q) = %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4930243), stdgo.Go.toInterface(_pattern_4935510), stdgo.Go.toInterface(_text_4935108), stdgo.Go.toInterface(_match_4936139), stdgo.Go.toInterface(_pattern_4935510), stdgo.Go.toInterface(_text_4935108), stdgo.Go.toInterface(_have_4936328));
                        _i_4935494++;
                        _gotoNext = 4936762i32;
                    } else if (__value__ == (4936568i32)) {
                        if (((_have_4936328.length) > (_pos_4935196.length) : Bool)) {
                            _gotoNext = 4936592i32;
                        } else {
                            _gotoNext = 4936629i32;
                        };
                    } else if (__value__ == (4936592i32)) {
                        _have_4936328 = (_have_4936328.__slice__(0, (_pos_4935196.length)) : stdgo.Slice<stdgo.GoInt>);
                        _gotoNext = 4936629i32;
                    } else if (__value__ == (4936629i32)) {
                        if (!stdgo._internal.regexp.Regexp__same._same(_have_4936328, _pos_4935196)) {
                            _gotoNext = 4936649i32;
                        } else {
                            _gotoNext = 4935494i32;
                        };
                    } else if (__value__ == (4936649i32)) {
                        _t.errorf(("%s:%d: %#q.FindSubmatchIndex(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4930243), stdgo.Go.toInterface(_pattern_4935510), stdgo.Go.toInterface(_text_4935108), stdgo.Go.toInterface(_have_4936328), stdgo.Go.toInterface(_pos_4935196));
                        _gotoNext = 4935494i32;
                    } else if (__value__ == (4936761i32)) {
                        _i_4935494 = 0i32;
                        _gotoNext = 4936762i32;
                    } else if (__value__ == (4936762i32)) {
                        if (_i_4935494 < (_keys_4935482.length)) {
                            _gotoNext = 4935505i32;
                        } else {
                            _gotoNext = 4936767i32;
                        };
                    } else if (__value__ == (4936767i32)) {
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
