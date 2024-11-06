package stdgo._internal.regexp;
function _testFowler(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _file:stdgo.GoString):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _flag_5052495:stdgo.GoString = ("" : stdgo.GoString);
            var _values_5054391 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var _shouldMatch_5053833:Bool = false;
            var _text_5053758:stdgo.GoString = ("" : stdgo.GoString);
            var _err_5048785:stdgo.Error = (null : stdgo.Error);
            var _c_5054398:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _keys_5054132 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            var _ok_5052718:Bool = false;
            var _match_5054789:Bool = false;
            var _b_5048868:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
            var _err_5054492:stdgo.Error = (null : stdgo.Error);
            var _i_5054403 = @:invalid_type null;
            var _pattern_5054160:stdgo.GoString = ("" : stdgo.GoString);
            var _values_5054132 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var _i_5054144 = @:invalid_type null;
            var _err_5048958:stdgo.Error = (null : stdgo.Error);
            var _lastRegexp_5048906:stdgo.GoString = ("" : stdgo.GoString);
            var _f_5048782:stdgo.Ref<stdgo._internal.os.Os_File.File> = (null : stdgo.Ref<stdgo._internal.os.Os_File.File>);
            var _have_5054978:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            var _c_5054139:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _ok_5053814:Bool = false;
            var _f_5053227:stdgo.GoString = ("" : stdgo.GoString);
            var _line_5048952:stdgo.GoString = ("" : stdgo.GoString);
            var readingBreak = false;
            var _f_5049559:stdgo.GoString = ("" : stdgo.GoString);
            var _re_5054488:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
            var _shouldCompile_5053818:Bool = false;
            var _lineno_5048893:stdgo.GoInt = (0 : stdgo.GoInt);
            var _keys_5054391 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            var _syn_5054183:stdgo._internal.regexp.syntax.Syntax_Flags.Flags = ((0 : stdgo.GoUInt16) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
            var _pos_5053846:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            var _i_5049556:stdgo.GoInt = (0 : stdgo.GoInt);
            var _field_5049511:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
            var _gotoNext = 0i32;
            var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
            while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
                {
                    final __value__ = _gotoNext;
                    if (__value__ == (0i32)) {
                        {
                            var __tmp__ = stdgo._internal.os.Os_open.open(_file?.__copy__());
                            _f_5048782 = __tmp__._0;
                            _err_5048785 = __tmp__._1;
                        };
                        if (_err_5048785 != null) {
                            _gotoNext = 5048821i32;
                        } else {
                            _gotoNext = 5048851i32;
                        };
                    } else if (__value__ == (5048821i32)) {
                        _t.error(stdgo.Go.toInterface(_err_5048785));
                        return;
                        _gotoNext = 5048851i32;
                    } else if (__value__ == (5048851i32)) {
                        __deferstack__.unshift(() -> _f_5048782.close());
                        _b_5048868 = stdgo._internal.bufio.Bufio_newReader.newReader(stdgo.Go.asInterface(_f_5048782));
                        _lineno_5048893 = (0 : stdgo.GoInt);
                        _lastRegexp_5048906 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 5048923i32;
                    } else if (__value__ == (5048923i32)) {
                        var __blank__ = 0i32;
                        readingBreak = false;
                        _gotoNext = 5048933i32;
                    } else if (__value__ == (5048933i32)) {
                        if (!readingBreak) {
                            _gotoNext = 5048937i32;
                        } else {
                            _gotoNext = 5055417i32;
                        };
                    } else if (__value__ == (5048937i32)) {
                        _lineno_5048893++;
                        {
                            var __tmp__ = _b_5048868.readString((10 : stdgo.GoUInt8));
                            _line_5048952 = __tmp__._0?.__copy__();
                            _err_5048958 = __tmp__._1;
                        };
                        if (_err_5048958 != null) {
                            _gotoNext = 5049000i32;
                        } else {
                            _gotoNext = 5049418i32;
                        };
                    } else if (__value__ == (5049000i32)) {
                        if (stdgo.Go.toInterface(_err_5048958) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                            _gotoNext = 5049022i32;
                        } else {
                            _gotoNext = 5049077i32;
                        };
                    } else if (__value__ == (5049022i32)) {
                        _t.errorf(("%s:%d: %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5048893), stdgo.Go.toInterface(_err_5048958));
                        _gotoNext = 5049077i32;
                    } else if (__value__ == (5049077i32)) {
                        readingBreak = true;
                        _gotoNext = 5048933i32;
                    } else if (__value__ == (5049418i32)) {
                        if (((_line_5048952[(0 : stdgo.GoInt)] == (35 : stdgo.GoUInt8)) || (_line_5048952[(0 : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 5049455i32;
                        } else {
                            _gotoNext = 5049483i32;
                        };
                    } else if (__value__ == (5049455i32)) {
                        _gotoNext = 5048933i32;
                    } else if (__value__ == (5049483i32)) {
                        _line_5048952 = (_line_5048952.__slice__(0, ((_line_5048952.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_5049511 = stdgo._internal.regexp.Regexp__notab._notab.findAllString(_line_5048952?.__copy__(), (-1 : stdgo.GoInt));
                        if ((0i32 : stdgo.GoInt) < (_field_5049511.length)) {
                            _gotoNext = 5049717i32;
                        } else {
                            _gotoNext = 5049722i32;
                        };
                    } else if (__value__ == (5049556i32)) {
                        _i_5049556++;
                        _gotoNext = 5049718i32;
                    } else if (__value__ == (5049576i32)) {
                        _f_5049559 = _field_5049511[(_i_5049556 : stdgo.GoInt)]?.__copy__();
                        if (_f_5049559 == (("NULL" : stdgo.GoString))) {
                            _gotoNext = 5049596i32;
                        } else {
                            _gotoNext = 5049624i32;
                        };
                    } else if (__value__ == (5049596i32)) {
                        _field_5049511[(_i_5049556 : stdgo.GoInt)] = stdgo.Go.str()?.__copy__();
                        _gotoNext = 5049624i32;
                    } else if (__value__ == (5049624i32)) {
                        if (_f_5049559 == (("NIL" : stdgo.GoString))) {
                            _gotoNext = 5049638i32;
                        } else {
                            _gotoNext = 5049556i32;
                        };
                    } else if (__value__ == (5049638i32)) {
                        _t.logf(("%s:%d: skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5048893), stdgo.Go.toInterface(_line_5048952));
                        _gotoNext = 5048933i32;
                    } else if (__value__ == (5049717i32)) {
                        {
                            final __tmp__0 = 0i32;
                            final __tmp__1 = _field_5049511[(0i32 : stdgo.GoInt)]?.__copy__();
                            _i_5049556 = __tmp__0;
                            _f_5049559 = __tmp__1;
                        };
                        _gotoNext = 5049718i32;
                    } else if (__value__ == (5049718i32)) {
                        if (_i_5049556 < (_field_5049511.length)) {
                            _gotoNext = 5049576i32;
                        } else {
                            _gotoNext = 5049722i32;
                        };
                    } else if (__value__ == (5049722i32)) {
                        if ((_field_5049511.length) == ((0 : stdgo.GoInt))) {
                            _gotoNext = 5049741i32;
                        } else {
                            _gotoNext = 5052495i32;
                        };
                    } else if (__value__ == (5049741i32)) {
                        _gotoNext = 5048933i32;
                    } else if (__value__ == (5052495i32)) {
                        _flag_5052495 = _field_5049511[(0 : stdgo.GoInt)]?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 5052514i32;
                    } else if (__value__ == (5052514i32)) {
                        {
                            final __value__ = _flag_5052495[(0 : stdgo.GoInt)];
                            if (__value__ == ((63 : stdgo.GoUInt8)) || __value__ == ((38 : stdgo.GoUInt8)) || __value__ == ((124 : stdgo.GoUInt8)) || __value__ == ((59 : stdgo.GoUInt8)) || __value__ == ((123 : stdgo.GoUInt8)) || __value__ == ((125 : stdgo.GoUInt8))) {
                                _gotoNext = 5052533i32;
                            } else if (__value__ == ((58 : stdgo.GoUInt8))) {
                                _gotoNext = 5052701i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8)) || __value__ == ((78 : stdgo.GoUInt8)) || __value__ == ((84 : stdgo.GoUInt8)) || __value__ == ((48 : stdgo.GoUInt8)) || __value__ == ((49 : stdgo.GoUInt8)) || __value__ == ((50 : stdgo.GoUInt8)) || __value__ == ((51 : stdgo.GoUInt8)) || __value__ == ((52 : stdgo.GoUInt8)) || __value__ == ((53 : stdgo.GoUInt8)) || __value__ == ((54 : stdgo.GoUInt8)) || __value__ == ((55 : stdgo.GoUInt8)) || __value__ == ((56 : stdgo.GoUInt8)) || __value__ == ((57 : stdgo.GoUInt8))) {
                                _gotoNext = 5052837i32;
                            } else {
                                _gotoNext = 5053040i32;
                            };
                        };
                    } else if (__value__ == (5052533i32)) {
                        _flag_5052495 = (_flag_5052495.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        if (_flag_5052495 == (stdgo.Go.str())) {
                            _gotoNext = 5052671i32;
                        } else {
                            _gotoNext = 5053040i32;
                        };
                    } else if (__value__ == (5052671i32)) {
                        _gotoNext = 5048933i32;
                    } else if (__value__ == (5052701i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_flag_5052495.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (":" : stdgo.GoString));
                                _flag_5052495 = __tmp__._1?.__copy__();
                                _ok_5052718 = __tmp__._2;
                            };
                            if (!_ok_5052718) {
                                _gotoNext = 5052778i32;
                            } else {
                                _gotoNext = 5053040i32;
                            };
                        };
                    } else if (__value__ == (5052778i32)) {
                        _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line_5048952));
                        _gotoNext = 5048933i32;
                    } else if (__value__ == (5052837i32)) {
                        _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line_5048952));
                        _gotoNext = 5048933i32;
                    } else if (__value__ == (5053040i32)) {
                        if (((_field_5049511.length) < (4 : stdgo.GoInt) : Bool)) {
                            _gotoNext = 5053058i32;
                        } else {
                            _gotoNext = 5053191i32;
                        };
                    } else if (__value__ == (5053058i32)) {
                        _t.errorf(("%s:%d: too few fields: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5048893), stdgo.Go.toInterface(_line_5048952));
                        _gotoNext = 5048933i32;
                    } else if (__value__ == (5053191i32)) {
                        if (stdgo._internal.strings.Strings_contains.contains(_flag_5052495?.__copy__(), ("$" : stdgo.GoString))) {
                            _gotoNext = 5053222i32;
                        } else {
                            _gotoNext = 5053641i32;
                        };
                    } else if (__value__ == (5053222i32)) {
                        _f_5053227 = ((("\"" : stdgo.GoString) + _field_5049511[(1 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_f_5053227?.__copy__());
                                _field_5049511[(1 : stdgo.GoInt)] = __tmp__._0?.__copy__();
                                _err_5048958 = __tmp__._1;
                            };
                            if (_err_5048958 != null) {
                                _gotoNext = 5053306i32;
                            } else {
                                _gotoNext = 5053374i32;
                            };
                        };
                    } else if (__value__ == (5053306i32)) {
                        _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5048893), stdgo.Go.toInterface(_f_5053227));
                        _gotoNext = 5053374i32;
                    } else if (__value__ == (5053374i32)) {
                        _f_5053227 = ((("\"" : stdgo.GoString) + _field_5049511[(2 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_f_5053227?.__copy__());
                                _field_5049511[(2 : stdgo.GoInt)] = __tmp__._0?.__copy__();
                                _err_5048958 = __tmp__._1;
                            };
                            if (_err_5048958 != null) {
                                _gotoNext = 5053452i32;
                            } else {
                                _gotoNext = 5053641i32;
                            };
                        };
                    } else if (__value__ == (5053452i32)) {
                        _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5048893), stdgo.Go.toInterface(_f_5053227));
                        _gotoNext = 5053641i32;
                    } else if (__value__ == (5053641i32)) {
                        if (_field_5049511[(1 : stdgo.GoInt)] == (("SAME" : stdgo.GoString))) {
                            _gotoNext = 5053663i32;
                        } else {
                            _gotoNext = 5053696i32;
                        };
                    } else if (__value__ == (5053663i32)) {
                        _field_5049511[(1 : stdgo.GoInt)] = _lastRegexp_5048906?.__copy__();
                        _gotoNext = 5053696i32;
                    } else if (__value__ == (5053696i32)) {
                        _lastRegexp_5048906 = _field_5049511[(1 : stdgo.GoInt)]?.__copy__();
                        _text_5053758 = _field_5049511[(2 : stdgo.GoInt)]?.__copy__();
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp__parseFowlerResult._parseFowlerResult(_field_5049511[(3 : stdgo.GoInt)]?.__copy__());
                            _ok_5053814 = __tmp__._0;
                            _shouldCompile_5053818 = __tmp__._1;
                            _shouldMatch_5053833 = __tmp__._2;
                            _pos_5053846 = __tmp__._3;
                        };
                        if (!_ok_5053814) {
                            _gotoNext = 5053890i32;
                        } else {
                            _gotoNext = 5054046i32;
                        };
                    } else if (__value__ == (5053890i32)) {
                        _t.errorf(("%s:%d: cannot parse result %#q" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5048893), stdgo.Go.toInterface(_field_5049511[(3 : stdgo.GoInt)]));
                        _gotoNext = 5048933i32;
                    } else if (__value__ == (5054046i32)) {
                        _gotoNext = 5054046i32;
                        _keys_5054132 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                        _values_5054132 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                        for (_key => _value in _flag_5052495) {
                            _keys_5054132 = (_keys_5054132.__append__(_key));
                            _values_5054132 = (_values_5054132.__append__(_value));
                        };
                        if ((0i32 : stdgo.GoInt) < (_keys_5054132.length)) {
                            _gotoNext = 5055411i32;
                        } else {
                            _gotoNext = 5055417i32;
                        };
                    } else if (__value__ == (5054144i32)) {
                        _i_5054144++;
                        _gotoNext = 5055412i32;
                    } else if (__value__ == (5054155i32)) {
                        _c_5054139 = _values_5054132[@:invalid_index_invalid_type _i_5054144];
                        var __blank__ = _keys_5054132[@:invalid_index_invalid_type _i_5054144];
                        _pattern_5054160 = _field_5049511[(1 : stdgo.GoInt)]?.__copy__();
                        _syn_5054183 = (4 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        var __blank__ = 0i32;
                        _gotoNext = 5054223i32;
                    } else if (__value__ == (5054223i32)) {
                        {
                            final __value__ = _c_5054139;
                            if (__value__ == ((69 : stdgo.GoInt32))) {
                                _gotoNext = 5054270i32;
                            } else if (__value__ == ((76 : stdgo.GoInt32))) {
                                _gotoNext = 5054324i32;
                            } else {
                                _gotoNext = 5054237i32;
                            };
                        };
                    } else if (__value__ == (5054237i32)) {
                        _i_5054144++;
                        _gotoNext = 5055412i32;
                    } else if (__value__ == (5054270i32)) {
                        _gotoNext = 5054391i32;
                    } else if (__value__ == (5054324i32)) {
                        _pattern_5054160 = stdgo._internal.regexp.Regexp_quoteMeta.quoteMeta(_pattern_5054160?.__copy__())?.__copy__();
                        _gotoNext = 5054391i32;
                    } else if (__value__ == (5054391i32)) {
                        _keys_5054391 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                        _values_5054391 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                        for (_key => _value in _flag_5052495) {
                            _keys_5054391 = (_keys_5054391.__append__(_key));
                            _values_5054391 = (_values_5054391.__append__(_value));
                        };
                        if ((0i32 : stdgo.GoInt) < (_keys_5054391.length)) {
                            _gotoNext = 5054481i32;
                        } else {
                            _gotoNext = 5054488i32;
                        };
                    } else if (__value__ == (5054403i32)) {
                        _i_5054403++;
                        _gotoNext = 5054482i32;
                    } else if (__value__ == (5054414i32)) {
                        _c_5054398 = _values_5054391[@:invalid_index_invalid_type _i_5054403];
                        var __blank__ = _keys_5054391[@:invalid_index_invalid_type _i_5054403];
                        var __blank__ = 0i32;
                        _gotoNext = 5054420i32;
                    } else if (__value__ == (5054420i32)) {
                        {
                            final __value__ = _c_5054398;
                            if (__value__ == ((105 : stdgo.GoInt32))) {
                                _gotoNext = 5054435i32;
                            } else {
                                _gotoNext = 5054403i32;
                            };
                        };
                    } else if (__value__ == (5054435i32)) {
                        _syn_5054183 = (_syn_5054183 | ((1 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 5054403i32;
                    } else if (__value__ == (5054481i32)) {
                        _i_5054403 = 0i32;
                        _gotoNext = 5054482i32;
                    } else if (__value__ == (5054482i32)) {
                        if (_i_5054403 < (_keys_5054391.length)) {
                            _gotoNext = 5054414i32;
                        } else {
                            _gotoNext = 5054488i32;
                        };
                    } else if (__value__ == (5054488i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp__compile._compile(_pattern_5054160?.__copy__(), _syn_5054183, true);
                            _re_5054488 = __tmp__._0;
                            _err_5054492 = __tmp__._1;
                        };
                        if (_err_5054492 != null) {
                            _gotoNext = 5054544i32;
                        } else {
                            _gotoNext = 5054671i32;
                        };
                    } else if (__value__ == (5054544i32)) {
                        if (_shouldCompile_5053818) {
                            _gotoNext = 5054567i32;
                        } else {
                            _gotoNext = 5054646i32;
                        };
                    } else if (__value__ == (5054567i32)) {
                        _t.errorf(("%s:%d: %#q did not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5048893), stdgo.Go.toInterface(_pattern_5054160));
                        _gotoNext = 5054646i32;
                    } else if (__value__ == (5054646i32)) {
                        _i_5054144++;
                        _gotoNext = 5055412i32;
                    } else if (__value__ == (5054671i32)) {
                        if (!_shouldCompile_5053818) {
                            _gotoNext = 5054689i32;
                        } else {
                            _gotoNext = 5054789i32;
                        };
                    } else if (__value__ == (5054689i32)) {
                        _t.errorf(("%s:%d: %#q should not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5048893), stdgo.Go.toInterface(_pattern_5054160));
                        _i_5054144++;
                        _gotoNext = 5055412i32;
                    } else if (__value__ == (5054789i32)) {
                        _match_5054789 = _re_5054488.matchString(_text_5053758?.__copy__());
                        if (_match_5054789 != (_shouldMatch_5053833)) {
                            _gotoNext = 5054846i32;
                        } else {
                            _gotoNext = 5054978i32;
                        };
                    } else if (__value__ == (5054846i32)) {
                        _t.errorf(("%s:%d: %#q.Match(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5048893), stdgo.Go.toInterface(_pattern_5054160), stdgo.Go.toInterface(_text_5053758), stdgo.Go.toInterface(_match_5054789), stdgo.Go.toInterface(_shouldMatch_5053833));
                        _i_5054144++;
                        _gotoNext = 5055412i32;
                    } else if (__value__ == (5054978i32)) {
                        _have_5054978 = _re_5054488.findStringSubmatchIndex(_text_5053758?.__copy__());
                        if ((((_have_5054978.length) > (0 : stdgo.GoInt) : Bool)) != (_match_5054789)) {
                            _gotoNext = 5055050i32;
                        } else {
                            _gotoNext = 5055218i32;
                        };
                    } else if (__value__ == (5055050i32)) {
                        _t.errorf(("%s:%d: %#q.Match(%#q) = %v, but %#q.FindSubmatchIndex(%#q) = %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5048893), stdgo.Go.toInterface(_pattern_5054160), stdgo.Go.toInterface(_text_5053758), stdgo.Go.toInterface(_match_5054789), stdgo.Go.toInterface(_pattern_5054160), stdgo.Go.toInterface(_text_5053758), stdgo.Go.toInterface(_have_5054978));
                        _i_5054144++;
                        _gotoNext = 5055412i32;
                    } else if (__value__ == (5055218i32)) {
                        if (((_have_5054978.length) > (_pos_5053846.length) : Bool)) {
                            _gotoNext = 5055242i32;
                        } else {
                            _gotoNext = 5055279i32;
                        };
                    } else if (__value__ == (5055242i32)) {
                        _have_5054978 = (_have_5054978.__slice__(0, (_pos_5053846.length)) : stdgo.Slice<stdgo.GoInt>);
                        _gotoNext = 5055279i32;
                    } else if (__value__ == (5055279i32)) {
                        if (!stdgo._internal.regexp.Regexp__same._same(_have_5054978, _pos_5053846)) {
                            _gotoNext = 5055299i32;
                        } else {
                            _gotoNext = 5054144i32;
                        };
                    } else if (__value__ == (5055299i32)) {
                        _t.errorf(("%s:%d: %#q.FindSubmatchIndex(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5048893), stdgo.Go.toInterface(_pattern_5054160), stdgo.Go.toInterface(_text_5053758), stdgo.Go.toInterface(_have_5054978), stdgo.Go.toInterface(_pos_5053846));
                        _gotoNext = 5054144i32;
                    } else if (__value__ == (5055411i32)) {
                        _i_5054144 = 0i32;
                        _gotoNext = 5055412i32;
                    } else if (__value__ == (5055412i32)) {
                        if (_i_5054144 < (_keys_5054132.length)) {
                            _gotoNext = 5054155i32;
                        } else {
                            _gotoNext = 5055417i32;
                        };
                    } else if (__value__ == (5055417i32)) {
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
