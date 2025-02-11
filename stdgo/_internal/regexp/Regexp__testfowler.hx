package stdgo._internal.regexp;
function _testFowler(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _file:stdgo.GoString):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _i_4912475 = @:invalid_type null;
            var _keys_4912204 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            var _field_4907583:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
            var _syn_4912255:stdgo._internal.regexp.syntax.Syntax_flags.Flags = ((0 : stdgo.GoUInt16) : stdgo._internal.regexp.syntax.Syntax_flags.Flags);
            var _i_4912216 = @:invalid_type null;
            var _lastRegexp_4906978:stdgo.GoString = ("" : stdgo.GoString);
            var _re_4912560:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
            var _have_4913050:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            var _match_4912861:Bool = false;
            var _line_4907024:stdgo.GoString = ("" : stdgo.GoString);
            var _shouldMatch_4911905:Bool = false;
            var _ok_4910790:Bool = false;
            var _f_4907631:stdgo.GoString = ("" : stdgo.GoString);
            var _err_4912564:stdgo.Error = (null : stdgo.Error);
            var _values_4912463 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var _values_4912204 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var _c_4912211:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _err_4906857:stdgo.Error = (null : stdgo.Error);
            var _ok_4911886:Bool = false;
            var _lineno_4906965:stdgo.GoInt = (0 : stdgo.GoInt);
            var _f_4906854:stdgo.Ref<stdgo._internal.os.Os_file.File> = (null : stdgo.Ref<stdgo._internal.os.Os_file.File>);
            var _pattern_4912232:stdgo.GoString = ("" : stdgo.GoString);
            var _pos_4911918:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            var _shouldCompile_4911890:Bool = false;
            var _f_4911299:stdgo.GoString = ("" : stdgo.GoString);
            var readingBreak = false;
            var _b_4906940:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>);
            var _keys_4912463 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            var _text_4911830:stdgo.GoString = ("" : stdgo.GoString);
            var _flag_4910567:stdgo.GoString = ("" : stdgo.GoString);
            var _i_4907628:stdgo.GoInt = (0 : stdgo.GoInt);
            var _err_4907030:stdgo.Error = (null : stdgo.Error);
            var _c_4912470:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _gotoNext = 0i32;
            var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
            while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
                {
                    final __value__ = _gotoNext;
                    if (__value__ == (0i32)) {
                        {
                            var __tmp__ = stdgo._internal.os.Os_open.open(_file?.__copy__());
                            _f_4906854 = @:tmpset0 __tmp__._0;
                            _err_4906857 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_4906857 != null) {
                            _gotoNext = 4906893i32;
                        } else {
                            _gotoNext = 4906923i32;
                        };
                    } else if (__value__ == (4906893i32)) {
                        @:check2r _t.error(stdgo.Go.toInterface(_err_4906857));
                        return;
                        _gotoNext = 4906923i32;
                    } else if (__value__ == (4906923i32)) {
                        {
                            final __f__ = @:check2r _f_4906854.close;
                            __deferstack__.unshift({ ran : false, f : () -> __f__() });
                        };
                        _b_4906940 = stdgo._internal.bufio.Bufio_newreader.newReader(stdgo.Go.asInterface(_f_4906854));
                        _lineno_4906965 = (0 : stdgo.GoInt);
                        _lastRegexp_4906978 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _gotoNext = 4906995i32;
                    } else if (__value__ == (4906995i32)) {
                        var __blank__ = 0i32;
                        readingBreak = false;
                        _gotoNext = 4907005i32;
                    } else if (__value__ == (4907005i32)) {
                        if (!readingBreak) {
                            _gotoNext = 4907009i32;
                        } else {
                            _gotoNext = 4913489i32;
                        };
                    } else if (__value__ == (4907009i32)) {
                        _lineno_4906965++;
                        {
                            var __tmp__ = @:check2r _b_4906940.readString((10 : stdgo.GoUInt8));
                            _line_4907024 = @:tmpset0 __tmp__._0?.__copy__();
                            _err_4907030 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_4907030 != null) {
                            _gotoNext = 4907072i32;
                        } else {
                            _gotoNext = 4907490i32;
                        };
                    } else if (__value__ == (4907072i32)) {
                        if (stdgo.Go.toInterface(_err_4907030) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                            _gotoNext = 4907094i32;
                        } else {
                            _gotoNext = 4907149i32;
                        };
                    } else if (__value__ == (4907094i32)) {
                        @:check2r _t.errorf(("%s:%d: %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4906965), stdgo.Go.toInterface(_err_4907030));
                        _gotoNext = 4907149i32;
                    } else if (__value__ == (4907149i32)) {
                        readingBreak = true;
                        _gotoNext = 4907005i32;
                    } else if (__value__ == (4907490i32)) {
                        if (((_line_4907024[(0 : stdgo.GoInt)] == (35 : stdgo.GoUInt8)) || (_line_4907024[(0 : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 4907527i32;
                        } else {
                            _gotoNext = 4907555i32;
                        };
                    } else if (__value__ == (4907527i32)) {
                        _gotoNext = 4907005i32;
                    } else if (__value__ == (4907555i32)) {
                        _line_4907024 = (_line_4907024.__slice__(0, ((_line_4907024.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_4907583 = @:check2r stdgo._internal.regexp.Regexp__notab._notab.findAllString(_line_4907024?.__copy__(), (-1 : stdgo.GoInt));
                        if ((0i32 : stdgo.GoInt) < (_field_4907583.length)) {
                            _gotoNext = 4907789i32;
                        } else {
                            _gotoNext = 4907794i32;
                        };
                    } else if (__value__ == (4907628i32)) {
                        _i_4907628++;
                        _gotoNext = 4907790i32;
                    } else if (__value__ == (4907648i32)) {
                        _f_4907631 = _field_4907583[(_i_4907628 : stdgo.GoInt)]?.__copy__();
                        if (_f_4907631 == (("NULL" : stdgo.GoString))) {
                            _gotoNext = 4907668i32;
                        } else {
                            _gotoNext = 4907696i32;
                        };
                    } else if (__value__ == (4907668i32)) {
                        _field_4907583[(_i_4907628 : stdgo.GoInt)] = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _gotoNext = 4907696i32;
                    } else if (__value__ == (4907696i32)) {
                        if (_f_4907631 == (("NIL" : stdgo.GoString))) {
                            _gotoNext = 4907710i32;
                        } else {
                            _gotoNext = 4907628i32;
                        };
                    } else if (__value__ == (4907710i32)) {
                        @:check2r _t.logf(("%s:%d: skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4906965), stdgo.Go.toInterface(_line_4907024));
                        _gotoNext = 4907005i32;
                    } else if (__value__ == (4907789i32)) {
                        {
                            final __tmp__0 = 0i32;
                            final __tmp__1 = _field_4907583[(0i32 : stdgo.GoInt)]?.__copy__();
                            _i_4907628 = __tmp__0;
                            _f_4907631 = __tmp__1;
                        };
                        _gotoNext = 4907790i32;
                    } else if (__value__ == (4907790i32)) {
                        if (_i_4907628 < (_field_4907583.length)) {
                            _gotoNext = 4907648i32;
                        } else {
                            _gotoNext = 4907794i32;
                        };
                    } else if (__value__ == (4907794i32)) {
                        if ((_field_4907583.length) == ((0 : stdgo.GoInt))) {
                            _gotoNext = 4907813i32;
                        } else {
                            _gotoNext = 4910567i32;
                        };
                    } else if (__value__ == (4907813i32)) {
                        _gotoNext = 4907005i32;
                    } else if (__value__ == (4910567i32)) {
                        _flag_4910567 = _field_4907583[(0 : stdgo.GoInt)]?.__copy__();
                        _gotoNext = 4910586i32;
                    } else if (__value__ == (4910586i32)) {
                        {
                            final __value__ = _flag_4910567[(0 : stdgo.GoInt)];
                            if (__value__ == ((63 : stdgo.GoUInt8)) || __value__ == ((38 : stdgo.GoUInt8)) || __value__ == ((124 : stdgo.GoUInt8)) || __value__ == ((59 : stdgo.GoUInt8)) || __value__ == ((123 : stdgo.GoUInt8)) || __value__ == ((125 : stdgo.GoUInt8))) {
                                _gotoNext = 4910605i32;
                            } else if (__value__ == ((58 : stdgo.GoUInt8))) {
                                _gotoNext = 4910773i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8)) || __value__ == ((78 : stdgo.GoUInt8)) || __value__ == ((84 : stdgo.GoUInt8)) || __value__ == ((48 : stdgo.GoUInt8)) || __value__ == ((49 : stdgo.GoUInt8)) || __value__ == ((50 : stdgo.GoUInt8)) || __value__ == ((51 : stdgo.GoUInt8)) || __value__ == ((52 : stdgo.GoUInt8)) || __value__ == ((53 : stdgo.GoUInt8)) || __value__ == ((54 : stdgo.GoUInt8)) || __value__ == ((55 : stdgo.GoUInt8)) || __value__ == ((56 : stdgo.GoUInt8)) || __value__ == ((57 : stdgo.GoUInt8))) {
                                _gotoNext = 4910909i32;
                            } else {
                                _gotoNext = 4911112i32;
                            };
                        };
                    } else if (__value__ == (4910605i32)) {
                        _flag_4910567 = (_flag_4910567.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        if (_flag_4910567 == ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 4910743i32;
                        } else {
                            _gotoNext = 4911112i32;
                        };
                    } else if (__value__ == (4910743i32)) {
                        _gotoNext = 4907005i32;
                    } else if (__value__ == (4910773i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_flag_4910567.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (":" : stdgo.GoString));
                                _flag_4910567 = @:tmpset0 __tmp__._1?.__copy__();
                                _ok_4910790 = @:tmpset0 __tmp__._2;
                            };
                            if (!_ok_4910790) {
                                _gotoNext = 4910850i32;
                            } else {
                                _gotoNext = 4911112i32;
                            };
                        };
                    } else if (__value__ == (4910850i32)) {
                        @:check2r _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line_4907024));
                        _gotoNext = 4907005i32;
                    } else if (__value__ == (4910909i32)) {
                        @:check2r _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line_4907024));
                        _gotoNext = 4907005i32;
                    } else if (__value__ == (4911112i32)) {
                        if (((_field_4907583.length) < (4 : stdgo.GoInt) : Bool)) {
                            _gotoNext = 4911130i32;
                        } else {
                            _gotoNext = 4911263i32;
                        };
                    } else if (__value__ == (4911130i32)) {
                        @:check2r _t.errorf(("%s:%d: too few fields: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4906965), stdgo.Go.toInterface(_line_4907024));
                        _gotoNext = 4907005i32;
                    } else if (__value__ == (4911263i32)) {
                        if (stdgo._internal.strings.Strings_contains.contains(_flag_4910567?.__copy__(), ("$" : stdgo.GoString))) {
                            _gotoNext = 4911294i32;
                        } else {
                            _gotoNext = 4911713i32;
                        };
                    } else if (__value__ == (4911294i32)) {
                        _f_4911299 = ((("\"" : stdgo.GoString) + _field_4907583[(1 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_f_4911299?.__copy__());
                                _field_4907583[(1 : stdgo.GoInt)] = @:tmpset0 __tmp__._0?.__copy__();
                                _err_4907030 = @:tmpset0 __tmp__._1;
                            };
                            if (_err_4907030 != null) {
                                _gotoNext = 4911378i32;
                            } else {
                                _gotoNext = 4911446i32;
                            };
                        };
                    } else if (__value__ == (4911378i32)) {
                        @:check2r _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4906965), stdgo.Go.toInterface(_f_4911299));
                        _gotoNext = 4911446i32;
                    } else if (__value__ == (4911446i32)) {
                        _f_4911299 = ((("\"" : stdgo.GoString) + _field_4907583[(2 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_f_4911299?.__copy__());
                                _field_4907583[(2 : stdgo.GoInt)] = @:tmpset0 __tmp__._0?.__copy__();
                                _err_4907030 = @:tmpset0 __tmp__._1;
                            };
                            if (_err_4907030 != null) {
                                _gotoNext = 4911524i32;
                            } else {
                                _gotoNext = 4911713i32;
                            };
                        };
                    } else if (__value__ == (4911524i32)) {
                        @:check2r _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4906965), stdgo.Go.toInterface(_f_4911299));
                        _gotoNext = 4911713i32;
                    } else if (__value__ == (4911713i32)) {
                        if (_field_4907583[(1 : stdgo.GoInt)] == (("SAME" : stdgo.GoString))) {
                            _gotoNext = 4911735i32;
                        } else {
                            _gotoNext = 4911768i32;
                        };
                    } else if (__value__ == (4911735i32)) {
                        _field_4907583[(1 : stdgo.GoInt)] = _lastRegexp_4906978?.__copy__();
                        _gotoNext = 4911768i32;
                    } else if (__value__ == (4911768i32)) {
                        _lastRegexp_4906978 = _field_4907583[(1 : stdgo.GoInt)]?.__copy__();
                        _text_4911830 = _field_4907583[(2 : stdgo.GoInt)]?.__copy__();
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp__parsefowlerresult._parseFowlerResult(_field_4907583[(3 : stdgo.GoInt)]?.__copy__());
                            _ok_4911886 = @:tmpset0 __tmp__._0;
                            _shouldCompile_4911890 = @:tmpset0 __tmp__._1;
                            _shouldMatch_4911905 = @:tmpset0 __tmp__._2;
                            _pos_4911918 = @:tmpset0 __tmp__._3;
                        };
                        if (!_ok_4911886) {
                            _gotoNext = 4911962i32;
                        } else {
                            _gotoNext = 4912118i32;
                        };
                    } else if (__value__ == (4911962i32)) {
                        @:check2r _t.errorf(("%s:%d: cannot parse result %#q" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4906965), stdgo.Go.toInterface(_field_4907583[(3 : stdgo.GoInt)]));
                        _gotoNext = 4907005i32;
                    } else if (__value__ == (4912118i32)) {
                        _gotoNext = 4912118i32;
                        _keys_4912204 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                        _values_4912204 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                        for (_key => _value in _flag_4910567) {
                            _keys_4912204 = (_keys_4912204.__append__(_key));
                            _values_4912204 = (_values_4912204.__append__(_value));
                        };
                        if ((0i32 : stdgo.GoInt) < (_keys_4912204.length)) {
                            _gotoNext = 4913483i32;
                        } else {
                            _gotoNext = 4907005i32;
                        };
                    } else if (__value__ == (4912216i32)) {
                        _i_4912216++;
                        _gotoNext = 4913484i32;
                    } else if (__value__ == (4912227i32)) {
                        _c_4912211 = _values_4912204[@:invalid_index_invalid_type _i_4912216];
                        var __blank__ = _keys_4912204[@:invalid_index_invalid_type _i_4912216];
                        _pattern_4912232 = _field_4907583[(1 : stdgo.GoInt)]?.__copy__();
                        _syn_4912255 = (4 : stdgo._internal.regexp.syntax.Syntax_flags.Flags);
                        _gotoNext = 4912295i32;
                    } else if (__value__ == (4912295i32)) {
                        {
                            final __value__ = _c_4912211;
                            if (__value__ == ((69 : stdgo.GoInt32))) {
                                _gotoNext = 4912342i32;
                            } else if (__value__ == ((76 : stdgo.GoInt32))) {
                                _gotoNext = 4912396i32;
                            } else {
                                _gotoNext = 4912309i32;
                            };
                        };
                    } else if (__value__ == (4912309i32)) {
                        _i_4912216++;
                        _gotoNext = 4913484i32;
                    } else if (__value__ == (4912342i32)) {
                        _gotoNext = 4912463i32;
                    } else if (__value__ == (4912396i32)) {
                        _pattern_4912232 = stdgo._internal.regexp.Regexp_quotemeta.quoteMeta(_pattern_4912232?.__copy__())?.__copy__();
                        _gotoNext = 4912463i32;
                    } else if (__value__ == (4912463i32)) {
                        _keys_4912463 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                        _values_4912463 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                        for (_key => _value in _flag_4910567) {
                            _keys_4912463 = (_keys_4912463.__append__(_key));
                            _values_4912463 = (_values_4912463.__append__(_value));
                        };
                        if ((0i32 : stdgo.GoInt) < (_keys_4912463.length)) {
                            _gotoNext = 4912553i32;
                        } else {
                            _gotoNext = 4912560i32;
                        };
                    } else if (__value__ == (4912475i32)) {
                        _i_4912475++;
                        _gotoNext = 4912554i32;
                    } else if (__value__ == (4912486i32)) {
                        _c_4912470 = _values_4912463[@:invalid_index_invalid_type _i_4912475];
                        var __blank__ = _keys_4912463[@:invalid_index_invalid_type _i_4912475];
                        _gotoNext = 4912492i32;
                    } else if (__value__ == (4912492i32)) {
                        {
                            final __value__ = _c_4912470;
                            if (__value__ == ((105 : stdgo.GoInt32))) {
                                _gotoNext = 4912507i32;
                            } else {
                                _gotoNext = 4912475i32;
                            };
                        };
                    } else if (__value__ == (4912507i32)) {
                        _syn_4912255 = (_syn_4912255 | ((1 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_flags.Flags);
                        _gotoNext = 4912475i32;
                    } else if (__value__ == (4912553i32)) {
                        _i_4912475 = 0i32;
                        _gotoNext = 4912554i32;
                    } else if (__value__ == (4912554i32)) {
                        if (_i_4912475 < (_keys_4912463.length)) {
                            _gotoNext = 4912486i32;
                        } else {
                            _gotoNext = 4912560i32;
                        };
                    } else if (__value__ == (4912560i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp__compile._compile(_pattern_4912232?.__copy__(), _syn_4912255, true);
                            _re_4912560 = @:tmpset0 __tmp__._0;
                            _err_4912564 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_4912564 != null) {
                            _gotoNext = 4912616i32;
                        } else {
                            _gotoNext = 4912743i32;
                        };
                    } else if (__value__ == (4912616i32)) {
                        if (_shouldCompile_4911890) {
                            _gotoNext = 4912639i32;
                        } else {
                            _gotoNext = 4912718i32;
                        };
                    } else if (__value__ == (4912639i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q did not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4906965), stdgo.Go.toInterface(_pattern_4912232));
                        _gotoNext = 4912718i32;
                    } else if (__value__ == (4912718i32)) {
                        _i_4912216++;
                        _gotoNext = 4913484i32;
                    } else if (__value__ == (4912743i32)) {
                        if (!_shouldCompile_4911890) {
                            _gotoNext = 4912761i32;
                        } else {
                            _gotoNext = 4912861i32;
                        };
                    } else if (__value__ == (4912761i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q should not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4906965), stdgo.Go.toInterface(_pattern_4912232));
                        _i_4912216++;
                        _gotoNext = 4913484i32;
                    } else if (__value__ == (4912861i32)) {
                        _match_4912861 = @:check2r _re_4912560.matchString(_text_4911830?.__copy__());
                        if (_match_4912861 != (_shouldMatch_4911905)) {
                            _gotoNext = 4912918i32;
                        } else {
                            _gotoNext = 4913050i32;
                        };
                    } else if (__value__ == (4912918i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q.Match(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4906965), stdgo.Go.toInterface(_pattern_4912232), stdgo.Go.toInterface(_text_4911830), stdgo.Go.toInterface(_match_4912861), stdgo.Go.toInterface(_shouldMatch_4911905));
                        _i_4912216++;
                        _gotoNext = 4913484i32;
                    } else if (__value__ == (4913050i32)) {
                        _have_4913050 = @:check2r _re_4912560.findStringSubmatchIndex(_text_4911830?.__copy__());
                        if ((((_have_4913050.length) > (0 : stdgo.GoInt) : Bool)) != (_match_4912861)) {
                            _gotoNext = 4913122i32;
                        } else {
                            _gotoNext = 4913290i32;
                        };
                    } else if (__value__ == (4913122i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q.Match(%#q) = %v, but %#q.FindSubmatchIndex(%#q) = %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4906965), stdgo.Go.toInterface(_pattern_4912232), stdgo.Go.toInterface(_text_4911830), stdgo.Go.toInterface(_match_4912861), stdgo.Go.toInterface(_pattern_4912232), stdgo.Go.toInterface(_text_4911830), stdgo.Go.toInterface(_have_4913050));
                        _i_4912216++;
                        _gotoNext = 4913484i32;
                    } else if (__value__ == (4913290i32)) {
                        if (((_have_4913050.length) > (_pos_4911918.length) : Bool)) {
                            _gotoNext = 4913314i32;
                        } else {
                            _gotoNext = 4913351i32;
                        };
                    } else if (__value__ == (4913314i32)) {
                        _have_4913050 = (_have_4913050.__slice__(0, (_pos_4911918.length)) : stdgo.Slice<stdgo.GoInt>);
                        _gotoNext = 4913351i32;
                    } else if (__value__ == (4913351i32)) {
                        if (!stdgo._internal.regexp.Regexp__same._same(_have_4913050, _pos_4911918)) {
                            _gotoNext = 4913371i32;
                        } else {
                            _gotoNext = 4912216i32;
                        };
                    } else if (__value__ == (4913371i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q.FindSubmatchIndex(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4906965), stdgo.Go.toInterface(_pattern_4912232), stdgo.Go.toInterface(_text_4911830), stdgo.Go.toInterface(_have_4913050), stdgo.Go.toInterface(_pos_4911918));
                        _gotoNext = 4912216i32;
                    } else if (__value__ == (4913483i32)) {
                        _i_4912216 = 0i32;
                        _gotoNext = 4913484i32;
                    } else if (__value__ == (4913484i32)) {
                        if (_i_4912216 < (_keys_4912204.length)) {
                            _gotoNext = 4912227i32;
                        } else {
                            _gotoNext = 4907005i32;
                        };
                    } else if (__value__ == (4913489i32)) {
                        _gotoNext = -1i32;
                    };
                };
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        };
    }
