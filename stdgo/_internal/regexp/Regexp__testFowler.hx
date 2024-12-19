package stdgo._internal.regexp;
function _testFowler(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _file:stdgo.GoString):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _i_4936262 = @:invalid_type null;
            var _keys_4935991 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            var _shouldMatch_4935692:Bool = false;
            var _err_4930644:stdgo.Error = (null : stdgo.Error);
            var _re_4936347:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
            var _err_4936351:stdgo.Error = (null : stdgo.Error);
            var _syn_4936042:stdgo._internal.regexp.syntax.Syntax_Flags.Flags = ((0 : stdgo.GoUInt16) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
            var _pattern_4936019:stdgo.GoString = ("" : stdgo.GoString);
            var _line_4930811:stdgo.GoString = ("" : stdgo.GoString);
            var _match_4936648:Bool = false;
            var _c_4935998:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _c_4936257:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _pos_4935705:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            var _ok_4935673:Bool = false;
            var _i_4931415:stdgo.GoInt = (0 : stdgo.GoInt);
            var _values_4935991 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var _flag_4934354:stdgo.GoString = ("" : stdgo.GoString);
            var _field_4931370:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
            var _f_4930641:stdgo.Ref<stdgo._internal.os.Os_File.File> = (null : stdgo.Ref<stdgo._internal.os.Os_File.File>);
            var _text_4935617:stdgo.GoString = ("" : stdgo.GoString);
            var _f_4935086:stdgo.GoString = ("" : stdgo.GoString);
            var _err_4930817:stdgo.Error = (null : stdgo.Error);
            var _b_4930727:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
            var _values_4936250 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var _have_4936837:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            var _f_4931418:stdgo.GoString = ("" : stdgo.GoString);
            var readingBreak = false;
            var _lastRegexp_4930765:stdgo.GoString = ("" : stdgo.GoString);
            var _lineno_4930752:stdgo.GoInt = (0 : stdgo.GoInt);
            var _keys_4936250 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            var _i_4936003 = @:invalid_type null;
            var _shouldCompile_4935677:Bool = false;
            var _ok_4934577:Bool = false;
            var _gotoNext = 0i32;
            var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
            while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
                {
                    final __value__ = _gotoNext;
                    if (__value__ == (0i32)) {
                        {
                            var __tmp__ = stdgo._internal.os.Os_open.open(_file?.__copy__());
                            _f_4930641 = __tmp__._0;
                            _err_4930644 = __tmp__._1;
                        };
                        if (_err_4930644 != null) {
                            _gotoNext = 4930680i32;
                        } else {
                            _gotoNext = 4930710i32;
                        };
                    } else if (__value__ == (4930680i32)) {
                        _t.error(stdgo.Go.toInterface(_err_4930644));
                        return;
                        _gotoNext = 4930710i32;
                    } else if (__value__ == (4930710i32)) {
                        {
                            final __f__ = _f_4930641.close;
                            __deferstack__.unshift(() -> __f__());
                        };
                        _b_4930727 = stdgo._internal.bufio.Bufio_newReader.newReader(stdgo.Go.asInterface(_f_4930641));
                        _lineno_4930752 = (0 : stdgo.GoInt);
                        _lastRegexp_4930765 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 4930782i32;
                    } else if (__value__ == (4930782i32)) {
                        var __blank__ = 0i32;
                        readingBreak = false;
                        _gotoNext = 4930792i32;
                    } else if (__value__ == (4930792i32)) {
                        if (!readingBreak) {
                            _gotoNext = 4930796i32;
                        } else {
                            _gotoNext = 4937276i32;
                        };
                    } else if (__value__ == (4930796i32)) {
                        _lineno_4930752++;
                        {
                            var __tmp__ = _b_4930727.readString((10 : stdgo.GoUInt8));
                            _line_4930811 = __tmp__._0?.__copy__();
                            _err_4930817 = __tmp__._1;
                        };
                        if (_err_4930817 != null) {
                            _gotoNext = 4930859i32;
                        } else {
                            _gotoNext = 4931277i32;
                        };
                    } else if (__value__ == (4930859i32)) {
                        if (stdgo.Go.toInterface(_err_4930817) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                            _gotoNext = 4930881i32;
                        } else {
                            _gotoNext = 4930936i32;
                        };
                    } else if (__value__ == (4930881i32)) {
                        _t.errorf(("%s:%d: %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4930752), stdgo.Go.toInterface(_err_4930817));
                        _gotoNext = 4930936i32;
                    } else if (__value__ == (4930936i32)) {
                        readingBreak = true;
                        _gotoNext = 4930792i32;
                    } else if (__value__ == (4931277i32)) {
                        if (((_line_4930811[(0 : stdgo.GoInt)] == (35 : stdgo.GoUInt8)) || (_line_4930811[(0 : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 4931314i32;
                        } else {
                            _gotoNext = 4931342i32;
                        };
                    } else if (__value__ == (4931314i32)) {
                        _gotoNext = 4930792i32;
                    } else if (__value__ == (4931342i32)) {
                        _line_4930811 = (_line_4930811.__slice__(0, ((_line_4930811.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_4931370 = stdgo._internal.regexp.Regexp__notab._notab.findAllString(_line_4930811?.__copy__(), (-1 : stdgo.GoInt));
                        if ((0i32 : stdgo.GoInt) < (_field_4931370.length)) {
                            _gotoNext = 4931576i32;
                        } else {
                            _gotoNext = 4931581i32;
                        };
                    } else if (__value__ == (4931415i32)) {
                        _i_4931415++;
                        _gotoNext = 4931577i32;
                    } else if (__value__ == (4931435i32)) {
                        _f_4931418 = _field_4931370[(_i_4931415 : stdgo.GoInt)]?.__copy__();
                        if (_f_4931418 == (("NULL" : stdgo.GoString))) {
                            _gotoNext = 4931455i32;
                        } else {
                            _gotoNext = 4931483i32;
                        };
                    } else if (__value__ == (4931455i32)) {
                        _field_4931370[(_i_4931415 : stdgo.GoInt)] = stdgo.Go.str()?.__copy__();
                        _gotoNext = 4931483i32;
                    } else if (__value__ == (4931483i32)) {
                        if (_f_4931418 == (("NIL" : stdgo.GoString))) {
                            _gotoNext = 4931497i32;
                        } else {
                            _gotoNext = 4931415i32;
                        };
                    } else if (__value__ == (4931497i32)) {
                        _t.logf(("%s:%d: skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4930752), stdgo.Go.toInterface(_line_4930811));
                        _gotoNext = 4930792i32;
                    } else if (__value__ == (4931576i32)) {
                        {
                            final __tmp__0 = 0i32;
                            final __tmp__1 = _field_4931370[(0i32 : stdgo.GoInt)]?.__copy__();
                            _i_4931415 = __tmp__0;
                            _f_4931418 = __tmp__1;
                        };
                        _gotoNext = 4931577i32;
                    } else if (__value__ == (4931577i32)) {
                        if (_i_4931415 < (_field_4931370.length)) {
                            _gotoNext = 4931435i32;
                        } else {
                            _gotoNext = 4931581i32;
                        };
                    } else if (__value__ == (4931581i32)) {
                        if ((_field_4931370.length) == ((0 : stdgo.GoInt))) {
                            _gotoNext = 4931600i32;
                        } else {
                            _gotoNext = 4934354i32;
                        };
                    } else if (__value__ == (4931600i32)) {
                        _gotoNext = 4930792i32;
                    } else if (__value__ == (4934354i32)) {
                        _flag_4934354 = _field_4931370[(0 : stdgo.GoInt)]?.__copy__();
                        _gotoNext = 4934373i32;
                    } else if (__value__ == (4934373i32)) {
                        {
                            final __value__ = _flag_4934354[(0 : stdgo.GoInt)];
                            if (__value__ == ((63 : stdgo.GoUInt8)) || __value__ == ((38 : stdgo.GoUInt8)) || __value__ == ((124 : stdgo.GoUInt8)) || __value__ == ((59 : stdgo.GoUInt8)) || __value__ == ((123 : stdgo.GoUInt8)) || __value__ == ((125 : stdgo.GoUInt8))) {
                                _gotoNext = 4934392i32;
                            } else if (__value__ == ((58 : stdgo.GoUInt8))) {
                                _gotoNext = 4934560i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8)) || __value__ == ((78 : stdgo.GoUInt8)) || __value__ == ((84 : stdgo.GoUInt8)) || __value__ == ((48 : stdgo.GoUInt8)) || __value__ == ((49 : stdgo.GoUInt8)) || __value__ == ((50 : stdgo.GoUInt8)) || __value__ == ((51 : stdgo.GoUInt8)) || __value__ == ((52 : stdgo.GoUInt8)) || __value__ == ((53 : stdgo.GoUInt8)) || __value__ == ((54 : stdgo.GoUInt8)) || __value__ == ((55 : stdgo.GoUInt8)) || __value__ == ((56 : stdgo.GoUInt8)) || __value__ == ((57 : stdgo.GoUInt8))) {
                                _gotoNext = 4934696i32;
                            } else {
                                _gotoNext = 4934899i32;
                            };
                        };
                    } else if (__value__ == (4934392i32)) {
                        _flag_4934354 = (_flag_4934354.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        if (_flag_4934354 == (stdgo.Go.str())) {
                            _gotoNext = 4934530i32;
                        } else {
                            _gotoNext = 4934899i32;
                        };
                    } else if (__value__ == (4934530i32)) {
                        _gotoNext = 4930792i32;
                    } else if (__value__ == (4934560i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_flag_4934354.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (":" : stdgo.GoString));
                                _flag_4934354 = __tmp__._1?.__copy__();
                                _ok_4934577 = __tmp__._2;
                            };
                            if (!_ok_4934577) {
                                _gotoNext = 4934637i32;
                            } else {
                                _gotoNext = 4934899i32;
                            };
                        };
                    } else if (__value__ == (4934637i32)) {
                        _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line_4930811));
                        _gotoNext = 4930792i32;
                    } else if (__value__ == (4934696i32)) {
                        _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line_4930811));
                        _gotoNext = 4930792i32;
                    } else if (__value__ == (4934899i32)) {
                        if (((_field_4931370.length) < (4 : stdgo.GoInt) : Bool)) {
                            _gotoNext = 4934917i32;
                        } else {
                            _gotoNext = 4935050i32;
                        };
                    } else if (__value__ == (4934917i32)) {
                        _t.errorf(("%s:%d: too few fields: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4930752), stdgo.Go.toInterface(_line_4930811));
                        _gotoNext = 4930792i32;
                    } else if (__value__ == (4935050i32)) {
                        if (stdgo._internal.strings.Strings_contains.contains(_flag_4934354?.__copy__(), ("$" : stdgo.GoString))) {
                            _gotoNext = 4935081i32;
                        } else {
                            _gotoNext = 4935500i32;
                        };
                    } else if (__value__ == (4935081i32)) {
                        _f_4935086 = ((("\"" : stdgo.GoString) + _field_4931370[(1 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_f_4935086?.__copy__());
                                _field_4931370[(1 : stdgo.GoInt)] = __tmp__._0?.__copy__();
                                _err_4930817 = __tmp__._1;
                            };
                            if (_err_4930817 != null) {
                                _gotoNext = 4935165i32;
                            } else {
                                _gotoNext = 4935233i32;
                            };
                        };
                    } else if (__value__ == (4935165i32)) {
                        _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4930752), stdgo.Go.toInterface(_f_4935086));
                        _gotoNext = 4935233i32;
                    } else if (__value__ == (4935233i32)) {
                        _f_4935086 = ((("\"" : stdgo.GoString) + _field_4931370[(2 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_f_4935086?.__copy__());
                                _field_4931370[(2 : stdgo.GoInt)] = __tmp__._0?.__copy__();
                                _err_4930817 = __tmp__._1;
                            };
                            if (_err_4930817 != null) {
                                _gotoNext = 4935311i32;
                            } else {
                                _gotoNext = 4935500i32;
                            };
                        };
                    } else if (__value__ == (4935311i32)) {
                        _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4930752), stdgo.Go.toInterface(_f_4935086));
                        _gotoNext = 4935500i32;
                    } else if (__value__ == (4935500i32)) {
                        if (_field_4931370[(1 : stdgo.GoInt)] == (("SAME" : stdgo.GoString))) {
                            _gotoNext = 4935522i32;
                        } else {
                            _gotoNext = 4935555i32;
                        };
                    } else if (__value__ == (4935522i32)) {
                        _field_4931370[(1 : stdgo.GoInt)] = _lastRegexp_4930765?.__copy__();
                        _gotoNext = 4935555i32;
                    } else if (__value__ == (4935555i32)) {
                        _lastRegexp_4930765 = _field_4931370[(1 : stdgo.GoInt)]?.__copy__();
                        _text_4935617 = _field_4931370[(2 : stdgo.GoInt)]?.__copy__();
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp__parseFowlerResult._parseFowlerResult(_field_4931370[(3 : stdgo.GoInt)]?.__copy__());
                            _ok_4935673 = __tmp__._0;
                            _shouldCompile_4935677 = __tmp__._1;
                            _shouldMatch_4935692 = __tmp__._2;
                            _pos_4935705 = __tmp__._3;
                        };
                        if (!_ok_4935673) {
                            _gotoNext = 4935749i32;
                        } else {
                            _gotoNext = 4935905i32;
                        };
                    } else if (__value__ == (4935749i32)) {
                        _t.errorf(("%s:%d: cannot parse result %#q" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4930752), stdgo.Go.toInterface(_field_4931370[(3 : stdgo.GoInt)]));
                        _gotoNext = 4930792i32;
                    } else if (__value__ == (4935905i32)) {
                        _gotoNext = 4935905i32;
                        _keys_4935991 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                        _values_4935991 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                        for (_key => _value in _flag_4934354) {
                            _keys_4935991 = (_keys_4935991.__append__(_key));
                            _values_4935991 = (_values_4935991.__append__(_value));
                        };
                        if ((0i32 : stdgo.GoInt) < (_keys_4935991.length)) {
                            _gotoNext = 4937270i32;
                        } else {
                            _gotoNext = 4937276i32;
                        };
                    } else if (__value__ == (4936003i32)) {
                        _i_4936003++;
                        _gotoNext = 4937271i32;
                    } else if (__value__ == (4936014i32)) {
                        _c_4935998 = _values_4935991[@:invalid_index_invalid_type _i_4936003];
                        var __blank__ = _keys_4935991[@:invalid_index_invalid_type _i_4936003];
                        _pattern_4936019 = _field_4931370[(1 : stdgo.GoInt)]?.__copy__();
                        _syn_4936042 = (4 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 4936082i32;
                    } else if (__value__ == (4936082i32)) {
                        {
                            final __value__ = _c_4935998;
                            if (__value__ == ((69 : stdgo.GoInt32))) {
                                _gotoNext = 4936129i32;
                            } else if (__value__ == ((76 : stdgo.GoInt32))) {
                                _gotoNext = 4936183i32;
                            } else {
                                _gotoNext = 4936096i32;
                            };
                        };
                    } else if (__value__ == (4936096i32)) {
                        _i_4936003++;
                        _gotoNext = 4937271i32;
                    } else if (__value__ == (4936129i32)) {
                        _gotoNext = 4936250i32;
                    } else if (__value__ == (4936183i32)) {
                        _pattern_4936019 = stdgo._internal.regexp.Regexp_quoteMeta.quoteMeta(_pattern_4936019?.__copy__())?.__copy__();
                        _gotoNext = 4936250i32;
                    } else if (__value__ == (4936250i32)) {
                        _keys_4936250 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                        _values_4936250 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                        for (_key => _value in _flag_4934354) {
                            _keys_4936250 = (_keys_4936250.__append__(_key));
                            _values_4936250 = (_values_4936250.__append__(_value));
                        };
                        if ((0i32 : stdgo.GoInt) < (_keys_4936250.length)) {
                            _gotoNext = 4936340i32;
                        } else {
                            _gotoNext = 4936347i32;
                        };
                    } else if (__value__ == (4936262i32)) {
                        _i_4936262++;
                        _gotoNext = 4936341i32;
                    } else if (__value__ == (4936273i32)) {
                        _c_4936257 = _values_4936250[@:invalid_index_invalid_type _i_4936262];
                        var __blank__ = _keys_4936250[@:invalid_index_invalid_type _i_4936262];
                        _gotoNext = 4936279i32;
                    } else if (__value__ == (4936279i32)) {
                        {
                            final __value__ = _c_4936257;
                            if (__value__ == ((105 : stdgo.GoInt32))) {
                                _gotoNext = 4936294i32;
                            } else {
                                _gotoNext = 4936262i32;
                            };
                        };
                    } else if (__value__ == (4936294i32)) {
                        _syn_4936042 = (_syn_4936042 | ((1 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 4936262i32;
                    } else if (__value__ == (4936340i32)) {
                        _i_4936262 = 0i32;
                        _gotoNext = 4936341i32;
                    } else if (__value__ == (4936341i32)) {
                        if (_i_4936262 < (_keys_4936250.length)) {
                            _gotoNext = 4936273i32;
                        } else {
                            _gotoNext = 4936347i32;
                        };
                    } else if (__value__ == (4936347i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp__compile._compile(_pattern_4936019?.__copy__(), _syn_4936042, true);
                            _re_4936347 = __tmp__._0;
                            _err_4936351 = __tmp__._1;
                        };
                        if (_err_4936351 != null) {
                            _gotoNext = 4936403i32;
                        } else {
                            _gotoNext = 4936530i32;
                        };
                    } else if (__value__ == (4936403i32)) {
                        if (_shouldCompile_4935677) {
                            _gotoNext = 4936426i32;
                        } else {
                            _gotoNext = 4936505i32;
                        };
                    } else if (__value__ == (4936426i32)) {
                        _t.errorf(("%s:%d: %#q did not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4930752), stdgo.Go.toInterface(_pattern_4936019));
                        _gotoNext = 4936505i32;
                    } else if (__value__ == (4936505i32)) {
                        _i_4936003++;
                        _gotoNext = 4937271i32;
                    } else if (__value__ == (4936530i32)) {
                        if (!_shouldCompile_4935677) {
                            _gotoNext = 4936548i32;
                        } else {
                            _gotoNext = 4936648i32;
                        };
                    } else if (__value__ == (4936548i32)) {
                        _t.errorf(("%s:%d: %#q should not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4930752), stdgo.Go.toInterface(_pattern_4936019));
                        _i_4936003++;
                        _gotoNext = 4937271i32;
                    } else if (__value__ == (4936648i32)) {
                        _match_4936648 = _re_4936347.matchString(_text_4935617?.__copy__());
                        if (_match_4936648 != (_shouldMatch_4935692)) {
                            _gotoNext = 4936705i32;
                        } else {
                            _gotoNext = 4936837i32;
                        };
                    } else if (__value__ == (4936705i32)) {
                        _t.errorf(("%s:%d: %#q.Match(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4930752), stdgo.Go.toInterface(_pattern_4936019), stdgo.Go.toInterface(_text_4935617), stdgo.Go.toInterface(_match_4936648), stdgo.Go.toInterface(_shouldMatch_4935692));
                        _i_4936003++;
                        _gotoNext = 4937271i32;
                    } else if (__value__ == (4936837i32)) {
                        _have_4936837 = _re_4936347.findStringSubmatchIndex(_text_4935617?.__copy__());
                        if ((((_have_4936837.length) > (0 : stdgo.GoInt) : Bool)) != (_match_4936648)) {
                            _gotoNext = 4936909i32;
                        } else {
                            _gotoNext = 4937077i32;
                        };
                    } else if (__value__ == (4936909i32)) {
                        _t.errorf(("%s:%d: %#q.Match(%#q) = %v, but %#q.FindSubmatchIndex(%#q) = %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4930752), stdgo.Go.toInterface(_pattern_4936019), stdgo.Go.toInterface(_text_4935617), stdgo.Go.toInterface(_match_4936648), stdgo.Go.toInterface(_pattern_4936019), stdgo.Go.toInterface(_text_4935617), stdgo.Go.toInterface(_have_4936837));
                        _i_4936003++;
                        _gotoNext = 4937271i32;
                    } else if (__value__ == (4937077i32)) {
                        if (((_have_4936837.length) > (_pos_4935705.length) : Bool)) {
                            _gotoNext = 4937101i32;
                        } else {
                            _gotoNext = 4937138i32;
                        };
                    } else if (__value__ == (4937101i32)) {
                        _have_4936837 = (_have_4936837.__slice__(0, (_pos_4935705.length)) : stdgo.Slice<stdgo.GoInt>);
                        _gotoNext = 4937138i32;
                    } else if (__value__ == (4937138i32)) {
                        if (!stdgo._internal.regexp.Regexp__same._same(_have_4936837, _pos_4935705)) {
                            _gotoNext = 4937158i32;
                        } else {
                            _gotoNext = 4936003i32;
                        };
                    } else if (__value__ == (4937158i32)) {
                        _t.errorf(("%s:%d: %#q.FindSubmatchIndex(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4930752), stdgo.Go.toInterface(_pattern_4936019), stdgo.Go.toInterface(_text_4935617), stdgo.Go.toInterface(_have_4936837), stdgo.Go.toInterface(_pos_4935705));
                        _gotoNext = 4936003i32;
                    } else if (__value__ == (4937270i32)) {
                        _i_4936003 = 0i32;
                        _gotoNext = 4937271i32;
                    } else if (__value__ == (4937271i32)) {
                        if (_i_4936003 < (_keys_4935991.length)) {
                            _gotoNext = 4936014i32;
                        } else {
                            _gotoNext = 4937276i32;
                        };
                    } else if (__value__ == (4937276i32)) {
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
