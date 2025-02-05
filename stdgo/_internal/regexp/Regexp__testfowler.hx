package stdgo._internal.regexp;
function _testFowler(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _file:stdgo.GoString):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _err_4913464:stdgo.Error = (null : stdgo.Error);
            var _line_4913458:stdgo.GoString = ("" : stdgo.GoString);
            var _values_4918897 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var _shouldMatch_4918339:Bool = false;
            var _keys_4918638 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            var _f_4917733:stdgo.GoString = ("" : stdgo.GoString);
            var _lineno_4913399:stdgo.GoInt = (0 : stdgo.GoInt);
            var _err_4913291:stdgo.Error = (null : stdgo.Error);
            var _keys_4918897 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            var _f_4914065:stdgo.GoString = ("" : stdgo.GoString);
            var _syn_4918689:stdgo._internal.regexp.syntax.Syntax_flags.Flags = ((0 : stdgo.GoUInt16) : stdgo._internal.regexp.syntax.Syntax_flags.Flags);
            var _shouldCompile_4918324:Bool = false;
            var _i_4918909 = @:invalid_type null;
            var _pos_4918352:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            var readingBreak = false;
            var _match_4919295:Bool = false;
            var _values_4918638 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var _lastRegexp_4913412:stdgo.GoString = ("" : stdgo.GoString);
            var _b_4913374:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>);
            var _i_4914062:stdgo.GoInt = (0 : stdgo.GoInt);
            var _f_4913288:stdgo.Ref<stdgo._internal.os.Os_file.File> = (null : stdgo.Ref<stdgo._internal.os.Os_file.File>);
            var _have_4919484:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            var _err_4918998:stdgo.Error = (null : stdgo.Error);
            var _c_4918904:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _i_4918650 = @:invalid_type null;
            var _flag_4917001:stdgo.GoString = ("" : stdgo.GoString);
            var _field_4914017:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
            var _re_4918994:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
            var _pattern_4918666:stdgo.GoString = ("" : stdgo.GoString);
            var _c_4918645:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _ok_4918320:Bool = false;
            var _text_4918264:stdgo.GoString = ("" : stdgo.GoString);
            var _ok_4917224:Bool = false;
            var _gotoNext = 0i32;
            var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
            while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
                {
                    final __value__ = _gotoNext;
                    if (__value__ == (0i32)) {
                        {
                            var __tmp__ = stdgo._internal.os.Os_open.open(_file?.__copy__());
                            _f_4913288 = @:tmpset0 __tmp__._0;
                            _err_4913291 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_4913291 != null) {
                            _gotoNext = 4913327i32;
                        } else {
                            _gotoNext = 4913357i32;
                        };
                    } else if (__value__ == (4913327i32)) {
                        @:check2r _t.error(stdgo.Go.toInterface(_err_4913291));
                        return;
                        _gotoNext = 4913357i32;
                    } else if (__value__ == (4913357i32)) {
                        {
                            final __f__ = @:check2r _f_4913288.close;
                            __deferstack__.unshift({ ran : false, f : () -> __f__() });
                        };
                        _b_4913374 = stdgo._internal.bufio.Bufio_newreader.newReader(stdgo.Go.asInterface(_f_4913288));
                        _lineno_4913399 = (0 : stdgo.GoInt);
                        _lastRegexp_4913412 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
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
                        _lineno_4913399++;
                        {
                            var __tmp__ = @:check2r _b_4913374.readString((10 : stdgo.GoUInt8));
                            _line_4913458 = @:tmpset0 __tmp__._0?.__copy__();
                            _err_4913464 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_4913464 != null) {
                            _gotoNext = 4913506i32;
                        } else {
                            _gotoNext = 4913924i32;
                        };
                    } else if (__value__ == (4913506i32)) {
                        if (stdgo.Go.toInterface(_err_4913464) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                            _gotoNext = 4913528i32;
                        } else {
                            _gotoNext = 4913583i32;
                        };
                    } else if (__value__ == (4913528i32)) {
                        @:check2r _t.errorf(("%s:%d: %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4913399), stdgo.Go.toInterface(_err_4913464));
                        _gotoNext = 4913583i32;
                    } else if (__value__ == (4913583i32)) {
                        readingBreak = true;
                        _gotoNext = 4913439i32;
                    } else if (__value__ == (4913924i32)) {
                        if (((_line_4913458[(0 : stdgo.GoInt)] == (35 : stdgo.GoUInt8)) || (_line_4913458[(0 : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 4913961i32;
                        } else {
                            _gotoNext = 4913989i32;
                        };
                    } else if (__value__ == (4913961i32)) {
                        _gotoNext = 4913439i32;
                    } else if (__value__ == (4913989i32)) {
                        _line_4913458 = (_line_4913458.__slice__(0, ((_line_4913458.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_4914017 = @:check2r stdgo._internal.regexp.Regexp__notab._notab.findAllString(_line_4913458?.__copy__(), (-1 : stdgo.GoInt));
                        if ((0i32 : stdgo.GoInt) < (_field_4914017.length)) {
                            _gotoNext = 4914223i32;
                        } else {
                            _gotoNext = 4914228i32;
                        };
                    } else if (__value__ == (4914062i32)) {
                        _i_4914062++;
                        _gotoNext = 4914224i32;
                    } else if (__value__ == (4914082i32)) {
                        _f_4914065 = _field_4914017[(_i_4914062 : stdgo.GoInt)]?.__copy__();
                        if (_f_4914065 == (("NULL" : stdgo.GoString))) {
                            _gotoNext = 4914102i32;
                        } else {
                            _gotoNext = 4914130i32;
                        };
                    } else if (__value__ == (4914102i32)) {
                        _field_4914017[(_i_4914062 : stdgo.GoInt)] = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _gotoNext = 4914130i32;
                    } else if (__value__ == (4914130i32)) {
                        if (_f_4914065 == (("NIL" : stdgo.GoString))) {
                            _gotoNext = 4914144i32;
                        } else {
                            _gotoNext = 4914062i32;
                        };
                    } else if (__value__ == (4914144i32)) {
                        @:check2r _t.logf(("%s:%d: skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4913399), stdgo.Go.toInterface(_line_4913458));
                        _gotoNext = 4913439i32;
                    } else if (__value__ == (4914223i32)) {
                        {
                            final __tmp__0 = 0i32;
                            final __tmp__1 = _field_4914017[(0i32 : stdgo.GoInt)]?.__copy__();
                            _i_4914062 = __tmp__0;
                            _f_4914065 = __tmp__1;
                        };
                        _gotoNext = 4914224i32;
                    } else if (__value__ == (4914224i32)) {
                        if (_i_4914062 < (_field_4914017.length)) {
                            _gotoNext = 4914082i32;
                        } else {
                            _gotoNext = 4914228i32;
                        };
                    } else if (__value__ == (4914228i32)) {
                        if ((_field_4914017.length) == ((0 : stdgo.GoInt))) {
                            _gotoNext = 4914247i32;
                        } else {
                            _gotoNext = 4917001i32;
                        };
                    } else if (__value__ == (4914247i32)) {
                        _gotoNext = 4913439i32;
                    } else if (__value__ == (4917001i32)) {
                        _flag_4917001 = _field_4914017[(0 : stdgo.GoInt)]?.__copy__();
                        _gotoNext = 4917020i32;
                    } else if (__value__ == (4917020i32)) {
                        {
                            final __value__ = _flag_4917001[(0 : stdgo.GoInt)];
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
                        _flag_4917001 = (_flag_4917001.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        if (_flag_4917001 == ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 4917177i32;
                        } else {
                            _gotoNext = 4917546i32;
                        };
                    } else if (__value__ == (4917177i32)) {
                        _gotoNext = 4913439i32;
                    } else if (__value__ == (4917207i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_flag_4917001.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (":" : stdgo.GoString));
                                _flag_4917001 = @:tmpset0 __tmp__._1?.__copy__();
                                _ok_4917224 = @:tmpset0 __tmp__._2;
                            };
                            if (!_ok_4917224) {
                                _gotoNext = 4917284i32;
                            } else {
                                _gotoNext = 4917546i32;
                            };
                        };
                    } else if (__value__ == (4917284i32)) {
                        @:check2r _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line_4913458));
                        _gotoNext = 4913439i32;
                    } else if (__value__ == (4917343i32)) {
                        @:check2r _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line_4913458));
                        _gotoNext = 4913439i32;
                    } else if (__value__ == (4917546i32)) {
                        if (((_field_4914017.length) < (4 : stdgo.GoInt) : Bool)) {
                            _gotoNext = 4917564i32;
                        } else {
                            _gotoNext = 4917697i32;
                        };
                    } else if (__value__ == (4917564i32)) {
                        @:check2r _t.errorf(("%s:%d: too few fields: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4913399), stdgo.Go.toInterface(_line_4913458));
                        _gotoNext = 4913439i32;
                    } else if (__value__ == (4917697i32)) {
                        if (stdgo._internal.strings.Strings_contains.contains(_flag_4917001?.__copy__(), ("$" : stdgo.GoString))) {
                            _gotoNext = 4917728i32;
                        } else {
                            _gotoNext = 4918147i32;
                        };
                    } else if (__value__ == (4917728i32)) {
                        _f_4917733 = ((("\"" : stdgo.GoString) + _field_4914017[(1 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_f_4917733?.__copy__());
                                _field_4914017[(1 : stdgo.GoInt)] = @:tmpset0 __tmp__._0?.__copy__();
                                _err_4913464 = @:tmpset0 __tmp__._1;
                            };
                            if (_err_4913464 != null) {
                                _gotoNext = 4917812i32;
                            } else {
                                _gotoNext = 4917880i32;
                            };
                        };
                    } else if (__value__ == (4917812i32)) {
                        @:check2r _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4913399), stdgo.Go.toInterface(_f_4917733));
                        _gotoNext = 4917880i32;
                    } else if (__value__ == (4917880i32)) {
                        _f_4917733 = ((("\"" : stdgo.GoString) + _field_4914017[(2 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_f_4917733?.__copy__());
                                _field_4914017[(2 : stdgo.GoInt)] = @:tmpset0 __tmp__._0?.__copy__();
                                _err_4913464 = @:tmpset0 __tmp__._1;
                            };
                            if (_err_4913464 != null) {
                                _gotoNext = 4917958i32;
                            } else {
                                _gotoNext = 4918147i32;
                            };
                        };
                    } else if (__value__ == (4917958i32)) {
                        @:check2r _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4913399), stdgo.Go.toInterface(_f_4917733));
                        _gotoNext = 4918147i32;
                    } else if (__value__ == (4918147i32)) {
                        if (_field_4914017[(1 : stdgo.GoInt)] == (("SAME" : stdgo.GoString))) {
                            _gotoNext = 4918169i32;
                        } else {
                            _gotoNext = 4918202i32;
                        };
                    } else if (__value__ == (4918169i32)) {
                        _field_4914017[(1 : stdgo.GoInt)] = _lastRegexp_4913412?.__copy__();
                        _gotoNext = 4918202i32;
                    } else if (__value__ == (4918202i32)) {
                        _lastRegexp_4913412 = _field_4914017[(1 : stdgo.GoInt)]?.__copy__();
                        _text_4918264 = _field_4914017[(2 : stdgo.GoInt)]?.__copy__();
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp__parsefowlerresult._parseFowlerResult(_field_4914017[(3 : stdgo.GoInt)]?.__copy__());
                            _ok_4918320 = @:tmpset0 __tmp__._0;
                            _shouldCompile_4918324 = @:tmpset0 __tmp__._1;
                            _shouldMatch_4918339 = @:tmpset0 __tmp__._2;
                            _pos_4918352 = @:tmpset0 __tmp__._3;
                        };
                        if (!_ok_4918320) {
                            _gotoNext = 4918396i32;
                        } else {
                            _gotoNext = 4918552i32;
                        };
                    } else if (__value__ == (4918396i32)) {
                        @:check2r _t.errorf(("%s:%d: cannot parse result %#q" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4913399), stdgo.Go.toInterface(_field_4914017[(3 : stdgo.GoInt)]));
                        _gotoNext = 4913439i32;
                    } else if (__value__ == (4918552i32)) {
                        _gotoNext = 4918552i32;
                        _keys_4918638 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                        _values_4918638 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                        for (_key => _value in _flag_4917001) {
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
                        _c_4918645 = _values_4918638[@:invalid_index_invalid_type _i_4918650];
                        var __blank__ = _keys_4918638[@:invalid_index_invalid_type _i_4918650];
                        _pattern_4918666 = _field_4914017[(1 : stdgo.GoInt)]?.__copy__();
                        _syn_4918689 = (4 : stdgo._internal.regexp.syntax.Syntax_flags.Flags);
                        _gotoNext = 4918729i32;
                    } else if (__value__ == (4918729i32)) {
                        {
                            final __value__ = _c_4918645;
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
                        _pattern_4918666 = stdgo._internal.regexp.Regexp_quotemeta.quoteMeta(_pattern_4918666?.__copy__())?.__copy__();
                        _gotoNext = 4918897i32;
                    } else if (__value__ == (4918897i32)) {
                        _keys_4918897 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                        _values_4918897 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                        for (_key => _value in _flag_4917001) {
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
                        _c_4918904 = _values_4918897[@:invalid_index_invalid_type _i_4918909];
                        var __blank__ = _keys_4918897[@:invalid_index_invalid_type _i_4918909];
                        _gotoNext = 4918926i32;
                    } else if (__value__ == (4918926i32)) {
                        {
                            final __value__ = _c_4918904;
                            if (__value__ == ((105 : stdgo.GoInt32))) {
                                _gotoNext = 4918941i32;
                            } else {
                                _gotoNext = 4918909i32;
                            };
                        };
                    } else if (__value__ == (4918941i32)) {
                        _syn_4918689 = (_syn_4918689 | ((1 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_flags.Flags);
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
                            var __tmp__ = stdgo._internal.regexp.Regexp__compile._compile(_pattern_4918666?.__copy__(), _syn_4918689, true);
                            _re_4918994 = @:tmpset0 __tmp__._0;
                            _err_4918998 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_4918998 != null) {
                            _gotoNext = 4919050i32;
                        } else {
                            _gotoNext = 4919177i32;
                        };
                    } else if (__value__ == (4919050i32)) {
                        if (_shouldCompile_4918324) {
                            _gotoNext = 4919073i32;
                        } else {
                            _gotoNext = 4919152i32;
                        };
                    } else if (__value__ == (4919073i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q did not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4913399), stdgo.Go.toInterface(_pattern_4918666));
                        _gotoNext = 4919152i32;
                    } else if (__value__ == (4919152i32)) {
                        _i_4918650++;
                        _gotoNext = 4919918i32;
                    } else if (__value__ == (4919177i32)) {
                        if (!_shouldCompile_4918324) {
                            _gotoNext = 4919195i32;
                        } else {
                            _gotoNext = 4919295i32;
                        };
                    } else if (__value__ == (4919195i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q should not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4913399), stdgo.Go.toInterface(_pattern_4918666));
                        _i_4918650++;
                        _gotoNext = 4919918i32;
                    } else if (__value__ == (4919295i32)) {
                        _match_4919295 = @:check2r _re_4918994.matchString(_text_4918264?.__copy__());
                        if (_match_4919295 != (_shouldMatch_4918339)) {
                            _gotoNext = 4919352i32;
                        } else {
                            _gotoNext = 4919484i32;
                        };
                    } else if (__value__ == (4919352i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q.Match(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4913399), stdgo.Go.toInterface(_pattern_4918666), stdgo.Go.toInterface(_text_4918264), stdgo.Go.toInterface(_match_4919295), stdgo.Go.toInterface(_shouldMatch_4918339));
                        _i_4918650++;
                        _gotoNext = 4919918i32;
                    } else if (__value__ == (4919484i32)) {
                        _have_4919484 = @:check2r _re_4918994.findStringSubmatchIndex(_text_4918264?.__copy__());
                        if ((((_have_4919484.length) > (0 : stdgo.GoInt) : Bool)) != (_match_4919295)) {
                            _gotoNext = 4919556i32;
                        } else {
                            _gotoNext = 4919724i32;
                        };
                    } else if (__value__ == (4919556i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q.Match(%#q) = %v, but %#q.FindSubmatchIndex(%#q) = %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4913399), stdgo.Go.toInterface(_pattern_4918666), stdgo.Go.toInterface(_text_4918264), stdgo.Go.toInterface(_match_4919295), stdgo.Go.toInterface(_pattern_4918666), stdgo.Go.toInterface(_text_4918264), stdgo.Go.toInterface(_have_4919484));
                        _i_4918650++;
                        _gotoNext = 4919918i32;
                    } else if (__value__ == (4919724i32)) {
                        if (((_have_4919484.length) > (_pos_4918352.length) : Bool)) {
                            _gotoNext = 4919748i32;
                        } else {
                            _gotoNext = 4919785i32;
                        };
                    } else if (__value__ == (4919748i32)) {
                        _have_4919484 = (_have_4919484.__slice__(0, (_pos_4918352.length)) : stdgo.Slice<stdgo.GoInt>);
                        _gotoNext = 4919785i32;
                    } else if (__value__ == (4919785i32)) {
                        if (!stdgo._internal.regexp.Regexp__same._same(_have_4919484, _pos_4918352)) {
                            _gotoNext = 4919805i32;
                        } else {
                            _gotoNext = 4918650i32;
                        };
                    } else if (__value__ == (4919805i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q.FindSubmatchIndex(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4913399), stdgo.Go.toInterface(_pattern_4918666), stdgo.Go.toInterface(_text_4918264), stdgo.Go.toInterface(_have_4919484), stdgo.Go.toInterface(_pos_4918352));
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
