package stdgo._internal.regexp;
function _testFowler(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _file:stdgo.GoString):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _f_5107883:stdgo.GoString = ("" : stdgo.GoString);
            var _i_5107880:stdgo.GoInt = (0 : stdgo.GoInt);
            var _values_5112456 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var _keys_5112456 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            var _i_5112468 = @:invalid_type null;
            var _b_5107192:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>);
            var _err_5107109:stdgo.Error = (null : stdgo.Error);
            var _shouldMatch_5112157:Bool = false;
            var _shouldCompile_5112142:Bool = false;
            var _ok_5112138:Bool = false;
            var _lineno_5107217:stdgo.GoInt = (0 : stdgo.GoInt);
            var _match_5113113:Bool = false;
            var _i_5112727 = @:invalid_type null;
            var _pattern_5112484:stdgo.GoString = ("" : stdgo.GoString);
            var _have_5113302:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            var readingBreak = false;
            var _syn_5112507:stdgo._internal.regexp.syntax.Syntax_flags.Flags = ((0 : stdgo.GoUInt16) : stdgo._internal.regexp.syntax.Syntax_flags.Flags);
            var _c_5112463:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _field_5107835:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
            var _lastRegexp_5107230:stdgo.GoString = ("" : stdgo.GoString);
            var _re_5112812:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
            var _pos_5112170:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            var _ok_5111042:Bool = false;
            var _values_5112715 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var _f_5111551:stdgo.GoString = ("" : stdgo.GoString);
            var _line_5107276:stdgo.GoString = ("" : stdgo.GoString);
            var _f_5107106:stdgo.Ref<stdgo._internal.os.Os_file.File> = (null : stdgo.Ref<stdgo._internal.os.Os_file.File>);
            var _err_5112816:stdgo.Error = (null : stdgo.Error);
            var _c_5112722:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _keys_5112715 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            var _text_5112082:stdgo.GoString = ("" : stdgo.GoString);
            var _flag_5110819:stdgo.GoString = ("" : stdgo.GoString);
            var _err_5107282:stdgo.Error = (null : stdgo.Error);
            var _gotoNext = 0i32;
            var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
            while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
                {
                    final __value__ = _gotoNext;
                    if (__value__ == (0i32)) {
                        {
                            var __tmp__ = stdgo._internal.os.Os_open.open(_file?.__copy__());
                            _f_5107106 = @:tmpset0 __tmp__._0;
                            _err_5107109 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_5107109 != null) {
                            _gotoNext = 5107145i32;
                        } else {
                            _gotoNext = 5107175i32;
                        };
                    } else if (__value__ == (5107145i32)) {
                        @:check2r _t.error(stdgo.Go.toInterface(_err_5107109));
                        return;
                        _gotoNext = 5107175i32;
                    } else if (__value__ == (5107175i32)) {
                        {
                            final __f__ = @:check2r _f_5107106.close;
                            __deferstack__.unshift({ ran : false, f : () -> __f__() });
                        };
                        _b_5107192 = stdgo._internal.bufio.Bufio_newreader.newReader(stdgo.Go.asInterface(_f_5107106));
                        _lineno_5107217 = (0 : stdgo.GoInt);
                        _lastRegexp_5107230 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _gotoNext = 5107247i32;
                    } else if (__value__ == (5107247i32)) {
                        var __blank__ = 0i32;
                        readingBreak = false;
                        _gotoNext = 5107257i32;
                    } else if (__value__ == (5107257i32)) {
                        if (!readingBreak) {
                            _gotoNext = 5107261i32;
                        } else {
                            _gotoNext = 5113741i32;
                        };
                    } else if (__value__ == (5107261i32)) {
                        _lineno_5107217++;
                        {
                            var __tmp__ = @:check2r _b_5107192.readString((10 : stdgo.GoUInt8));
                            _line_5107276 = @:tmpset0 __tmp__._0?.__copy__();
                            _err_5107282 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_5107282 != null) {
                            _gotoNext = 5107324i32;
                        } else {
                            _gotoNext = 5107742i32;
                        };
                    } else if (__value__ == (5107324i32)) {
                        if (stdgo.Go.toInterface(_err_5107282) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                            _gotoNext = 5107346i32;
                        } else {
                            _gotoNext = 5107401i32;
                        };
                    } else if (__value__ == (5107346i32)) {
                        @:check2r _t.errorf(("%s:%d: %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5107217), stdgo.Go.toInterface(_err_5107282));
                        _gotoNext = 5107401i32;
                    } else if (__value__ == (5107401i32)) {
                        readingBreak = true;
                        _gotoNext = 5107257i32;
                    } else if (__value__ == (5107742i32)) {
                        if (((_line_5107276[(0 : stdgo.GoInt)] == (35 : stdgo.GoUInt8)) || (_line_5107276[(0 : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 5107779i32;
                        } else {
                            _gotoNext = 5107807i32;
                        };
                    } else if (__value__ == (5107779i32)) {
                        _gotoNext = 5107257i32;
                    } else if (__value__ == (5107807i32)) {
                        _line_5107276 = (_line_5107276.__slice__(0, ((_line_5107276.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_5107835 = @:check2r stdgo._internal.regexp.Regexp__notab._notab.findAllString(_line_5107276?.__copy__(), (-1 : stdgo.GoInt));
                        if ((0i32 : stdgo.GoInt) < (_field_5107835.length)) {
                            _gotoNext = 5108041i32;
                        } else {
                            _gotoNext = 5108046i32;
                        };
                    } else if (__value__ == (5107880i32)) {
                        _i_5107880++;
                        _gotoNext = 5108042i32;
                    } else if (__value__ == (5107900i32)) {
                        _f_5107883 = _field_5107835[(_i_5107880 : stdgo.GoInt)]?.__copy__();
                        if (_f_5107883 == (("NULL" : stdgo.GoString))) {
                            _gotoNext = 5107920i32;
                        } else {
                            _gotoNext = 5107948i32;
                        };
                    } else if (__value__ == (5107920i32)) {
                        _field_5107835[(_i_5107880 : stdgo.GoInt)] = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _gotoNext = 5107948i32;
                    } else if (__value__ == (5107948i32)) {
                        if (_f_5107883 == (("NIL" : stdgo.GoString))) {
                            _gotoNext = 5107962i32;
                        } else {
                            _gotoNext = 5107880i32;
                        };
                    } else if (__value__ == (5107962i32)) {
                        @:check2r _t.logf(("%s:%d: skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5107217), stdgo.Go.toInterface(_line_5107276));
                        _gotoNext = 5107257i32;
                    } else if (__value__ == (5108041i32)) {
                        {
                            final __tmp__0 = 0i32;
                            final __tmp__1 = _field_5107835[(0i32 : stdgo.GoInt)]?.__copy__();
                            _i_5107880 = __tmp__0;
                            _f_5107883 = __tmp__1;
                        };
                        _gotoNext = 5108042i32;
                    } else if (__value__ == (5108042i32)) {
                        if (_i_5107880 < (_field_5107835.length)) {
                            _gotoNext = 5107900i32;
                        } else {
                            _gotoNext = 5108046i32;
                        };
                    } else if (__value__ == (5108046i32)) {
                        if ((_field_5107835.length) == ((0 : stdgo.GoInt))) {
                            _gotoNext = 5108065i32;
                        } else {
                            _gotoNext = 5110819i32;
                        };
                    } else if (__value__ == (5108065i32)) {
                        _gotoNext = 5107257i32;
                    } else if (__value__ == (5110819i32)) {
                        _flag_5110819 = _field_5107835[(0 : stdgo.GoInt)]?.__copy__();
                        _gotoNext = 5110838i32;
                    } else if (__value__ == (5110838i32)) {
                        {
                            final __value__ = _flag_5110819[(0 : stdgo.GoInt)];
                            if (__value__ == ((63 : stdgo.GoUInt8)) || __value__ == ((38 : stdgo.GoUInt8)) || __value__ == ((124 : stdgo.GoUInt8)) || __value__ == ((59 : stdgo.GoUInt8)) || __value__ == ((123 : stdgo.GoUInt8)) || __value__ == ((125 : stdgo.GoUInt8))) {
                                _gotoNext = 5110857i32;
                            } else if (__value__ == ((58 : stdgo.GoUInt8))) {
                                _gotoNext = 5111025i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8)) || __value__ == ((78 : stdgo.GoUInt8)) || __value__ == ((84 : stdgo.GoUInt8)) || __value__ == ((48 : stdgo.GoUInt8)) || __value__ == ((49 : stdgo.GoUInt8)) || __value__ == ((50 : stdgo.GoUInt8)) || __value__ == ((51 : stdgo.GoUInt8)) || __value__ == ((52 : stdgo.GoUInt8)) || __value__ == ((53 : stdgo.GoUInt8)) || __value__ == ((54 : stdgo.GoUInt8)) || __value__ == ((55 : stdgo.GoUInt8)) || __value__ == ((56 : stdgo.GoUInt8)) || __value__ == ((57 : stdgo.GoUInt8))) {
                                _gotoNext = 5111161i32;
                            } else {
                                _gotoNext = 5111364i32;
                            };
                        };
                    } else if (__value__ == (5110857i32)) {
                        _flag_5110819 = (_flag_5110819.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        if (_flag_5110819 == ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 5110995i32;
                        } else {
                            _gotoNext = 5111364i32;
                        };
                    } else if (__value__ == (5110995i32)) {
                        _gotoNext = 5107257i32;
                    } else if (__value__ == (5111025i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_flag_5110819.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (":" : stdgo.GoString));
                                _flag_5110819 = @:tmpset0 __tmp__._1?.__copy__();
                                _ok_5111042 = @:tmpset0 __tmp__._2;
                            };
                            if (!_ok_5111042) {
                                _gotoNext = 5111102i32;
                            } else {
                                _gotoNext = 5111364i32;
                            };
                        };
                    } else if (__value__ == (5111102i32)) {
                        @:check2r _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line_5107276));
                        _gotoNext = 5107257i32;
                    } else if (__value__ == (5111161i32)) {
                        @:check2r _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line_5107276));
                        _gotoNext = 5107257i32;
                    } else if (__value__ == (5111364i32)) {
                        if (((_field_5107835.length) < (4 : stdgo.GoInt) : Bool)) {
                            _gotoNext = 5111382i32;
                        } else {
                            _gotoNext = 5111515i32;
                        };
                    } else if (__value__ == (5111382i32)) {
                        @:check2r _t.errorf(("%s:%d: too few fields: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5107217), stdgo.Go.toInterface(_line_5107276));
                        _gotoNext = 5107257i32;
                    } else if (__value__ == (5111515i32)) {
                        if (stdgo._internal.strings.Strings_contains.contains(_flag_5110819?.__copy__(), ("$" : stdgo.GoString))) {
                            _gotoNext = 5111546i32;
                        } else {
                            _gotoNext = 5111965i32;
                        };
                    } else if (__value__ == (5111546i32)) {
                        _f_5111551 = ((("\"" : stdgo.GoString) + _field_5107835[(1 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_f_5111551?.__copy__());
                                _field_5107835[(1 : stdgo.GoInt)] = @:tmpset0 __tmp__._0?.__copy__();
                                _err_5107282 = @:tmpset0 __tmp__._1;
                            };
                            if (_err_5107282 != null) {
                                _gotoNext = 5111630i32;
                            } else {
                                _gotoNext = 5111698i32;
                            };
                        };
                    } else if (__value__ == (5111630i32)) {
                        @:check2r _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5107217), stdgo.Go.toInterface(_f_5111551));
                        _gotoNext = 5111698i32;
                    } else if (__value__ == (5111698i32)) {
                        _f_5111551 = ((("\"" : stdgo.GoString) + _field_5107835[(2 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_f_5111551?.__copy__());
                                _field_5107835[(2 : stdgo.GoInt)] = @:tmpset0 __tmp__._0?.__copy__();
                                _err_5107282 = @:tmpset0 __tmp__._1;
                            };
                            if (_err_5107282 != null) {
                                _gotoNext = 5111776i32;
                            } else {
                                _gotoNext = 5111965i32;
                            };
                        };
                    } else if (__value__ == (5111776i32)) {
                        @:check2r _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5107217), stdgo.Go.toInterface(_f_5111551));
                        _gotoNext = 5111965i32;
                    } else if (__value__ == (5111965i32)) {
                        if (_field_5107835[(1 : stdgo.GoInt)] == (("SAME" : stdgo.GoString))) {
                            _gotoNext = 5111987i32;
                        } else {
                            _gotoNext = 5112020i32;
                        };
                    } else if (__value__ == (5111987i32)) {
                        _field_5107835[(1 : stdgo.GoInt)] = _lastRegexp_5107230?.__copy__();
                        _gotoNext = 5112020i32;
                    } else if (__value__ == (5112020i32)) {
                        _lastRegexp_5107230 = _field_5107835[(1 : stdgo.GoInt)]?.__copy__();
                        _text_5112082 = _field_5107835[(2 : stdgo.GoInt)]?.__copy__();
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp__parsefowlerresult._parseFowlerResult(_field_5107835[(3 : stdgo.GoInt)]?.__copy__());
                            _ok_5112138 = @:tmpset0 __tmp__._0;
                            _shouldCompile_5112142 = @:tmpset0 __tmp__._1;
                            _shouldMatch_5112157 = @:tmpset0 __tmp__._2;
                            _pos_5112170 = @:tmpset0 __tmp__._3;
                        };
                        if (!_ok_5112138) {
                            _gotoNext = 5112214i32;
                        } else {
                            _gotoNext = 5112370i32;
                        };
                    } else if (__value__ == (5112214i32)) {
                        @:check2r _t.errorf(("%s:%d: cannot parse result %#q" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5107217), stdgo.Go.toInterface(_field_5107835[(3 : stdgo.GoInt)]));
                        _gotoNext = 5107257i32;
                    } else if (__value__ == (5112370i32)) {
                        _gotoNext = 5112370i32;
                        _keys_5112456 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                        _values_5112456 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                        for (_key => _value in _flag_5110819) {
                            _keys_5112456 = (_keys_5112456.__append__(_key));
                            _values_5112456 = (_values_5112456.__append__(_value));
                        };
                        if ((0i32 : stdgo.GoInt) < (_keys_5112456.length)) {
                            _gotoNext = 5113735i32;
                        } else {
                            _gotoNext = 5107257i32;
                        };
                    } else if (__value__ == (5112468i32)) {
                        _i_5112468++;
                        _gotoNext = 5113736i32;
                    } else if (__value__ == (5112479i32)) {
                        _c_5112463 = _values_5112456[@:invalid_index_invalid_type _i_5112468];
                        var __blank__ = _keys_5112456[@:invalid_index_invalid_type _i_5112468];
                        _pattern_5112484 = _field_5107835[(1 : stdgo.GoInt)]?.__copy__();
                        _syn_5112507 = (4 : stdgo._internal.regexp.syntax.Syntax_flags.Flags);
                        _gotoNext = 5112547i32;
                    } else if (__value__ == (5112547i32)) {
                        {
                            final __value__ = _c_5112463;
                            if (__value__ == ((69 : stdgo.GoInt32))) {
                                _gotoNext = 5112594i32;
                            } else if (__value__ == ((76 : stdgo.GoInt32))) {
                                _gotoNext = 5112648i32;
                            } else {
                                _gotoNext = 5112561i32;
                            };
                        };
                    } else if (__value__ == (5112561i32)) {
                        _i_5112468++;
                        _gotoNext = 5113736i32;
                    } else if (__value__ == (5112594i32)) {
                        _gotoNext = 5112715i32;
                    } else if (__value__ == (5112648i32)) {
                        _pattern_5112484 = stdgo._internal.regexp.Regexp_quotemeta.quoteMeta(_pattern_5112484?.__copy__())?.__copy__();
                        _gotoNext = 5112715i32;
                    } else if (__value__ == (5112715i32)) {
                        _keys_5112715 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                        _values_5112715 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                        for (_key => _value in _flag_5110819) {
                            _keys_5112715 = (_keys_5112715.__append__(_key));
                            _values_5112715 = (_values_5112715.__append__(_value));
                        };
                        if ((0i32 : stdgo.GoInt) < (_keys_5112715.length)) {
                            _gotoNext = 5112805i32;
                        } else {
                            _gotoNext = 5112812i32;
                        };
                    } else if (__value__ == (5112727i32)) {
                        _i_5112727++;
                        _gotoNext = 5112806i32;
                    } else if (__value__ == (5112738i32)) {
                        _c_5112722 = _values_5112715[@:invalid_index_invalid_type _i_5112727];
                        var __blank__ = _keys_5112715[@:invalid_index_invalid_type _i_5112727];
                        _gotoNext = 5112744i32;
                    } else if (__value__ == (5112744i32)) {
                        {
                            final __value__ = _c_5112722;
                            if (__value__ == ((105 : stdgo.GoInt32))) {
                                _gotoNext = 5112759i32;
                            } else {
                                _gotoNext = 5112727i32;
                            };
                        };
                    } else if (__value__ == (5112759i32)) {
                        _syn_5112507 = (_syn_5112507 | ((1 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_flags.Flags);
                        _gotoNext = 5112727i32;
                    } else if (__value__ == (5112805i32)) {
                        _i_5112727 = 0i32;
                        _gotoNext = 5112806i32;
                    } else if (__value__ == (5112806i32)) {
                        if (_i_5112727 < (_keys_5112715.length)) {
                            _gotoNext = 5112738i32;
                        } else {
                            _gotoNext = 5112812i32;
                        };
                    } else if (__value__ == (5112812i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp__compile._compile(_pattern_5112484?.__copy__(), _syn_5112507, true);
                            _re_5112812 = @:tmpset0 __tmp__._0;
                            _err_5112816 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_5112816 != null) {
                            _gotoNext = 5112868i32;
                        } else {
                            _gotoNext = 5112995i32;
                        };
                    } else if (__value__ == (5112868i32)) {
                        if (_shouldCompile_5112142) {
                            _gotoNext = 5112891i32;
                        } else {
                            _gotoNext = 5112970i32;
                        };
                    } else if (__value__ == (5112891i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q did not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5107217), stdgo.Go.toInterface(_pattern_5112484));
                        _gotoNext = 5112970i32;
                    } else if (__value__ == (5112970i32)) {
                        _i_5112468++;
                        _gotoNext = 5113736i32;
                    } else if (__value__ == (5112995i32)) {
                        if (!_shouldCompile_5112142) {
                            _gotoNext = 5113013i32;
                        } else {
                            _gotoNext = 5113113i32;
                        };
                    } else if (__value__ == (5113013i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q should not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5107217), stdgo.Go.toInterface(_pattern_5112484));
                        _i_5112468++;
                        _gotoNext = 5113736i32;
                    } else if (__value__ == (5113113i32)) {
                        _match_5113113 = @:check2r _re_5112812.matchString(_text_5112082?.__copy__());
                        if (_match_5113113 != (_shouldMatch_5112157)) {
                            _gotoNext = 5113170i32;
                        } else {
                            _gotoNext = 5113302i32;
                        };
                    } else if (__value__ == (5113170i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q.Match(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5107217), stdgo.Go.toInterface(_pattern_5112484), stdgo.Go.toInterface(_text_5112082), stdgo.Go.toInterface(_match_5113113), stdgo.Go.toInterface(_shouldMatch_5112157));
                        _i_5112468++;
                        _gotoNext = 5113736i32;
                    } else if (__value__ == (5113302i32)) {
                        _have_5113302 = @:check2r _re_5112812.findStringSubmatchIndex(_text_5112082?.__copy__());
                        if ((((_have_5113302.length) > (0 : stdgo.GoInt) : Bool)) != (_match_5113113)) {
                            _gotoNext = 5113374i32;
                        } else {
                            _gotoNext = 5113542i32;
                        };
                    } else if (__value__ == (5113374i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q.Match(%#q) = %v, but %#q.FindSubmatchIndex(%#q) = %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5107217), stdgo.Go.toInterface(_pattern_5112484), stdgo.Go.toInterface(_text_5112082), stdgo.Go.toInterface(_match_5113113), stdgo.Go.toInterface(_pattern_5112484), stdgo.Go.toInterface(_text_5112082), stdgo.Go.toInterface(_have_5113302));
                        _i_5112468++;
                        _gotoNext = 5113736i32;
                    } else if (__value__ == (5113542i32)) {
                        if (((_have_5113302.length) > (_pos_5112170.length) : Bool)) {
                            _gotoNext = 5113566i32;
                        } else {
                            _gotoNext = 5113603i32;
                        };
                    } else if (__value__ == (5113566i32)) {
                        _have_5113302 = (_have_5113302.__slice__(0, (_pos_5112170.length)) : stdgo.Slice<stdgo.GoInt>);
                        _gotoNext = 5113603i32;
                    } else if (__value__ == (5113603i32)) {
                        if (!stdgo._internal.regexp.Regexp__same._same(_have_5113302, _pos_5112170)) {
                            _gotoNext = 5113623i32;
                        } else {
                            _gotoNext = 5112468i32;
                        };
                    } else if (__value__ == (5113623i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q.FindSubmatchIndex(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_5107217), stdgo.Go.toInterface(_pattern_5112484), stdgo.Go.toInterface(_text_5112082), stdgo.Go.toInterface(_have_5113302), stdgo.Go.toInterface(_pos_5112170));
                        _gotoNext = 5112468i32;
                    } else if (__value__ == (5113735i32)) {
                        _i_5112468 = 0i32;
                        _gotoNext = 5113736i32;
                    } else if (__value__ == (5113736i32)) {
                        if (_i_5112468 < (_keys_5112456.length)) {
                            _gotoNext = 5112479i32;
                        } else {
                            _gotoNext = 5107257i32;
                        };
                    } else if (__value__ == (5113741i32)) {
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
