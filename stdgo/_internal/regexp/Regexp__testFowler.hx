package stdgo._internal.regexp;
function _testFowler(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _file:stdgo.GoString):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _i_4913105 = @:invalid_type null;
            var _pos_4912807:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            var _f_4908520:stdgo.GoString = ("" : stdgo.GoString);
            var _ok_4912775:Bool = false;
            var _i_4908517:stdgo.GoInt = (0 : stdgo.GoInt);
            var _err_4907919:stdgo.Error = (null : stdgo.Error);
            var readingBreak = false;
            var _err_4907746:stdgo.Error = (null : stdgo.Error);
            var _err_4913453:stdgo.Error = (null : stdgo.Error);
            var _re_4913449:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
            var _i_4913364 = @:invalid_type null;
            var _lastRegexp_4907867:stdgo.GoString = ("" : stdgo.GoString);
            var _lineno_4907854:stdgo.GoInt = (0 : stdgo.GoInt);
            var _c_4913100:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _shouldMatch_4912794:Bool = false;
            var _keys_4913352 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            var _shouldCompile_4912779:Bool = false;
            var _ok_4911679:Bool = false;
            var _field_4908472:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
            var _line_4907913:stdgo.GoString = ("" : stdgo.GoString);
            var _b_4907829:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
            var _syn_4913144:stdgo._internal.regexp.syntax.Syntax_Flags.Flags = ((0 : stdgo.GoUInt16) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
            var _pattern_4913121:stdgo.GoString = ("" : stdgo.GoString);
            var _values_4913093 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var _have_4913939:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            var _text_4912719:stdgo.GoString = ("" : stdgo.GoString);
            var _flag_4911456:stdgo.GoString = ("" : stdgo.GoString);
            var _values_4913352 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var _match_4913750:Bool = false;
            var _c_4913359:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _keys_4913093 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            var _f_4912188:stdgo.GoString = ("" : stdgo.GoString);
            var _f_4907743:stdgo.Ref<stdgo._internal.os.Os_File.File> = (null : stdgo.Ref<stdgo._internal.os.Os_File.File>);
            var _gotoNext = 0i32;
            var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
            while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
                {
                    final __value__ = _gotoNext;
                    if (__value__ == (0i32)) {
                        {
                            var __tmp__ = stdgo._internal.os.Os_open.open(_file?.__copy__());
                            _f_4907743 = __tmp__._0;
                            _err_4907746 = __tmp__._1;
                        };
                        if (_err_4907746 != null) {
                            _gotoNext = 4907782i32;
                        } else {
                            _gotoNext = 4907812i32;
                        };
                    } else if (__value__ == (4907782i32)) {
                        _t.error(stdgo.Go.toInterface(_err_4907746));
                        return;
                        _gotoNext = 4907812i32;
                    } else if (__value__ == (4907812i32)) {
                        __deferstack__.unshift(() -> _f_4907743.close());
                        _b_4907829 = stdgo._internal.bufio.Bufio_newReader.newReader(stdgo.Go.asInterface(_f_4907743));
                        _lineno_4907854 = (0 : stdgo.GoInt);
                        _lastRegexp_4907867 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 4907884i32;
                    } else if (__value__ == (4907884i32)) {
                        var __blank__ = 0i32;
                        readingBreak = false;
                        _gotoNext = 4907894i32;
                    } else if (__value__ == (4907894i32)) {
                        if (!readingBreak) {
                            _gotoNext = 4907898i32;
                        } else {
                            _gotoNext = 4914378i32;
                        };
                    } else if (__value__ == (4907898i32)) {
                        _lineno_4907854++;
                        {
                            var __tmp__ = _b_4907829.readString((10 : stdgo.GoUInt8));
                            _line_4907913 = __tmp__._0?.__copy__();
                            _err_4907919 = __tmp__._1;
                        };
                        if (_err_4907919 != null) {
                            _gotoNext = 4907961i32;
                        } else {
                            _gotoNext = 4908379i32;
                        };
                    } else if (__value__ == (4907961i32)) {
                        if (stdgo.Go.toInterface(_err_4907919) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                            _gotoNext = 4907983i32;
                        } else {
                            _gotoNext = 4908038i32;
                        };
                    } else if (__value__ == (4907983i32)) {
                        _t.errorf(("%s:%d: %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4907854), stdgo.Go.toInterface(_err_4907919));
                        _gotoNext = 4908038i32;
                    } else if (__value__ == (4908038i32)) {
                        readingBreak = true;
                        _gotoNext = 4907894i32;
                    } else if (__value__ == (4908379i32)) {
                        if (((_line_4907913[(0 : stdgo.GoInt)] == (35 : stdgo.GoUInt8)) || (_line_4907913[(0 : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 4908416i32;
                        } else {
                            _gotoNext = 4908444i32;
                        };
                    } else if (__value__ == (4908416i32)) {
                        _gotoNext = 4907894i32;
                    } else if (__value__ == (4908444i32)) {
                        _line_4907913 = (_line_4907913.__slice__(0, ((_line_4907913.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_4908472 = stdgo._internal.regexp.Regexp__notab._notab.findAllString(_line_4907913?.__copy__(), (-1 : stdgo.GoInt));
                        if ((0i32 : stdgo.GoInt) < (_field_4908472.length)) {
                            _gotoNext = 4908678i32;
                        } else {
                            _gotoNext = 4908683i32;
                        };
                    } else if (__value__ == (4908517i32)) {
                        _i_4908517++;
                        _gotoNext = 4908679i32;
                    } else if (__value__ == (4908537i32)) {
                        _f_4908520 = _field_4908472[(_i_4908517 : stdgo.GoInt)]?.__copy__();
                        if (_f_4908520 == (("NULL" : stdgo.GoString))) {
                            _gotoNext = 4908557i32;
                        } else {
                            _gotoNext = 4908585i32;
                        };
                    } else if (__value__ == (4908557i32)) {
                        _field_4908472[(_i_4908517 : stdgo.GoInt)] = stdgo.Go.str()?.__copy__();
                        _gotoNext = 4908585i32;
                    } else if (__value__ == (4908585i32)) {
                        if (_f_4908520 == (("NIL" : stdgo.GoString))) {
                            _gotoNext = 4908599i32;
                        } else {
                            _gotoNext = 4908517i32;
                        };
                    } else if (__value__ == (4908599i32)) {
                        _t.logf(("%s:%d: skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4907854), stdgo.Go.toInterface(_line_4907913));
                        _gotoNext = 4907894i32;
                    } else if (__value__ == (4908678i32)) {
                        {
                            final __tmp__0 = 0i32;
                            final __tmp__1 = _field_4908472[(0i32 : stdgo.GoInt)]?.__copy__();
                            _i_4908517 = __tmp__0;
                            _f_4908520 = __tmp__1;
                        };
                        _gotoNext = 4908679i32;
                    } else if (__value__ == (4908679i32)) {
                        if (_i_4908517 < (_field_4908472.length)) {
                            _gotoNext = 4908537i32;
                        } else {
                            _gotoNext = 4908683i32;
                        };
                    } else if (__value__ == (4908683i32)) {
                        if ((_field_4908472.length) == ((0 : stdgo.GoInt))) {
                            _gotoNext = 4908702i32;
                        } else {
                            _gotoNext = 4911456i32;
                        };
                    } else if (__value__ == (4908702i32)) {
                        _gotoNext = 4907894i32;
                    } else if (__value__ == (4911456i32)) {
                        _flag_4911456 = _field_4908472[(0 : stdgo.GoInt)]?.__copy__();
                        _gotoNext = 4911475i32;
                    } else if (__value__ == (4911475i32)) {
                        {
                            final __value__ = _flag_4911456[(0 : stdgo.GoInt)];
                            if (__value__ == ((63 : stdgo.GoUInt8)) || __value__ == ((38 : stdgo.GoUInt8)) || __value__ == ((124 : stdgo.GoUInt8)) || __value__ == ((59 : stdgo.GoUInt8)) || __value__ == ((123 : stdgo.GoUInt8)) || __value__ == ((125 : stdgo.GoUInt8))) {
                                _gotoNext = 4911494i32;
                            } else if (__value__ == ((58 : stdgo.GoUInt8))) {
                                _gotoNext = 4911662i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8)) || __value__ == ((78 : stdgo.GoUInt8)) || __value__ == ((84 : stdgo.GoUInt8)) || __value__ == ((48 : stdgo.GoUInt8)) || __value__ == ((49 : stdgo.GoUInt8)) || __value__ == ((50 : stdgo.GoUInt8)) || __value__ == ((51 : stdgo.GoUInt8)) || __value__ == ((52 : stdgo.GoUInt8)) || __value__ == ((53 : stdgo.GoUInt8)) || __value__ == ((54 : stdgo.GoUInt8)) || __value__ == ((55 : stdgo.GoUInt8)) || __value__ == ((56 : stdgo.GoUInt8)) || __value__ == ((57 : stdgo.GoUInt8))) {
                                _gotoNext = 4911798i32;
                            } else {
                                _gotoNext = 4912001i32;
                            };
                        };
                    } else if (__value__ == (4911494i32)) {
                        _flag_4911456 = (_flag_4911456.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        if (_flag_4911456 == (stdgo.Go.str())) {
                            _gotoNext = 4911632i32;
                        } else {
                            _gotoNext = 4912001i32;
                        };
                    } else if (__value__ == (4911632i32)) {
                        _gotoNext = 4907894i32;
                    } else if (__value__ == (4911662i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_flag_4911456.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (":" : stdgo.GoString));
                                _flag_4911456 = __tmp__._1?.__copy__();
                                _ok_4911679 = __tmp__._2;
                            };
                            if (!_ok_4911679) {
                                _gotoNext = 4911739i32;
                            } else {
                                _gotoNext = 4912001i32;
                            };
                        };
                    } else if (__value__ == (4911739i32)) {
                        _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line_4907913));
                        _gotoNext = 4907894i32;
                    } else if (__value__ == (4911798i32)) {
                        _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line_4907913));
                        _gotoNext = 4907894i32;
                    } else if (__value__ == (4912001i32)) {
                        if (((_field_4908472.length) < (4 : stdgo.GoInt) : Bool)) {
                            _gotoNext = 4912019i32;
                        } else {
                            _gotoNext = 4912152i32;
                        };
                    } else if (__value__ == (4912019i32)) {
                        _t.errorf(("%s:%d: too few fields: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4907854), stdgo.Go.toInterface(_line_4907913));
                        _gotoNext = 4907894i32;
                    } else if (__value__ == (4912152i32)) {
                        if (stdgo._internal.strings.Strings_contains.contains(_flag_4911456?.__copy__(), ("$" : stdgo.GoString))) {
                            _gotoNext = 4912183i32;
                        } else {
                            _gotoNext = 4912602i32;
                        };
                    } else if (__value__ == (4912183i32)) {
                        _f_4912188 = ((("\"" : stdgo.GoString) + _field_4908472[(1 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_f_4912188?.__copy__());
                                _field_4908472[(1 : stdgo.GoInt)] = __tmp__._0?.__copy__();
                                _err_4907919 = __tmp__._1;
                            };
                            if (_err_4907919 != null) {
                                _gotoNext = 4912267i32;
                            } else {
                                _gotoNext = 4912335i32;
                            };
                        };
                    } else if (__value__ == (4912267i32)) {
                        _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4907854), stdgo.Go.toInterface(_f_4912188));
                        _gotoNext = 4912335i32;
                    } else if (__value__ == (4912335i32)) {
                        _f_4912188 = ((("\"" : stdgo.GoString) + _field_4908472[(2 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_f_4912188?.__copy__());
                                _field_4908472[(2 : stdgo.GoInt)] = __tmp__._0?.__copy__();
                                _err_4907919 = __tmp__._1;
                            };
                            if (_err_4907919 != null) {
                                _gotoNext = 4912413i32;
                            } else {
                                _gotoNext = 4912602i32;
                            };
                        };
                    } else if (__value__ == (4912413i32)) {
                        _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4907854), stdgo.Go.toInterface(_f_4912188));
                        _gotoNext = 4912602i32;
                    } else if (__value__ == (4912602i32)) {
                        if (_field_4908472[(1 : stdgo.GoInt)] == (("SAME" : stdgo.GoString))) {
                            _gotoNext = 4912624i32;
                        } else {
                            _gotoNext = 4912657i32;
                        };
                    } else if (__value__ == (4912624i32)) {
                        _field_4908472[(1 : stdgo.GoInt)] = _lastRegexp_4907867?.__copy__();
                        _gotoNext = 4912657i32;
                    } else if (__value__ == (4912657i32)) {
                        _lastRegexp_4907867 = _field_4908472[(1 : stdgo.GoInt)]?.__copy__();
                        _text_4912719 = _field_4908472[(2 : stdgo.GoInt)]?.__copy__();
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp__parseFowlerResult._parseFowlerResult(_field_4908472[(3 : stdgo.GoInt)]?.__copy__());
                            _ok_4912775 = __tmp__._0;
                            _shouldCompile_4912779 = __tmp__._1;
                            _shouldMatch_4912794 = __tmp__._2;
                            _pos_4912807 = __tmp__._3;
                        };
                        if (!_ok_4912775) {
                            _gotoNext = 4912851i32;
                        } else {
                            _gotoNext = 4913007i32;
                        };
                    } else if (__value__ == (4912851i32)) {
                        _t.errorf(("%s:%d: cannot parse result %#q" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4907854), stdgo.Go.toInterface(_field_4908472[(3 : stdgo.GoInt)]));
                        _gotoNext = 4907894i32;
                    } else if (__value__ == (4913007i32)) {
                        _gotoNext = 4913007i32;
                        _keys_4913093 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                        _values_4913093 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                        for (_key => _value in _flag_4911456) {
                            _keys_4913093 = (_keys_4913093.__append__(_key));
                            _values_4913093 = (_values_4913093.__append__(_value));
                        };
                        if ((0i32 : stdgo.GoInt) < (_keys_4913093.length)) {
                            _gotoNext = 4914372i32;
                        } else {
                            _gotoNext = 4914378i32;
                        };
                    } else if (__value__ == (4913105i32)) {
                        _i_4913105++;
                        _gotoNext = 4914373i32;
                    } else if (__value__ == (4913116i32)) {
                        _c_4913100 = _values_4913093[@:invalid_index_invalid_type _i_4913105];
                        var __blank__ = _keys_4913093[@:invalid_index_invalid_type _i_4913105];
                        _pattern_4913121 = _field_4908472[(1 : stdgo.GoInt)]?.__copy__();
                        _syn_4913144 = (4 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 4913184i32;
                    } else if (__value__ == (4913184i32)) {
                        {
                            final __value__ = _c_4913100;
                            if (__value__ == ((69 : stdgo.GoInt32))) {
                                _gotoNext = 4913231i32;
                            } else if (__value__ == ((76 : stdgo.GoInt32))) {
                                _gotoNext = 4913285i32;
                            } else {
                                _gotoNext = 4913198i32;
                            };
                        };
                    } else if (__value__ == (4913198i32)) {
                        _i_4913105++;
                        _gotoNext = 4914373i32;
                    } else if (__value__ == (4913231i32)) {
                        _gotoNext = 4913352i32;
                    } else if (__value__ == (4913285i32)) {
                        _pattern_4913121 = stdgo._internal.regexp.Regexp_quoteMeta.quoteMeta(_pattern_4913121?.__copy__())?.__copy__();
                        _gotoNext = 4913352i32;
                    } else if (__value__ == (4913352i32)) {
                        _keys_4913352 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                        _values_4913352 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                        for (_key => _value in _flag_4911456) {
                            _keys_4913352 = (_keys_4913352.__append__(_key));
                            _values_4913352 = (_values_4913352.__append__(_value));
                        };
                        if ((0i32 : stdgo.GoInt) < (_keys_4913352.length)) {
                            _gotoNext = 4913442i32;
                        } else {
                            _gotoNext = 4913449i32;
                        };
                    } else if (__value__ == (4913364i32)) {
                        _i_4913364++;
                        _gotoNext = 4913443i32;
                    } else if (__value__ == (4913375i32)) {
                        _c_4913359 = _values_4913352[@:invalid_index_invalid_type _i_4913364];
                        var __blank__ = _keys_4913352[@:invalid_index_invalid_type _i_4913364];
                        _gotoNext = 4913381i32;
                    } else if (__value__ == (4913381i32)) {
                        {
                            final __value__ = _c_4913359;
                            if (__value__ == ((105 : stdgo.GoInt32))) {
                                _gotoNext = 4913396i32;
                            } else {
                                _gotoNext = 4913364i32;
                            };
                        };
                    } else if (__value__ == (4913396i32)) {
                        _syn_4913144 = (_syn_4913144 | ((1 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 4913364i32;
                    } else if (__value__ == (4913442i32)) {
                        _i_4913364 = 0i32;
                        _gotoNext = 4913443i32;
                    } else if (__value__ == (4913443i32)) {
                        if (_i_4913364 < (_keys_4913352.length)) {
                            _gotoNext = 4913375i32;
                        } else {
                            _gotoNext = 4913449i32;
                        };
                    } else if (__value__ == (4913449i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp__compile._compile(_pattern_4913121?.__copy__(), _syn_4913144, true);
                            _re_4913449 = __tmp__._0;
                            _err_4913453 = __tmp__._1;
                        };
                        if (_err_4913453 != null) {
                            _gotoNext = 4913505i32;
                        } else {
                            _gotoNext = 4913632i32;
                        };
                    } else if (__value__ == (4913505i32)) {
                        if (_shouldCompile_4912779) {
                            _gotoNext = 4913528i32;
                        } else {
                            _gotoNext = 4913607i32;
                        };
                    } else if (__value__ == (4913528i32)) {
                        _t.errorf(("%s:%d: %#q did not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4907854), stdgo.Go.toInterface(_pattern_4913121));
                        _gotoNext = 4913607i32;
                    } else if (__value__ == (4913607i32)) {
                        _i_4913105++;
                        _gotoNext = 4914373i32;
                    } else if (__value__ == (4913632i32)) {
                        if (!_shouldCompile_4912779) {
                            _gotoNext = 4913650i32;
                        } else {
                            _gotoNext = 4913750i32;
                        };
                    } else if (__value__ == (4913650i32)) {
                        _t.errorf(("%s:%d: %#q should not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4907854), stdgo.Go.toInterface(_pattern_4913121));
                        _i_4913105++;
                        _gotoNext = 4914373i32;
                    } else if (__value__ == (4913750i32)) {
                        _match_4913750 = _re_4913449.matchString(_text_4912719?.__copy__());
                        if (_match_4913750 != (_shouldMatch_4912794)) {
                            _gotoNext = 4913807i32;
                        } else {
                            _gotoNext = 4913939i32;
                        };
                    } else if (__value__ == (4913807i32)) {
                        _t.errorf(("%s:%d: %#q.Match(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4907854), stdgo.Go.toInterface(_pattern_4913121), stdgo.Go.toInterface(_text_4912719), stdgo.Go.toInterface(_match_4913750), stdgo.Go.toInterface(_shouldMatch_4912794));
                        _i_4913105++;
                        _gotoNext = 4914373i32;
                    } else if (__value__ == (4913939i32)) {
                        _have_4913939 = _re_4913449.findStringSubmatchIndex(_text_4912719?.__copy__());
                        if ((((_have_4913939.length) > (0 : stdgo.GoInt) : Bool)) != (_match_4913750)) {
                            _gotoNext = 4914011i32;
                        } else {
                            _gotoNext = 4914179i32;
                        };
                    } else if (__value__ == (4914011i32)) {
                        _t.errorf(("%s:%d: %#q.Match(%#q) = %v, but %#q.FindSubmatchIndex(%#q) = %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4907854), stdgo.Go.toInterface(_pattern_4913121), stdgo.Go.toInterface(_text_4912719), stdgo.Go.toInterface(_match_4913750), stdgo.Go.toInterface(_pattern_4913121), stdgo.Go.toInterface(_text_4912719), stdgo.Go.toInterface(_have_4913939));
                        _i_4913105++;
                        _gotoNext = 4914373i32;
                    } else if (__value__ == (4914179i32)) {
                        if (((_have_4913939.length) > (_pos_4912807.length) : Bool)) {
                            _gotoNext = 4914203i32;
                        } else {
                            _gotoNext = 4914240i32;
                        };
                    } else if (__value__ == (4914203i32)) {
                        _have_4913939 = (_have_4913939.__slice__(0, (_pos_4912807.length)) : stdgo.Slice<stdgo.GoInt>);
                        _gotoNext = 4914240i32;
                    } else if (__value__ == (4914240i32)) {
                        if (!stdgo._internal.regexp.Regexp__same._same(_have_4913939, _pos_4912807)) {
                            _gotoNext = 4914260i32;
                        } else {
                            _gotoNext = 4913105i32;
                        };
                    } else if (__value__ == (4914260i32)) {
                        _t.errorf(("%s:%d: %#q.FindSubmatchIndex(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4907854), stdgo.Go.toInterface(_pattern_4913121), stdgo.Go.toInterface(_text_4912719), stdgo.Go.toInterface(_have_4913939), stdgo.Go.toInterface(_pos_4912807));
                        _gotoNext = 4913105i32;
                    } else if (__value__ == (4914372i32)) {
                        _i_4913105 = 0i32;
                        _gotoNext = 4914373i32;
                    } else if (__value__ == (4914373i32)) {
                        if (_i_4913105 < (_keys_4913093.length)) {
                            _gotoNext = 4913116i32;
                        } else {
                            _gotoNext = 4914378i32;
                        };
                    } else if (__value__ == (4914378i32)) {
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
