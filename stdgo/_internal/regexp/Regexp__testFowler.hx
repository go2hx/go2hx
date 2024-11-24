package stdgo._internal.regexp;
function _testFowler(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _file:stdgo.GoString):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _lastRegexp_5006060:stdgo.GoString = ("" : stdgo.GoString);
            var _b_5006022:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
            var _re_5011642:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
            var _text_5010912:stdgo.GoString = ("" : stdgo.GoString);
            var _f_5006713:stdgo.GoString = ("" : stdgo.GoString);
            var _lineno_5006047:stdgo.GoInt = (0 : stdgo.GoInt);
            var _c_5011293:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _shouldMatch_5010987:Bool = false;
            var _err_5006112:stdgo.Error = (null : stdgo.Error);
            var _have_5012132:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            var _keys_5011286 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            var _f_5005936:stdgo.Ref<stdgo._internal.os.Os_File.File> = (null : stdgo.Ref<stdgo._internal.os.Os_File.File>);
            var _pos_5011000:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            var _field_5006665:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
            var _values_5011545 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var _shouldCompile_5010972:Bool = false;
            var _ok_5010968:Bool = false;
            var _f_5010381:stdgo.GoString = ("" : stdgo.GoString);
            var _err_5011646:stdgo.Error = (null : stdgo.Error);
            var _i_5011298 = @:invalid_type null;
            var _line_5006106:stdgo.GoString = ("" : stdgo.GoString);
            var readingBreak = false;
            var _err_5005939:stdgo.Error = (null : stdgo.Error);
            var _c_5011552:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _keys_5011545 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            var _values_5011286 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var _ok_5009872:Bool = false;
            var _flag_5009649:stdgo.GoString = ("" : stdgo.GoString);
            var _i_5006710:stdgo.GoInt = (0 : stdgo.GoInt);
            var _match_5011943:Bool = false;
            var _i_5011557 = @:invalid_type null;
            var _syn_5011337:stdgo._internal.regexp.syntax.Syntax_Flags.Flags = ((0 : stdgo.GoUInt16) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
            var _pattern_5011314:stdgo.GoString = ("" : stdgo.GoString);
            var _gotoNext = 0i32;
            var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
            while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
                {
                    final __value__ = _gotoNext;
                    if (__value__ == (0i32)) {
                        {
                            var __tmp__ = stdgo._internal.os.Os_open.open(_file?.__copy__());
                            _f_5005936 = __tmp__._0;
                            _err_5005939 = __tmp__._1;
                        };
                        if (_err_5005939 != null) {
                            _gotoNext = 5005975i32;
                        } else {
                            _gotoNext = 5006005i32;
                        };
                    } else if (__value__ == (5005975i32)) {
                        _t.error(stdgo.Go.toInterface(_err_5005939));
                        return;
                        _gotoNext = 5006005i32;
                    } else if (__value__ == (5006005i32)) {
                        __deferstack__.unshift(() -> _f_5005936.close());
                        _b_5006022 = stdgo._internal.bufio.Bufio_newReader.newReader(stdgo.Go.asInterface(_f_5005936));
                        _lineno_5006047 = (0 : stdgo.GoInt);
                        _lastRegexp_5006060 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 5006077i32;
                    } else if (__value__ == (5006077i32)) {
                        var __blank__ = 0i32;
                        readingBreak = false;
                        _gotoNext = 5006087i32;
                    } else if (__value__ == (5006087i32)) {
                        if (!readingBreak) {
                            _gotoNext = 5006091i32;
                        } else {
                            _gotoNext = 5012571i32;
                        };
                    } else if (__value__ == (5006091i32)) {
                        _lineno_5006047++;
                        {
                            var __tmp__ = _b_5006022.readString((10 : stdgo.GoUInt8));
                            _line_5006106 = __tmp__._0?.__copy__();
                            _err_5006112 = __tmp__._1;
                        };
                        if (_err_5006112 != null) {
                            _gotoNext = 5006154i32;
                        } else {
                            _gotoNext = 5006572i32;
                        };
                    } else if (__value__ == (5006154i32)) {
                        if (stdgo.Go.toInterface(_err_5006112) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                            _gotoNext = 5006176i32;
                        } else {
                            _gotoNext = 5006231i32;
                        };
                    } else if (__value__ == (5006176i32)) {
                        _t.errorf(("%s:%d: %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5006047), stdgo.Go.toInterface(_err_5006112));
                        _gotoNext = 5006231i32;
                    } else if (__value__ == (5006231i32)) {
                        readingBreak = true;
                        _gotoNext = 5006087i32;
                    } else if (__value__ == (5006572i32)) {
                        if (((_line_5006106[(0 : stdgo.GoInt)] == (35 : stdgo.GoUInt8)) || (_line_5006106[(0 : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 5006609i32;
                        } else {
                            _gotoNext = 5006637i32;
                        };
                    } else if (__value__ == (5006609i32)) {
                        _gotoNext = 5006087i32;
                    } else if (__value__ == (5006637i32)) {
                        _line_5006106 = (_line_5006106.__slice__(0, ((_line_5006106.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_5006665 = stdgo._internal.regexp.Regexp__notab._notab.findAllString(_line_5006106?.__copy__(), (-1 : stdgo.GoInt));
                        if ((0i32 : stdgo.GoInt) < (_field_5006665.length)) {
                            _gotoNext = 5006871i32;
                        } else {
                            _gotoNext = 5006876i32;
                        };
                    } else if (__value__ == (5006710i32)) {
                        _i_5006710++;
                        _gotoNext = 5006872i32;
                    } else if (__value__ == (5006730i32)) {
                        _f_5006713 = _field_5006665[(_i_5006710 : stdgo.GoInt)]?.__copy__();
                        if (_f_5006713 == (("NULL" : stdgo.GoString))) {
                            _gotoNext = 5006750i32;
                        } else {
                            _gotoNext = 5006778i32;
                        };
                    } else if (__value__ == (5006750i32)) {
                        _field_5006665[(_i_5006710 : stdgo.GoInt)] = stdgo.Go.str()?.__copy__();
                        _gotoNext = 5006778i32;
                    } else if (__value__ == (5006778i32)) {
                        if (_f_5006713 == (("NIL" : stdgo.GoString))) {
                            _gotoNext = 5006792i32;
                        } else {
                            _gotoNext = 5006710i32;
                        };
                    } else if (__value__ == (5006792i32)) {
                        _t.logf(("%s:%d: skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5006047), stdgo.Go.toInterface(_line_5006106));
                        _gotoNext = 5006087i32;
                    } else if (__value__ == (5006871i32)) {
                        {
                            final __tmp__0 = 0i32;
                            final __tmp__1 = _field_5006665[(0i32 : stdgo.GoInt)]?.__copy__();
                            _i_5006710 = __tmp__0;
                            _f_5006713 = __tmp__1;
                        };
                        _gotoNext = 5006872i32;
                    } else if (__value__ == (5006872i32)) {
                        if (_i_5006710 < (_field_5006665.length)) {
                            _gotoNext = 5006730i32;
                        } else {
                            _gotoNext = 5006876i32;
                        };
                    } else if (__value__ == (5006876i32)) {
                        if ((_field_5006665.length) == ((0 : stdgo.GoInt))) {
                            _gotoNext = 5006895i32;
                        } else {
                            _gotoNext = 5009649i32;
                        };
                    } else if (__value__ == (5006895i32)) {
                        _gotoNext = 5006087i32;
                    } else if (__value__ == (5009649i32)) {
                        _flag_5009649 = _field_5006665[(0 : stdgo.GoInt)]?.__copy__();
                        _gotoNext = 5009668i32;
                    } else if (__value__ == (5009668i32)) {
                        {
                            final __value__ = _flag_5009649[(0 : stdgo.GoInt)];
                            if (__value__ == ((63 : stdgo.GoUInt8)) || __value__ == ((38 : stdgo.GoUInt8)) || __value__ == ((124 : stdgo.GoUInt8)) || __value__ == ((59 : stdgo.GoUInt8)) || __value__ == ((123 : stdgo.GoUInt8)) || __value__ == ((125 : stdgo.GoUInt8))) {
                                _gotoNext = 5009687i32;
                            } else if (__value__ == ((58 : stdgo.GoUInt8))) {
                                _gotoNext = 5009855i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8)) || __value__ == ((78 : stdgo.GoUInt8)) || __value__ == ((84 : stdgo.GoUInt8)) || __value__ == ((48 : stdgo.GoUInt8)) || __value__ == ((49 : stdgo.GoUInt8)) || __value__ == ((50 : stdgo.GoUInt8)) || __value__ == ((51 : stdgo.GoUInt8)) || __value__ == ((52 : stdgo.GoUInt8)) || __value__ == ((53 : stdgo.GoUInt8)) || __value__ == ((54 : stdgo.GoUInt8)) || __value__ == ((55 : stdgo.GoUInt8)) || __value__ == ((56 : stdgo.GoUInt8)) || __value__ == ((57 : stdgo.GoUInt8))) {
                                _gotoNext = 5009991i32;
                            } else {
                                _gotoNext = 5010194i32;
                            };
                        };
                    } else if (__value__ == (5009687i32)) {
                        _flag_5009649 = (_flag_5009649.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        if (_flag_5009649 == (stdgo.Go.str())) {
                            _gotoNext = 5009825i32;
                        } else {
                            _gotoNext = 5010194i32;
                        };
                    } else if (__value__ == (5009825i32)) {
                        _gotoNext = 5006087i32;
                    } else if (__value__ == (5009855i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_flag_5009649.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (":" : stdgo.GoString));
                                _flag_5009649 = __tmp__._1?.__copy__();
                                _ok_5009872 = __tmp__._2;
                            };
                            if (!_ok_5009872) {
                                _gotoNext = 5009932i32;
                            } else {
                                _gotoNext = 5010194i32;
                            };
                        };
                    } else if (__value__ == (5009932i32)) {
                        _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line_5006106));
                        _gotoNext = 5006087i32;
                    } else if (__value__ == (5009991i32)) {
                        _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line_5006106));
                        _gotoNext = 5006087i32;
                    } else if (__value__ == (5010194i32)) {
                        if (((_field_5006665.length) < (4 : stdgo.GoInt) : Bool)) {
                            _gotoNext = 5010212i32;
                        } else {
                            _gotoNext = 5010345i32;
                        };
                    } else if (__value__ == (5010212i32)) {
                        _t.errorf(("%s:%d: too few fields: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5006047), stdgo.Go.toInterface(_line_5006106));
                        _gotoNext = 5006087i32;
                    } else if (__value__ == (5010345i32)) {
                        if (stdgo._internal.strings.Strings_contains.contains(_flag_5009649?.__copy__(), ("$" : stdgo.GoString))) {
                            _gotoNext = 5010376i32;
                        } else {
                            _gotoNext = 5010795i32;
                        };
                    } else if (__value__ == (5010376i32)) {
                        _f_5010381 = ((("\"" : stdgo.GoString) + _field_5006665[(1 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_f_5010381?.__copy__());
                                _field_5006665[(1 : stdgo.GoInt)] = __tmp__._0?.__copy__();
                                _err_5006112 = __tmp__._1;
                            };
                            if (_err_5006112 != null) {
                                _gotoNext = 5010460i32;
                            } else {
                                _gotoNext = 5010528i32;
                            };
                        };
                    } else if (__value__ == (5010460i32)) {
                        _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5006047), stdgo.Go.toInterface(_f_5010381));
                        _gotoNext = 5010528i32;
                    } else if (__value__ == (5010528i32)) {
                        _f_5010381 = ((("\"" : stdgo.GoString) + _field_5006665[(2 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_f_5010381?.__copy__());
                                _field_5006665[(2 : stdgo.GoInt)] = __tmp__._0?.__copy__();
                                _err_5006112 = __tmp__._1;
                            };
                            if (_err_5006112 != null) {
                                _gotoNext = 5010606i32;
                            } else {
                                _gotoNext = 5010795i32;
                            };
                        };
                    } else if (__value__ == (5010606i32)) {
                        _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5006047), stdgo.Go.toInterface(_f_5010381));
                        _gotoNext = 5010795i32;
                    } else if (__value__ == (5010795i32)) {
                        if (_field_5006665[(1 : stdgo.GoInt)] == (("SAME" : stdgo.GoString))) {
                            _gotoNext = 5010817i32;
                        } else {
                            _gotoNext = 5010850i32;
                        };
                    } else if (__value__ == (5010817i32)) {
                        _field_5006665[(1 : stdgo.GoInt)] = _lastRegexp_5006060?.__copy__();
                        _gotoNext = 5010850i32;
                    } else if (__value__ == (5010850i32)) {
                        _lastRegexp_5006060 = _field_5006665[(1 : stdgo.GoInt)]?.__copy__();
                        _text_5010912 = _field_5006665[(2 : stdgo.GoInt)]?.__copy__();
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp__parseFowlerResult._parseFowlerResult(_field_5006665[(3 : stdgo.GoInt)]?.__copy__());
                            _ok_5010968 = __tmp__._0;
                            _shouldCompile_5010972 = __tmp__._1;
                            _shouldMatch_5010987 = __tmp__._2;
                            _pos_5011000 = __tmp__._3;
                        };
                        if (!_ok_5010968) {
                            _gotoNext = 5011044i32;
                        } else {
                            _gotoNext = 5011200i32;
                        };
                    } else if (__value__ == (5011044i32)) {
                        _t.errorf(("%s:%d: cannot parse result %#q" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5006047), stdgo.Go.toInterface(_field_5006665[(3 : stdgo.GoInt)]));
                        _gotoNext = 5006087i32;
                    } else if (__value__ == (5011200i32)) {
                        _gotoNext = 5011200i32;
                        _keys_5011286 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                        _values_5011286 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                        for (_key => _value in _flag_5009649) {
                            _keys_5011286 = (_keys_5011286.__append__(_key));
                            _values_5011286 = (_values_5011286.__append__(_value));
                        };
                        if ((0i32 : stdgo.GoInt) < (_keys_5011286.length)) {
                            _gotoNext = 5012565i32;
                        } else {
                            _gotoNext = 5012571i32;
                        };
                    } else if (__value__ == (5011298i32)) {
                        _i_5011298++;
                        _gotoNext = 5012566i32;
                    } else if (__value__ == (5011309i32)) {
                        _c_5011293 = _values_5011286[@:invalid_index_invalid_type _i_5011298];
                        var __blank__ = _keys_5011286[@:invalid_index_invalid_type _i_5011298];
                        _pattern_5011314 = _field_5006665[(1 : stdgo.GoInt)]?.__copy__();
                        _syn_5011337 = (4 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 5011377i32;
                    } else if (__value__ == (5011377i32)) {
                        {
                            final __value__ = _c_5011293;
                            if (__value__ == ((69 : stdgo.GoInt32))) {
                                _gotoNext = 5011424i32;
                            } else if (__value__ == ((76 : stdgo.GoInt32))) {
                                _gotoNext = 5011478i32;
                            } else {
                                _gotoNext = 5011391i32;
                            };
                        };
                    } else if (__value__ == (5011391i32)) {
                        _i_5011298++;
                        _gotoNext = 5012566i32;
                    } else if (__value__ == (5011424i32)) {
                        _gotoNext = 5011545i32;
                    } else if (__value__ == (5011478i32)) {
                        _pattern_5011314 = stdgo._internal.regexp.Regexp_quoteMeta.quoteMeta(_pattern_5011314?.__copy__())?.__copy__();
                        _gotoNext = 5011545i32;
                    } else if (__value__ == (5011545i32)) {
                        _keys_5011545 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                        _values_5011545 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                        for (_key => _value in _flag_5009649) {
                            _keys_5011545 = (_keys_5011545.__append__(_key));
                            _values_5011545 = (_values_5011545.__append__(_value));
                        };
                        if ((0i32 : stdgo.GoInt) < (_keys_5011545.length)) {
                            _gotoNext = 5011635i32;
                        } else {
                            _gotoNext = 5011642i32;
                        };
                    } else if (__value__ == (5011557i32)) {
                        _i_5011557++;
                        _gotoNext = 5011636i32;
                    } else if (__value__ == (5011568i32)) {
                        _c_5011552 = _values_5011545[@:invalid_index_invalid_type _i_5011557];
                        var __blank__ = _keys_5011545[@:invalid_index_invalid_type _i_5011557];
                        _gotoNext = 5011574i32;
                    } else if (__value__ == (5011574i32)) {
                        {
                            final __value__ = _c_5011552;
                            if (__value__ == ((105 : stdgo.GoInt32))) {
                                _gotoNext = 5011589i32;
                            } else {
                                _gotoNext = 5011557i32;
                            };
                        };
                    } else if (__value__ == (5011589i32)) {
                        _syn_5011337 = (_syn_5011337 | ((1 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 5011557i32;
                    } else if (__value__ == (5011635i32)) {
                        _i_5011557 = 0i32;
                        _gotoNext = 5011636i32;
                    } else if (__value__ == (5011636i32)) {
                        if (_i_5011557 < (_keys_5011545.length)) {
                            _gotoNext = 5011568i32;
                        } else {
                            _gotoNext = 5011642i32;
                        };
                    } else if (__value__ == (5011642i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp__compile._compile(_pattern_5011314?.__copy__(), _syn_5011337, true);
                            _re_5011642 = __tmp__._0;
                            _err_5011646 = __tmp__._1;
                        };
                        if (_err_5011646 != null) {
                            _gotoNext = 5011698i32;
                        } else {
                            _gotoNext = 5011825i32;
                        };
                    } else if (__value__ == (5011698i32)) {
                        if (_shouldCompile_5010972) {
                            _gotoNext = 5011721i32;
                        } else {
                            _gotoNext = 5011800i32;
                        };
                    } else if (__value__ == (5011721i32)) {
                        _t.errorf(("%s:%d: %#q did not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5006047), stdgo.Go.toInterface(_pattern_5011314));
                        _gotoNext = 5011800i32;
                    } else if (__value__ == (5011800i32)) {
                        _i_5011298++;
                        _gotoNext = 5012566i32;
                    } else if (__value__ == (5011825i32)) {
                        if (!_shouldCompile_5010972) {
                            _gotoNext = 5011843i32;
                        } else {
                            _gotoNext = 5011943i32;
                        };
                    } else if (__value__ == (5011843i32)) {
                        _t.errorf(("%s:%d: %#q should not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5006047), stdgo.Go.toInterface(_pattern_5011314));
                        _i_5011298++;
                        _gotoNext = 5012566i32;
                    } else if (__value__ == (5011943i32)) {
                        _match_5011943 = _re_5011642.matchString(_text_5010912?.__copy__());
                        if (_match_5011943 != (_shouldMatch_5010987)) {
                            _gotoNext = 5012000i32;
                        } else {
                            _gotoNext = 5012132i32;
                        };
                    } else if (__value__ == (5012000i32)) {
                        _t.errorf(("%s:%d: %#q.Match(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5006047), stdgo.Go.toInterface(_pattern_5011314), stdgo.Go.toInterface(_text_5010912), stdgo.Go.toInterface(_match_5011943), stdgo.Go.toInterface(_shouldMatch_5010987));
                        _i_5011298++;
                        _gotoNext = 5012566i32;
                    } else if (__value__ == (5012132i32)) {
                        _have_5012132 = _re_5011642.findStringSubmatchIndex(_text_5010912?.__copy__());
                        if ((((_have_5012132.length) > (0 : stdgo.GoInt) : Bool)) != (_match_5011943)) {
                            _gotoNext = 5012204i32;
                        } else {
                            _gotoNext = 5012372i32;
                        };
                    } else if (__value__ == (5012204i32)) {
                        _t.errorf(("%s:%d: %#q.Match(%#q) = %v, but %#q.FindSubmatchIndex(%#q) = %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5006047), stdgo.Go.toInterface(_pattern_5011314), stdgo.Go.toInterface(_text_5010912), stdgo.Go.toInterface(_match_5011943), stdgo.Go.toInterface(_pattern_5011314), stdgo.Go.toInterface(_text_5010912), stdgo.Go.toInterface(_have_5012132));
                        _i_5011298++;
                        _gotoNext = 5012566i32;
                    } else if (__value__ == (5012372i32)) {
                        if (((_have_5012132.length) > (_pos_5011000.length) : Bool)) {
                            _gotoNext = 5012396i32;
                        } else {
                            _gotoNext = 5012433i32;
                        };
                    } else if (__value__ == (5012396i32)) {
                        _have_5012132 = (_have_5012132.__slice__(0, (_pos_5011000.length)) : stdgo.Slice<stdgo.GoInt>);
                        _gotoNext = 5012433i32;
                    } else if (__value__ == (5012433i32)) {
                        if (!stdgo._internal.regexp.Regexp__same._same(_have_5012132, _pos_5011000)) {
                            _gotoNext = 5012453i32;
                        } else {
                            _gotoNext = 5011298i32;
                        };
                    } else if (__value__ == (5012453i32)) {
                        _t.errorf(("%s:%d: %#q.FindSubmatchIndex(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5006047), stdgo.Go.toInterface(_pattern_5011314), stdgo.Go.toInterface(_text_5010912), stdgo.Go.toInterface(_have_5012132), stdgo.Go.toInterface(_pos_5011000));
                        _gotoNext = 5011298i32;
                    } else if (__value__ == (5012565i32)) {
                        _i_5011298 = 0i32;
                        _gotoNext = 5012566i32;
                    } else if (__value__ == (5012566i32)) {
                        if (_i_5011298 < (_keys_5011286.length)) {
                            _gotoNext = 5011309i32;
                        } else {
                            _gotoNext = 5012571i32;
                        };
                    } else if (__value__ == (5012571i32)) {
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
