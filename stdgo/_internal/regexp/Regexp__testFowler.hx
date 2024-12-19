package stdgo._internal.regexp;
function _testFowler(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _file:stdgo.GoString):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _pattern_5007212:stdgo.GoString = ("" : stdgo.GoString);
            var _ok_5006866:Bool = false;
            var _match_5007841:Bool = false;
            var _f_5006279:stdgo.GoString = ("" : stdgo.GoString);
            var _err_5002010:stdgo.Error = (null : stdgo.Error);
            var _line_5002004:stdgo.GoString = ("" : stdgo.GoString);
            var _lineno_5001945:stdgo.GoInt = (0 : stdgo.GoInt);
            var _err_5001837:stdgo.Error = (null : stdgo.Error);
            var _shouldMatch_5006885:Bool = false;
            var _c_5007191:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _flag_5005547:stdgo.GoString = ("" : stdgo.GoString);
            var _field_5002563:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
            var readingBreak = false;
            var _have_5008030:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            var _err_5007544:stdgo.Error = (null : stdgo.Error);
            var _values_5007443 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var _i_5007455 = @:invalid_type null;
            var _shouldCompile_5006870:Bool = false;
            var _f_5002611:stdgo.GoString = ("" : stdgo.GoString);
            var _keys_5007443 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            var _syn_5007235:stdgo._internal.regexp.syntax.Syntax_Flags.Flags = ((0 : stdgo.GoUInt16) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
            var _values_5007184 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var _pos_5006898:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            var _text_5006810:stdgo.GoString = ("" : stdgo.GoString);
            var _i_5002608:stdgo.GoInt = (0 : stdgo.GoInt);
            var _lastRegexp_5001958:stdgo.GoString = ("" : stdgo.GoString);
            var _c_5007450:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _i_5007196 = @:invalid_type null;
            var _b_5001920:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
            var _re_5007540:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
            var _keys_5007184 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            var _ok_5005770:Bool = false;
            var _f_5001834:stdgo.Ref<stdgo._internal.os.Os_File.File> = (null : stdgo.Ref<stdgo._internal.os.Os_File.File>);
            var _gotoNext = 0i32;
            var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
            while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
                {
                    final __value__ = _gotoNext;
                    if (__value__ == (0i32)) {
                        {
                            var __tmp__ = stdgo._internal.os.Os_open.open(_file?.__copy__());
                            _f_5001834 = __tmp__._0;
                            _err_5001837 = __tmp__._1;
                        };
                        if (_err_5001837 != null) {
                            _gotoNext = 5001873i32;
                        } else {
                            _gotoNext = 5001903i32;
                        };
                    } else if (__value__ == (5001873i32)) {
                        _t.error(stdgo.Go.toInterface(_err_5001837));
                        return;
                        _gotoNext = 5001903i32;
                    } else if (__value__ == (5001903i32)) {
                        {
                            final __f__ = _f_5001834.close;
                            __deferstack__.unshift(() -> __f__());
                        };
                        _b_5001920 = stdgo._internal.bufio.Bufio_newReader.newReader(stdgo.Go.asInterface(_f_5001834));
                        _lineno_5001945 = (0 : stdgo.GoInt);
                        _lastRegexp_5001958 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 5001975i32;
                    } else if (__value__ == (5001975i32)) {
                        var __blank__ = 0i32;
                        readingBreak = false;
                        _gotoNext = 5001985i32;
                    } else if (__value__ == (5001985i32)) {
                        if (!readingBreak) {
                            _gotoNext = 5001989i32;
                        } else {
                            _gotoNext = 5008469i32;
                        };
                    } else if (__value__ == (5001989i32)) {
                        _lineno_5001945++;
                        {
                            var __tmp__ = _b_5001920.readString((10 : stdgo.GoUInt8));
                            _line_5002004 = __tmp__._0?.__copy__();
                            _err_5002010 = __tmp__._1;
                        };
                        if (_err_5002010 != null) {
                            _gotoNext = 5002052i32;
                        } else {
                            _gotoNext = 5002470i32;
                        };
                    } else if (__value__ == (5002052i32)) {
                        if (stdgo.Go.toInterface(_err_5002010) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                            _gotoNext = 5002074i32;
                        } else {
                            _gotoNext = 5002129i32;
                        };
                    } else if (__value__ == (5002074i32)) {
                        _t.errorf(("%s:%d: %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5001945), stdgo.Go.toInterface(_err_5002010));
                        _gotoNext = 5002129i32;
                    } else if (__value__ == (5002129i32)) {
                        readingBreak = true;
                        _gotoNext = 5001985i32;
                    } else if (__value__ == (5002470i32)) {
                        if (((_line_5002004[(0 : stdgo.GoInt)] == (35 : stdgo.GoUInt8)) || (_line_5002004[(0 : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 5002507i32;
                        } else {
                            _gotoNext = 5002535i32;
                        };
                    } else if (__value__ == (5002507i32)) {
                        _gotoNext = 5001985i32;
                    } else if (__value__ == (5002535i32)) {
                        _line_5002004 = (_line_5002004.__slice__(0, ((_line_5002004.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_5002563 = stdgo._internal.regexp.Regexp__notab._notab.findAllString(_line_5002004?.__copy__(), (-1 : stdgo.GoInt));
                        if ((0i32 : stdgo.GoInt) < (_field_5002563.length)) {
                            _gotoNext = 5002769i32;
                        } else {
                            _gotoNext = 5002774i32;
                        };
                    } else if (__value__ == (5002608i32)) {
                        _i_5002608++;
                        _gotoNext = 5002770i32;
                    } else if (__value__ == (5002628i32)) {
                        _f_5002611 = _field_5002563[(_i_5002608 : stdgo.GoInt)]?.__copy__();
                        if (_f_5002611 == (("NULL" : stdgo.GoString))) {
                            _gotoNext = 5002648i32;
                        } else {
                            _gotoNext = 5002676i32;
                        };
                    } else if (__value__ == (5002648i32)) {
                        _field_5002563[(_i_5002608 : stdgo.GoInt)] = stdgo.Go.str()?.__copy__();
                        _gotoNext = 5002676i32;
                    } else if (__value__ == (5002676i32)) {
                        if (_f_5002611 == (("NIL" : stdgo.GoString))) {
                            _gotoNext = 5002690i32;
                        } else {
                            _gotoNext = 5002608i32;
                        };
                    } else if (__value__ == (5002690i32)) {
                        _t.logf(("%s:%d: skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5001945), stdgo.Go.toInterface(_line_5002004));
                        _gotoNext = 5001985i32;
                    } else if (__value__ == (5002769i32)) {
                        {
                            final __tmp__0 = 0i32;
                            final __tmp__1 = _field_5002563[(0i32 : stdgo.GoInt)]?.__copy__();
                            _i_5002608 = __tmp__0;
                            _f_5002611 = __tmp__1;
                        };
                        _gotoNext = 5002770i32;
                    } else if (__value__ == (5002770i32)) {
                        if (_i_5002608 < (_field_5002563.length)) {
                            _gotoNext = 5002628i32;
                        } else {
                            _gotoNext = 5002774i32;
                        };
                    } else if (__value__ == (5002774i32)) {
                        if ((_field_5002563.length) == ((0 : stdgo.GoInt))) {
                            _gotoNext = 5002793i32;
                        } else {
                            _gotoNext = 5005547i32;
                        };
                    } else if (__value__ == (5002793i32)) {
                        _gotoNext = 5001985i32;
                    } else if (__value__ == (5005547i32)) {
                        _flag_5005547 = _field_5002563[(0 : stdgo.GoInt)]?.__copy__();
                        _gotoNext = 5005566i32;
                    } else if (__value__ == (5005566i32)) {
                        {
                            final __value__ = _flag_5005547[(0 : stdgo.GoInt)];
                            if (__value__ == ((63 : stdgo.GoUInt8)) || __value__ == ((38 : stdgo.GoUInt8)) || __value__ == ((124 : stdgo.GoUInt8)) || __value__ == ((59 : stdgo.GoUInt8)) || __value__ == ((123 : stdgo.GoUInt8)) || __value__ == ((125 : stdgo.GoUInt8))) {
                                _gotoNext = 5005585i32;
                            } else if (__value__ == ((58 : stdgo.GoUInt8))) {
                                _gotoNext = 5005753i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8)) || __value__ == ((78 : stdgo.GoUInt8)) || __value__ == ((84 : stdgo.GoUInt8)) || __value__ == ((48 : stdgo.GoUInt8)) || __value__ == ((49 : stdgo.GoUInt8)) || __value__ == ((50 : stdgo.GoUInt8)) || __value__ == ((51 : stdgo.GoUInt8)) || __value__ == ((52 : stdgo.GoUInt8)) || __value__ == ((53 : stdgo.GoUInt8)) || __value__ == ((54 : stdgo.GoUInt8)) || __value__ == ((55 : stdgo.GoUInt8)) || __value__ == ((56 : stdgo.GoUInt8)) || __value__ == ((57 : stdgo.GoUInt8))) {
                                _gotoNext = 5005889i32;
                            } else {
                                _gotoNext = 5006092i32;
                            };
                        };
                    } else if (__value__ == (5005585i32)) {
                        _flag_5005547 = (_flag_5005547.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        if (_flag_5005547 == (stdgo.Go.str())) {
                            _gotoNext = 5005723i32;
                        } else {
                            _gotoNext = 5006092i32;
                        };
                    } else if (__value__ == (5005723i32)) {
                        _gotoNext = 5001985i32;
                    } else if (__value__ == (5005753i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_flag_5005547.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (":" : stdgo.GoString));
                                _flag_5005547 = __tmp__._1?.__copy__();
                                _ok_5005770 = __tmp__._2;
                            };
                            if (!_ok_5005770) {
                                _gotoNext = 5005830i32;
                            } else {
                                _gotoNext = 5006092i32;
                            };
                        };
                    } else if (__value__ == (5005830i32)) {
                        _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line_5002004));
                        _gotoNext = 5001985i32;
                    } else if (__value__ == (5005889i32)) {
                        _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line_5002004));
                        _gotoNext = 5001985i32;
                    } else if (__value__ == (5006092i32)) {
                        if (((_field_5002563.length) < (4 : stdgo.GoInt) : Bool)) {
                            _gotoNext = 5006110i32;
                        } else {
                            _gotoNext = 5006243i32;
                        };
                    } else if (__value__ == (5006110i32)) {
                        _t.errorf(("%s:%d: too few fields: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5001945), stdgo.Go.toInterface(_line_5002004));
                        _gotoNext = 5001985i32;
                    } else if (__value__ == (5006243i32)) {
                        if (stdgo._internal.strings.Strings_contains.contains(_flag_5005547?.__copy__(), ("$" : stdgo.GoString))) {
                            _gotoNext = 5006274i32;
                        } else {
                            _gotoNext = 5006693i32;
                        };
                    } else if (__value__ == (5006274i32)) {
                        _f_5006279 = ((("\"" : stdgo.GoString) + _field_5002563[(1 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_f_5006279?.__copy__());
                                _field_5002563[(1 : stdgo.GoInt)] = __tmp__._0?.__copy__();
                                _err_5002010 = __tmp__._1;
                            };
                            if (_err_5002010 != null) {
                                _gotoNext = 5006358i32;
                            } else {
                                _gotoNext = 5006426i32;
                            };
                        };
                    } else if (__value__ == (5006358i32)) {
                        _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5001945), stdgo.Go.toInterface(_f_5006279));
                        _gotoNext = 5006426i32;
                    } else if (__value__ == (5006426i32)) {
                        _f_5006279 = ((("\"" : stdgo.GoString) + _field_5002563[(2 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_f_5006279?.__copy__());
                                _field_5002563[(2 : stdgo.GoInt)] = __tmp__._0?.__copy__();
                                _err_5002010 = __tmp__._1;
                            };
                            if (_err_5002010 != null) {
                                _gotoNext = 5006504i32;
                            } else {
                                _gotoNext = 5006693i32;
                            };
                        };
                    } else if (__value__ == (5006504i32)) {
                        _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5001945), stdgo.Go.toInterface(_f_5006279));
                        _gotoNext = 5006693i32;
                    } else if (__value__ == (5006693i32)) {
                        if (_field_5002563[(1 : stdgo.GoInt)] == (("SAME" : stdgo.GoString))) {
                            _gotoNext = 5006715i32;
                        } else {
                            _gotoNext = 5006748i32;
                        };
                    } else if (__value__ == (5006715i32)) {
                        _field_5002563[(1 : stdgo.GoInt)] = _lastRegexp_5001958?.__copy__();
                        _gotoNext = 5006748i32;
                    } else if (__value__ == (5006748i32)) {
                        _lastRegexp_5001958 = _field_5002563[(1 : stdgo.GoInt)]?.__copy__();
                        _text_5006810 = _field_5002563[(2 : stdgo.GoInt)]?.__copy__();
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp__parseFowlerResult._parseFowlerResult(_field_5002563[(3 : stdgo.GoInt)]?.__copy__());
                            _ok_5006866 = __tmp__._0;
                            _shouldCompile_5006870 = __tmp__._1;
                            _shouldMatch_5006885 = __tmp__._2;
                            _pos_5006898 = __tmp__._3;
                        };
                        if (!_ok_5006866) {
                            _gotoNext = 5006942i32;
                        } else {
                            _gotoNext = 5007098i32;
                        };
                    } else if (__value__ == (5006942i32)) {
                        _t.errorf(("%s:%d: cannot parse result %#q" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5001945), stdgo.Go.toInterface(_field_5002563[(3 : stdgo.GoInt)]));
                        _gotoNext = 5001985i32;
                    } else if (__value__ == (5007098i32)) {
                        _gotoNext = 5007098i32;
                        _keys_5007184 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                        _values_5007184 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                        for (_key => _value in _flag_5005547) {
                            _keys_5007184 = (_keys_5007184.__append__(_key));
                            _values_5007184 = (_values_5007184.__append__(_value));
                        };
                        if ((0i32 : stdgo.GoInt) < (_keys_5007184.length)) {
                            _gotoNext = 5008463i32;
                        } else {
                            _gotoNext = 5008469i32;
                        };
                    } else if (__value__ == (5007196i32)) {
                        _i_5007196++;
                        _gotoNext = 5008464i32;
                    } else if (__value__ == (5007207i32)) {
                        _c_5007191 = _values_5007184[@:invalid_index_invalid_type _i_5007196];
                        var __blank__ = _keys_5007184[@:invalid_index_invalid_type _i_5007196];
                        _pattern_5007212 = _field_5002563[(1 : stdgo.GoInt)]?.__copy__();
                        _syn_5007235 = (4 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 5007275i32;
                    } else if (__value__ == (5007275i32)) {
                        {
                            final __value__ = _c_5007191;
                            if (__value__ == ((69 : stdgo.GoInt32))) {
                                _gotoNext = 5007322i32;
                            } else if (__value__ == ((76 : stdgo.GoInt32))) {
                                _gotoNext = 5007376i32;
                            } else {
                                _gotoNext = 5007289i32;
                            };
                        };
                    } else if (__value__ == (5007289i32)) {
                        _i_5007196++;
                        _gotoNext = 5008464i32;
                    } else if (__value__ == (5007322i32)) {
                        _gotoNext = 5007443i32;
                    } else if (__value__ == (5007376i32)) {
                        _pattern_5007212 = stdgo._internal.regexp.Regexp_quoteMeta.quoteMeta(_pattern_5007212?.__copy__())?.__copy__();
                        _gotoNext = 5007443i32;
                    } else if (__value__ == (5007443i32)) {
                        _keys_5007443 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                        _values_5007443 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                        for (_key => _value in _flag_5005547) {
                            _keys_5007443 = (_keys_5007443.__append__(_key));
                            _values_5007443 = (_values_5007443.__append__(_value));
                        };
                        if ((0i32 : stdgo.GoInt) < (_keys_5007443.length)) {
                            _gotoNext = 5007533i32;
                        } else {
                            _gotoNext = 5007540i32;
                        };
                    } else if (__value__ == (5007455i32)) {
                        _i_5007455++;
                        _gotoNext = 5007534i32;
                    } else if (__value__ == (5007466i32)) {
                        _c_5007450 = _values_5007443[@:invalid_index_invalid_type _i_5007455];
                        var __blank__ = _keys_5007443[@:invalid_index_invalid_type _i_5007455];
                        _gotoNext = 5007472i32;
                    } else if (__value__ == (5007472i32)) {
                        {
                            final __value__ = _c_5007450;
                            if (__value__ == ((105 : stdgo.GoInt32))) {
                                _gotoNext = 5007487i32;
                            } else {
                                _gotoNext = 5007455i32;
                            };
                        };
                    } else if (__value__ == (5007487i32)) {
                        _syn_5007235 = (_syn_5007235 | ((1 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 5007455i32;
                    } else if (__value__ == (5007533i32)) {
                        _i_5007455 = 0i32;
                        _gotoNext = 5007534i32;
                    } else if (__value__ == (5007534i32)) {
                        if (_i_5007455 < (_keys_5007443.length)) {
                            _gotoNext = 5007466i32;
                        } else {
                            _gotoNext = 5007540i32;
                        };
                    } else if (__value__ == (5007540i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp__compile._compile(_pattern_5007212?.__copy__(), _syn_5007235, true);
                            _re_5007540 = __tmp__._0;
                            _err_5007544 = __tmp__._1;
                        };
                        if (_err_5007544 != null) {
                            _gotoNext = 5007596i32;
                        } else {
                            _gotoNext = 5007723i32;
                        };
                    } else if (__value__ == (5007596i32)) {
                        if (_shouldCompile_5006870) {
                            _gotoNext = 5007619i32;
                        } else {
                            _gotoNext = 5007698i32;
                        };
                    } else if (__value__ == (5007619i32)) {
                        _t.errorf(("%s:%d: %#q did not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5001945), stdgo.Go.toInterface(_pattern_5007212));
                        _gotoNext = 5007698i32;
                    } else if (__value__ == (5007698i32)) {
                        _i_5007196++;
                        _gotoNext = 5008464i32;
                    } else if (__value__ == (5007723i32)) {
                        if (!_shouldCompile_5006870) {
                            _gotoNext = 5007741i32;
                        } else {
                            _gotoNext = 5007841i32;
                        };
                    } else if (__value__ == (5007741i32)) {
                        _t.errorf(("%s:%d: %#q should not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5001945), stdgo.Go.toInterface(_pattern_5007212));
                        _i_5007196++;
                        _gotoNext = 5008464i32;
                    } else if (__value__ == (5007841i32)) {
                        _match_5007841 = _re_5007540.matchString(_text_5006810?.__copy__());
                        if (_match_5007841 != (_shouldMatch_5006885)) {
                            _gotoNext = 5007898i32;
                        } else {
                            _gotoNext = 5008030i32;
                        };
                    } else if (__value__ == (5007898i32)) {
                        _t.errorf(("%s:%d: %#q.Match(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5001945), stdgo.Go.toInterface(_pattern_5007212), stdgo.Go.toInterface(_text_5006810), stdgo.Go.toInterface(_match_5007841), stdgo.Go.toInterface(_shouldMatch_5006885));
                        _i_5007196++;
                        _gotoNext = 5008464i32;
                    } else if (__value__ == (5008030i32)) {
                        _have_5008030 = _re_5007540.findStringSubmatchIndex(_text_5006810?.__copy__());
                        if ((((_have_5008030.length) > (0 : stdgo.GoInt) : Bool)) != (_match_5007841)) {
                            _gotoNext = 5008102i32;
                        } else {
                            _gotoNext = 5008270i32;
                        };
                    } else if (__value__ == (5008102i32)) {
                        _t.errorf(("%s:%d: %#q.Match(%#q) = %v, but %#q.FindSubmatchIndex(%#q) = %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5001945), stdgo.Go.toInterface(_pattern_5007212), stdgo.Go.toInterface(_text_5006810), stdgo.Go.toInterface(_match_5007841), stdgo.Go.toInterface(_pattern_5007212), stdgo.Go.toInterface(_text_5006810), stdgo.Go.toInterface(_have_5008030));
                        _i_5007196++;
                        _gotoNext = 5008464i32;
                    } else if (__value__ == (5008270i32)) {
                        if (((_have_5008030.length) > (_pos_5006898.length) : Bool)) {
                            _gotoNext = 5008294i32;
                        } else {
                            _gotoNext = 5008331i32;
                        };
                    } else if (__value__ == (5008294i32)) {
                        _have_5008030 = (_have_5008030.__slice__(0, (_pos_5006898.length)) : stdgo.Slice<stdgo.GoInt>);
                        _gotoNext = 5008331i32;
                    } else if (__value__ == (5008331i32)) {
                        if (!stdgo._internal.regexp.Regexp__same._same(_have_5008030, _pos_5006898)) {
                            _gotoNext = 5008351i32;
                        } else {
                            _gotoNext = 5007196i32;
                        };
                    } else if (__value__ == (5008351i32)) {
                        _t.errorf(("%s:%d: %#q.FindSubmatchIndex(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5001945), stdgo.Go.toInterface(_pattern_5007212), stdgo.Go.toInterface(_text_5006810), stdgo.Go.toInterface(_have_5008030), stdgo.Go.toInterface(_pos_5006898));
                        _gotoNext = 5007196i32;
                    } else if (__value__ == (5008463i32)) {
                        _i_5007196 = 0i32;
                        _gotoNext = 5008464i32;
                    } else if (__value__ == (5008464i32)) {
                        if (_i_5007196 < (_keys_5007184.length)) {
                            _gotoNext = 5007207i32;
                        } else {
                            _gotoNext = 5008469i32;
                        };
                    } else if (__value__ == (5008469i32)) {
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
