package stdgo._internal.regexp;
function _testFowler(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _file:stdgo.GoString):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _pattern_4943052:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRegexp_4937798:stdgo.GoString = ("" : stdgo.GoString);
            var _i_4938448:stdgo.GoInt = (0 : stdgo.GoInt);
            var _b_4937760:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
            var _f_4937674:stdgo.Ref<stdgo._internal.os.Os_File.File> = (null : stdgo.Ref<stdgo._internal.os.Os_File.File>);
            var _keys_4943283 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            var _values_4943024 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var _keys_4943024 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            var _line_4937844:stdgo.GoString = ("" : stdgo.GoString);
            var readingBreak = false;
            var _have_4943870:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            var _re_4943380:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
            var _values_4943283 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var _syn_4943075:stdgo._internal.regexp.syntax.Syntax_Flags.Flags = ((0 : stdgo.GoUInt16) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
            var _c_4943031:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _ok_4941610:Bool = false;
            var _err_4937850:stdgo.Error = (null : stdgo.Error);
            var _match_4943681:Bool = false;
            var _i_4943295 = @:invalid_type null;
            var _err_4943384:stdgo.Error = (null : stdgo.Error);
            var _c_4943290:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _shouldCompile_4942710:Bool = false;
            var _text_4942650:stdgo.GoString = ("" : stdgo.GoString);
            var _flag_4941387:stdgo.GoString = ("" : stdgo.GoString);
            var _field_4938403:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
            var _ok_4942706:Bool = false;
            var _pos_4942738:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            var _f_4942119:stdgo.GoString = ("" : stdgo.GoString);
            var _err_4937677:stdgo.Error = (null : stdgo.Error);
            var _i_4943036 = @:invalid_type null;
            var _shouldMatch_4942725:Bool = false;
            var _f_4938451:stdgo.GoString = ("" : stdgo.GoString);
            var _lineno_4937785:stdgo.GoInt = (0 : stdgo.GoInt);
            var _gotoNext = 0i32;
            var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
            while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
                {
                    final __value__ = _gotoNext;
                    if (__value__ == (0i32)) {
                        {
                            var __tmp__ = stdgo._internal.os.Os_open.open(_file?.__copy__());
                            _f_4937674 = __tmp__._0;
                            _err_4937677 = __tmp__._1;
                        };
                        if (_err_4937677 != null) {
                            _gotoNext = 4937713i32;
                        } else {
                            _gotoNext = 4937743i32;
                        };
                    } else if (__value__ == (4937713i32)) {
                        _t.error(stdgo.Go.toInterface(_err_4937677));
                        return;
                        _gotoNext = 4937743i32;
                    } else if (__value__ == (4937743i32)) {
                        __deferstack__.unshift(() -> _f_4937674.close());
                        _b_4937760 = stdgo._internal.bufio.Bufio_newReader.newReader(stdgo.Go.asInterface(_f_4937674));
                        _lineno_4937785 = (0 : stdgo.GoInt);
                        _lastRegexp_4937798 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 4937815i32;
                    } else if (__value__ == (4937815i32)) {
                        var __blank__ = 0i32;
                        readingBreak = false;
                        _gotoNext = 4937825i32;
                    } else if (__value__ == (4937825i32)) {
                        if (!readingBreak) {
                            _gotoNext = 4937829i32;
                        } else {
                            _gotoNext = 4944309i32;
                        };
                    } else if (__value__ == (4937829i32)) {
                        _lineno_4937785++;
                        {
                            var __tmp__ = _b_4937760.readString((10 : stdgo.GoUInt8));
                            _line_4937844 = __tmp__._0?.__copy__();
                            _err_4937850 = __tmp__._1;
                        };
                        if (_err_4937850 != null) {
                            _gotoNext = 4937892i32;
                        } else {
                            _gotoNext = 4938310i32;
                        };
                    } else if (__value__ == (4937892i32)) {
                        if (stdgo.Go.toInterface(_err_4937850) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                            _gotoNext = 4937914i32;
                        } else {
                            _gotoNext = 4937969i32;
                        };
                    } else if (__value__ == (4937914i32)) {
                        _t.errorf(("%s:%d: %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4937785), stdgo.Go.toInterface(_err_4937850));
                        _gotoNext = 4937969i32;
                    } else if (__value__ == (4937969i32)) {
                        readingBreak = true;
                        _gotoNext = 4937825i32;
                    } else if (__value__ == (4938310i32)) {
                        if (((_line_4937844[(0 : stdgo.GoInt)] == (35 : stdgo.GoUInt8)) || (_line_4937844[(0 : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 4938347i32;
                        } else {
                            _gotoNext = 4938375i32;
                        };
                    } else if (__value__ == (4938347i32)) {
                        _gotoNext = 4937825i32;
                    } else if (__value__ == (4938375i32)) {
                        _line_4937844 = (_line_4937844.__slice__(0, ((_line_4937844.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_4938403 = stdgo._internal.regexp.Regexp__notab._notab.findAllString(_line_4937844?.__copy__(), (-1 : stdgo.GoInt));
                        if ((0i32 : stdgo.GoInt) < (_field_4938403.length)) {
                            _gotoNext = 4938609i32;
                        } else {
                            _gotoNext = 4938614i32;
                        };
                    } else if (__value__ == (4938448i32)) {
                        _i_4938448++;
                        _gotoNext = 4938610i32;
                    } else if (__value__ == (4938468i32)) {
                        _f_4938451 = _field_4938403[(_i_4938448 : stdgo.GoInt)]?.__copy__();
                        if (_f_4938451 == (("NULL" : stdgo.GoString))) {
                            _gotoNext = 4938488i32;
                        } else {
                            _gotoNext = 4938516i32;
                        };
                    } else if (__value__ == (4938488i32)) {
                        _field_4938403[(_i_4938448 : stdgo.GoInt)] = stdgo.Go.str()?.__copy__();
                        _gotoNext = 4938516i32;
                    } else if (__value__ == (4938516i32)) {
                        if (_f_4938451 == (("NIL" : stdgo.GoString))) {
                            _gotoNext = 4938530i32;
                        } else {
                            _gotoNext = 4938448i32;
                        };
                    } else if (__value__ == (4938530i32)) {
                        _t.logf(("%s:%d: skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4937785), stdgo.Go.toInterface(_line_4937844));
                        _gotoNext = 4937825i32;
                    } else if (__value__ == (4938609i32)) {
                        {
                            final __tmp__0 = 0i32;
                            final __tmp__1 = _field_4938403[(0i32 : stdgo.GoInt)]?.__copy__();
                            _i_4938448 = __tmp__0;
                            _f_4938451 = __tmp__1;
                        };
                        _gotoNext = 4938610i32;
                    } else if (__value__ == (4938610i32)) {
                        if (_i_4938448 < (_field_4938403.length)) {
                            _gotoNext = 4938468i32;
                        } else {
                            _gotoNext = 4938614i32;
                        };
                    } else if (__value__ == (4938614i32)) {
                        if ((_field_4938403.length) == ((0 : stdgo.GoInt))) {
                            _gotoNext = 4938633i32;
                        } else {
                            _gotoNext = 4941387i32;
                        };
                    } else if (__value__ == (4938633i32)) {
                        _gotoNext = 4937825i32;
                    } else if (__value__ == (4941387i32)) {
                        _flag_4941387 = _field_4938403[(0 : stdgo.GoInt)]?.__copy__();
                        _gotoNext = 4941406i32;
                    } else if (__value__ == (4941406i32)) {
                        {
                            final __value__ = _flag_4941387[(0 : stdgo.GoInt)];
                            if (__value__ == ((63 : stdgo.GoUInt8)) || __value__ == ((38 : stdgo.GoUInt8)) || __value__ == ((124 : stdgo.GoUInt8)) || __value__ == ((59 : stdgo.GoUInt8)) || __value__ == ((123 : stdgo.GoUInt8)) || __value__ == ((125 : stdgo.GoUInt8))) {
                                _gotoNext = 4941425i32;
                            } else if (__value__ == ((58 : stdgo.GoUInt8))) {
                                _gotoNext = 4941593i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8)) || __value__ == ((78 : stdgo.GoUInt8)) || __value__ == ((84 : stdgo.GoUInt8)) || __value__ == ((48 : stdgo.GoUInt8)) || __value__ == ((49 : stdgo.GoUInt8)) || __value__ == ((50 : stdgo.GoUInt8)) || __value__ == ((51 : stdgo.GoUInt8)) || __value__ == ((52 : stdgo.GoUInt8)) || __value__ == ((53 : stdgo.GoUInt8)) || __value__ == ((54 : stdgo.GoUInt8)) || __value__ == ((55 : stdgo.GoUInt8)) || __value__ == ((56 : stdgo.GoUInt8)) || __value__ == ((57 : stdgo.GoUInt8))) {
                                _gotoNext = 4941729i32;
                            } else {
                                _gotoNext = 4941932i32;
                            };
                        };
                    } else if (__value__ == (4941425i32)) {
                        _flag_4941387 = (_flag_4941387.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        if (_flag_4941387 == (stdgo.Go.str())) {
                            _gotoNext = 4941563i32;
                        } else {
                            _gotoNext = 4941932i32;
                        };
                    } else if (__value__ == (4941563i32)) {
                        _gotoNext = 4937825i32;
                    } else if (__value__ == (4941593i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_flag_4941387.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (":" : stdgo.GoString));
                                _flag_4941387 = __tmp__._1?.__copy__();
                                _ok_4941610 = __tmp__._2;
                            };
                            if (!_ok_4941610) {
                                _gotoNext = 4941670i32;
                            } else {
                                _gotoNext = 4941932i32;
                            };
                        };
                    } else if (__value__ == (4941670i32)) {
                        _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line_4937844));
                        _gotoNext = 4937825i32;
                    } else if (__value__ == (4941729i32)) {
                        _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line_4937844));
                        _gotoNext = 4937825i32;
                    } else if (__value__ == (4941932i32)) {
                        if (((_field_4938403.length) < (4 : stdgo.GoInt) : Bool)) {
                            _gotoNext = 4941950i32;
                        } else {
                            _gotoNext = 4942083i32;
                        };
                    } else if (__value__ == (4941950i32)) {
                        _t.errorf(("%s:%d: too few fields: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4937785), stdgo.Go.toInterface(_line_4937844));
                        _gotoNext = 4937825i32;
                    } else if (__value__ == (4942083i32)) {
                        if (stdgo._internal.strings.Strings_contains.contains(_flag_4941387?.__copy__(), ("$" : stdgo.GoString))) {
                            _gotoNext = 4942114i32;
                        } else {
                            _gotoNext = 4942533i32;
                        };
                    } else if (__value__ == (4942114i32)) {
                        _f_4942119 = ((("\"" : stdgo.GoString) + _field_4938403[(1 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_f_4942119?.__copy__());
                                _field_4938403[(1 : stdgo.GoInt)] = __tmp__._0?.__copy__();
                                _err_4937850 = __tmp__._1;
                            };
                            if (_err_4937850 != null) {
                                _gotoNext = 4942198i32;
                            } else {
                                _gotoNext = 4942266i32;
                            };
                        };
                    } else if (__value__ == (4942198i32)) {
                        _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4937785), stdgo.Go.toInterface(_f_4942119));
                        _gotoNext = 4942266i32;
                    } else if (__value__ == (4942266i32)) {
                        _f_4942119 = ((("\"" : stdgo.GoString) + _field_4938403[(2 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_f_4942119?.__copy__());
                                _field_4938403[(2 : stdgo.GoInt)] = __tmp__._0?.__copy__();
                                _err_4937850 = __tmp__._1;
                            };
                            if (_err_4937850 != null) {
                                _gotoNext = 4942344i32;
                            } else {
                                _gotoNext = 4942533i32;
                            };
                        };
                    } else if (__value__ == (4942344i32)) {
                        _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4937785), stdgo.Go.toInterface(_f_4942119));
                        _gotoNext = 4942533i32;
                    } else if (__value__ == (4942533i32)) {
                        if (_field_4938403[(1 : stdgo.GoInt)] == (("SAME" : stdgo.GoString))) {
                            _gotoNext = 4942555i32;
                        } else {
                            _gotoNext = 4942588i32;
                        };
                    } else if (__value__ == (4942555i32)) {
                        _field_4938403[(1 : stdgo.GoInt)] = _lastRegexp_4937798?.__copy__();
                        _gotoNext = 4942588i32;
                    } else if (__value__ == (4942588i32)) {
                        _lastRegexp_4937798 = _field_4938403[(1 : stdgo.GoInt)]?.__copy__();
                        _text_4942650 = _field_4938403[(2 : stdgo.GoInt)]?.__copy__();
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp__parseFowlerResult._parseFowlerResult(_field_4938403[(3 : stdgo.GoInt)]?.__copy__());
                            _ok_4942706 = __tmp__._0;
                            _shouldCompile_4942710 = __tmp__._1;
                            _shouldMatch_4942725 = __tmp__._2;
                            _pos_4942738 = __tmp__._3;
                        };
                        if (!_ok_4942706) {
                            _gotoNext = 4942782i32;
                        } else {
                            _gotoNext = 4942938i32;
                        };
                    } else if (__value__ == (4942782i32)) {
                        _t.errorf(("%s:%d: cannot parse result %#q" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4937785), stdgo.Go.toInterface(_field_4938403[(3 : stdgo.GoInt)]));
                        _gotoNext = 4937825i32;
                    } else if (__value__ == (4942938i32)) {
                        _gotoNext = 4942938i32;
                        _keys_4943024 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                        _values_4943024 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                        for (_key => _value in _flag_4941387) {
                            _keys_4943024 = (_keys_4943024.__append__(_key));
                            _values_4943024 = (_values_4943024.__append__(_value));
                        };
                        if ((0i32 : stdgo.GoInt) < (_keys_4943024.length)) {
                            _gotoNext = 4944303i32;
                        } else {
                            _gotoNext = 4944309i32;
                        };
                    } else if (__value__ == (4943036i32)) {
                        _i_4943036++;
                        _gotoNext = 4944304i32;
                    } else if (__value__ == (4943047i32)) {
                        _c_4943031 = _values_4943024[@:invalid_index_invalid_type _i_4943036];
                        var __blank__ = _keys_4943024[@:invalid_index_invalid_type _i_4943036];
                        _pattern_4943052 = _field_4938403[(1 : stdgo.GoInt)]?.__copy__();
                        _syn_4943075 = (4 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 4943115i32;
                    } else if (__value__ == (4943115i32)) {
                        {
                            final __value__ = _c_4943031;
                            if (__value__ == ((69 : stdgo.GoInt32))) {
                                _gotoNext = 4943162i32;
                            } else if (__value__ == ((76 : stdgo.GoInt32))) {
                                _gotoNext = 4943216i32;
                            } else {
                                _gotoNext = 4943129i32;
                            };
                        };
                    } else if (__value__ == (4943129i32)) {
                        _i_4943036++;
                        _gotoNext = 4944304i32;
                    } else if (__value__ == (4943162i32)) {
                        _gotoNext = 4943283i32;
                    } else if (__value__ == (4943216i32)) {
                        _pattern_4943052 = stdgo._internal.regexp.Regexp_quoteMeta.quoteMeta(_pattern_4943052?.__copy__())?.__copy__();
                        _gotoNext = 4943283i32;
                    } else if (__value__ == (4943283i32)) {
                        _keys_4943283 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                        _values_4943283 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                        for (_key => _value in _flag_4941387) {
                            _keys_4943283 = (_keys_4943283.__append__(_key));
                            _values_4943283 = (_values_4943283.__append__(_value));
                        };
                        if ((0i32 : stdgo.GoInt) < (_keys_4943283.length)) {
                            _gotoNext = 4943373i32;
                        } else {
                            _gotoNext = 4943380i32;
                        };
                    } else if (__value__ == (4943295i32)) {
                        _i_4943295++;
                        _gotoNext = 4943374i32;
                    } else if (__value__ == (4943306i32)) {
                        _c_4943290 = _values_4943283[@:invalid_index_invalid_type _i_4943295];
                        var __blank__ = _keys_4943283[@:invalid_index_invalid_type _i_4943295];
                        _gotoNext = 4943312i32;
                    } else if (__value__ == (4943312i32)) {
                        {
                            final __value__ = _c_4943290;
                            if (__value__ == ((105 : stdgo.GoInt32))) {
                                _gotoNext = 4943327i32;
                            } else {
                                _gotoNext = 4943295i32;
                            };
                        };
                    } else if (__value__ == (4943327i32)) {
                        _syn_4943075 = (_syn_4943075 | ((1 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 4943295i32;
                    } else if (__value__ == (4943373i32)) {
                        _i_4943295 = 0i32;
                        _gotoNext = 4943374i32;
                    } else if (__value__ == (4943374i32)) {
                        if (_i_4943295 < (_keys_4943283.length)) {
                            _gotoNext = 4943306i32;
                        } else {
                            _gotoNext = 4943380i32;
                        };
                    } else if (__value__ == (4943380i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp__compile._compile(_pattern_4943052?.__copy__(), _syn_4943075, true);
                            _re_4943380 = __tmp__._0;
                            _err_4943384 = __tmp__._1;
                        };
                        if (_err_4943384 != null) {
                            _gotoNext = 4943436i32;
                        } else {
                            _gotoNext = 4943563i32;
                        };
                    } else if (__value__ == (4943436i32)) {
                        if (_shouldCompile_4942710) {
                            _gotoNext = 4943459i32;
                        } else {
                            _gotoNext = 4943538i32;
                        };
                    } else if (__value__ == (4943459i32)) {
                        _t.errorf(("%s:%d: %#q did not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4937785), stdgo.Go.toInterface(_pattern_4943052));
                        _gotoNext = 4943538i32;
                    } else if (__value__ == (4943538i32)) {
                        _i_4943036++;
                        _gotoNext = 4944304i32;
                    } else if (__value__ == (4943563i32)) {
                        if (!_shouldCompile_4942710) {
                            _gotoNext = 4943581i32;
                        } else {
                            _gotoNext = 4943681i32;
                        };
                    } else if (__value__ == (4943581i32)) {
                        _t.errorf(("%s:%d: %#q should not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4937785), stdgo.Go.toInterface(_pattern_4943052));
                        _i_4943036++;
                        _gotoNext = 4944304i32;
                    } else if (__value__ == (4943681i32)) {
                        _match_4943681 = _re_4943380.matchString(_text_4942650?.__copy__());
                        if (_match_4943681 != (_shouldMatch_4942725)) {
                            _gotoNext = 4943738i32;
                        } else {
                            _gotoNext = 4943870i32;
                        };
                    } else if (__value__ == (4943738i32)) {
                        _t.errorf(("%s:%d: %#q.Match(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4937785), stdgo.Go.toInterface(_pattern_4943052), stdgo.Go.toInterface(_text_4942650), stdgo.Go.toInterface(_match_4943681), stdgo.Go.toInterface(_shouldMatch_4942725));
                        _i_4943036++;
                        _gotoNext = 4944304i32;
                    } else if (__value__ == (4943870i32)) {
                        _have_4943870 = _re_4943380.findStringSubmatchIndex(_text_4942650?.__copy__());
                        if ((((_have_4943870.length) > (0 : stdgo.GoInt) : Bool)) != (_match_4943681)) {
                            _gotoNext = 4943942i32;
                        } else {
                            _gotoNext = 4944110i32;
                        };
                    } else if (__value__ == (4943942i32)) {
                        _t.errorf(("%s:%d: %#q.Match(%#q) = %v, but %#q.FindSubmatchIndex(%#q) = %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4937785), stdgo.Go.toInterface(_pattern_4943052), stdgo.Go.toInterface(_text_4942650), stdgo.Go.toInterface(_match_4943681), stdgo.Go.toInterface(_pattern_4943052), stdgo.Go.toInterface(_text_4942650), stdgo.Go.toInterface(_have_4943870));
                        _i_4943036++;
                        _gotoNext = 4944304i32;
                    } else if (__value__ == (4944110i32)) {
                        if (((_have_4943870.length) > (_pos_4942738.length) : Bool)) {
                            _gotoNext = 4944134i32;
                        } else {
                            _gotoNext = 4944171i32;
                        };
                    } else if (__value__ == (4944134i32)) {
                        _have_4943870 = (_have_4943870.__slice__(0, (_pos_4942738.length)) : stdgo.Slice<stdgo.GoInt>);
                        _gotoNext = 4944171i32;
                    } else if (__value__ == (4944171i32)) {
                        if (!stdgo._internal.regexp.Regexp__same._same(_have_4943870, _pos_4942738)) {
                            _gotoNext = 4944191i32;
                        } else {
                            _gotoNext = 4943036i32;
                        };
                    } else if (__value__ == (4944191i32)) {
                        _t.errorf(("%s:%d: %#q.FindSubmatchIndex(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4937785), stdgo.Go.toInterface(_pattern_4943052), stdgo.Go.toInterface(_text_4942650), stdgo.Go.toInterface(_have_4943870), stdgo.Go.toInterface(_pos_4942738));
                        _gotoNext = 4943036i32;
                    } else if (__value__ == (4944303i32)) {
                        _i_4943036 = 0i32;
                        _gotoNext = 4944304i32;
                    } else if (__value__ == (4944304i32)) {
                        if (_i_4943036 < (_keys_4943024.length)) {
                            _gotoNext = 4943047i32;
                        } else {
                            _gotoNext = 4944309i32;
                        };
                    } else if (__value__ == (4944309i32)) {
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
