package stdgo._internal.regexp;
function _testFowler(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _file:stdgo.GoString):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _text_5129278:stdgo.GoString = ("" : stdgo.GoString);
            var _flag_5128015:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRegexp_5124426:stdgo.GoString = ("" : stdgo.GoString);
            var _re_5130008:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
            var _c_5129918:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _keys_5129652 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            var _i_5129664 = @:invalid_type null;
            var _field_5125031:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
            var _b_5124388:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
            var _f_5124302:stdgo.Ref<stdgo._internal.os.Os_File.File> = (null : stdgo.Ref<stdgo._internal.os.Os_File.File>);
            var _match_5130309:Bool = false;
            var _keys_5129911 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            var _c_5129659:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _i_5129923 = @:invalid_type null;
            var _pos_5129366:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            var readingBreak = false;
            var _have_5130498:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            var _err_5130012:stdgo.Error = (null : stdgo.Error);
            var _shouldMatch_5129353:Bool = false;
            var _pattern_5129680:stdgo.GoString = ("" : stdgo.GoString);
            var _line_5124472:stdgo.GoString = ("" : stdgo.GoString);
            var _lineno_5124413:stdgo.GoInt = (0 : stdgo.GoInt);
            var _syn_5129703:stdgo._internal.regexp.syntax.Syntax_Flags.Flags = ((0 : stdgo.GoUInt16) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
            var _ok_5129334:Bool = false;
            var _err_5124305:stdgo.Error = (null : stdgo.Error);
            var _f_5125079:stdgo.GoString = ("" : stdgo.GoString);
            var _i_5125076:stdgo.GoInt = (0 : stdgo.GoInt);
            var _err_5124478:stdgo.Error = (null : stdgo.Error);
            var _values_5129911 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var _values_5129652 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var _f_5128747:stdgo.GoString = ("" : stdgo.GoString);
            var _shouldCompile_5129338:Bool = false;
            var _ok_5128238:Bool = false;
            var _gotoNext = 0i32;
            var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
            while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
                {
                    final __value__ = _gotoNext;
                    if (__value__ == (0i32)) {
                        {
                            var __tmp__ = stdgo._internal.os.Os_open.open(_file?.__copy__());
                            _f_5124302 = __tmp__._0;
                            _err_5124305 = __tmp__._1;
                        };
                        if (_err_5124305 != null) {
                            _gotoNext = 5124341i32;
                        } else {
                            _gotoNext = 5124371i32;
                        };
                    } else if (__value__ == (5124341i32)) {
                        _t.error(stdgo.Go.toInterface(_err_5124305));
                        return;
                        _gotoNext = 5124371i32;
                    } else if (__value__ == (5124371i32)) {
                        __deferstack__.unshift(() -> _f_5124302.close());
                        _b_5124388 = stdgo._internal.bufio.Bufio_newReader.newReader(stdgo.Go.asInterface(_f_5124302));
                        _lineno_5124413 = (0 : stdgo.GoInt);
                        _lastRegexp_5124426 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 5124443i32;
                    } else if (__value__ == (5124443i32)) {
                        var __blank__ = 0i32;
                        readingBreak = false;
                        _gotoNext = 5124453i32;
                    } else if (__value__ == (5124453i32)) {
                        if (!readingBreak) {
                            _gotoNext = 5124457i32;
                        } else {
                            _gotoNext = 5130937i32;
                        };
                    } else if (__value__ == (5124457i32)) {
                        _lineno_5124413++;
                        {
                            var __tmp__ = _b_5124388.readString((10 : stdgo.GoUInt8));
                            _line_5124472 = __tmp__._0?.__copy__();
                            _err_5124478 = __tmp__._1;
                        };
                        if (_err_5124478 != null) {
                            _gotoNext = 5124520i32;
                        } else {
                            _gotoNext = 5124938i32;
                        };
                    } else if (__value__ == (5124520i32)) {
                        if (stdgo.Go.toInterface(_err_5124478) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                            _gotoNext = 5124542i32;
                        } else {
                            _gotoNext = 5124597i32;
                        };
                    } else if (__value__ == (5124542i32)) {
                        _t.errorf(("%s:%d: %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5124413), stdgo.Go.toInterface(_err_5124478));
                        _gotoNext = 5124597i32;
                    } else if (__value__ == (5124597i32)) {
                        readingBreak = true;
                        _gotoNext = 5124453i32;
                    } else if (__value__ == (5124938i32)) {
                        if (((_line_5124472[(0 : stdgo.GoInt)] == (35 : stdgo.GoUInt8)) || (_line_5124472[(0 : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 5124975i32;
                        } else {
                            _gotoNext = 5125003i32;
                        };
                    } else if (__value__ == (5124975i32)) {
                        _gotoNext = 5124453i32;
                    } else if (__value__ == (5125003i32)) {
                        _line_5124472 = (_line_5124472.__slice__(0, ((_line_5124472.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_5125031 = stdgo._internal.regexp.Regexp__notab._notab.findAllString(_line_5124472?.__copy__(), (-1 : stdgo.GoInt));
                        if ((0i32 : stdgo.GoInt) < (_field_5125031.length)) {
                            _gotoNext = 5125237i32;
                        } else {
                            _gotoNext = 5125242i32;
                        };
                    } else if (__value__ == (5125076i32)) {
                        _i_5125076++;
                        _gotoNext = 5125238i32;
                    } else if (__value__ == (5125096i32)) {
                        _f_5125079 = _field_5125031[(_i_5125076 : stdgo.GoInt)]?.__copy__();
                        if (_f_5125079 == (("NULL" : stdgo.GoString))) {
                            _gotoNext = 5125116i32;
                        } else {
                            _gotoNext = 5125144i32;
                        };
                    } else if (__value__ == (5125116i32)) {
                        _field_5125031[(_i_5125076 : stdgo.GoInt)] = stdgo.Go.str()?.__copy__();
                        _gotoNext = 5125144i32;
                    } else if (__value__ == (5125144i32)) {
                        if (_f_5125079 == (("NIL" : stdgo.GoString))) {
                            _gotoNext = 5125158i32;
                        } else {
                            _gotoNext = 5125076i32;
                        };
                    } else if (__value__ == (5125158i32)) {
                        _t.logf(("%s:%d: skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5124413), stdgo.Go.toInterface(_line_5124472));
                        _gotoNext = 5124453i32;
                    } else if (__value__ == (5125237i32)) {
                        {
                            final __tmp__0 = 0i32;
                            final __tmp__1 = _field_5125031[(0i32 : stdgo.GoInt)]?.__copy__();
                            _i_5125076 = __tmp__0;
                            _f_5125079 = __tmp__1;
                        };
                        _gotoNext = 5125238i32;
                    } else if (__value__ == (5125238i32)) {
                        if (_i_5125076 < (_field_5125031.length)) {
                            _gotoNext = 5125096i32;
                        } else {
                            _gotoNext = 5125242i32;
                        };
                    } else if (__value__ == (5125242i32)) {
                        if ((_field_5125031.length) == ((0 : stdgo.GoInt))) {
                            _gotoNext = 5125261i32;
                        } else {
                            _gotoNext = 5128015i32;
                        };
                    } else if (__value__ == (5125261i32)) {
                        _gotoNext = 5124453i32;
                    } else if (__value__ == (5128015i32)) {
                        _flag_5128015 = _field_5125031[(0 : stdgo.GoInt)]?.__copy__();
                        _gotoNext = 5128034i32;
                    } else if (__value__ == (5128034i32)) {
                        {
                            final __value__ = _flag_5128015[(0 : stdgo.GoInt)];
                            if (__value__ == ((63 : stdgo.GoUInt8)) || __value__ == ((38 : stdgo.GoUInt8)) || __value__ == ((124 : stdgo.GoUInt8)) || __value__ == ((59 : stdgo.GoUInt8)) || __value__ == ((123 : stdgo.GoUInt8)) || __value__ == ((125 : stdgo.GoUInt8))) {
                                _gotoNext = 5128053i32;
                            } else if (__value__ == ((58 : stdgo.GoUInt8))) {
                                _gotoNext = 5128221i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8)) || __value__ == ((78 : stdgo.GoUInt8)) || __value__ == ((84 : stdgo.GoUInt8)) || __value__ == ((48 : stdgo.GoUInt8)) || __value__ == ((49 : stdgo.GoUInt8)) || __value__ == ((50 : stdgo.GoUInt8)) || __value__ == ((51 : stdgo.GoUInt8)) || __value__ == ((52 : stdgo.GoUInt8)) || __value__ == ((53 : stdgo.GoUInt8)) || __value__ == ((54 : stdgo.GoUInt8)) || __value__ == ((55 : stdgo.GoUInt8)) || __value__ == ((56 : stdgo.GoUInt8)) || __value__ == ((57 : stdgo.GoUInt8))) {
                                _gotoNext = 5128357i32;
                            } else {
                                _gotoNext = 5128560i32;
                            };
                        };
                    } else if (__value__ == (5128053i32)) {
                        _flag_5128015 = (_flag_5128015.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        if (_flag_5128015 == (stdgo.Go.str())) {
                            _gotoNext = 5128191i32;
                        } else {
                            _gotoNext = 5128560i32;
                        };
                    } else if (__value__ == (5128191i32)) {
                        _gotoNext = 5124453i32;
                    } else if (__value__ == (5128221i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_flag_5128015.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (":" : stdgo.GoString));
                                _flag_5128015 = __tmp__._1?.__copy__();
                                _ok_5128238 = __tmp__._2;
                            };
                            if (!_ok_5128238) {
                                _gotoNext = 5128298i32;
                            } else {
                                _gotoNext = 5128560i32;
                            };
                        };
                    } else if (__value__ == (5128298i32)) {
                        _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line_5124472));
                        _gotoNext = 5124453i32;
                    } else if (__value__ == (5128357i32)) {
                        _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line_5124472));
                        _gotoNext = 5124453i32;
                    } else if (__value__ == (5128560i32)) {
                        if (((_field_5125031.length) < (4 : stdgo.GoInt) : Bool)) {
                            _gotoNext = 5128578i32;
                        } else {
                            _gotoNext = 5128711i32;
                        };
                    } else if (__value__ == (5128578i32)) {
                        _t.errorf(("%s:%d: too few fields: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5124413), stdgo.Go.toInterface(_line_5124472));
                        _gotoNext = 5124453i32;
                    } else if (__value__ == (5128711i32)) {
                        if (stdgo._internal.strings.Strings_contains.contains(_flag_5128015?.__copy__(), ("$" : stdgo.GoString))) {
                            _gotoNext = 5128742i32;
                        } else {
                            _gotoNext = 5129161i32;
                        };
                    } else if (__value__ == (5128742i32)) {
                        _f_5128747 = ((("\"" : stdgo.GoString) + _field_5125031[(1 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_f_5128747?.__copy__());
                                _field_5125031[(1 : stdgo.GoInt)] = __tmp__._0?.__copy__();
                                _err_5124478 = __tmp__._1;
                            };
                            if (_err_5124478 != null) {
                                _gotoNext = 5128826i32;
                            } else {
                                _gotoNext = 5128894i32;
                            };
                        };
                    } else if (__value__ == (5128826i32)) {
                        _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5124413), stdgo.Go.toInterface(_f_5128747));
                        _gotoNext = 5128894i32;
                    } else if (__value__ == (5128894i32)) {
                        _f_5128747 = ((("\"" : stdgo.GoString) + _field_5125031[(2 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_f_5128747?.__copy__());
                                _field_5125031[(2 : stdgo.GoInt)] = __tmp__._0?.__copy__();
                                _err_5124478 = __tmp__._1;
                            };
                            if (_err_5124478 != null) {
                                _gotoNext = 5128972i32;
                            } else {
                                _gotoNext = 5129161i32;
                            };
                        };
                    } else if (__value__ == (5128972i32)) {
                        _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5124413), stdgo.Go.toInterface(_f_5128747));
                        _gotoNext = 5129161i32;
                    } else if (__value__ == (5129161i32)) {
                        if (_field_5125031[(1 : stdgo.GoInt)] == (("SAME" : stdgo.GoString))) {
                            _gotoNext = 5129183i32;
                        } else {
                            _gotoNext = 5129216i32;
                        };
                    } else if (__value__ == (5129183i32)) {
                        _field_5125031[(1 : stdgo.GoInt)] = _lastRegexp_5124426?.__copy__();
                        _gotoNext = 5129216i32;
                    } else if (__value__ == (5129216i32)) {
                        _lastRegexp_5124426 = _field_5125031[(1 : stdgo.GoInt)]?.__copy__();
                        _text_5129278 = _field_5125031[(2 : stdgo.GoInt)]?.__copy__();
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp__parseFowlerResult._parseFowlerResult(_field_5125031[(3 : stdgo.GoInt)]?.__copy__());
                            _ok_5129334 = __tmp__._0;
                            _shouldCompile_5129338 = __tmp__._1;
                            _shouldMatch_5129353 = __tmp__._2;
                            _pos_5129366 = __tmp__._3;
                        };
                        if (!_ok_5129334) {
                            _gotoNext = 5129410i32;
                        } else {
                            _gotoNext = 5129566i32;
                        };
                    } else if (__value__ == (5129410i32)) {
                        _t.errorf(("%s:%d: cannot parse result %#q" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5124413), stdgo.Go.toInterface(_field_5125031[(3 : stdgo.GoInt)]));
                        _gotoNext = 5124453i32;
                    } else if (__value__ == (5129566i32)) {
                        _gotoNext = 5129566i32;
                        _keys_5129652 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                        _values_5129652 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                        for (_key => _value in _flag_5128015) {
                            _keys_5129652 = (_keys_5129652.__append__(_key));
                            _values_5129652 = (_values_5129652.__append__(_value));
                        };
                        if ((0i32 : stdgo.GoInt) < (_keys_5129652.length)) {
                            _gotoNext = 5130931i32;
                        } else {
                            _gotoNext = 5130937i32;
                        };
                    } else if (__value__ == (5129664i32)) {
                        _i_5129664++;
                        _gotoNext = 5130932i32;
                    } else if (__value__ == (5129675i32)) {
                        _c_5129659 = _values_5129652[@:invalid_index_invalid_type _i_5129664];
                        var __blank__ = _keys_5129652[@:invalid_index_invalid_type _i_5129664];
                        _pattern_5129680 = _field_5125031[(1 : stdgo.GoInt)]?.__copy__();
                        _syn_5129703 = (4 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 5129743i32;
                    } else if (__value__ == (5129743i32)) {
                        {
                            final __value__ = _c_5129659;
                            if (__value__ == ((69 : stdgo.GoInt32))) {
                                _gotoNext = 5129790i32;
                            } else if (__value__ == ((76 : stdgo.GoInt32))) {
                                _gotoNext = 5129844i32;
                            } else {
                                _gotoNext = 5129757i32;
                            };
                        };
                    } else if (__value__ == (5129757i32)) {
                        _i_5129664++;
                        _gotoNext = 5130932i32;
                    } else if (__value__ == (5129790i32)) {
                        _gotoNext = 5129911i32;
                    } else if (__value__ == (5129844i32)) {
                        _pattern_5129680 = stdgo._internal.regexp.Regexp_quoteMeta.quoteMeta(_pattern_5129680?.__copy__())?.__copy__();
                        _gotoNext = 5129911i32;
                    } else if (__value__ == (5129911i32)) {
                        _keys_5129911 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                        _values_5129911 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                        for (_key => _value in _flag_5128015) {
                            _keys_5129911 = (_keys_5129911.__append__(_key));
                            _values_5129911 = (_values_5129911.__append__(_value));
                        };
                        if ((0i32 : stdgo.GoInt) < (_keys_5129911.length)) {
                            _gotoNext = 5130001i32;
                        } else {
                            _gotoNext = 5130008i32;
                        };
                    } else if (__value__ == (5129923i32)) {
                        _i_5129923++;
                        _gotoNext = 5130002i32;
                    } else if (__value__ == (5129934i32)) {
                        _c_5129918 = _values_5129911[@:invalid_index_invalid_type _i_5129923];
                        var __blank__ = _keys_5129911[@:invalid_index_invalid_type _i_5129923];
                        _gotoNext = 5129940i32;
                    } else if (__value__ == (5129940i32)) {
                        {
                            final __value__ = _c_5129918;
                            if (__value__ == ((105 : stdgo.GoInt32))) {
                                _gotoNext = 5129955i32;
                            } else {
                                _gotoNext = 5129923i32;
                            };
                        };
                    } else if (__value__ == (5129955i32)) {
                        _syn_5129703 = (_syn_5129703 | ((1 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 5129923i32;
                    } else if (__value__ == (5130001i32)) {
                        _i_5129923 = 0i32;
                        _gotoNext = 5130002i32;
                    } else if (__value__ == (5130002i32)) {
                        if (_i_5129923 < (_keys_5129911.length)) {
                            _gotoNext = 5129934i32;
                        } else {
                            _gotoNext = 5130008i32;
                        };
                    } else if (__value__ == (5130008i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp__compile._compile(_pattern_5129680?.__copy__(), _syn_5129703, true);
                            _re_5130008 = __tmp__._0;
                            _err_5130012 = __tmp__._1;
                        };
                        if (_err_5130012 != null) {
                            _gotoNext = 5130064i32;
                        } else {
                            _gotoNext = 5130191i32;
                        };
                    } else if (__value__ == (5130064i32)) {
                        if (_shouldCompile_5129338) {
                            _gotoNext = 5130087i32;
                        } else {
                            _gotoNext = 5130166i32;
                        };
                    } else if (__value__ == (5130087i32)) {
                        _t.errorf(("%s:%d: %#q did not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5124413), stdgo.Go.toInterface(_pattern_5129680));
                        _gotoNext = 5130166i32;
                    } else if (__value__ == (5130166i32)) {
                        _i_5129664++;
                        _gotoNext = 5130932i32;
                    } else if (__value__ == (5130191i32)) {
                        if (!_shouldCompile_5129338) {
                            _gotoNext = 5130209i32;
                        } else {
                            _gotoNext = 5130309i32;
                        };
                    } else if (__value__ == (5130209i32)) {
                        _t.errorf(("%s:%d: %#q should not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5124413), stdgo.Go.toInterface(_pattern_5129680));
                        _i_5129664++;
                        _gotoNext = 5130932i32;
                    } else if (__value__ == (5130309i32)) {
                        _match_5130309 = _re_5130008.matchString(_text_5129278?.__copy__());
                        if (_match_5130309 != (_shouldMatch_5129353)) {
                            _gotoNext = 5130366i32;
                        } else {
                            _gotoNext = 5130498i32;
                        };
                    } else if (__value__ == (5130366i32)) {
                        _t.errorf(("%s:%d: %#q.Match(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5124413), stdgo.Go.toInterface(_pattern_5129680), stdgo.Go.toInterface(_text_5129278), stdgo.Go.toInterface(_match_5130309), stdgo.Go.toInterface(_shouldMatch_5129353));
                        _i_5129664++;
                        _gotoNext = 5130932i32;
                    } else if (__value__ == (5130498i32)) {
                        _have_5130498 = _re_5130008.findStringSubmatchIndex(_text_5129278?.__copy__());
                        if ((((_have_5130498.length) > (0 : stdgo.GoInt) : Bool)) != (_match_5130309)) {
                            _gotoNext = 5130570i32;
                        } else {
                            _gotoNext = 5130738i32;
                        };
                    } else if (__value__ == (5130570i32)) {
                        _t.errorf(("%s:%d: %#q.Match(%#q) = %v, but %#q.FindSubmatchIndex(%#q) = %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5124413), stdgo.Go.toInterface(_pattern_5129680), stdgo.Go.toInterface(_text_5129278), stdgo.Go.toInterface(_match_5130309), stdgo.Go.toInterface(_pattern_5129680), stdgo.Go.toInterface(_text_5129278), stdgo.Go.toInterface(_have_5130498));
                        _i_5129664++;
                        _gotoNext = 5130932i32;
                    } else if (__value__ == (5130738i32)) {
                        if (((_have_5130498.length) > (_pos_5129366.length) : Bool)) {
                            _gotoNext = 5130762i32;
                        } else {
                            _gotoNext = 5130799i32;
                        };
                    } else if (__value__ == (5130762i32)) {
                        _have_5130498 = (_have_5130498.__slice__(0, (_pos_5129366.length)) : stdgo.Slice<stdgo.GoInt>);
                        _gotoNext = 5130799i32;
                    } else if (__value__ == (5130799i32)) {
                        if (!stdgo._internal.regexp.Regexp__same._same(_have_5130498, _pos_5129366)) {
                            _gotoNext = 5130819i32;
                        } else {
                            _gotoNext = 5129664i32;
                        };
                    } else if (__value__ == (5130819i32)) {
                        _t.errorf(("%s:%d: %#q.FindSubmatchIndex(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5124413), stdgo.Go.toInterface(_pattern_5129680), stdgo.Go.toInterface(_text_5129278), stdgo.Go.toInterface(_have_5130498), stdgo.Go.toInterface(_pos_5129366));
                        _gotoNext = 5129664i32;
                    } else if (__value__ == (5130931i32)) {
                        _i_5129664 = 0i32;
                        _gotoNext = 5130932i32;
                    } else if (__value__ == (5130932i32)) {
                        if (_i_5129664 < (_keys_5129652.length)) {
                            _gotoNext = 5129675i32;
                        } else {
                            _gotoNext = 5130937i32;
                        };
                    } else if (__value__ == (5130937i32)) {
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
