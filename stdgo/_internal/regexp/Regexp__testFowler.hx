package stdgo._internal.regexp;
function _testFowler(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _file:stdgo.GoString):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _i_4914201 = @:invalid_type null;
            var _pattern_4913958:stdgo.GoString = ("" : stdgo.GoString);
            var _c_4913937:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _keys_4913930 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            var _have_4914776:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            var _f_4913025:stdgo.GoString = ("" : stdgo.GoString);
            var _f_4909357:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRegexp_4908704:stdgo.GoString = ("" : stdgo.GoString);
            var _i_4913942 = @:invalid_type null;
            var _shouldMatch_4913631:Bool = false;
            var _field_4909309:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
            var _line_4908750:stdgo.GoString = ("" : stdgo.GoString);
            var _flag_4912293:stdgo.GoString = ("" : stdgo.GoString);
            var _err_4908756:stdgo.Error = (null : stdgo.Error);
            var _lineno_4908691:stdgo.GoInt = (0 : stdgo.GoInt);
            var _err_4908583:stdgo.Error = (null : stdgo.Error);
            var _err_4914290:stdgo.Error = (null : stdgo.Error);
            var _values_4914189 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var _pos_4913644:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            var _shouldCompile_4913616:Bool = false;
            var _i_4909354:stdgo.GoInt = (0 : stdgo.GoInt);
            var _re_4914286:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
            var _text_4913556:stdgo.GoString = ("" : stdgo.GoString);
            var _ok_4912516:Bool = false;
            var _b_4908666:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
            var _f_4908580:stdgo.Ref<stdgo._internal.os.Os_File.File> = (null : stdgo.Ref<stdgo._internal.os.Os_File.File>);
            var _c_4914196:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _ok_4913612:Bool = false;
            var _keys_4914189 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            var _syn_4913981:stdgo._internal.regexp.syntax.Syntax_Flags.Flags = ((0 : stdgo.GoUInt16) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
            var _values_4913930 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var readingBreak = false;
            var _match_4914587:Bool = false;
            var _gotoNext = 0i32;
            var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
            while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
                {
                    final __value__ = _gotoNext;
                    if (__value__ == (0i32)) {
                        {
                            var __tmp__ = stdgo._internal.os.Os_open.open(_file?.__copy__());
                            _f_4908580 = __tmp__._0;
                            _err_4908583 = __tmp__._1;
                        };
                        if (_err_4908583 != null) {
                            _gotoNext = 4908619i32;
                        } else {
                            _gotoNext = 4908649i32;
                        };
                    } else if (__value__ == (4908619i32)) {
                        _t.error(stdgo.Go.toInterface(_err_4908583));
                        return;
                        _gotoNext = 4908649i32;
                    } else if (__value__ == (4908649i32)) {
                        __deferstack__.unshift(() -> _f_4908580.close());
                        _b_4908666 = stdgo._internal.bufio.Bufio_newReader.newReader(stdgo.Go.asInterface(_f_4908580));
                        _lineno_4908691 = (0 : stdgo.GoInt);
                        _lastRegexp_4908704 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 4908721i32;
                    } else if (__value__ == (4908721i32)) {
                        var __blank__ = 0i32;
                        readingBreak = false;
                        _gotoNext = 4908731i32;
                    } else if (__value__ == (4908731i32)) {
                        if (!readingBreak) {
                            _gotoNext = 4908735i32;
                        } else {
                            _gotoNext = 4915215i32;
                        };
                    } else if (__value__ == (4908735i32)) {
                        _lineno_4908691++;
                        {
                            var __tmp__ = _b_4908666.readString((10 : stdgo.GoUInt8));
                            _line_4908750 = __tmp__._0?.__copy__();
                            _err_4908756 = __tmp__._1;
                        };
                        if (_err_4908756 != null) {
                            _gotoNext = 4908798i32;
                        } else {
                            _gotoNext = 4909216i32;
                        };
                    } else if (__value__ == (4908798i32)) {
                        if (stdgo.Go.toInterface(_err_4908756) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                            _gotoNext = 4908820i32;
                        } else {
                            _gotoNext = 4908875i32;
                        };
                    } else if (__value__ == (4908820i32)) {
                        _t.errorf(("%s:%d: %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4908691), stdgo.Go.toInterface(_err_4908756));
                        _gotoNext = 4908875i32;
                    } else if (__value__ == (4908875i32)) {
                        readingBreak = true;
                        _gotoNext = 4908731i32;
                    } else if (__value__ == (4909216i32)) {
                        if (((_line_4908750[(0 : stdgo.GoInt)] == (35 : stdgo.GoUInt8)) || (_line_4908750[(0 : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 4909253i32;
                        } else {
                            _gotoNext = 4909281i32;
                        };
                    } else if (__value__ == (4909253i32)) {
                        _gotoNext = 4908731i32;
                    } else if (__value__ == (4909281i32)) {
                        _line_4908750 = (_line_4908750.__slice__(0, ((_line_4908750.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_4909309 = stdgo._internal.regexp.Regexp__notab._notab.findAllString(_line_4908750?.__copy__(), (-1 : stdgo.GoInt));
                        if ((0i32 : stdgo.GoInt) < (_field_4909309.length)) {
                            _gotoNext = 4909515i32;
                        } else {
                            _gotoNext = 4909520i32;
                        };
                    } else if (__value__ == (4909354i32)) {
                        _i_4909354++;
                        _gotoNext = 4909516i32;
                    } else if (__value__ == (4909374i32)) {
                        _f_4909357 = _field_4909309[(_i_4909354 : stdgo.GoInt)]?.__copy__();
                        if (_f_4909357 == (("NULL" : stdgo.GoString))) {
                            _gotoNext = 4909394i32;
                        } else {
                            _gotoNext = 4909422i32;
                        };
                    } else if (__value__ == (4909394i32)) {
                        _field_4909309[(_i_4909354 : stdgo.GoInt)] = stdgo.Go.str()?.__copy__();
                        _gotoNext = 4909422i32;
                    } else if (__value__ == (4909422i32)) {
                        if (_f_4909357 == (("NIL" : stdgo.GoString))) {
                            _gotoNext = 4909436i32;
                        } else {
                            _gotoNext = 4909354i32;
                        };
                    } else if (__value__ == (4909436i32)) {
                        _t.logf(("%s:%d: skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4908691), stdgo.Go.toInterface(_line_4908750));
                        _gotoNext = 4908731i32;
                    } else if (__value__ == (4909515i32)) {
                        {
                            final __tmp__0 = 0i32;
                            final __tmp__1 = _field_4909309[(0i32 : stdgo.GoInt)]?.__copy__();
                            _i_4909354 = __tmp__0;
                            _f_4909357 = __tmp__1;
                        };
                        _gotoNext = 4909516i32;
                    } else if (__value__ == (4909516i32)) {
                        if (_i_4909354 < (_field_4909309.length)) {
                            _gotoNext = 4909374i32;
                        } else {
                            _gotoNext = 4909520i32;
                        };
                    } else if (__value__ == (4909520i32)) {
                        if ((_field_4909309.length) == ((0 : stdgo.GoInt))) {
                            _gotoNext = 4909539i32;
                        } else {
                            _gotoNext = 4912293i32;
                        };
                    } else if (__value__ == (4909539i32)) {
                        _gotoNext = 4908731i32;
                    } else if (__value__ == (4912293i32)) {
                        _flag_4912293 = _field_4909309[(0 : stdgo.GoInt)]?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 4912312i32;
                    } else if (__value__ == (4912312i32)) {
                        {
                            final __value__ = _flag_4912293[(0 : stdgo.GoInt)];
                            if (__value__ == ((63 : stdgo.GoUInt8)) || __value__ == ((38 : stdgo.GoUInt8)) || __value__ == ((124 : stdgo.GoUInt8)) || __value__ == ((59 : stdgo.GoUInt8)) || __value__ == ((123 : stdgo.GoUInt8)) || __value__ == ((125 : stdgo.GoUInt8))) {
                                _gotoNext = 4912331i32;
                            } else if (__value__ == ((58 : stdgo.GoUInt8))) {
                                _gotoNext = 4912499i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8)) || __value__ == ((78 : stdgo.GoUInt8)) || __value__ == ((84 : stdgo.GoUInt8)) || __value__ == ((48 : stdgo.GoUInt8)) || __value__ == ((49 : stdgo.GoUInt8)) || __value__ == ((50 : stdgo.GoUInt8)) || __value__ == ((51 : stdgo.GoUInt8)) || __value__ == ((52 : stdgo.GoUInt8)) || __value__ == ((53 : stdgo.GoUInt8)) || __value__ == ((54 : stdgo.GoUInt8)) || __value__ == ((55 : stdgo.GoUInt8)) || __value__ == ((56 : stdgo.GoUInt8)) || __value__ == ((57 : stdgo.GoUInt8))) {
                                _gotoNext = 4912635i32;
                            } else {
                                _gotoNext = 4912838i32;
                            };
                        };
                    } else if (__value__ == (4912331i32)) {
                        _flag_4912293 = (_flag_4912293.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        if (_flag_4912293 == (stdgo.Go.str())) {
                            _gotoNext = 4912469i32;
                        } else {
                            _gotoNext = 4912838i32;
                        };
                    } else if (__value__ == (4912469i32)) {
                        _gotoNext = 4908731i32;
                    } else if (__value__ == (4912499i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_flag_4912293.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (":" : stdgo.GoString));
                                _flag_4912293 = __tmp__._1?.__copy__();
                                _ok_4912516 = __tmp__._2;
                            };
                            if (!_ok_4912516) {
                                _gotoNext = 4912576i32;
                            } else {
                                _gotoNext = 4912838i32;
                            };
                        };
                    } else if (__value__ == (4912576i32)) {
                        _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line_4908750));
                        _gotoNext = 4908731i32;
                    } else if (__value__ == (4912635i32)) {
                        _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line_4908750));
                        _gotoNext = 4908731i32;
                    } else if (__value__ == (4912838i32)) {
                        if (((_field_4909309.length) < (4 : stdgo.GoInt) : Bool)) {
                            _gotoNext = 4912856i32;
                        } else {
                            _gotoNext = 4912989i32;
                        };
                    } else if (__value__ == (4912856i32)) {
                        _t.errorf(("%s:%d: too few fields: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4908691), stdgo.Go.toInterface(_line_4908750));
                        _gotoNext = 4908731i32;
                    } else if (__value__ == (4912989i32)) {
                        if (stdgo._internal.strings.Strings_contains.contains(_flag_4912293?.__copy__(), ("$" : stdgo.GoString))) {
                            _gotoNext = 4913020i32;
                        } else {
                            _gotoNext = 4913439i32;
                        };
                    } else if (__value__ == (4913020i32)) {
                        _f_4913025 = ((("\"" : stdgo.GoString) + _field_4909309[(1 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_f_4913025?.__copy__());
                                _field_4909309[(1 : stdgo.GoInt)] = __tmp__._0?.__copy__();
                                _err_4908756 = __tmp__._1;
                            };
                            if (_err_4908756 != null) {
                                _gotoNext = 4913104i32;
                            } else {
                                _gotoNext = 4913172i32;
                            };
                        };
                    } else if (__value__ == (4913104i32)) {
                        _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4908691), stdgo.Go.toInterface(_f_4913025));
                        _gotoNext = 4913172i32;
                    } else if (__value__ == (4913172i32)) {
                        _f_4913025 = ((("\"" : stdgo.GoString) + _field_4909309[(2 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_f_4913025?.__copy__());
                                _field_4909309[(2 : stdgo.GoInt)] = __tmp__._0?.__copy__();
                                _err_4908756 = __tmp__._1;
                            };
                            if (_err_4908756 != null) {
                                _gotoNext = 4913250i32;
                            } else {
                                _gotoNext = 4913439i32;
                            };
                        };
                    } else if (__value__ == (4913250i32)) {
                        _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4908691), stdgo.Go.toInterface(_f_4913025));
                        _gotoNext = 4913439i32;
                    } else if (__value__ == (4913439i32)) {
                        if (_field_4909309[(1 : stdgo.GoInt)] == (("SAME" : stdgo.GoString))) {
                            _gotoNext = 4913461i32;
                        } else {
                            _gotoNext = 4913494i32;
                        };
                    } else if (__value__ == (4913461i32)) {
                        _field_4909309[(1 : stdgo.GoInt)] = _lastRegexp_4908704?.__copy__();
                        _gotoNext = 4913494i32;
                    } else if (__value__ == (4913494i32)) {
                        _lastRegexp_4908704 = _field_4909309[(1 : stdgo.GoInt)]?.__copy__();
                        _text_4913556 = _field_4909309[(2 : stdgo.GoInt)]?.__copy__();
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp__parseFowlerResult._parseFowlerResult(_field_4909309[(3 : stdgo.GoInt)]?.__copy__());
                            _ok_4913612 = __tmp__._0;
                            _shouldCompile_4913616 = __tmp__._1;
                            _shouldMatch_4913631 = __tmp__._2;
                            _pos_4913644 = __tmp__._3;
                        };
                        if (!_ok_4913612) {
                            _gotoNext = 4913688i32;
                        } else {
                            _gotoNext = 4913844i32;
                        };
                    } else if (__value__ == (4913688i32)) {
                        _t.errorf(("%s:%d: cannot parse result %#q" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4908691), stdgo.Go.toInterface(_field_4909309[(3 : stdgo.GoInt)]));
                        _gotoNext = 4908731i32;
                    } else if (__value__ == (4913844i32)) {
                        _gotoNext = 4913844i32;
                        _keys_4913930 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                        _values_4913930 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                        for (_key => _value in _flag_4912293) {
                            _keys_4913930 = (_keys_4913930.__append__(_key));
                            _values_4913930 = (_values_4913930.__append__(_value));
                        };
                        if ((0i32 : stdgo.GoInt) < (_keys_4913930.length)) {
                            _gotoNext = 4915209i32;
                        } else {
                            _gotoNext = 4915215i32;
                        };
                    } else if (__value__ == (4913942i32)) {
                        _i_4913942++;
                        _gotoNext = 4915210i32;
                    } else if (__value__ == (4913953i32)) {
                        _c_4913937 = _values_4913930[@:invalid_index_invalid_type _i_4913942];
                        var __blank__ = _keys_4913930[@:invalid_index_invalid_type _i_4913942];
                        _pattern_4913958 = _field_4909309[(1 : stdgo.GoInt)]?.__copy__();
                        _syn_4913981 = (4 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        var __blank__ = 0i32;
                        _gotoNext = 4914021i32;
                    } else if (__value__ == (4914021i32)) {
                        {
                            final __value__ = _c_4913937;
                            if (__value__ == ((69 : stdgo.GoInt32))) {
                                _gotoNext = 4914068i32;
                            } else if (__value__ == ((76 : stdgo.GoInt32))) {
                                _gotoNext = 4914122i32;
                            } else {
                                _gotoNext = 4914035i32;
                            };
                        };
                    } else if (__value__ == (4914035i32)) {
                        _i_4913942++;
                        _gotoNext = 4915210i32;
                    } else if (__value__ == (4914068i32)) {
                        _gotoNext = 4914189i32;
                    } else if (__value__ == (4914122i32)) {
                        _pattern_4913958 = stdgo._internal.regexp.Regexp_quoteMeta.quoteMeta(_pattern_4913958?.__copy__())?.__copy__();
                        _gotoNext = 4914189i32;
                    } else if (__value__ == (4914189i32)) {
                        _keys_4914189 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                        _values_4914189 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                        for (_key => _value in _flag_4912293) {
                            _keys_4914189 = (_keys_4914189.__append__(_key));
                            _values_4914189 = (_values_4914189.__append__(_value));
                        };
                        if ((0i32 : stdgo.GoInt) < (_keys_4914189.length)) {
                            _gotoNext = 4914279i32;
                        } else {
                            _gotoNext = 4914286i32;
                        };
                    } else if (__value__ == (4914201i32)) {
                        _i_4914201++;
                        _gotoNext = 4914280i32;
                    } else if (__value__ == (4914212i32)) {
                        _c_4914196 = _values_4914189[@:invalid_index_invalid_type _i_4914201];
                        var __blank__ = _keys_4914189[@:invalid_index_invalid_type _i_4914201];
                        var __blank__ = 0i32;
                        _gotoNext = 4914218i32;
                    } else if (__value__ == (4914218i32)) {
                        {
                            final __value__ = _c_4914196;
                            if (__value__ == ((105 : stdgo.GoInt32))) {
                                _gotoNext = 4914233i32;
                            } else {
                                _gotoNext = 4914201i32;
                            };
                        };
                    } else if (__value__ == (4914233i32)) {
                        _syn_4913981 = (_syn_4913981 | ((1 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 4914201i32;
                    } else if (__value__ == (4914279i32)) {
                        _i_4914201 = 0i32;
                        _gotoNext = 4914280i32;
                    } else if (__value__ == (4914280i32)) {
                        if (_i_4914201 < (_keys_4914189.length)) {
                            _gotoNext = 4914212i32;
                        } else {
                            _gotoNext = 4914286i32;
                        };
                    } else if (__value__ == (4914286i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp__compile._compile(_pattern_4913958?.__copy__(), _syn_4913981, true);
                            _re_4914286 = __tmp__._0;
                            _err_4914290 = __tmp__._1;
                        };
                        if (_err_4914290 != null) {
                            _gotoNext = 4914342i32;
                        } else {
                            _gotoNext = 4914469i32;
                        };
                    } else if (__value__ == (4914342i32)) {
                        if (_shouldCompile_4913616) {
                            _gotoNext = 4914365i32;
                        } else {
                            _gotoNext = 4914444i32;
                        };
                    } else if (__value__ == (4914365i32)) {
                        _t.errorf(("%s:%d: %#q did not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4908691), stdgo.Go.toInterface(_pattern_4913958));
                        _gotoNext = 4914444i32;
                    } else if (__value__ == (4914444i32)) {
                        _i_4913942++;
                        _gotoNext = 4915210i32;
                    } else if (__value__ == (4914469i32)) {
                        if (!_shouldCompile_4913616) {
                            _gotoNext = 4914487i32;
                        } else {
                            _gotoNext = 4914587i32;
                        };
                    } else if (__value__ == (4914487i32)) {
                        _t.errorf(("%s:%d: %#q should not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4908691), stdgo.Go.toInterface(_pattern_4913958));
                        _i_4913942++;
                        _gotoNext = 4915210i32;
                    } else if (__value__ == (4914587i32)) {
                        _match_4914587 = _re_4914286.matchString(_text_4913556?.__copy__());
                        if (_match_4914587 != (_shouldMatch_4913631)) {
                            _gotoNext = 4914644i32;
                        } else {
                            _gotoNext = 4914776i32;
                        };
                    } else if (__value__ == (4914644i32)) {
                        _t.errorf(("%s:%d: %#q.Match(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4908691), stdgo.Go.toInterface(_pattern_4913958), stdgo.Go.toInterface(_text_4913556), stdgo.Go.toInterface(_match_4914587), stdgo.Go.toInterface(_shouldMatch_4913631));
                        _i_4913942++;
                        _gotoNext = 4915210i32;
                    } else if (__value__ == (4914776i32)) {
                        _have_4914776 = _re_4914286.findStringSubmatchIndex(_text_4913556?.__copy__());
                        if ((((_have_4914776.length) > (0 : stdgo.GoInt) : Bool)) != (_match_4914587)) {
                            _gotoNext = 4914848i32;
                        } else {
                            _gotoNext = 4915016i32;
                        };
                    } else if (__value__ == (4914848i32)) {
                        _t.errorf(("%s:%d: %#q.Match(%#q) = %v, but %#q.FindSubmatchIndex(%#q) = %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4908691), stdgo.Go.toInterface(_pattern_4913958), stdgo.Go.toInterface(_text_4913556), stdgo.Go.toInterface(_match_4914587), stdgo.Go.toInterface(_pattern_4913958), stdgo.Go.toInterface(_text_4913556), stdgo.Go.toInterface(_have_4914776));
                        _i_4913942++;
                        _gotoNext = 4915210i32;
                    } else if (__value__ == (4915016i32)) {
                        if (((_have_4914776.length) > (_pos_4913644.length) : Bool)) {
                            _gotoNext = 4915040i32;
                        } else {
                            _gotoNext = 4915077i32;
                        };
                    } else if (__value__ == (4915040i32)) {
                        _have_4914776 = (_have_4914776.__slice__(0, (_pos_4913644.length)) : stdgo.Slice<stdgo.GoInt>);
                        _gotoNext = 4915077i32;
                    } else if (__value__ == (4915077i32)) {
                        if (!stdgo._internal.regexp.Regexp__same._same(_have_4914776, _pos_4913644)) {
                            _gotoNext = 4915097i32;
                        } else {
                            _gotoNext = 4913942i32;
                        };
                    } else if (__value__ == (4915097i32)) {
                        _t.errorf(("%s:%d: %#q.FindSubmatchIndex(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4908691), stdgo.Go.toInterface(_pattern_4913958), stdgo.Go.toInterface(_text_4913556), stdgo.Go.toInterface(_have_4914776), stdgo.Go.toInterface(_pos_4913644));
                        _gotoNext = 4913942i32;
                    } else if (__value__ == (4915209i32)) {
                        _i_4913942 = 0i32;
                        _gotoNext = 4915210i32;
                    } else if (__value__ == (4915210i32)) {
                        if (_i_4913942 < (_keys_4913930.length)) {
                            _gotoNext = 4913953i32;
                        } else {
                            _gotoNext = 4915215i32;
                        };
                    } else if (__value__ == (4915215i32)) {
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
