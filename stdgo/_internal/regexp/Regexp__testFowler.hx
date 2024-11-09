package stdgo._internal.regexp;
function _testFowler(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _file:stdgo.GoString):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _err_5009411:stdgo.Error = (null : stdgo.Error);
            var _c_5009317:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _i_5009063 = @:invalid_type null;
            var _f_5008146:stdgo.GoString = ("" : stdgo.GoString);
            var _i_5004475:stdgo.GoInt = (0 : stdgo.GoInt);
            var _err_5003877:stdgo.Error = (null : stdgo.Error);
            var readingBreak = false;
            var _values_5009310 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var _i_5009322 = @:invalid_type null;
            var _keys_5009051 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            var _match_5009708:Bool = false;
            var _c_5009058:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _f_5003701:stdgo.Ref<stdgo._internal.os.Os_File.File> = (null : stdgo.Ref<stdgo._internal.os.Os_File.File>);
            var _pattern_5009079:stdgo.GoString = ("" : stdgo.GoString);
            var _flag_5007414:stdgo.GoString = ("" : stdgo.GoString);
            var _b_5003787:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
            var _err_5003704:stdgo.Error = (null : stdgo.Error);
            var _shouldMatch_5008752:Bool = false;
            var _shouldCompile_5008737:Bool = false;
            var _ok_5008733:Bool = false;
            var _lastRegexp_5003825:stdgo.GoString = ("" : stdgo.GoString);
            var _syn_5009102:stdgo._internal.regexp.syntax.Syntax_Flags.Flags = ((0 : stdgo.GoUInt16) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
            var _pos_5008765:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            var _ok_5007637:Bool = false;
            var _field_5004430:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
            var _re_5009407:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
            var _keys_5009310 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            var _values_5009051 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var _text_5008677:stdgo.GoString = ("" : stdgo.GoString);
            var _line_5003871:stdgo.GoString = ("" : stdgo.GoString);
            var _have_5009897:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            var _f_5004478:stdgo.GoString = ("" : stdgo.GoString);
            var _lineno_5003812:stdgo.GoInt = (0 : stdgo.GoInt);
            var _gotoNext = 0i32;
            var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
            while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
                {
                    final __value__ = _gotoNext;
                    if (__value__ == (0i32)) {
                        {
                            var __tmp__ = stdgo._internal.os.Os_open.open(_file?.__copy__());
                            _f_5003701 = __tmp__._0;
                            _err_5003704 = __tmp__._1;
                        };
                        if (_err_5003704 != null) {
                            _gotoNext = 5003740i32;
                        } else {
                            _gotoNext = 5003770i32;
                        };
                    } else if (__value__ == (5003740i32)) {
                        _t.error(stdgo.Go.toInterface(_err_5003704));
                        return;
                        _gotoNext = 5003770i32;
                    } else if (__value__ == (5003770i32)) {
                        __deferstack__.unshift(() -> _f_5003701.close());
                        _b_5003787 = stdgo._internal.bufio.Bufio_newReader.newReader(stdgo.Go.asInterface(_f_5003701));
                        _lineno_5003812 = (0 : stdgo.GoInt);
                        _lastRegexp_5003825 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 5003842i32;
                    } else if (__value__ == (5003842i32)) {
                        var __blank__ = 0i32;
                        readingBreak = false;
                        _gotoNext = 5003852i32;
                    } else if (__value__ == (5003852i32)) {
                        if (!readingBreak) {
                            _gotoNext = 5003856i32;
                        } else {
                            _gotoNext = 5010336i32;
                        };
                    } else if (__value__ == (5003856i32)) {
                        _lineno_5003812++;
                        {
                            var __tmp__ = _b_5003787.readString((10 : stdgo.GoUInt8));
                            _line_5003871 = __tmp__._0?.__copy__();
                            _err_5003877 = __tmp__._1;
                        };
                        if (_err_5003877 != null) {
                            _gotoNext = 5003919i32;
                        } else {
                            _gotoNext = 5004337i32;
                        };
                    } else if (__value__ == (5003919i32)) {
                        if (stdgo.Go.toInterface(_err_5003877) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                            _gotoNext = 5003941i32;
                        } else {
                            _gotoNext = 5003996i32;
                        };
                    } else if (__value__ == (5003941i32)) {
                        _t.errorf(("%s:%d: %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5003812), stdgo.Go.toInterface(_err_5003877));
                        _gotoNext = 5003996i32;
                    } else if (__value__ == (5003996i32)) {
                        readingBreak = true;
                        _gotoNext = 5003852i32;
                    } else if (__value__ == (5004337i32)) {
                        if (((_line_5003871[(0 : stdgo.GoInt)] == (35 : stdgo.GoUInt8)) || (_line_5003871[(0 : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 5004374i32;
                        } else {
                            _gotoNext = 5004402i32;
                        };
                    } else if (__value__ == (5004374i32)) {
                        _gotoNext = 5003852i32;
                    } else if (__value__ == (5004402i32)) {
                        _line_5003871 = (_line_5003871.__slice__(0, ((_line_5003871.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_5004430 = stdgo._internal.regexp.Regexp__notab._notab.findAllString(_line_5003871?.__copy__(), (-1 : stdgo.GoInt));
                        if ((0i32 : stdgo.GoInt) < (_field_5004430.length)) {
                            _gotoNext = 5004636i32;
                        } else {
                            _gotoNext = 5004641i32;
                        };
                    } else if (__value__ == (5004475i32)) {
                        _i_5004475++;
                        _gotoNext = 5004637i32;
                    } else if (__value__ == (5004495i32)) {
                        _f_5004478 = _field_5004430[(_i_5004475 : stdgo.GoInt)]?.__copy__();
                        if (_f_5004478 == (("NULL" : stdgo.GoString))) {
                            _gotoNext = 5004515i32;
                        } else {
                            _gotoNext = 5004543i32;
                        };
                    } else if (__value__ == (5004515i32)) {
                        _field_5004430[(_i_5004475 : stdgo.GoInt)] = stdgo.Go.str()?.__copy__();
                        _gotoNext = 5004543i32;
                    } else if (__value__ == (5004543i32)) {
                        if (_f_5004478 == (("NIL" : stdgo.GoString))) {
                            _gotoNext = 5004557i32;
                        } else {
                            _gotoNext = 5004475i32;
                        };
                    } else if (__value__ == (5004557i32)) {
                        _t.logf(("%s:%d: skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5003812), stdgo.Go.toInterface(_line_5003871));
                        _gotoNext = 5003852i32;
                    } else if (__value__ == (5004636i32)) {
                        {
                            final __tmp__0 = 0i32;
                            final __tmp__1 = _field_5004430[(0i32 : stdgo.GoInt)]?.__copy__();
                            _i_5004475 = __tmp__0;
                            _f_5004478 = __tmp__1;
                        };
                        _gotoNext = 5004637i32;
                    } else if (__value__ == (5004637i32)) {
                        if (_i_5004475 < (_field_5004430.length)) {
                            _gotoNext = 5004495i32;
                        } else {
                            _gotoNext = 5004641i32;
                        };
                    } else if (__value__ == (5004641i32)) {
                        if ((_field_5004430.length) == ((0 : stdgo.GoInt))) {
                            _gotoNext = 5004660i32;
                        } else {
                            _gotoNext = 5007414i32;
                        };
                    } else if (__value__ == (5004660i32)) {
                        _gotoNext = 5003852i32;
                    } else if (__value__ == (5007414i32)) {
                        _flag_5007414 = _field_5004430[(0 : stdgo.GoInt)]?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 5007433i32;
                    } else if (__value__ == (5007433i32)) {
                        {
                            final __value__ = _flag_5007414[(0 : stdgo.GoInt)];
                            if (__value__ == ((63 : stdgo.GoUInt8)) || __value__ == ((38 : stdgo.GoUInt8)) || __value__ == ((124 : stdgo.GoUInt8)) || __value__ == ((59 : stdgo.GoUInt8)) || __value__ == ((123 : stdgo.GoUInt8)) || __value__ == ((125 : stdgo.GoUInt8))) {
                                _gotoNext = 5007452i32;
                            } else if (__value__ == ((58 : stdgo.GoUInt8))) {
                                _gotoNext = 5007620i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8)) || __value__ == ((78 : stdgo.GoUInt8)) || __value__ == ((84 : stdgo.GoUInt8)) || __value__ == ((48 : stdgo.GoUInt8)) || __value__ == ((49 : stdgo.GoUInt8)) || __value__ == ((50 : stdgo.GoUInt8)) || __value__ == ((51 : stdgo.GoUInt8)) || __value__ == ((52 : stdgo.GoUInt8)) || __value__ == ((53 : stdgo.GoUInt8)) || __value__ == ((54 : stdgo.GoUInt8)) || __value__ == ((55 : stdgo.GoUInt8)) || __value__ == ((56 : stdgo.GoUInt8)) || __value__ == ((57 : stdgo.GoUInt8))) {
                                _gotoNext = 5007756i32;
                            } else {
                                _gotoNext = 5007959i32;
                            };
                        };
                    } else if (__value__ == (5007452i32)) {
                        _flag_5007414 = (_flag_5007414.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        if (_flag_5007414 == (stdgo.Go.str())) {
                            _gotoNext = 5007590i32;
                        } else {
                            _gotoNext = 5007959i32;
                        };
                    } else if (__value__ == (5007590i32)) {
                        _gotoNext = 5003852i32;
                    } else if (__value__ == (5007620i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_flag_5007414.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (":" : stdgo.GoString));
                                _flag_5007414 = __tmp__._1?.__copy__();
                                _ok_5007637 = __tmp__._2;
                            };
                            if (!_ok_5007637) {
                                _gotoNext = 5007697i32;
                            } else {
                                _gotoNext = 5007959i32;
                            };
                        };
                    } else if (__value__ == (5007697i32)) {
                        _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line_5003871));
                        _gotoNext = 5003852i32;
                    } else if (__value__ == (5007756i32)) {
                        _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line_5003871));
                        _gotoNext = 5003852i32;
                    } else if (__value__ == (5007959i32)) {
                        if (((_field_5004430.length) < (4 : stdgo.GoInt) : Bool)) {
                            _gotoNext = 5007977i32;
                        } else {
                            _gotoNext = 5008110i32;
                        };
                    } else if (__value__ == (5007977i32)) {
                        _t.errorf(("%s:%d: too few fields: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5003812), stdgo.Go.toInterface(_line_5003871));
                        _gotoNext = 5003852i32;
                    } else if (__value__ == (5008110i32)) {
                        if (stdgo._internal.strings.Strings_contains.contains(_flag_5007414?.__copy__(), ("$" : stdgo.GoString))) {
                            _gotoNext = 5008141i32;
                        } else {
                            _gotoNext = 5008560i32;
                        };
                    } else if (__value__ == (5008141i32)) {
                        _f_5008146 = ((("\"" : stdgo.GoString) + _field_5004430[(1 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_f_5008146?.__copy__());
                                _field_5004430[(1 : stdgo.GoInt)] = __tmp__._0?.__copy__();
                                _err_5003877 = __tmp__._1;
                            };
                            if (_err_5003877 != null) {
                                _gotoNext = 5008225i32;
                            } else {
                                _gotoNext = 5008293i32;
                            };
                        };
                    } else if (__value__ == (5008225i32)) {
                        _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5003812), stdgo.Go.toInterface(_f_5008146));
                        _gotoNext = 5008293i32;
                    } else if (__value__ == (5008293i32)) {
                        _f_5008146 = ((("\"" : stdgo.GoString) + _field_5004430[(2 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_f_5008146?.__copy__());
                                _field_5004430[(2 : stdgo.GoInt)] = __tmp__._0?.__copy__();
                                _err_5003877 = __tmp__._1;
                            };
                            if (_err_5003877 != null) {
                                _gotoNext = 5008371i32;
                            } else {
                                _gotoNext = 5008560i32;
                            };
                        };
                    } else if (__value__ == (5008371i32)) {
                        _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5003812), stdgo.Go.toInterface(_f_5008146));
                        _gotoNext = 5008560i32;
                    } else if (__value__ == (5008560i32)) {
                        if (_field_5004430[(1 : stdgo.GoInt)] == (("SAME" : stdgo.GoString))) {
                            _gotoNext = 5008582i32;
                        } else {
                            _gotoNext = 5008615i32;
                        };
                    } else if (__value__ == (5008582i32)) {
                        _field_5004430[(1 : stdgo.GoInt)] = _lastRegexp_5003825?.__copy__();
                        _gotoNext = 5008615i32;
                    } else if (__value__ == (5008615i32)) {
                        _lastRegexp_5003825 = _field_5004430[(1 : stdgo.GoInt)]?.__copy__();
                        _text_5008677 = _field_5004430[(2 : stdgo.GoInt)]?.__copy__();
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp__parseFowlerResult._parseFowlerResult(_field_5004430[(3 : stdgo.GoInt)]?.__copy__());
                            _ok_5008733 = __tmp__._0;
                            _shouldCompile_5008737 = __tmp__._1;
                            _shouldMatch_5008752 = __tmp__._2;
                            _pos_5008765 = __tmp__._3;
                        };
                        if (!_ok_5008733) {
                            _gotoNext = 5008809i32;
                        } else {
                            _gotoNext = 5008965i32;
                        };
                    } else if (__value__ == (5008809i32)) {
                        _t.errorf(("%s:%d: cannot parse result %#q" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5003812), stdgo.Go.toInterface(_field_5004430[(3 : stdgo.GoInt)]));
                        _gotoNext = 5003852i32;
                    } else if (__value__ == (5008965i32)) {
                        _gotoNext = 5008965i32;
                        _keys_5009051 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                        _values_5009051 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                        for (_key => _value in _flag_5007414) {
                            _keys_5009051 = (_keys_5009051.__append__(_key));
                            _values_5009051 = (_values_5009051.__append__(_value));
                        };
                        if ((0i32 : stdgo.GoInt) < (_keys_5009051.length)) {
                            _gotoNext = 5010330i32;
                        } else {
                            _gotoNext = 5010336i32;
                        };
                    } else if (__value__ == (5009063i32)) {
                        _i_5009063++;
                        _gotoNext = 5010331i32;
                    } else if (__value__ == (5009074i32)) {
                        _c_5009058 = _values_5009051[@:invalid_index_invalid_type _i_5009063];
                        var __blank__ = _keys_5009051[@:invalid_index_invalid_type _i_5009063];
                        _pattern_5009079 = _field_5004430[(1 : stdgo.GoInt)]?.__copy__();
                        _syn_5009102 = (4 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        var __blank__ = 0i32;
                        _gotoNext = 5009142i32;
                    } else if (__value__ == (5009142i32)) {
                        {
                            final __value__ = _c_5009058;
                            if (__value__ == ((69 : stdgo.GoInt32))) {
                                _gotoNext = 5009189i32;
                            } else if (__value__ == ((76 : stdgo.GoInt32))) {
                                _gotoNext = 5009243i32;
                            } else {
                                _gotoNext = 5009156i32;
                            };
                        };
                    } else if (__value__ == (5009156i32)) {
                        _i_5009063++;
                        _gotoNext = 5010331i32;
                    } else if (__value__ == (5009189i32)) {
                        _gotoNext = 5009310i32;
                    } else if (__value__ == (5009243i32)) {
                        _pattern_5009079 = stdgo._internal.regexp.Regexp_quoteMeta.quoteMeta(_pattern_5009079?.__copy__())?.__copy__();
                        _gotoNext = 5009310i32;
                    } else if (__value__ == (5009310i32)) {
                        _keys_5009310 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                        _values_5009310 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                        for (_key => _value in _flag_5007414) {
                            _keys_5009310 = (_keys_5009310.__append__(_key));
                            _values_5009310 = (_values_5009310.__append__(_value));
                        };
                        if ((0i32 : stdgo.GoInt) < (_keys_5009310.length)) {
                            _gotoNext = 5009400i32;
                        } else {
                            _gotoNext = 5009407i32;
                        };
                    } else if (__value__ == (5009322i32)) {
                        _i_5009322++;
                        _gotoNext = 5009401i32;
                    } else if (__value__ == (5009333i32)) {
                        _c_5009317 = _values_5009310[@:invalid_index_invalid_type _i_5009322];
                        var __blank__ = _keys_5009310[@:invalid_index_invalid_type _i_5009322];
                        var __blank__ = 0i32;
                        _gotoNext = 5009339i32;
                    } else if (__value__ == (5009339i32)) {
                        {
                            final __value__ = _c_5009317;
                            if (__value__ == ((105 : stdgo.GoInt32))) {
                                _gotoNext = 5009354i32;
                            } else {
                                _gotoNext = 5009322i32;
                            };
                        };
                    } else if (__value__ == (5009354i32)) {
                        _syn_5009102 = (_syn_5009102 | ((1 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 5009322i32;
                    } else if (__value__ == (5009400i32)) {
                        _i_5009322 = 0i32;
                        _gotoNext = 5009401i32;
                    } else if (__value__ == (5009401i32)) {
                        if (_i_5009322 < (_keys_5009310.length)) {
                            _gotoNext = 5009333i32;
                        } else {
                            _gotoNext = 5009407i32;
                        };
                    } else if (__value__ == (5009407i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp__compile._compile(_pattern_5009079?.__copy__(), _syn_5009102, true);
                            _re_5009407 = __tmp__._0;
                            _err_5009411 = __tmp__._1;
                        };
                        if (_err_5009411 != null) {
                            _gotoNext = 5009463i32;
                        } else {
                            _gotoNext = 5009590i32;
                        };
                    } else if (__value__ == (5009463i32)) {
                        if (_shouldCompile_5008737) {
                            _gotoNext = 5009486i32;
                        } else {
                            _gotoNext = 5009565i32;
                        };
                    } else if (__value__ == (5009486i32)) {
                        _t.errorf(("%s:%d: %#q did not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5003812), stdgo.Go.toInterface(_pattern_5009079));
                        _gotoNext = 5009565i32;
                    } else if (__value__ == (5009565i32)) {
                        _i_5009063++;
                        _gotoNext = 5010331i32;
                    } else if (__value__ == (5009590i32)) {
                        if (!_shouldCompile_5008737) {
                            _gotoNext = 5009608i32;
                        } else {
                            _gotoNext = 5009708i32;
                        };
                    } else if (__value__ == (5009608i32)) {
                        _t.errorf(("%s:%d: %#q should not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5003812), stdgo.Go.toInterface(_pattern_5009079));
                        _i_5009063++;
                        _gotoNext = 5010331i32;
                    } else if (__value__ == (5009708i32)) {
                        _match_5009708 = _re_5009407.matchString(_text_5008677?.__copy__());
                        if (_match_5009708 != (_shouldMatch_5008752)) {
                            _gotoNext = 5009765i32;
                        } else {
                            _gotoNext = 5009897i32;
                        };
                    } else if (__value__ == (5009765i32)) {
                        _t.errorf(("%s:%d: %#q.Match(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5003812), stdgo.Go.toInterface(_pattern_5009079), stdgo.Go.toInterface(_text_5008677), stdgo.Go.toInterface(_match_5009708), stdgo.Go.toInterface(_shouldMatch_5008752));
                        _i_5009063++;
                        _gotoNext = 5010331i32;
                    } else if (__value__ == (5009897i32)) {
                        _have_5009897 = _re_5009407.findStringSubmatchIndex(_text_5008677?.__copy__());
                        if ((((_have_5009897.length) > (0 : stdgo.GoInt) : Bool)) != (_match_5009708)) {
                            _gotoNext = 5009969i32;
                        } else {
                            _gotoNext = 5010137i32;
                        };
                    } else if (__value__ == (5009969i32)) {
                        _t.errorf(("%s:%d: %#q.Match(%#q) = %v, but %#q.FindSubmatchIndex(%#q) = %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5003812), stdgo.Go.toInterface(_pattern_5009079), stdgo.Go.toInterface(_text_5008677), stdgo.Go.toInterface(_match_5009708), stdgo.Go.toInterface(_pattern_5009079), stdgo.Go.toInterface(_text_5008677), stdgo.Go.toInterface(_have_5009897));
                        _i_5009063++;
                        _gotoNext = 5010331i32;
                    } else if (__value__ == (5010137i32)) {
                        if (((_have_5009897.length) > (_pos_5008765.length) : Bool)) {
                            _gotoNext = 5010161i32;
                        } else {
                            _gotoNext = 5010198i32;
                        };
                    } else if (__value__ == (5010161i32)) {
                        _have_5009897 = (_have_5009897.__slice__(0, (_pos_5008765.length)) : stdgo.Slice<stdgo.GoInt>);
                        _gotoNext = 5010198i32;
                    } else if (__value__ == (5010198i32)) {
                        if (!stdgo._internal.regexp.Regexp__same._same(_have_5009897, _pos_5008765)) {
                            _gotoNext = 5010218i32;
                        } else {
                            _gotoNext = 5009063i32;
                        };
                    } else if (__value__ == (5010218i32)) {
                        _t.errorf(("%s:%d: %#q.FindSubmatchIndex(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5003812), stdgo.Go.toInterface(_pattern_5009079), stdgo.Go.toInterface(_text_5008677), stdgo.Go.toInterface(_have_5009897), stdgo.Go.toInterface(_pos_5008765));
                        _gotoNext = 5009063i32;
                    } else if (__value__ == (5010330i32)) {
                        _i_5009063 = 0i32;
                        _gotoNext = 5010331i32;
                    } else if (__value__ == (5010331i32)) {
                        if (_i_5009063 < (_keys_5009051.length)) {
                            _gotoNext = 5009074i32;
                        } else {
                            _gotoNext = 5010336i32;
                        };
                    } else if (__value__ == (5010336i32)) {
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
