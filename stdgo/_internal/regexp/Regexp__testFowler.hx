package stdgo._internal.regexp;
function _testFowler(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _file:stdgo.GoString):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _err_4977551:stdgo.Error = (null : stdgo.Error);
            var _c_4982905:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _ok_4981484:Bool = false;
            var _field_4978277:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
            var _b_4977634:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
            var _err_4977724:stdgo.Error = (null : stdgo.Error);
            var _keys_4982898 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            var _shouldMatch_4982599:Bool = false;
            var _ok_4982580:Bool = false;
            var _flag_4981261:stdgo.GoString = ("" : stdgo.GoString);
            var _line_4977718:stdgo.GoString = ("" : stdgo.GoString);
            var _c_4983164:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _shouldCompile_4982584:Bool = false;
            var _text_4982524:stdgo.GoString = ("" : stdgo.GoString);
            var _f_4981993:stdgo.GoString = ("" : stdgo.GoString);
            var readingBreak = false;
            var _values_4983157 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var _i_4978322:stdgo.GoInt = (0 : stdgo.GoInt);
            var _f_4977548:stdgo.Ref<stdgo._internal.os.Os_File.File> = (null : stdgo.Ref<stdgo._internal.os.Os_File.File>);
            var _syn_4982949:stdgo._internal.regexp.syntax.Syntax_Flags.Flags = ((0 : stdgo.GoUInt16) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
            var _i_4982910 = @:invalid_type null;
            var _f_4978325:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRegexp_4977672:stdgo.GoString = ("" : stdgo.GoString);
            var _lineno_4977659:stdgo.GoInt = (0 : stdgo.GoInt);
            var _i_4983169 = @:invalid_type null;
            var _have_4983744:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            var _match_4983555:Bool = false;
            var _pos_4982612:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            var _err_4983258:stdgo.Error = (null : stdgo.Error);
            var _re_4983254:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
            var _keys_4983157 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            var _pattern_4982926:stdgo.GoString = ("" : stdgo.GoString);
            var _values_4982898 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var _gotoNext = 0i32;
            var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
            while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
                {
                    final __value__ = _gotoNext;
                    if (__value__ == (0i32)) {
                        {
                            var __tmp__ = stdgo._internal.os.Os_open.open(_file?.__copy__());
                            _f_4977548 = __tmp__._0;
                            _err_4977551 = __tmp__._1;
                        };
                        if (_err_4977551 != null) {
                            _gotoNext = 4977587i32;
                        } else {
                            _gotoNext = 4977617i32;
                        };
                    } else if (__value__ == (4977587i32)) {
                        _t.error(stdgo.Go.toInterface(_err_4977551));
                        return;
                        _gotoNext = 4977617i32;
                    } else if (__value__ == (4977617i32)) {
                        __deferstack__.unshift(() -> _f_4977548.close());
                        _b_4977634 = stdgo._internal.bufio.Bufio_newReader.newReader(stdgo.Go.asInterface(_f_4977548));
                        _lineno_4977659 = (0 : stdgo.GoInt);
                        _lastRegexp_4977672 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 4977689i32;
                    } else if (__value__ == (4977689i32)) {
                        var __blank__ = 0i32;
                        readingBreak = false;
                        _gotoNext = 4977699i32;
                    } else if (__value__ == (4977699i32)) {
                        if (!readingBreak) {
                            _gotoNext = 4977703i32;
                        } else {
                            _gotoNext = 4984183i32;
                        };
                    } else if (__value__ == (4977703i32)) {
                        _lineno_4977659++;
                        {
                            var __tmp__ = _b_4977634.readString((10 : stdgo.GoUInt8));
                            _line_4977718 = __tmp__._0?.__copy__();
                            _err_4977724 = __tmp__._1;
                        };
                        if (_err_4977724 != null) {
                            _gotoNext = 4977766i32;
                        } else {
                            _gotoNext = 4978184i32;
                        };
                    } else if (__value__ == (4977766i32)) {
                        if (stdgo.Go.toInterface(_err_4977724) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                            _gotoNext = 4977788i32;
                        } else {
                            _gotoNext = 4977843i32;
                        };
                    } else if (__value__ == (4977788i32)) {
                        _t.errorf(("%s:%d: %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4977659), stdgo.Go.toInterface(_err_4977724));
                        _gotoNext = 4977843i32;
                    } else if (__value__ == (4977843i32)) {
                        readingBreak = true;
                        _gotoNext = 4977699i32;
                    } else if (__value__ == (4978184i32)) {
                        if (((_line_4977718[(0 : stdgo.GoInt)] == (35 : stdgo.GoUInt8)) || (_line_4977718[(0 : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 4978221i32;
                        } else {
                            _gotoNext = 4978249i32;
                        };
                    } else if (__value__ == (4978221i32)) {
                        _gotoNext = 4977699i32;
                    } else if (__value__ == (4978249i32)) {
                        _line_4977718 = (_line_4977718.__slice__(0, ((_line_4977718.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_4978277 = stdgo._internal.regexp.Regexp__notab._notab.findAllString(_line_4977718?.__copy__(), (-1 : stdgo.GoInt));
                        if ((0i32 : stdgo.GoInt) < (_field_4978277.length)) {
                            _gotoNext = 4978483i32;
                        } else {
                            _gotoNext = 4978488i32;
                        };
                    } else if (__value__ == (4978322i32)) {
                        _i_4978322++;
                        _gotoNext = 4978484i32;
                    } else if (__value__ == (4978342i32)) {
                        _f_4978325 = _field_4978277[(_i_4978322 : stdgo.GoInt)]?.__copy__();
                        if (_f_4978325 == (("NULL" : stdgo.GoString))) {
                            _gotoNext = 4978362i32;
                        } else {
                            _gotoNext = 4978390i32;
                        };
                    } else if (__value__ == (4978362i32)) {
                        _field_4978277[(_i_4978322 : stdgo.GoInt)] = stdgo.Go.str()?.__copy__();
                        _gotoNext = 4978390i32;
                    } else if (__value__ == (4978390i32)) {
                        if (_f_4978325 == (("NIL" : stdgo.GoString))) {
                            _gotoNext = 4978404i32;
                        } else {
                            _gotoNext = 4978322i32;
                        };
                    } else if (__value__ == (4978404i32)) {
                        _t.logf(("%s:%d: skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4977659), stdgo.Go.toInterface(_line_4977718));
                        _gotoNext = 4977699i32;
                    } else if (__value__ == (4978483i32)) {
                        {
                            final __tmp__0 = 0i32;
                            final __tmp__1 = _field_4978277[(0i32 : stdgo.GoInt)]?.__copy__();
                            _i_4978322 = __tmp__0;
                            _f_4978325 = __tmp__1;
                        };
                        _gotoNext = 4978484i32;
                    } else if (__value__ == (4978484i32)) {
                        if (_i_4978322 < (_field_4978277.length)) {
                            _gotoNext = 4978342i32;
                        } else {
                            _gotoNext = 4978488i32;
                        };
                    } else if (__value__ == (4978488i32)) {
                        if ((_field_4978277.length) == ((0 : stdgo.GoInt))) {
                            _gotoNext = 4978507i32;
                        } else {
                            _gotoNext = 4981261i32;
                        };
                    } else if (__value__ == (4978507i32)) {
                        _gotoNext = 4977699i32;
                    } else if (__value__ == (4981261i32)) {
                        _flag_4981261 = _field_4978277[(0 : stdgo.GoInt)]?.__copy__();
                        _gotoNext = 4981280i32;
                    } else if (__value__ == (4981280i32)) {
                        {
                            final __value__ = _flag_4981261[(0 : stdgo.GoInt)];
                            if (__value__ == ((63 : stdgo.GoUInt8)) || __value__ == ((38 : stdgo.GoUInt8)) || __value__ == ((124 : stdgo.GoUInt8)) || __value__ == ((59 : stdgo.GoUInt8)) || __value__ == ((123 : stdgo.GoUInt8)) || __value__ == ((125 : stdgo.GoUInt8))) {
                                _gotoNext = 4981299i32;
                            } else if (__value__ == ((58 : stdgo.GoUInt8))) {
                                _gotoNext = 4981467i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8)) || __value__ == ((78 : stdgo.GoUInt8)) || __value__ == ((84 : stdgo.GoUInt8)) || __value__ == ((48 : stdgo.GoUInt8)) || __value__ == ((49 : stdgo.GoUInt8)) || __value__ == ((50 : stdgo.GoUInt8)) || __value__ == ((51 : stdgo.GoUInt8)) || __value__ == ((52 : stdgo.GoUInt8)) || __value__ == ((53 : stdgo.GoUInt8)) || __value__ == ((54 : stdgo.GoUInt8)) || __value__ == ((55 : stdgo.GoUInt8)) || __value__ == ((56 : stdgo.GoUInt8)) || __value__ == ((57 : stdgo.GoUInt8))) {
                                _gotoNext = 4981603i32;
                            } else {
                                _gotoNext = 4981806i32;
                            };
                        };
                    } else if (__value__ == (4981299i32)) {
                        _flag_4981261 = (_flag_4981261.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        if (_flag_4981261 == (stdgo.Go.str())) {
                            _gotoNext = 4981437i32;
                        } else {
                            _gotoNext = 4981806i32;
                        };
                    } else if (__value__ == (4981437i32)) {
                        _gotoNext = 4977699i32;
                    } else if (__value__ == (4981467i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_flag_4981261.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (":" : stdgo.GoString));
                                _flag_4981261 = __tmp__._1?.__copy__();
                                _ok_4981484 = __tmp__._2;
                            };
                            if (!_ok_4981484) {
                                _gotoNext = 4981544i32;
                            } else {
                                _gotoNext = 4981806i32;
                            };
                        };
                    } else if (__value__ == (4981544i32)) {
                        _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line_4977718));
                        _gotoNext = 4977699i32;
                    } else if (__value__ == (4981603i32)) {
                        _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line_4977718));
                        _gotoNext = 4977699i32;
                    } else if (__value__ == (4981806i32)) {
                        if (((_field_4978277.length) < (4 : stdgo.GoInt) : Bool)) {
                            _gotoNext = 4981824i32;
                        } else {
                            _gotoNext = 4981957i32;
                        };
                    } else if (__value__ == (4981824i32)) {
                        _t.errorf(("%s:%d: too few fields: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4977659), stdgo.Go.toInterface(_line_4977718));
                        _gotoNext = 4977699i32;
                    } else if (__value__ == (4981957i32)) {
                        if (stdgo._internal.strings.Strings_contains.contains(_flag_4981261?.__copy__(), ("$" : stdgo.GoString))) {
                            _gotoNext = 4981988i32;
                        } else {
                            _gotoNext = 4982407i32;
                        };
                    } else if (__value__ == (4981988i32)) {
                        _f_4981993 = ((("\"" : stdgo.GoString) + _field_4978277[(1 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_f_4981993?.__copy__());
                                _field_4978277[(1 : stdgo.GoInt)] = __tmp__._0?.__copy__();
                                _err_4977724 = __tmp__._1;
                            };
                            if (_err_4977724 != null) {
                                _gotoNext = 4982072i32;
                            } else {
                                _gotoNext = 4982140i32;
                            };
                        };
                    } else if (__value__ == (4982072i32)) {
                        _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4977659), stdgo.Go.toInterface(_f_4981993));
                        _gotoNext = 4982140i32;
                    } else if (__value__ == (4982140i32)) {
                        _f_4981993 = ((("\"" : stdgo.GoString) + _field_4978277[(2 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_f_4981993?.__copy__());
                                _field_4978277[(2 : stdgo.GoInt)] = __tmp__._0?.__copy__();
                                _err_4977724 = __tmp__._1;
                            };
                            if (_err_4977724 != null) {
                                _gotoNext = 4982218i32;
                            } else {
                                _gotoNext = 4982407i32;
                            };
                        };
                    } else if (__value__ == (4982218i32)) {
                        _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4977659), stdgo.Go.toInterface(_f_4981993));
                        _gotoNext = 4982407i32;
                    } else if (__value__ == (4982407i32)) {
                        if (_field_4978277[(1 : stdgo.GoInt)] == (("SAME" : stdgo.GoString))) {
                            _gotoNext = 4982429i32;
                        } else {
                            _gotoNext = 4982462i32;
                        };
                    } else if (__value__ == (4982429i32)) {
                        _field_4978277[(1 : stdgo.GoInt)] = _lastRegexp_4977672?.__copy__();
                        _gotoNext = 4982462i32;
                    } else if (__value__ == (4982462i32)) {
                        _lastRegexp_4977672 = _field_4978277[(1 : stdgo.GoInt)]?.__copy__();
                        _text_4982524 = _field_4978277[(2 : stdgo.GoInt)]?.__copy__();
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp__parseFowlerResult._parseFowlerResult(_field_4978277[(3 : stdgo.GoInt)]?.__copy__());
                            _ok_4982580 = __tmp__._0;
                            _shouldCompile_4982584 = __tmp__._1;
                            _shouldMatch_4982599 = __tmp__._2;
                            _pos_4982612 = __tmp__._3;
                        };
                        if (!_ok_4982580) {
                            _gotoNext = 4982656i32;
                        } else {
                            _gotoNext = 4982812i32;
                        };
                    } else if (__value__ == (4982656i32)) {
                        _t.errorf(("%s:%d: cannot parse result %#q" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4977659), stdgo.Go.toInterface(_field_4978277[(3 : stdgo.GoInt)]));
                        _gotoNext = 4977699i32;
                    } else if (__value__ == (4982812i32)) {
                        _gotoNext = 4982812i32;
                        _keys_4982898 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                        _values_4982898 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                        for (_key => _value in _flag_4981261) {
                            _keys_4982898 = (_keys_4982898.__append__(_key));
                            _values_4982898 = (_values_4982898.__append__(_value));
                        };
                        if ((0i32 : stdgo.GoInt) < (_keys_4982898.length)) {
                            _gotoNext = 4984177i32;
                        } else {
                            _gotoNext = 4984183i32;
                        };
                    } else if (__value__ == (4982910i32)) {
                        _i_4982910++;
                        _gotoNext = 4984178i32;
                    } else if (__value__ == (4982921i32)) {
                        _c_4982905 = _values_4982898[@:invalid_index_invalid_type _i_4982910];
                        var __blank__ = _keys_4982898[@:invalid_index_invalid_type _i_4982910];
                        _pattern_4982926 = _field_4978277[(1 : stdgo.GoInt)]?.__copy__();
                        _syn_4982949 = (4 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 4982989i32;
                    } else if (__value__ == (4982989i32)) {
                        {
                            final __value__ = _c_4982905;
                            if (__value__ == ((69 : stdgo.GoInt32))) {
                                _gotoNext = 4983036i32;
                            } else if (__value__ == ((76 : stdgo.GoInt32))) {
                                _gotoNext = 4983090i32;
                            } else {
                                _gotoNext = 4983003i32;
                            };
                        };
                    } else if (__value__ == (4983003i32)) {
                        _i_4982910++;
                        _gotoNext = 4984178i32;
                    } else if (__value__ == (4983036i32)) {
                        _gotoNext = 4983157i32;
                    } else if (__value__ == (4983090i32)) {
                        _pattern_4982926 = stdgo._internal.regexp.Regexp_quoteMeta.quoteMeta(_pattern_4982926?.__copy__())?.__copy__();
                        _gotoNext = 4983157i32;
                    } else if (__value__ == (4983157i32)) {
                        _keys_4983157 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                        _values_4983157 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                        for (_key => _value in _flag_4981261) {
                            _keys_4983157 = (_keys_4983157.__append__(_key));
                            _values_4983157 = (_values_4983157.__append__(_value));
                        };
                        if ((0i32 : stdgo.GoInt) < (_keys_4983157.length)) {
                            _gotoNext = 4983247i32;
                        } else {
                            _gotoNext = 4983254i32;
                        };
                    } else if (__value__ == (4983169i32)) {
                        _i_4983169++;
                        _gotoNext = 4983248i32;
                    } else if (__value__ == (4983180i32)) {
                        _c_4983164 = _values_4983157[@:invalid_index_invalid_type _i_4983169];
                        var __blank__ = _keys_4983157[@:invalid_index_invalid_type _i_4983169];
                        _gotoNext = 4983186i32;
                    } else if (__value__ == (4983186i32)) {
                        {
                            final __value__ = _c_4983164;
                            if (__value__ == ((105 : stdgo.GoInt32))) {
                                _gotoNext = 4983201i32;
                            } else {
                                _gotoNext = 4983169i32;
                            };
                        };
                    } else if (__value__ == (4983201i32)) {
                        _syn_4982949 = (_syn_4982949 | ((1 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 4983169i32;
                    } else if (__value__ == (4983247i32)) {
                        _i_4983169 = 0i32;
                        _gotoNext = 4983248i32;
                    } else if (__value__ == (4983248i32)) {
                        if (_i_4983169 < (_keys_4983157.length)) {
                            _gotoNext = 4983180i32;
                        } else {
                            _gotoNext = 4983254i32;
                        };
                    } else if (__value__ == (4983254i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp__compile._compile(_pattern_4982926?.__copy__(), _syn_4982949, true);
                            _re_4983254 = __tmp__._0;
                            _err_4983258 = __tmp__._1;
                        };
                        if (_err_4983258 != null) {
                            _gotoNext = 4983310i32;
                        } else {
                            _gotoNext = 4983437i32;
                        };
                    } else if (__value__ == (4983310i32)) {
                        if (_shouldCompile_4982584) {
                            _gotoNext = 4983333i32;
                        } else {
                            _gotoNext = 4983412i32;
                        };
                    } else if (__value__ == (4983333i32)) {
                        _t.errorf(("%s:%d: %#q did not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4977659), stdgo.Go.toInterface(_pattern_4982926));
                        _gotoNext = 4983412i32;
                    } else if (__value__ == (4983412i32)) {
                        _i_4982910++;
                        _gotoNext = 4984178i32;
                    } else if (__value__ == (4983437i32)) {
                        if (!_shouldCompile_4982584) {
                            _gotoNext = 4983455i32;
                        } else {
                            _gotoNext = 4983555i32;
                        };
                    } else if (__value__ == (4983455i32)) {
                        _t.errorf(("%s:%d: %#q should not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4977659), stdgo.Go.toInterface(_pattern_4982926));
                        _i_4982910++;
                        _gotoNext = 4984178i32;
                    } else if (__value__ == (4983555i32)) {
                        _match_4983555 = _re_4983254.matchString(_text_4982524?.__copy__());
                        if (_match_4983555 != (_shouldMatch_4982599)) {
                            _gotoNext = 4983612i32;
                        } else {
                            _gotoNext = 4983744i32;
                        };
                    } else if (__value__ == (4983612i32)) {
                        _t.errorf(("%s:%d: %#q.Match(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4977659), stdgo.Go.toInterface(_pattern_4982926), stdgo.Go.toInterface(_text_4982524), stdgo.Go.toInterface(_match_4983555), stdgo.Go.toInterface(_shouldMatch_4982599));
                        _i_4982910++;
                        _gotoNext = 4984178i32;
                    } else if (__value__ == (4983744i32)) {
                        _have_4983744 = _re_4983254.findStringSubmatchIndex(_text_4982524?.__copy__());
                        if ((((_have_4983744.length) > (0 : stdgo.GoInt) : Bool)) != (_match_4983555)) {
                            _gotoNext = 4983816i32;
                        } else {
                            _gotoNext = 4983984i32;
                        };
                    } else if (__value__ == (4983816i32)) {
                        _t.errorf(("%s:%d: %#q.Match(%#q) = %v, but %#q.FindSubmatchIndex(%#q) = %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4977659), stdgo.Go.toInterface(_pattern_4982926), stdgo.Go.toInterface(_text_4982524), stdgo.Go.toInterface(_match_4983555), stdgo.Go.toInterface(_pattern_4982926), stdgo.Go.toInterface(_text_4982524), stdgo.Go.toInterface(_have_4983744));
                        _i_4982910++;
                        _gotoNext = 4984178i32;
                    } else if (__value__ == (4983984i32)) {
                        if (((_have_4983744.length) > (_pos_4982612.length) : Bool)) {
                            _gotoNext = 4984008i32;
                        } else {
                            _gotoNext = 4984045i32;
                        };
                    } else if (__value__ == (4984008i32)) {
                        _have_4983744 = (_have_4983744.__slice__(0, (_pos_4982612.length)) : stdgo.Slice<stdgo.GoInt>);
                        _gotoNext = 4984045i32;
                    } else if (__value__ == (4984045i32)) {
                        if (!stdgo._internal.regexp.Regexp__same._same(_have_4983744, _pos_4982612)) {
                            _gotoNext = 4984065i32;
                        } else {
                            _gotoNext = 4982910i32;
                        };
                    } else if (__value__ == (4984065i32)) {
                        _t.errorf(("%s:%d: %#q.FindSubmatchIndex(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4977659), stdgo.Go.toInterface(_pattern_4982926), stdgo.Go.toInterface(_text_4982524), stdgo.Go.toInterface(_have_4983744), stdgo.Go.toInterface(_pos_4982612));
                        _gotoNext = 4982910i32;
                    } else if (__value__ == (4984177i32)) {
                        _i_4982910 = 0i32;
                        _gotoNext = 4984178i32;
                    } else if (__value__ == (4984178i32)) {
                        if (_i_4982910 < (_keys_4982898.length)) {
                            _gotoNext = 4982921i32;
                        } else {
                            _gotoNext = 4984183i32;
                        };
                    } else if (__value__ == (4984183i32)) {
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
