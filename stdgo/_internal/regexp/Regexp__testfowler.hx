package stdgo._internal.regexp;
function _testFowler(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _file:stdgo.GoString):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _match_63:Bool = false;
            var _c_60:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _pos_56:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            var _line_44:stdgo.GoString = ("" : stdgo.GoString);
            var _syn_59:stdgo._internal.regexp.syntax.Syntax_flags.Flags = ((0 : stdgo.GoUInt16) : stdgo._internal.regexp.syntax.Syntax_flags.Flags);
            var _shouldMatch_55:Bool = false;
            var _shouldCompile_54:Bool = false;
            var _ok_53:Bool = false;
            var _lineno_42:stdgo.GoInt = (0 : stdgo.GoInt);
            var _err_40:stdgo.Error = (null : stdgo.Error);
            var _keys_5032416 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            var _err_62:stdgo.Error = (null : stdgo.Error);
            var _pattern_58:stdgo.GoString = ("" : stdgo.GoString);
            var _values_5032157 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var _err_45:stdgo.Error = (null : stdgo.Error);
            var readingBreak = false;
            var _ok_50:Bool = false;
            var _f_48:stdgo.GoString = ("" : stdgo.GoString);
            var _f_39:stdgo.Ref<stdgo._internal.os.Os_file.File> = (null : stdgo.Ref<stdgo._internal.os.Os_file.File>);
            var _values_5032416 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var _iterator_5032169 = @:invalid_type null;
            var _text_52:stdgo.GoString = ("" : stdgo.GoString);
            var _flag_49:stdgo.GoString = ("" : stdgo.GoString);
            var _i_47:stdgo.GoInt = (0 : stdgo.GoInt);
            var _lastRegexp_43:stdgo.GoString = ("" : stdgo.GoString);
            var _have_64:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            var _iterator_5032428 = @:invalid_type null;
            var _c_57:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _keys_5032157 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            var _field_46:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
            var _b_41:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>);
            var _re_61:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
            var _f_51:stdgo.GoString = ("" : stdgo.GoString);
            var _gotoNext = 0i64;
            _gotoNext == ((0i64 : stdgo.GoInt));
            //"file://#L0"
            while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
                //"file://#L0"
                {
                    final __value__ = _gotoNext;
                    if (__value__ == (0i64)) {
                        {
                            var __tmp__ = stdgo._internal.os.Os_open.open(_file?.__copy__());
                            _f_39 = @:tmpset0 __tmp__._0;
                            _err_40 = @:tmpset0 __tmp__._1;
                        };
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L342"
                        if (_err_40 != null) {
                            _gotoNext = 5026846i64;
                        } else {
                            _gotoNext = 5026876i64;
                        };
                    } else if (__value__ == (5026846i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L343"
                        _t.error(stdgo.Go.toInterface(_err_40));
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L344"
                        return;
                        _gotoNext = 5026876i64;
                    } else if (__value__ == (5026876i64)) {
                        {
                            final __f__ = _f_39.close;
                            __deferstack__.unshift({ ran : false, f : () -> __f__() });
                        };
                        _b_41 = stdgo._internal.bufio.Bufio_newreader.newReader(stdgo.Go.asInterface(_f_39));
                        _lineno_42 = (0 : stdgo.GoInt);
                        _lastRegexp_43 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _gotoNext = 5026948i64;
                    } else if (__value__ == (5026948i64)) {
                        0i64;
                        readingBreak = false;
                        _gotoNext = 5026958i64;
                    } else if (__value__ == (5026958i64)) {
                        //"file://#L0"
                        if (!readingBreak) {
                            _gotoNext = 5026962i64;
                        } else {
                            _gotoNext = 5033442i64;
                        };
                    } else if (__value__ == (5026962i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L352"
                        _lineno_42++;
                        {
                            var __tmp__ = _b_41.readString((10 : stdgo.GoUInt8));
                            _line_44 = @:tmpset0 __tmp__._0?.__copy__();
                            _err_45 = @:tmpset0 __tmp__._1;
                        };
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L354"
                        if (_err_45 != null) {
                            _gotoNext = 5027025i64;
                        } else {
                            _gotoNext = 5027443i64;
                        };
                    } else if (__value__ == (5027025i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L355"
                        if (stdgo.Go.toInterface(_err_45) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                            _gotoNext = 5027047i64;
                        } else {
                            _gotoNext = 5027102i64;
                        };
                    } else if (__value__ == (5027047i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L356"
                        _t.errorf(("%s:%d: %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_42), stdgo.Go.toInterface(_err_45));
                        _gotoNext = 5027102i64;
                    } else if (__value__ == (5027102i64)) {
                        readingBreak = true;
                        _gotoNext = 5026958i64;
                    } else if (__value__ == (5027443i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L368"
                        if (((_line_44[(0 : stdgo.GoInt)] == (35 : stdgo.GoUInt8)) || (_line_44[(0 : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 5027480i64;
                        } else {
                            _gotoNext = 5027508i64;
                        };
                    } else if (__value__ == (5027480i64)) {
                        _gotoNext = 5026958i64;
                    } else if (__value__ == (5027508i64)) {
                        _line_44 = (_line_44.__slice__(0, ((_line_44.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_46 = stdgo._internal.regexp.Regexp__notab._notab.findAllString(_line_44?.__copy__(), (-1 : stdgo.GoInt));
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L373"
                        if ((0i64 : stdgo.GoInt) < (_field_46.length)) {
                            _gotoNext = 5027742i64;
                        } else {
                            _gotoNext = 5027747i64;
                        };
                    } else if (__value__ == (5027581i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L373"
                        _i_47++;
                        _gotoNext = 5027743i64;
                    } else if (__value__ == (5027601i64)) {
                        _f_48 = _field_46[(_i_47 : stdgo.GoInt)]?.__copy__();
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L374"
                        if (_f_48 == (("NULL" : stdgo.GoString))) {
                            _gotoNext = 5027621i64;
                        } else {
                            _gotoNext = 5027649i64;
                        };
                    } else if (__value__ == (5027621i64)) {
                        _field_46[(_i_47 : stdgo.GoInt)] = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _gotoNext = 5027649i64;
                    } else if (__value__ == (5027649i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L377"
                        if (_f_48 == (("NIL" : stdgo.GoString))) {
                            _gotoNext = 5027663i64;
                        } else {
                            _gotoNext = 5027581i64;
                        };
                    } else if (__value__ == (5027663i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L378"
                        _t.logf(("%s:%d: skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_42), stdgo.Go.toInterface(_line_44));
                        _gotoNext = 5026958i64;
                    } else if (__value__ == (5027742i64)) {
                        {
                            final __tmp__0 = 0i64;
                            final __tmp__1 = _field_46[(0i64 : stdgo.GoInt)]?.__copy__();
                            _i_47 = @:binopAssign __tmp__0;
                            _f_48 = @:binopAssign __tmp__1;
                        };
                        _gotoNext = 5027743i64;
                    } else if (__value__ == (5027743i64)) {
                        //"file://#L0"
                        if (_i_47 < (_field_46.length)) {
                            _gotoNext = 5027601i64;
                        } else {
                            _gotoNext = 5027747i64;
                        };
                    } else if (__value__ == (5027747i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L382"
                        if ((_field_46.length) == ((0 : stdgo.GoInt))) {
                            _gotoNext = 5027766i64;
                        } else {
                            _gotoNext = 5030520i64;
                        };
                    } else if (__value__ == (5027766i64)) {
                        _gotoNext = 5026958i64;
                    } else if (__value__ == (5030520i64)) {
                        _flag_49 = _field_46[(0 : stdgo.GoInt)]?.__copy__();
                        _gotoNext = 5030539i64;
                    } else if (__value__ == (5030539i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L447"
                        {
                            final __value__ = _flag_49[(0 : stdgo.GoInt)];
                            if (__value__ == ((63 : stdgo.GoUInt8)) || __value__ == ((38 : stdgo.GoUInt8)) || __value__ == ((124 : stdgo.GoUInt8)) || __value__ == ((59 : stdgo.GoUInt8)) || __value__ == ((123 : stdgo.GoUInt8)) || __value__ == ((125 : stdgo.GoUInt8))) {
                                _gotoNext = 5030558i64;
                            } else if (__value__ == ((58 : stdgo.GoUInt8))) {
                                _gotoNext = 5030726i64;
                            } else if (__value__ == ((67 : stdgo.GoUInt8)) || __value__ == ((78 : stdgo.GoUInt8)) || __value__ == ((84 : stdgo.GoUInt8)) || __value__ == ((48 : stdgo.GoUInt8)) || __value__ == ((49 : stdgo.GoUInt8)) || __value__ == ((50 : stdgo.GoUInt8)) || __value__ == ((51 : stdgo.GoUInt8)) || __value__ == ((52 : stdgo.GoUInt8)) || __value__ == ((53 : stdgo.GoUInt8)) || __value__ == ((54 : stdgo.GoUInt8)) || __value__ == ((55 : stdgo.GoUInt8)) || __value__ == ((56 : stdgo.GoUInt8)) || __value__ == ((57 : stdgo.GoUInt8))) {
                                _gotoNext = 5030862i64;
                            } else {
                                _gotoNext = 5031065i64;
                            };
                        };
                    } else if (__value__ == (5030558i64)) {
                        _flag_49 = (_flag_49.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L452"
                        if (_flag_49 == ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 5030696i64;
                        } else {
                            _gotoNext = 5031065i64;
                        };
                    } else if (__value__ == (5030696i64)) {
                        _gotoNext = 5026958i64;
                    } else if (__value__ == (5030726i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L457"
                        {
                            {
                                var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_flag_49.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (":" : stdgo.GoString));
                                _flag_49 = @:tmpset0 __tmp__._1?.__copy__();
                                _ok_50 = @:tmpset0 __tmp__._2;
                            };
                            if (!_ok_50) {
                                _gotoNext = 5030803i64;
                            } else {
                                _gotoNext = 5031065i64;
                            };
                        };
                    } else if (__value__ == (5030803i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L458"
                        _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line_44));
                        _gotoNext = 5026958i64;
                    } else if (__value__ == (5030862i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L462"
                        _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line_44));
                        _gotoNext = 5026958i64;
                    } else if (__value__ == (5031065i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L467"
                        if (((_field_46.length) < (4 : stdgo.GoInt) : Bool)) {
                            _gotoNext = 5031083i64;
                        } else {
                            _gotoNext = 5031216i64;
                        };
                    } else if (__value__ == (5031083i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L468"
                        _t.errorf(("%s:%d: too few fields: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_42), stdgo.Go.toInterface(_line_44));
                        _gotoNext = 5026958i64;
                    } else if (__value__ == (5031216i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L473"
                        if (stdgo._internal.strings.Strings_contains.contains(_flag_49?.__copy__(), ("$" : stdgo.GoString))) {
                            _gotoNext = 5031247i64;
                        } else {
                            _gotoNext = 5031666i64;
                        };
                    } else if (__value__ == (5031247i64)) {
                        _f_51 = ((("\"" : stdgo.GoString) + _field_46[(1 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L475"
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_f_51?.__copy__());
                                _field_46[(1 : stdgo.GoInt)] = @:tmpset0 __tmp__._0?.__copy__();
                                _err_45 = @:tmpset0 __tmp__._1;
                            };
                            if (_err_45 != null) {
                                _gotoNext = 5031331i64;
                            } else {
                                _gotoNext = 5031399i64;
                            };
                        };
                    } else if (__value__ == (5031331i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L476"
                        _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_42), stdgo.Go.toInterface(_f_51));
                        _gotoNext = 5031399i64;
                    } else if (__value__ == (5031399i64)) {
                        _f_51 = ((("\"" : stdgo.GoString) + _field_46[(2 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L479"
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_f_51?.__copy__());
                                _field_46[(2 : stdgo.GoInt)] = @:tmpset0 __tmp__._0?.__copy__();
                                _err_45 = @:tmpset0 __tmp__._1;
                            };
                            if (_err_45 != null) {
                                _gotoNext = 5031477i64;
                            } else {
                                _gotoNext = 5031666i64;
                            };
                        };
                    } else if (__value__ == (5031477i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L480"
                        _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_42), stdgo.Go.toInterface(_f_51));
                        _gotoNext = 5031666i64;
                    } else if (__value__ == (5031666i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L487"
                        if (_field_46[(1 : stdgo.GoInt)] == (("SAME" : stdgo.GoString))) {
                            _gotoNext = 5031688i64;
                        } else {
                            _gotoNext = 5031721i64;
                        };
                    } else if (__value__ == (5031688i64)) {
                        _field_46[(1 : stdgo.GoInt)] = _lastRegexp_43?.__copy__();
                        _gotoNext = 5031721i64;
                    } else if (__value__ == (5031721i64)) {
                        _lastRegexp_43 = _field_46[(1 : stdgo.GoInt)]?.__copy__();
                        _text_52 = _field_46[(2 : stdgo.GoInt)]?.__copy__();
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp__parsefowlerresult._parseFowlerResult(_field_46[(3 : stdgo.GoInt)]?.__copy__());
                            _ok_53 = @:tmpset0 __tmp__._0;
                            _shouldCompile_54 = @:tmpset0 __tmp__._1;
                            _shouldMatch_55 = @:tmpset0 __tmp__._2;
                            _pos_56 = @:tmpset0 __tmp__._3;
                        };
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L497"
                        if (!_ok_53) {
                            _gotoNext = 5031915i64;
                        } else {
                            _gotoNext = 5032071i64;
                        };
                    } else if (__value__ == (5031915i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L498"
                        _t.errorf(("%s:%d: cannot parse result %#q" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_42), stdgo.Go.toInterface(_field_46[(3 : stdgo.GoInt)]));
                        _gotoNext = 5026958i64;
                    } else if (__value__ == (5032071i64)) {
                        _gotoNext = 5032071i64;
                        _keys_5032157 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                        _values_5032157 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L506"
                        for (_key => _value in _flag_49) {
                            _keys_5032157 = _keys_5032157.__append__(_key);
                            _values_5032157 = _values_5032157.__append__(_value);
                        };
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L506"
                        if ((0i64 : stdgo.GoInt) < (_keys_5032157.length)) {
                            _gotoNext = 5033436i64;
                        } else {
                            _gotoNext = 5026958i64;
                        };
                    } else if (__value__ == (5032169i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L506"
                        _iterator_5032169++;
                        _gotoNext = 5033437i64;
                    } else if (__value__ == (5032180i64)) {
                        _c_57 = _values_5032157[@:invalid_index_invalid_type _iterator_5032169];
                        _keys_5032157[@:invalid_index_invalid_type _iterator_5032169];
                        _pattern_58 = _field_46[(1 : stdgo.GoInt)]?.__copy__();
                        _syn_59 = (4 : stdgo._internal.regexp.syntax.Syntax_flags.Flags);
                        _gotoNext = 5032248i64;
                    } else if (__value__ == (5032248i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L509"
                        {
                            final __value__ = _c_57;
                            if (__value__ == ((69 : stdgo.GoInt32))) {
                                _gotoNext = 5032295i64;
                            } else if (__value__ == ((76 : stdgo.GoInt32))) {
                                _gotoNext = 5032349i64;
                            } else {
                                _gotoNext = 5032262i64;
                            };
                        };
                    } else if (__value__ == (5032262i64)) {
                        //"file://#L0"
                        _iterator_5032169++;
                        _gotoNext = 5033437i64;
                    } else if (__value__ == (5032295i64)) {
                        _gotoNext = 5032416i64;
                    } else if (__value__ == (5032349i64)) {
                        _pattern_58 = stdgo._internal.regexp.Regexp_quotemeta.quoteMeta(_pattern_58?.__copy__())?.__copy__();
                        _gotoNext = 5032416i64;
                    } else if (__value__ == (5032416i64)) {
                        _keys_5032416 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                        _values_5032416 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L519"
                        for (_key => _value in _flag_49) {
                            _keys_5032416 = _keys_5032416.__append__(_key);
                            _values_5032416 = _values_5032416.__append__(_value);
                        };
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L519"
                        if ((0i64 : stdgo.GoInt) < (_keys_5032416.length)) {
                            _gotoNext = 5032506i64;
                        } else {
                            _gotoNext = 5032513i64;
                        };
                    } else if (__value__ == (5032428i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L519"
                        _iterator_5032428++;
                        _gotoNext = 5032507i64;
                    } else if (__value__ == (5032439i64)) {
                        _c_60 = _values_5032416[@:invalid_index_invalid_type _iterator_5032428];
                        _keys_5032416[@:invalid_index_invalid_type _iterator_5032428];
                        _gotoNext = 5032445i64;
                    } else if (__value__ == (5032445i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L520"
                        {
                            final __value__ = _c_60;
                            if (__value__ == ((105 : stdgo.GoInt32))) {
                                _gotoNext = 5032460i64;
                            } else {
                                _gotoNext = 5032428i64;
                            };
                        };
                    } else if (__value__ == (5032460i64)) {
                        _syn_59 = (_syn_59 | ((1 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_flags.Flags);
                        _gotoNext = 5032428i64;
                    } else if (__value__ == (5032506i64)) {
                        _iterator_5032428 = 0i64;
                        _gotoNext = 5032507i64;
                    } else if (__value__ == (5032507i64)) {
                        //"file://#L0"
                        if (_iterator_5032428 < (_keys_5032416.length)) {
                            _gotoNext = 5032439i64;
                        } else {
                            _gotoNext = 5032513i64;
                        };
                    } else if (__value__ == (5032513i64)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp__compile._compile(_pattern_58?.__copy__(), _syn_59, true);
                            _re_61 = @:tmpset0 __tmp__._0;
                            _err_62 = @:tmpset0 __tmp__._1;
                        };
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L527"
                        if (_err_62 != null) {
                            _gotoNext = 5032569i64;
                        } else {
                            _gotoNext = 5032696i64;
                        };
                    } else if (__value__ == (5032569i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L528"
                        if (_shouldCompile_54) {
                            _gotoNext = 5032592i64;
                        } else {
                            _gotoNext = 5032671i64;
                        };
                    } else if (__value__ == (5032592i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L529"
                        _t.errorf(("%s:%d: %#q did not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_42), stdgo.Go.toInterface(_pattern_58));
                        _gotoNext = 5032671i64;
                    } else if (__value__ == (5032671i64)) {
                        //"file://#L0"
                        _iterator_5032169++;
                        _gotoNext = 5033437i64;
                    } else if (__value__ == (5032696i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L533"
                        if (!_shouldCompile_54) {
                            _gotoNext = 5032714i64;
                        } else {
                            _gotoNext = 5032814i64;
                        };
                    } else if (__value__ == (5032714i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L534"
                        _t.errorf(("%s:%d: %#q should not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_42), stdgo.Go.toInterface(_pattern_58));
                        //"file://#L0"
                        _iterator_5032169++;
                        _gotoNext = 5033437i64;
                    } else if (__value__ == (5032814i64)) {
                        _match_63 = _re_61.matchString(_text_52?.__copy__());
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L538"
                        if (_match_63 != (_shouldMatch_55)) {
                            _gotoNext = 5032871i64;
                        } else {
                            _gotoNext = 5033003i64;
                        };
                    } else if (__value__ == (5032871i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L539"
                        _t.errorf(("%s:%d: %#q.Match(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_42), stdgo.Go.toInterface(_pattern_58), stdgo.Go.toInterface(_text_52), stdgo.Go.toInterface(_match_63), stdgo.Go.toInterface(_shouldMatch_55));
                        //"file://#L0"
                        _iterator_5032169++;
                        _gotoNext = 5033437i64;
                    } else if (__value__ == (5033003i64)) {
                        _have_64 = _re_61.findStringSubmatchIndex(_text_52?.__copy__());
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L543"
                        if ((((_have_64.length) > (0 : stdgo.GoInt) : Bool)) != (_match_63)) {
                            _gotoNext = 5033075i64;
                        } else {
                            _gotoNext = 5033243i64;
                        };
                    } else if (__value__ == (5033075i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L544"
                        _t.errorf(("%s:%d: %#q.Match(%#q) = %v, but %#q.FindSubmatchIndex(%#q) = %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_42), stdgo.Go.toInterface(_pattern_58), stdgo.Go.toInterface(_text_52), stdgo.Go.toInterface(_match_63), stdgo.Go.toInterface(_pattern_58), stdgo.Go.toInterface(_text_52), stdgo.Go.toInterface(_have_64));
                        //"file://#L0"
                        _iterator_5032169++;
                        _gotoNext = 5033437i64;
                    } else if (__value__ == (5033243i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L547"
                        if (((_have_64.length) > (_pos_56.length) : Bool)) {
                            _gotoNext = 5033267i64;
                        } else {
                            _gotoNext = 5033304i64;
                        };
                    } else if (__value__ == (5033267i64)) {
                        _have_64 = (_have_64.__slice__(0, (_pos_56.length)) : stdgo.Slice<stdgo.GoInt>);
                        _gotoNext = 5033304i64;
                    } else if (__value__ == (5033304i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L550"
                        if (!stdgo._internal.regexp.Regexp__same._same(_have_64, _pos_56)) {
                            _gotoNext = 5033324i64;
                        } else {
                            _gotoNext = 5032169i64;
                        };
                    } else if (__value__ == (5033324i64)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L551"
                        _t.errorf(("%s:%d: %#q.FindSubmatchIndex(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_42), stdgo.Go.toInterface(_pattern_58), stdgo.Go.toInterface(_text_52), stdgo.Go.toInterface(_have_64), stdgo.Go.toInterface(_pos_56));
                        _gotoNext = 5032169i64;
                    } else if (__value__ == (5033436i64)) {
                        _iterator_5032169 = 0i64;
                        _gotoNext = 5033437i64;
                    } else if (__value__ == (5033437i64)) {
                        //"file://#L0"
                        if (_iterator_5032169 < (_keys_5032157.length)) {
                            _gotoNext = 5032180i64;
                        } else {
                            _gotoNext = 5026958i64;
                        };
                    } else if (__value__ == (5033442i64)) {
                        _gotoNext = -1i64;
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
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
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
