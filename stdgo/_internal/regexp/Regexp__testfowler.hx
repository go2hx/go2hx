package stdgo._internal.regexp;
function _testFowler(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _file:stdgo.GoString):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _syn_59:stdgo._internal.regexp.syntax.Syntax_flags.Flags = ((0 : stdgo.GoUInt16) : stdgo._internal.regexp.syntax.Syntax_flags.Flags);
            var _pos_56:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            var _f_48:stdgo.GoString = ("" : stdgo.GoString);
            var _i_47:stdgo.GoInt = (0 : stdgo.GoInt);
            var _err_45:stdgo.Error = (null : stdgo.Error);
            var _f_39:stdgo.Ref<stdgo._internal.os.Os_file.File> = (null : stdgo.Ref<stdgo._internal.os.Os_file.File>);
            var _match_63:Bool = false;
            var _keys_4918638 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            var _ok_53:Bool = false;
            var _text_52:stdgo.GoString = ("" : stdgo.GoString);
            var _line_44:stdgo.GoString = ("" : stdgo.GoString);
            var readingBreak = false;
            var _lastRegexp_43:stdgo.GoString = ("" : stdgo.GoString);
            var _values_4918897 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var _values_4918638 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var _i_4918650 = @:invalid_type null;
            var _shouldMatch_55:Bool = false;
            var _f_51:stdgo.GoString = ("" : stdgo.GoString);
            var _lineno_42:stdgo.GoInt = (0 : stdgo.GoInt);
            var _have_64:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            var _c_60:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _i_4918909 = @:invalid_type null;
            var _shouldCompile_54:Bool = false;
            var _pattern_58:stdgo.GoString = ("" : stdgo.GoString);
            var _c_57:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _ok_50:Bool = false;
            var _err_40:stdgo.Error = (null : stdgo.Error);
            var _err_62:stdgo.Error = (null : stdgo.Error);
            var _flag_49:stdgo.GoString = ("" : stdgo.GoString);
            var _field_46:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
            var _re_61:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
            var _keys_4918897 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            var _b_41:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>);
            var _gotoNext = 0i32;
            var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
            while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
                {
                    final __value__ = _gotoNext;
                    if (__value__ == (0i32)) {
                        {
                            var __tmp__ = stdgo._internal.os.Os_open.open(_file?.__copy__());
                            _f_39 = @:tmpset0 __tmp__._0;
                            _err_40 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_40 != null) {
                            _gotoNext = 4913327i32;
                        } else {
                            _gotoNext = 4913357i32;
                        };
                    } else if (__value__ == (4913327i32)) {
                        @:check2r _t.error(stdgo.Go.toInterface(_err_40));
                        return;
                        _gotoNext = 4913357i32;
                    } else if (__value__ == (4913357i32)) {
                        {
                            final __f__ = @:check2r _f_39.close;
                            __deferstack__.unshift({ ran : false, f : () -> __f__() });
                        };
                        _b_41 = stdgo._internal.bufio.Bufio_newreader.newReader(stdgo.Go.asInterface(_f_39));
                        _lineno_42 = (0 : stdgo.GoInt);
                        _lastRegexp_43 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _gotoNext = 4913429i32;
                    } else if (__value__ == (4913429i32)) {
                        var __blank__ = 0i32;
                        readingBreak = false;
                        _gotoNext = 4913439i32;
                    } else if (__value__ == (4913439i32)) {
                        if (!readingBreak) {
                            _gotoNext = 4913443i32;
                        } else {
                            _gotoNext = 4919923i32;
                        };
                    } else if (__value__ == (4913443i32)) {
                        _lineno_42++;
                        {
                            var __tmp__ = @:check2r _b_41.readString((10 : stdgo.GoUInt8));
                            _line_44 = @:tmpset0 __tmp__._0?.__copy__();
                            _err_45 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_45 != null) {
                            _gotoNext = 4913506i32;
                        } else {
                            _gotoNext = 4913924i32;
                        };
                    } else if (__value__ == (4913506i32)) {
                        if (stdgo.Go.toInterface(_err_45) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                            _gotoNext = 4913528i32;
                        } else {
                            _gotoNext = 4913583i32;
                        };
                    } else if (__value__ == (4913528i32)) {
                        @:check2r _t.errorf(("%s:%d: %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_42), stdgo.Go.toInterface(_err_45));
                        _gotoNext = 4913583i32;
                    } else if (__value__ == (4913583i32)) {
                        readingBreak = true;
                        _gotoNext = 4913439i32;
                    } else if (__value__ == (4913924i32)) {
                        if (((_line_44[(0 : stdgo.GoInt)] == (35 : stdgo.GoUInt8)) || (_line_44[(0 : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 4913961i32;
                        } else {
                            _gotoNext = 4913989i32;
                        };
                    } else if (__value__ == (4913961i32)) {
                        _gotoNext = 4913439i32;
                    } else if (__value__ == (4913989i32)) {
                        _line_44 = (_line_44.__slice__(0, ((_line_44.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_46 = @:check2r stdgo._internal.regexp.Regexp__notab._notab.findAllString(_line_44?.__copy__(), (-1 : stdgo.GoInt));
                        if ((0i32 : stdgo.GoInt) < (_field_46.length)) {
                            _gotoNext = 4914223i32;
                        } else {
                            _gotoNext = 4914228i32;
                        };
                    } else if (__value__ == (4914062i32)) {
                        _i_47++;
                        _gotoNext = 4914224i32;
                    } else if (__value__ == (4914082i32)) {
                        _f_48 = _field_46[(_i_47 : stdgo.GoInt)]?.__copy__();
                        if (_f_48 == (("NULL" : stdgo.GoString))) {
                            _gotoNext = 4914102i32;
                        } else {
                            _gotoNext = 4914130i32;
                        };
                    } else if (__value__ == (4914102i32)) {
                        _field_46[(_i_47 : stdgo.GoInt)] = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _gotoNext = 4914130i32;
                    } else if (__value__ == (4914130i32)) {
                        if (_f_48 == (("NIL" : stdgo.GoString))) {
                            _gotoNext = 4914144i32;
                        } else {
                            _gotoNext = 4914062i32;
                        };
                    } else if (__value__ == (4914144i32)) {
                        @:check2r _t.logf(("%s:%d: skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_42), stdgo.Go.toInterface(_line_44));
                        _gotoNext = 4913439i32;
                    } else if (__value__ == (4914223i32)) {
                        {
                            final __tmp__0 = 0i32;
                            final __tmp__1 = _field_46[(0i32 : stdgo.GoInt)]?.__copy__();
                            _i_47 = __tmp__0;
                            _f_48 = __tmp__1;
                        };
                        _gotoNext = 4914224i32;
                    } else if (__value__ == (4914224i32)) {
                        if (_i_47 < (_field_46.length)) {
                            _gotoNext = 4914082i32;
                        } else {
                            _gotoNext = 4914228i32;
                        };
                    } else if (__value__ == (4914228i32)) {
                        if ((_field_46.length) == ((0 : stdgo.GoInt))) {
                            _gotoNext = 4914247i32;
                        } else {
                            _gotoNext = 4917001i32;
                        };
                    } else if (__value__ == (4914247i32)) {
                        _gotoNext = 4913439i32;
                    } else if (__value__ == (4917001i32)) {
                        _flag_49 = _field_46[(0 : stdgo.GoInt)]?.__copy__();
                        _gotoNext = 4917020i32;
                    } else if (__value__ == (4917020i32)) {
                        {
                            final __value__ = _flag_49[(0 : stdgo.GoInt)];
                            if (__value__ == ((63 : stdgo.GoUInt8)) || __value__ == ((38 : stdgo.GoUInt8)) || __value__ == ((124 : stdgo.GoUInt8)) || __value__ == ((59 : stdgo.GoUInt8)) || __value__ == ((123 : stdgo.GoUInt8)) || __value__ == ((125 : stdgo.GoUInt8))) {
                                _gotoNext = 4917039i32;
                            } else if (__value__ == ((58 : stdgo.GoUInt8))) {
                                _gotoNext = 4917207i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8)) || __value__ == ((78 : stdgo.GoUInt8)) || __value__ == ((84 : stdgo.GoUInt8)) || __value__ == ((48 : stdgo.GoUInt8)) || __value__ == ((49 : stdgo.GoUInt8)) || __value__ == ((50 : stdgo.GoUInt8)) || __value__ == ((51 : stdgo.GoUInt8)) || __value__ == ((52 : stdgo.GoUInt8)) || __value__ == ((53 : stdgo.GoUInt8)) || __value__ == ((54 : stdgo.GoUInt8)) || __value__ == ((55 : stdgo.GoUInt8)) || __value__ == ((56 : stdgo.GoUInt8)) || __value__ == ((57 : stdgo.GoUInt8))) {
                                _gotoNext = 4917343i32;
                            } else {
                                _gotoNext = 4917546i32;
                            };
                        };
                    } else if (__value__ == (4917039i32)) {
                        _flag_49 = (_flag_49.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        if (_flag_49 == ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 4917177i32;
                        } else {
                            _gotoNext = 4917546i32;
                        };
                    } else if (__value__ == (4917177i32)) {
                        _gotoNext = 4913439i32;
                    } else if (__value__ == (4917207i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_flag_49.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (":" : stdgo.GoString));
                                _flag_49 = @:tmpset0 __tmp__._1?.__copy__();
                                _ok_50 = @:tmpset0 __tmp__._2;
                            };
                            if (!_ok_50) {
                                _gotoNext = 4917284i32;
                            } else {
                                _gotoNext = 4917546i32;
                            };
                        };
                    } else if (__value__ == (4917284i32)) {
                        @:check2r _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line_44));
                        _gotoNext = 4913439i32;
                    } else if (__value__ == (4917343i32)) {
                        @:check2r _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line_44));
                        _gotoNext = 4913439i32;
                    } else if (__value__ == (4917546i32)) {
                        if (((_field_46.length) < (4 : stdgo.GoInt) : Bool)) {
                            _gotoNext = 4917564i32;
                        } else {
                            _gotoNext = 4917697i32;
                        };
                    } else if (__value__ == (4917564i32)) {
                        @:check2r _t.errorf(("%s:%d: too few fields: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_42), stdgo.Go.toInterface(_line_44));
                        _gotoNext = 4913439i32;
                    } else if (__value__ == (4917697i32)) {
                        if (stdgo._internal.strings.Strings_contains.contains(_flag_49?.__copy__(), ("$" : stdgo.GoString))) {
                            _gotoNext = 4917728i32;
                        } else {
                            _gotoNext = 4918147i32;
                        };
                    } else if (__value__ == (4917728i32)) {
                        _f_51 = ((("\"" : stdgo.GoString) + _field_46[(1 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_f_51?.__copy__());
                                _field_46[(1 : stdgo.GoInt)] = @:tmpset0 __tmp__._0?.__copy__();
                                _err_45 = @:tmpset0 __tmp__._1;
                            };
                            if (_err_45 != null) {
                                _gotoNext = 4917812i32;
                            } else {
                                _gotoNext = 4917880i32;
                            };
                        };
                    } else if (__value__ == (4917812i32)) {
                        @:check2r _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_42), stdgo.Go.toInterface(_f_51));
                        _gotoNext = 4917880i32;
                    } else if (__value__ == (4917880i32)) {
                        _f_51 = ((("\"" : stdgo.GoString) + _field_46[(2 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_f_51?.__copy__());
                                _field_46[(2 : stdgo.GoInt)] = @:tmpset0 __tmp__._0?.__copy__();
                                _err_45 = @:tmpset0 __tmp__._1;
                            };
                            if (_err_45 != null) {
                                _gotoNext = 4917958i32;
                            } else {
                                _gotoNext = 4918147i32;
                            };
                        };
                    } else if (__value__ == (4917958i32)) {
                        @:check2r _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_42), stdgo.Go.toInterface(_f_51));
                        _gotoNext = 4918147i32;
                    } else if (__value__ == (4918147i32)) {
                        if (_field_46[(1 : stdgo.GoInt)] == (("SAME" : stdgo.GoString))) {
                            _gotoNext = 4918169i32;
                        } else {
                            _gotoNext = 4918202i32;
                        };
                    } else if (__value__ == (4918169i32)) {
                        _field_46[(1 : stdgo.GoInt)] = _lastRegexp_43?.__copy__();
                        _gotoNext = 4918202i32;
                    } else if (__value__ == (4918202i32)) {
                        _lastRegexp_43 = _field_46[(1 : stdgo.GoInt)]?.__copy__();
                        _text_52 = _field_46[(2 : stdgo.GoInt)]?.__copy__();
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp__parsefowlerresult._parseFowlerResult(_field_46[(3 : stdgo.GoInt)]?.__copy__());
                            _ok_53 = @:tmpset0 __tmp__._0;
                            _shouldCompile_54 = @:tmpset0 __tmp__._1;
                            _shouldMatch_55 = @:tmpset0 __tmp__._2;
                            _pos_56 = @:tmpset0 __tmp__._3;
                        };
                        if (!_ok_53) {
                            _gotoNext = 4918396i32;
                        } else {
                            _gotoNext = 4918552i32;
                        };
                    } else if (__value__ == (4918396i32)) {
                        @:check2r _t.errorf(("%s:%d: cannot parse result %#q" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_42), stdgo.Go.toInterface(_field_46[(3 : stdgo.GoInt)]));
                        _gotoNext = 4913439i32;
                    } else if (__value__ == (4918552i32)) {
                        _gotoNext = 4918552i32;
                        _keys_4918638 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                        _values_4918638 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                        for (_key => _value in _flag_49) {
                            _keys_4918638 = (_keys_4918638.__append__(_key));
                            _values_4918638 = (_values_4918638.__append__(_value));
                        };
                        if ((0i32 : stdgo.GoInt) < (_keys_4918638.length)) {
                            _gotoNext = 4919917i32;
                        } else {
                            _gotoNext = 4913439i32;
                        };
                    } else if (__value__ == (4918650i32)) {
                        _i_4918650++;
                        _gotoNext = 4919918i32;
                    } else if (__value__ == (4918661i32)) {
                        _c_57 = _values_4918638[@:invalid_index_invalid_type _i_4918650];
                        var __blank__ = _keys_4918638[@:invalid_index_invalid_type _i_4918650];
                        _pattern_58 = _field_46[(1 : stdgo.GoInt)]?.__copy__();
                        _syn_59 = (4 : stdgo._internal.regexp.syntax.Syntax_flags.Flags);
                        _gotoNext = 4918729i32;
                    } else if (__value__ == (4918729i32)) {
                        {
                            final __value__ = _c_57;
                            if (__value__ == ((69 : stdgo.GoInt32))) {
                                _gotoNext = 4918776i32;
                            } else if (__value__ == ((76 : stdgo.GoInt32))) {
                                _gotoNext = 4918830i32;
                            } else {
                                _gotoNext = 4918743i32;
                            };
                        };
                    } else if (__value__ == (4918743i32)) {
                        _i_4918650++;
                        _gotoNext = 4919918i32;
                    } else if (__value__ == (4918776i32)) {
                        _gotoNext = 4918897i32;
                    } else if (__value__ == (4918830i32)) {
                        _pattern_58 = stdgo._internal.regexp.Regexp_quotemeta.quoteMeta(_pattern_58?.__copy__())?.__copy__();
                        _gotoNext = 4918897i32;
                    } else if (__value__ == (4918897i32)) {
                        _keys_4918897 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                        _values_4918897 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                        for (_key => _value in _flag_49) {
                            _keys_4918897 = (_keys_4918897.__append__(_key));
                            _values_4918897 = (_values_4918897.__append__(_value));
                        };
                        if ((0i32 : stdgo.GoInt) < (_keys_4918897.length)) {
                            _gotoNext = 4918987i32;
                        } else {
                            _gotoNext = 4918994i32;
                        };
                    } else if (__value__ == (4918909i32)) {
                        _i_4918909++;
                        _gotoNext = 4918988i32;
                    } else if (__value__ == (4918920i32)) {
                        _c_60 = _values_4918897[@:invalid_index_invalid_type _i_4918909];
                        var __blank__ = _keys_4918897[@:invalid_index_invalid_type _i_4918909];
                        _gotoNext = 4918926i32;
                    } else if (__value__ == (4918926i32)) {
                        {
                            final __value__ = _c_60;
                            if (__value__ == ((105 : stdgo.GoInt32))) {
                                _gotoNext = 4918941i32;
                            } else {
                                _gotoNext = 4918909i32;
                            };
                        };
                    } else if (__value__ == (4918941i32)) {
                        _syn_59 = (_syn_59 | ((1 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_flags.Flags);
                        _gotoNext = 4918909i32;
                    } else if (__value__ == (4918987i32)) {
                        _i_4918909 = 0i32;
                        _gotoNext = 4918988i32;
                    } else if (__value__ == (4918988i32)) {
                        if (_i_4918909 < (_keys_4918897.length)) {
                            _gotoNext = 4918920i32;
                        } else {
                            _gotoNext = 4918994i32;
                        };
                    } else if (__value__ == (4918994i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp__compile._compile(_pattern_58?.__copy__(), _syn_59, true);
                            _re_61 = @:tmpset0 __tmp__._0;
                            _err_62 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_62 != null) {
                            _gotoNext = 4919050i32;
                        } else {
                            _gotoNext = 4919177i32;
                        };
                    } else if (__value__ == (4919050i32)) {
                        if (_shouldCompile_54) {
                            _gotoNext = 4919073i32;
                        } else {
                            _gotoNext = 4919152i32;
                        };
                    } else if (__value__ == (4919073i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q did not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_42), stdgo.Go.toInterface(_pattern_58));
                        _gotoNext = 4919152i32;
                    } else if (__value__ == (4919152i32)) {
                        _i_4918650++;
                        _gotoNext = 4919918i32;
                    } else if (__value__ == (4919177i32)) {
                        if (!_shouldCompile_54) {
                            _gotoNext = 4919195i32;
                        } else {
                            _gotoNext = 4919295i32;
                        };
                    } else if (__value__ == (4919195i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q should not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_42), stdgo.Go.toInterface(_pattern_58));
                        _i_4918650++;
                        _gotoNext = 4919918i32;
                    } else if (__value__ == (4919295i32)) {
                        _match_63 = @:check2r _re_61.matchString(_text_52?.__copy__());
                        if (_match_63 != (_shouldMatch_55)) {
                            _gotoNext = 4919352i32;
                        } else {
                            _gotoNext = 4919484i32;
                        };
                    } else if (__value__ == (4919352i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q.Match(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_42), stdgo.Go.toInterface(_pattern_58), stdgo.Go.toInterface(_text_52), stdgo.Go.toInterface(_match_63), stdgo.Go.toInterface(_shouldMatch_55));
                        _i_4918650++;
                        _gotoNext = 4919918i32;
                    } else if (__value__ == (4919484i32)) {
                        _have_64 = @:check2r _re_61.findStringSubmatchIndex(_text_52?.__copy__());
                        if ((((_have_64.length) > (0 : stdgo.GoInt) : Bool)) != (_match_63)) {
                            _gotoNext = 4919556i32;
                        } else {
                            _gotoNext = 4919724i32;
                        };
                    } else if (__value__ == (4919556i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q.Match(%#q) = %v, but %#q.FindSubmatchIndex(%#q) = %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_42), stdgo.Go.toInterface(_pattern_58), stdgo.Go.toInterface(_text_52), stdgo.Go.toInterface(_match_63), stdgo.Go.toInterface(_pattern_58), stdgo.Go.toInterface(_text_52), stdgo.Go.toInterface(_have_64));
                        _i_4918650++;
                        _gotoNext = 4919918i32;
                    } else if (__value__ == (4919724i32)) {
                        if (((_have_64.length) > (_pos_56.length) : Bool)) {
                            _gotoNext = 4919748i32;
                        } else {
                            _gotoNext = 4919785i32;
                        };
                    } else if (__value__ == (4919748i32)) {
                        _have_64 = (_have_64.__slice__(0, (_pos_56.length)) : stdgo.Slice<stdgo.GoInt>);
                        _gotoNext = 4919785i32;
                    } else if (__value__ == (4919785i32)) {
                        if (!stdgo._internal.regexp.Regexp__same._same(_have_64, _pos_56)) {
                            _gotoNext = 4919805i32;
                        } else {
                            _gotoNext = 4918650i32;
                        };
                    } else if (__value__ == (4919805i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q.FindSubmatchIndex(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_42), stdgo.Go.toInterface(_pattern_58), stdgo.Go.toInterface(_text_52), stdgo.Go.toInterface(_have_64), stdgo.Go.toInterface(_pos_56));
                        _gotoNext = 4918650i32;
                    } else if (__value__ == (4919917i32)) {
                        _i_4918650 = 0i32;
                        _gotoNext = 4919918i32;
                    } else if (__value__ == (4919918i32)) {
                        if (_i_4918650 < (_keys_4918638.length)) {
                            _gotoNext = 4918661i32;
                        } else {
                            _gotoNext = 4913439i32;
                        };
                    } else if (__value__ == (4919923i32)) {
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
