package stdgo._internal.regexp;
function _testFowler(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _file:stdgo.GoString):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _c_5032932:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _keys_5032925 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            var readingBreak = false;
            var _lineno_5027427:stdgo.GoInt = (0 : stdgo.GoInt);
            var _match_5033323:Bool = false;
            var _err_5033026:stdgo.Error = (null : stdgo.Error);
            var _c_5032673:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _line_5027486:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRegexp_5027440:stdgo.GoString = ("" : stdgo.GoString);
            var _have_5033512:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            var _keys_5032666 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            var _text_5032292:stdgo.GoString = ("" : stdgo.GoString);
            var _field_5028045:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
            var _b_5027402:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
            var _pattern_5032694:stdgo.GoString = ("" : stdgo.GoString);
            var _re_5033022:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
            var _i_5032678 = @:invalid_type null;
            var _pos_5032380:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            var _f_5028093:stdgo.GoString = ("" : stdgo.GoString);
            var _syn_5032717:stdgo._internal.regexp.syntax.Syntax_Flags.Flags = ((0 : stdgo.GoUInt16) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
            var _values_5032666 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var _ok_5032348:Bool = false;
            var _i_5028090:stdgo.GoInt = (0 : stdgo.GoInt);
            var _i_5032937 = @:invalid_type null;
            var _shouldMatch_5032367:Bool = false;
            var _ok_5031252:Bool = false;
            var _flag_5031029:stdgo.GoString = ("" : stdgo.GoString);
            var _f_5027316:stdgo.Ref<stdgo._internal.os.Os_File.File> = (null : stdgo.Ref<stdgo._internal.os.Os_File.File>);
            var _values_5032925 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var _err_5027492:stdgo.Error = (null : stdgo.Error);
            var _shouldCompile_5032352:Bool = false;
            var _f_5031761:stdgo.GoString = ("" : stdgo.GoString);
            var _err_5027319:stdgo.Error = (null : stdgo.Error);
            var _gotoNext = 0i32;
            var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
            while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
                {
                    final __value__ = _gotoNext;
                    if (__value__ == (0i32)) {
                        {
                            var __tmp__ = stdgo._internal.os.Os_open.open(_file?.__copy__());
                            _f_5027316 = __tmp__._0;
                            _err_5027319 = __tmp__._1;
                        };
                        if (_err_5027319 != null) {
                            _gotoNext = 5027355i32;
                        } else {
                            _gotoNext = 5027385i32;
                        };
                    } else if (__value__ == (5027355i32)) {
                        _t.error(stdgo.Go.toInterface(_err_5027319));
                        return;
                        _gotoNext = 5027385i32;
                    } else if (__value__ == (5027385i32)) {
                        __deferstack__.unshift(() -> _f_5027316.close());
                        _b_5027402 = stdgo._internal.bufio.Bufio_newReader.newReader(stdgo.Go.asInterface(_f_5027316));
                        _lineno_5027427 = (0 : stdgo.GoInt);
                        _lastRegexp_5027440 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 5027457i32;
                    } else if (__value__ == (5027457i32)) {
                        var __blank__ = 0i32;
                        readingBreak = false;
                        _gotoNext = 5027467i32;
                    } else if (__value__ == (5027467i32)) {
                        if (!readingBreak) {
                            _gotoNext = 5027471i32;
                        } else {
                            _gotoNext = 5033951i32;
                        };
                    } else if (__value__ == (5027471i32)) {
                        _lineno_5027427++;
                        {
                            var __tmp__ = _b_5027402.readString((10 : stdgo.GoUInt8));
                            _line_5027486 = __tmp__._0?.__copy__();
                            _err_5027492 = __tmp__._1;
                        };
                        if (_err_5027492 != null) {
                            _gotoNext = 5027534i32;
                        } else {
                            _gotoNext = 5027952i32;
                        };
                    } else if (__value__ == (5027534i32)) {
                        if (stdgo.Go.toInterface(_err_5027492) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                            _gotoNext = 5027556i32;
                        } else {
                            _gotoNext = 5027611i32;
                        };
                    } else if (__value__ == (5027556i32)) {
                        _t.errorf(("%s:%d: %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5027427), stdgo.Go.toInterface(_err_5027492));
                        _gotoNext = 5027611i32;
                    } else if (__value__ == (5027611i32)) {
                        readingBreak = true;
                        _gotoNext = 5027467i32;
                    } else if (__value__ == (5027952i32)) {
                        if (((_line_5027486[(0 : stdgo.GoInt)] == (35 : stdgo.GoUInt8)) || (_line_5027486[(0 : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 5027989i32;
                        } else {
                            _gotoNext = 5028017i32;
                        };
                    } else if (__value__ == (5027989i32)) {
                        _gotoNext = 5027467i32;
                    } else if (__value__ == (5028017i32)) {
                        _line_5027486 = (_line_5027486.__slice__(0, ((_line_5027486.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_5028045 = stdgo._internal.regexp.Regexp__notab._notab.findAllString(_line_5027486?.__copy__(), (-1 : stdgo.GoInt));
                        if ((0i32 : stdgo.GoInt) < (_field_5028045.length)) {
                            _gotoNext = 5028251i32;
                        } else {
                            _gotoNext = 5028256i32;
                        };
                    } else if (__value__ == (5028090i32)) {
                        _i_5028090++;
                        _gotoNext = 5028252i32;
                    } else if (__value__ == (5028110i32)) {
                        _f_5028093 = _field_5028045[(_i_5028090 : stdgo.GoInt)]?.__copy__();
                        if (_f_5028093 == (("NULL" : stdgo.GoString))) {
                            _gotoNext = 5028130i32;
                        } else {
                            _gotoNext = 5028158i32;
                        };
                    } else if (__value__ == (5028130i32)) {
                        _field_5028045[(_i_5028090 : stdgo.GoInt)] = stdgo.Go.str()?.__copy__();
                        _gotoNext = 5028158i32;
                    } else if (__value__ == (5028158i32)) {
                        if (_f_5028093 == (("NIL" : stdgo.GoString))) {
                            _gotoNext = 5028172i32;
                        } else {
                            _gotoNext = 5028090i32;
                        };
                    } else if (__value__ == (5028172i32)) {
                        _t.logf(("%s:%d: skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5027427), stdgo.Go.toInterface(_line_5027486));
                        _gotoNext = 5027467i32;
                    } else if (__value__ == (5028251i32)) {
                        {
                            final __tmp__0 = 0i32;
                            final __tmp__1 = _field_5028045[(0i32 : stdgo.GoInt)]?.__copy__();
                            _i_5028090 = __tmp__0;
                            _f_5028093 = __tmp__1;
                        };
                        _gotoNext = 5028252i32;
                    } else if (__value__ == (5028252i32)) {
                        if (_i_5028090 < (_field_5028045.length)) {
                            _gotoNext = 5028110i32;
                        } else {
                            _gotoNext = 5028256i32;
                        };
                    } else if (__value__ == (5028256i32)) {
                        if ((_field_5028045.length) == ((0 : stdgo.GoInt))) {
                            _gotoNext = 5028275i32;
                        } else {
                            _gotoNext = 5031029i32;
                        };
                    } else if (__value__ == (5028275i32)) {
                        _gotoNext = 5027467i32;
                    } else if (__value__ == (5031029i32)) {
                        _flag_5031029 = _field_5028045[(0 : stdgo.GoInt)]?.__copy__();
                        _gotoNext = 5031048i32;
                    } else if (__value__ == (5031048i32)) {
                        {
                            final __value__ = _flag_5031029[(0 : stdgo.GoInt)];
                            if (__value__ == ((63 : stdgo.GoUInt8)) || __value__ == ((38 : stdgo.GoUInt8)) || __value__ == ((124 : stdgo.GoUInt8)) || __value__ == ((59 : stdgo.GoUInt8)) || __value__ == ((123 : stdgo.GoUInt8)) || __value__ == ((125 : stdgo.GoUInt8))) {
                                _gotoNext = 5031067i32;
                            } else if (__value__ == ((58 : stdgo.GoUInt8))) {
                                _gotoNext = 5031235i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8)) || __value__ == ((78 : stdgo.GoUInt8)) || __value__ == ((84 : stdgo.GoUInt8)) || __value__ == ((48 : stdgo.GoUInt8)) || __value__ == ((49 : stdgo.GoUInt8)) || __value__ == ((50 : stdgo.GoUInt8)) || __value__ == ((51 : stdgo.GoUInt8)) || __value__ == ((52 : stdgo.GoUInt8)) || __value__ == ((53 : stdgo.GoUInt8)) || __value__ == ((54 : stdgo.GoUInt8)) || __value__ == ((55 : stdgo.GoUInt8)) || __value__ == ((56 : stdgo.GoUInt8)) || __value__ == ((57 : stdgo.GoUInt8))) {
                                _gotoNext = 5031371i32;
                            } else {
                                _gotoNext = 5031574i32;
                            };
                        };
                    } else if (__value__ == (5031067i32)) {
                        _flag_5031029 = (_flag_5031029.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        if (_flag_5031029 == (stdgo.Go.str())) {
                            _gotoNext = 5031205i32;
                        } else {
                            _gotoNext = 5031574i32;
                        };
                    } else if (__value__ == (5031205i32)) {
                        _gotoNext = 5027467i32;
                    } else if (__value__ == (5031235i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_flag_5031029.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (":" : stdgo.GoString));
                                _flag_5031029 = __tmp__._1?.__copy__();
                                _ok_5031252 = __tmp__._2;
                            };
                            if (!_ok_5031252) {
                                _gotoNext = 5031312i32;
                            } else {
                                _gotoNext = 5031574i32;
                            };
                        };
                    } else if (__value__ == (5031312i32)) {
                        _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line_5027486));
                        _gotoNext = 5027467i32;
                    } else if (__value__ == (5031371i32)) {
                        _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line_5027486));
                        _gotoNext = 5027467i32;
                    } else if (__value__ == (5031574i32)) {
                        if (((_field_5028045.length) < (4 : stdgo.GoInt) : Bool)) {
                            _gotoNext = 5031592i32;
                        } else {
                            _gotoNext = 5031725i32;
                        };
                    } else if (__value__ == (5031592i32)) {
                        _t.errorf(("%s:%d: too few fields: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5027427), stdgo.Go.toInterface(_line_5027486));
                        _gotoNext = 5027467i32;
                    } else if (__value__ == (5031725i32)) {
                        if (stdgo._internal.strings.Strings_contains.contains(_flag_5031029?.__copy__(), ("$" : stdgo.GoString))) {
                            _gotoNext = 5031756i32;
                        } else {
                            _gotoNext = 5032175i32;
                        };
                    } else if (__value__ == (5031756i32)) {
                        _f_5031761 = ((("\"" : stdgo.GoString) + _field_5028045[(1 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_f_5031761?.__copy__());
                                _field_5028045[(1 : stdgo.GoInt)] = __tmp__._0?.__copy__();
                                _err_5027492 = __tmp__._1;
                            };
                            if (_err_5027492 != null) {
                                _gotoNext = 5031840i32;
                            } else {
                                _gotoNext = 5031908i32;
                            };
                        };
                    } else if (__value__ == (5031840i32)) {
                        _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5027427), stdgo.Go.toInterface(_f_5031761));
                        _gotoNext = 5031908i32;
                    } else if (__value__ == (5031908i32)) {
                        _f_5031761 = ((("\"" : stdgo.GoString) + _field_5028045[(2 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_f_5031761?.__copy__());
                                _field_5028045[(2 : stdgo.GoInt)] = __tmp__._0?.__copy__();
                                _err_5027492 = __tmp__._1;
                            };
                            if (_err_5027492 != null) {
                                _gotoNext = 5031986i32;
                            } else {
                                _gotoNext = 5032175i32;
                            };
                        };
                    } else if (__value__ == (5031986i32)) {
                        _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5027427), stdgo.Go.toInterface(_f_5031761));
                        _gotoNext = 5032175i32;
                    } else if (__value__ == (5032175i32)) {
                        if (_field_5028045[(1 : stdgo.GoInt)] == (("SAME" : stdgo.GoString))) {
                            _gotoNext = 5032197i32;
                        } else {
                            _gotoNext = 5032230i32;
                        };
                    } else if (__value__ == (5032197i32)) {
                        _field_5028045[(1 : stdgo.GoInt)] = _lastRegexp_5027440?.__copy__();
                        _gotoNext = 5032230i32;
                    } else if (__value__ == (5032230i32)) {
                        _lastRegexp_5027440 = _field_5028045[(1 : stdgo.GoInt)]?.__copy__();
                        _text_5032292 = _field_5028045[(2 : stdgo.GoInt)]?.__copy__();
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp__parseFowlerResult._parseFowlerResult(_field_5028045[(3 : stdgo.GoInt)]?.__copy__());
                            _ok_5032348 = __tmp__._0;
                            _shouldCompile_5032352 = __tmp__._1;
                            _shouldMatch_5032367 = __tmp__._2;
                            _pos_5032380 = __tmp__._3;
                        };
                        if (!_ok_5032348) {
                            _gotoNext = 5032424i32;
                        } else {
                            _gotoNext = 5032580i32;
                        };
                    } else if (__value__ == (5032424i32)) {
                        _t.errorf(("%s:%d: cannot parse result %#q" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5027427), stdgo.Go.toInterface(_field_5028045[(3 : stdgo.GoInt)]));
                        _gotoNext = 5027467i32;
                    } else if (__value__ == (5032580i32)) {
                        _gotoNext = 5032580i32;
                        _keys_5032666 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                        _values_5032666 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                        for (_key => _value in _flag_5031029) {
                            _keys_5032666 = (_keys_5032666.__append__(_key));
                            _values_5032666 = (_values_5032666.__append__(_value));
                        };
                        if ((0i32 : stdgo.GoInt) < (_keys_5032666.length)) {
                            _gotoNext = 5033945i32;
                        } else {
                            _gotoNext = 5033951i32;
                        };
                    } else if (__value__ == (5032678i32)) {
                        _i_5032678++;
                        _gotoNext = 5033946i32;
                    } else if (__value__ == (5032689i32)) {
                        _c_5032673 = _values_5032666[@:invalid_index_invalid_type _i_5032678];
                        var __blank__ = _keys_5032666[@:invalid_index_invalid_type _i_5032678];
                        _pattern_5032694 = _field_5028045[(1 : stdgo.GoInt)]?.__copy__();
                        _syn_5032717 = (4 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 5032757i32;
                    } else if (__value__ == (5032757i32)) {
                        {
                            final __value__ = _c_5032673;
                            if (__value__ == ((69 : stdgo.GoInt32))) {
                                _gotoNext = 5032804i32;
                            } else if (__value__ == ((76 : stdgo.GoInt32))) {
                                _gotoNext = 5032858i32;
                            } else {
                                _gotoNext = 5032771i32;
                            };
                        };
                    } else if (__value__ == (5032771i32)) {
                        _i_5032678++;
                        _gotoNext = 5033946i32;
                    } else if (__value__ == (5032804i32)) {
                        _gotoNext = 5032925i32;
                    } else if (__value__ == (5032858i32)) {
                        _pattern_5032694 = stdgo._internal.regexp.Regexp_quoteMeta.quoteMeta(_pattern_5032694?.__copy__())?.__copy__();
                        _gotoNext = 5032925i32;
                    } else if (__value__ == (5032925i32)) {
                        _keys_5032925 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                        _values_5032925 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                        for (_key => _value in _flag_5031029) {
                            _keys_5032925 = (_keys_5032925.__append__(_key));
                            _values_5032925 = (_values_5032925.__append__(_value));
                        };
                        if ((0i32 : stdgo.GoInt) < (_keys_5032925.length)) {
                            _gotoNext = 5033015i32;
                        } else {
                            _gotoNext = 5033022i32;
                        };
                    } else if (__value__ == (5032937i32)) {
                        _i_5032937++;
                        _gotoNext = 5033016i32;
                    } else if (__value__ == (5032948i32)) {
                        _c_5032932 = _values_5032925[@:invalid_index_invalid_type _i_5032937];
                        var __blank__ = _keys_5032925[@:invalid_index_invalid_type _i_5032937];
                        _gotoNext = 5032954i32;
                    } else if (__value__ == (5032954i32)) {
                        {
                            final __value__ = _c_5032932;
                            if (__value__ == ((105 : stdgo.GoInt32))) {
                                _gotoNext = 5032969i32;
                            } else {
                                _gotoNext = 5032937i32;
                            };
                        };
                    } else if (__value__ == (5032969i32)) {
                        _syn_5032717 = (_syn_5032717 | ((1 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 5032937i32;
                    } else if (__value__ == (5033015i32)) {
                        _i_5032937 = 0i32;
                        _gotoNext = 5033016i32;
                    } else if (__value__ == (5033016i32)) {
                        if (_i_5032937 < (_keys_5032925.length)) {
                            _gotoNext = 5032948i32;
                        } else {
                            _gotoNext = 5033022i32;
                        };
                    } else if (__value__ == (5033022i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp__compile._compile(_pattern_5032694?.__copy__(), _syn_5032717, true);
                            _re_5033022 = __tmp__._0;
                            _err_5033026 = __tmp__._1;
                        };
                        if (_err_5033026 != null) {
                            _gotoNext = 5033078i32;
                        } else {
                            _gotoNext = 5033205i32;
                        };
                    } else if (__value__ == (5033078i32)) {
                        if (_shouldCompile_5032352) {
                            _gotoNext = 5033101i32;
                        } else {
                            _gotoNext = 5033180i32;
                        };
                    } else if (__value__ == (5033101i32)) {
                        _t.errorf(("%s:%d: %#q did not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5027427), stdgo.Go.toInterface(_pattern_5032694));
                        _gotoNext = 5033180i32;
                    } else if (__value__ == (5033180i32)) {
                        _i_5032678++;
                        _gotoNext = 5033946i32;
                    } else if (__value__ == (5033205i32)) {
                        if (!_shouldCompile_5032352) {
                            _gotoNext = 5033223i32;
                        } else {
                            _gotoNext = 5033323i32;
                        };
                    } else if (__value__ == (5033223i32)) {
                        _t.errorf(("%s:%d: %#q should not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5027427), stdgo.Go.toInterface(_pattern_5032694));
                        _i_5032678++;
                        _gotoNext = 5033946i32;
                    } else if (__value__ == (5033323i32)) {
                        _match_5033323 = _re_5033022.matchString(_text_5032292?.__copy__());
                        if (_match_5033323 != (_shouldMatch_5032367)) {
                            _gotoNext = 5033380i32;
                        } else {
                            _gotoNext = 5033512i32;
                        };
                    } else if (__value__ == (5033380i32)) {
                        _t.errorf(("%s:%d: %#q.Match(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5027427), stdgo.Go.toInterface(_pattern_5032694), stdgo.Go.toInterface(_text_5032292), stdgo.Go.toInterface(_match_5033323), stdgo.Go.toInterface(_shouldMatch_5032367));
                        _i_5032678++;
                        _gotoNext = 5033946i32;
                    } else if (__value__ == (5033512i32)) {
                        _have_5033512 = _re_5033022.findStringSubmatchIndex(_text_5032292?.__copy__());
                        if ((((_have_5033512.length) > (0 : stdgo.GoInt) : Bool)) != (_match_5033323)) {
                            _gotoNext = 5033584i32;
                        } else {
                            _gotoNext = 5033752i32;
                        };
                    } else if (__value__ == (5033584i32)) {
                        _t.errorf(("%s:%d: %#q.Match(%#q) = %v, but %#q.FindSubmatchIndex(%#q) = %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5027427), stdgo.Go.toInterface(_pattern_5032694), stdgo.Go.toInterface(_text_5032292), stdgo.Go.toInterface(_match_5033323), stdgo.Go.toInterface(_pattern_5032694), stdgo.Go.toInterface(_text_5032292), stdgo.Go.toInterface(_have_5033512));
                        _i_5032678++;
                        _gotoNext = 5033946i32;
                    } else if (__value__ == (5033752i32)) {
                        if (((_have_5033512.length) > (_pos_5032380.length) : Bool)) {
                            _gotoNext = 5033776i32;
                        } else {
                            _gotoNext = 5033813i32;
                        };
                    } else if (__value__ == (5033776i32)) {
                        _have_5033512 = (_have_5033512.__slice__(0, (_pos_5032380.length)) : stdgo.Slice<stdgo.GoInt>);
                        _gotoNext = 5033813i32;
                    } else if (__value__ == (5033813i32)) {
                        if (!stdgo._internal.regexp.Regexp__same._same(_have_5033512, _pos_5032380)) {
                            _gotoNext = 5033833i32;
                        } else {
                            _gotoNext = 5032678i32;
                        };
                    } else if (__value__ == (5033833i32)) {
                        _t.errorf(("%s:%d: %#q.FindSubmatchIndex(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5027427), stdgo.Go.toInterface(_pattern_5032694), stdgo.Go.toInterface(_text_5032292), stdgo.Go.toInterface(_have_5033512), stdgo.Go.toInterface(_pos_5032380));
                        _gotoNext = 5032678i32;
                    } else if (__value__ == (5033945i32)) {
                        _i_5032678 = 0i32;
                        _gotoNext = 5033946i32;
                    } else if (__value__ == (5033946i32)) {
                        if (_i_5032678 < (_keys_5032666.length)) {
                            _gotoNext = 5032689i32;
                        } else {
                            _gotoNext = 5033951i32;
                        };
                    } else if (__value__ == (5033951i32)) {
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
