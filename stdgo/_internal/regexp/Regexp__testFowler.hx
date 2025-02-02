package stdgo._internal.regexp;
import stdgo._internal.strings.Strings;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.regexp.syntax.Syntax;
import stdgo._internal.testing.Testing;
import stdgo._internal.os.Os;
import stdgo._internal.compress.bzip2.Bzip2;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.io.Io;
import stdgo._internal.internal.testenv.Testenv;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.bytes.Bytes;
function _testFowler(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _file:stdgo.GoString):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _values_4831390 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var _shouldCompile_4831076:Bool = false;
            var _i_4826814:stdgo.GoInt = (0 : stdgo.GoInt);
            var _lineno_4826151:stdgo.GoInt = (0 : stdgo.GoInt);
            var _c_4831397:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _i_4831402 = @:invalid_type null;
            var _match_4832047:Bool = false;
            var _err_4826216:stdgo.Error = (null : stdgo.Error);
            var _field_4826769:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
            var _err_4826043:stdgo.Error = (null : stdgo.Error);
            var _f_4826040:stdgo.Ref<stdgo._internal.os.Os_File.File> = (null : stdgo.Ref<stdgo._internal.os.Os_File.File>);
            var _err_4831750:stdgo.Error = (null : stdgo.Error);
            var _values_4831649 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var _pattern_4831418:stdgo.GoString = ("" : stdgo.GoString);
            var _text_4831016:stdgo.GoString = ("" : stdgo.GoString);
            var _shouldMatch_4831091:Bool = false;
            var _line_4826210:stdgo.GoString = ("" : stdgo.GoString);
            var _b_4826126:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
            var _re_4831746:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
            var _keys_4831649 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            var _syn_4831441:stdgo._internal.regexp.syntax.Syntax_Flags.Flags = ((0 : stdgo.GoUInt16) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
            var _keys_4831390 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            var _pos_4831104:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            var _c_4831656:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _ok_4831072:Bool = false;
            var _ok_4829976:Bool = false;
            var _f_4826817:stdgo.GoString = ("" : stdgo.GoString);
            var readingBreak = false;
            var _i_4831661 = @:invalid_type null;
            var _f_4830485:stdgo.GoString = ("" : stdgo.GoString);
            var _flag_4829753:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRegexp_4826164:stdgo.GoString = ("" : stdgo.GoString);
            var _have_4832236:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            var _gotoNext = 0i32;
            var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
            while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
                {
                    final __value__ = _gotoNext;
                    if (__value__ == (0i32)) {
                        {
                            var __tmp__ = stdgo._internal.os.Os_open.open(_file?.__copy__());
                            _f_4826040 = @:tmpset0 __tmp__._0;
                            _err_4826043 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_4826043 != null) {
                            _gotoNext = 4826079i32;
                        } else {
                            _gotoNext = 4826109i32;
                        };
                    } else if (__value__ == (4826079i32)) {
                        @:check2r _t.error(stdgo.Go.toInterface(_err_4826043));
                        return;
                        _gotoNext = 4826109i32;
                    } else if (__value__ == (4826109i32)) {
                        {
                            final __f__ = @:check2r _f_4826040.close;
                            __deferstack__.unshift({ ran : false, f : () -> __f__() });
                        };
                        _b_4826126 = stdgo._internal.bufio.Bufio_newReader.newReader(stdgo.Go.asInterface(_f_4826040));
                        _lineno_4826151 = (0 : stdgo.GoInt);
                        _lastRegexp_4826164 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 4826181i32;
                    } else if (__value__ == (4826181i32)) {
                        var __blank__ = 0i32;
                        readingBreak = false;
                        _gotoNext = 4826191i32;
                    } else if (__value__ == (4826191i32)) {
                        if (!readingBreak) {
                            _gotoNext = 4826195i32;
                        } else {
                            _gotoNext = 4832675i32;
                        };
                    } else if (__value__ == (4826195i32)) {
                        _lineno_4826151++;
                        {
                            var __tmp__ = @:check2r _b_4826126.readString((10 : stdgo.GoUInt8));
                            _line_4826210 = @:tmpset0 __tmp__._0?.__copy__();
                            _err_4826216 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_4826216 != null) {
                            _gotoNext = 4826258i32;
                        } else {
                            _gotoNext = 4826676i32;
                        };
                    } else if (__value__ == (4826258i32)) {
                        if (stdgo.Go.toInterface(_err_4826216) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eOF.eOF))) {
                            _gotoNext = 4826280i32;
                        } else {
                            _gotoNext = 4826335i32;
                        };
                    } else if (__value__ == (4826280i32)) {
                        @:check2r _t.errorf(("%s:%d: %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4826151), stdgo.Go.toInterface(_err_4826216));
                        _gotoNext = 4826335i32;
                    } else if (__value__ == (4826335i32)) {
                        readingBreak = true;
                        _gotoNext = 4826191i32;
                    } else if (__value__ == (4826676i32)) {
                        if (((_line_4826210[(0 : stdgo.GoInt)] == (35 : stdgo.GoUInt8)) || (_line_4826210[(0 : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 4826713i32;
                        } else {
                            _gotoNext = 4826741i32;
                        };
                    } else if (__value__ == (4826713i32)) {
                        _gotoNext = 4826191i32;
                    } else if (__value__ == (4826741i32)) {
                        _line_4826210 = (_line_4826210.__slice__(0, ((_line_4826210.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_4826769 = @:check2r stdgo._internal.regexp.Regexp__notab._notab.findAllString(_line_4826210?.__copy__(), (-1 : stdgo.GoInt));
                        if ((0i32 : stdgo.GoInt) < (_field_4826769.length)) {
                            _gotoNext = 4826975i32;
                        } else {
                            _gotoNext = 4826980i32;
                        };
                    } else if (__value__ == (4826814i32)) {
                        _i_4826814++;
                        _gotoNext = 4826976i32;
                    } else if (__value__ == (4826834i32)) {
                        _f_4826817 = _field_4826769[(_i_4826814 : stdgo.GoInt)]?.__copy__();
                        if (_f_4826817 == (("NULL" : stdgo.GoString))) {
                            _gotoNext = 4826854i32;
                        } else {
                            _gotoNext = 4826882i32;
                        };
                    } else if (__value__ == (4826854i32)) {
                        _field_4826769[(_i_4826814 : stdgo.GoInt)] = stdgo.Go.str()?.__copy__();
                        _gotoNext = 4826882i32;
                    } else if (__value__ == (4826882i32)) {
                        if (_f_4826817 == (("NIL" : stdgo.GoString))) {
                            _gotoNext = 4826896i32;
                        } else {
                            _gotoNext = 4826814i32;
                        };
                    } else if (__value__ == (4826896i32)) {
                        @:check2r _t.logf(("%s:%d: skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4826151), stdgo.Go.toInterface(_line_4826210));
                        _gotoNext = 4826191i32;
                    } else if (__value__ == (4826975i32)) {
                        {
                            final __tmp__0 = 0i32;
                            final __tmp__1 = _field_4826769[(0i32 : stdgo.GoInt)]?.__copy__();
                            _i_4826814 = __tmp__0;
                            _f_4826817 = __tmp__1;
                        };
                        _gotoNext = 4826976i32;
                    } else if (__value__ == (4826976i32)) {
                        if (_i_4826814 < (_field_4826769.length)) {
                            _gotoNext = 4826834i32;
                        } else {
                            _gotoNext = 4826980i32;
                        };
                    } else if (__value__ == (4826980i32)) {
                        if ((_field_4826769.length) == ((0 : stdgo.GoInt))) {
                            _gotoNext = 4826999i32;
                        } else {
                            _gotoNext = 4829753i32;
                        };
                    } else if (__value__ == (4826999i32)) {
                        _gotoNext = 4826191i32;
                    } else if (__value__ == (4829753i32)) {
                        _flag_4829753 = _field_4826769[(0 : stdgo.GoInt)]?.__copy__();
                        _gotoNext = 4829772i32;
                    } else if (__value__ == (4829772i32)) {
                        {
                            final __value__ = _flag_4829753[(0 : stdgo.GoInt)];
                            if (__value__ == ((63 : stdgo.GoUInt8)) || __value__ == ((38 : stdgo.GoUInt8)) || __value__ == ((124 : stdgo.GoUInt8)) || __value__ == ((59 : stdgo.GoUInt8)) || __value__ == ((123 : stdgo.GoUInt8)) || __value__ == ((125 : stdgo.GoUInt8))) {
                                _gotoNext = 4829791i32;
                            } else if (__value__ == ((58 : stdgo.GoUInt8))) {
                                _gotoNext = 4829959i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8)) || __value__ == ((78 : stdgo.GoUInt8)) || __value__ == ((84 : stdgo.GoUInt8)) || __value__ == ((48 : stdgo.GoUInt8)) || __value__ == ((49 : stdgo.GoUInt8)) || __value__ == ((50 : stdgo.GoUInt8)) || __value__ == ((51 : stdgo.GoUInt8)) || __value__ == ((52 : stdgo.GoUInt8)) || __value__ == ((53 : stdgo.GoUInt8)) || __value__ == ((54 : stdgo.GoUInt8)) || __value__ == ((55 : stdgo.GoUInt8)) || __value__ == ((56 : stdgo.GoUInt8)) || __value__ == ((57 : stdgo.GoUInt8))) {
                                _gotoNext = 4830095i32;
                            } else {
                                _gotoNext = 4830298i32;
                            };
                        };
                    } else if (__value__ == (4829791i32)) {
                        _flag_4829753 = (_flag_4829753.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        if (_flag_4829753 == (stdgo.Go.str())) {
                            _gotoNext = 4829929i32;
                        } else {
                            _gotoNext = 4830298i32;
                        };
                    } else if (__value__ == (4829929i32)) {
                        _gotoNext = 4826191i32;
                    } else if (__value__ == (4829959i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_flag_4829753.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (":" : stdgo.GoString));
                                _flag_4829753 = @:tmpset0 __tmp__._1?.__copy__();
                                _ok_4829976 = @:tmpset0 __tmp__._2;
                            };
                            if (!_ok_4829976) {
                                _gotoNext = 4830036i32;
                            } else {
                                _gotoNext = 4830298i32;
                            };
                        };
                    } else if (__value__ == (4830036i32)) {
                        @:check2r _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line_4826210));
                        _gotoNext = 4826191i32;
                    } else if (__value__ == (4830095i32)) {
                        @:check2r _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line_4826210));
                        _gotoNext = 4826191i32;
                    } else if (__value__ == (4830298i32)) {
                        if (((_field_4826769.length) < (4 : stdgo.GoInt) : Bool)) {
                            _gotoNext = 4830316i32;
                        } else {
                            _gotoNext = 4830449i32;
                        };
                    } else if (__value__ == (4830316i32)) {
                        @:check2r _t.errorf(("%s:%d: too few fields: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4826151), stdgo.Go.toInterface(_line_4826210));
                        _gotoNext = 4826191i32;
                    } else if (__value__ == (4830449i32)) {
                        if (stdgo._internal.strings.Strings_contains.contains(_flag_4829753?.__copy__(), ("$" : stdgo.GoString))) {
                            _gotoNext = 4830480i32;
                        } else {
                            _gotoNext = 4830899i32;
                        };
                    } else if (__value__ == (4830480i32)) {
                        _f_4830485 = ((("\"" : stdgo.GoString) + _field_4826769[(1 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_f_4830485?.__copy__());
                                _field_4826769[(1 : stdgo.GoInt)] = @:tmpset0 __tmp__._0?.__copy__();
                                _err_4826216 = @:tmpset0 __tmp__._1;
                            };
                            if (_err_4826216 != null) {
                                _gotoNext = 4830564i32;
                            } else {
                                _gotoNext = 4830632i32;
                            };
                        };
                    } else if (__value__ == (4830564i32)) {
                        @:check2r _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4826151), stdgo.Go.toInterface(_f_4830485));
                        _gotoNext = 4830632i32;
                    } else if (__value__ == (4830632i32)) {
                        _f_4830485 = ((("\"" : stdgo.GoString) + _field_4826769[(2 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_f_4830485?.__copy__());
                                _field_4826769[(2 : stdgo.GoInt)] = @:tmpset0 __tmp__._0?.__copy__();
                                _err_4826216 = @:tmpset0 __tmp__._1;
                            };
                            if (_err_4826216 != null) {
                                _gotoNext = 4830710i32;
                            } else {
                                _gotoNext = 4830899i32;
                            };
                        };
                    } else if (__value__ == (4830710i32)) {
                        @:check2r _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4826151), stdgo.Go.toInterface(_f_4830485));
                        _gotoNext = 4830899i32;
                    } else if (__value__ == (4830899i32)) {
                        if (_field_4826769[(1 : stdgo.GoInt)] == (("SAME" : stdgo.GoString))) {
                            _gotoNext = 4830921i32;
                        } else {
                            _gotoNext = 4830954i32;
                        };
                    } else if (__value__ == (4830921i32)) {
                        _field_4826769[(1 : stdgo.GoInt)] = _lastRegexp_4826164?.__copy__();
                        _gotoNext = 4830954i32;
                    } else if (__value__ == (4830954i32)) {
                        _lastRegexp_4826164 = _field_4826769[(1 : stdgo.GoInt)]?.__copy__();
                        _text_4831016 = _field_4826769[(2 : stdgo.GoInt)]?.__copy__();
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp__parseFowlerResult._parseFowlerResult(_field_4826769[(3 : stdgo.GoInt)]?.__copy__());
                            _ok_4831072 = @:tmpset0 __tmp__._0;
                            _shouldCompile_4831076 = @:tmpset0 __tmp__._1;
                            _shouldMatch_4831091 = @:tmpset0 __tmp__._2;
                            _pos_4831104 = @:tmpset0 __tmp__._3;
                        };
                        if (!_ok_4831072) {
                            _gotoNext = 4831148i32;
                        } else {
                            _gotoNext = 4831304i32;
                        };
                    } else if (__value__ == (4831148i32)) {
                        @:check2r _t.errorf(("%s:%d: cannot parse result %#q" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4826151), stdgo.Go.toInterface(_field_4826769[(3 : stdgo.GoInt)]));
                        _gotoNext = 4826191i32;
                    } else if (__value__ == (4831304i32)) {
                        _gotoNext = 4831304i32;
                        _keys_4831390 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                        _values_4831390 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                        for (_key => _value in _flag_4829753) {
                            _keys_4831390 = (_keys_4831390.__append__(_key));
                            _values_4831390 = (_values_4831390.__append__(_value));
                        };
                        if ((0i32 : stdgo.GoInt) < (_keys_4831390.length)) {
                            _gotoNext = 4832669i32;
                        } else {
                            _gotoNext = 4826191i32;
                        };
                    } else if (__value__ == (4831402i32)) {
                        _i_4831402++;
                        _gotoNext = 4832670i32;
                    } else if (__value__ == (4831413i32)) {
                        _c_4831397 = _values_4831390[@:invalid_index_invalid_type _i_4831402];
                        var __blank__ = _keys_4831390[@:invalid_index_invalid_type _i_4831402];
                        _pattern_4831418 = _field_4826769[(1 : stdgo.GoInt)]?.__copy__();
                        _syn_4831441 = (4 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 4831481i32;
                    } else if (__value__ == (4831481i32)) {
                        {
                            final __value__ = _c_4831397;
                            if (__value__ == ((69 : stdgo.GoInt32))) {
                                _gotoNext = 4831528i32;
                            } else if (__value__ == ((76 : stdgo.GoInt32))) {
                                _gotoNext = 4831582i32;
                            } else {
                                _gotoNext = 4831495i32;
                            };
                        };
                    } else if (__value__ == (4831495i32)) {
                        _i_4831402++;
                        _gotoNext = 4832670i32;
                    } else if (__value__ == (4831528i32)) {
                        _gotoNext = 4831649i32;
                    } else if (__value__ == (4831582i32)) {
                        _pattern_4831418 = stdgo._internal.regexp.Regexp_quoteMeta.quoteMeta(_pattern_4831418?.__copy__())?.__copy__();
                        _gotoNext = 4831649i32;
                    } else if (__value__ == (4831649i32)) {
                        _keys_4831649 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                        _values_4831649 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                        for (_key => _value in _flag_4829753) {
                            _keys_4831649 = (_keys_4831649.__append__(_key));
                            _values_4831649 = (_values_4831649.__append__(_value));
                        };
                        if ((0i32 : stdgo.GoInt) < (_keys_4831649.length)) {
                            _gotoNext = 4831739i32;
                        } else {
                            _gotoNext = 4831746i32;
                        };
                    } else if (__value__ == (4831661i32)) {
                        _i_4831661++;
                        _gotoNext = 4831740i32;
                    } else if (__value__ == (4831672i32)) {
                        _c_4831656 = _values_4831649[@:invalid_index_invalid_type _i_4831661];
                        var __blank__ = _keys_4831649[@:invalid_index_invalid_type _i_4831661];
                        _gotoNext = 4831678i32;
                    } else if (__value__ == (4831678i32)) {
                        {
                            final __value__ = _c_4831656;
                            if (__value__ == ((105 : stdgo.GoInt32))) {
                                _gotoNext = 4831693i32;
                            } else {
                                _gotoNext = 4831661i32;
                            };
                        };
                    } else if (__value__ == (4831693i32)) {
                        _syn_4831441 = (_syn_4831441 | ((1 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 4831661i32;
                    } else if (__value__ == (4831739i32)) {
                        _i_4831661 = 0i32;
                        _gotoNext = 4831740i32;
                    } else if (__value__ == (4831740i32)) {
                        if (_i_4831661 < (_keys_4831649.length)) {
                            _gotoNext = 4831672i32;
                        } else {
                            _gotoNext = 4831746i32;
                        };
                    } else if (__value__ == (4831746i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp__compile._compile(_pattern_4831418?.__copy__(), _syn_4831441, true);
                            _re_4831746 = @:tmpset0 __tmp__._0;
                            _err_4831750 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_4831750 != null) {
                            _gotoNext = 4831802i32;
                        } else {
                            _gotoNext = 4831929i32;
                        };
                    } else if (__value__ == (4831802i32)) {
                        if (_shouldCompile_4831076) {
                            _gotoNext = 4831825i32;
                        } else {
                            _gotoNext = 4831904i32;
                        };
                    } else if (__value__ == (4831825i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q did not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4826151), stdgo.Go.toInterface(_pattern_4831418));
                        _gotoNext = 4831904i32;
                    } else if (__value__ == (4831904i32)) {
                        _i_4831402++;
                        _gotoNext = 4832670i32;
                    } else if (__value__ == (4831929i32)) {
                        if (!_shouldCompile_4831076) {
                            _gotoNext = 4831947i32;
                        } else {
                            _gotoNext = 4832047i32;
                        };
                    } else if (__value__ == (4831947i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q should not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4826151), stdgo.Go.toInterface(_pattern_4831418));
                        _i_4831402++;
                        _gotoNext = 4832670i32;
                    } else if (__value__ == (4832047i32)) {
                        _match_4832047 = @:check2r _re_4831746.matchString(_text_4831016?.__copy__());
                        if (_match_4832047 != (_shouldMatch_4831091)) {
                            _gotoNext = 4832104i32;
                        } else {
                            _gotoNext = 4832236i32;
                        };
                    } else if (__value__ == (4832104i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q.Match(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4826151), stdgo.Go.toInterface(_pattern_4831418), stdgo.Go.toInterface(_text_4831016), stdgo.Go.toInterface(_match_4832047), stdgo.Go.toInterface(_shouldMatch_4831091));
                        _i_4831402++;
                        _gotoNext = 4832670i32;
                    } else if (__value__ == (4832236i32)) {
                        _have_4832236 = @:check2r _re_4831746.findStringSubmatchIndex(_text_4831016?.__copy__());
                        if ((((_have_4832236.length) > (0 : stdgo.GoInt) : Bool)) != (_match_4832047)) {
                            _gotoNext = 4832308i32;
                        } else {
                            _gotoNext = 4832476i32;
                        };
                    } else if (__value__ == (4832308i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q.Match(%#q) = %v, but %#q.FindSubmatchIndex(%#q) = %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4826151), stdgo.Go.toInterface(_pattern_4831418), stdgo.Go.toInterface(_text_4831016), stdgo.Go.toInterface(_match_4832047), stdgo.Go.toInterface(_pattern_4831418), stdgo.Go.toInterface(_text_4831016), stdgo.Go.toInterface(_have_4832236));
                        _i_4831402++;
                        _gotoNext = 4832670i32;
                    } else if (__value__ == (4832476i32)) {
                        if (((_have_4832236.length) > (_pos_4831104.length) : Bool)) {
                            _gotoNext = 4832500i32;
                        } else {
                            _gotoNext = 4832537i32;
                        };
                    } else if (__value__ == (4832500i32)) {
                        _have_4832236 = (_have_4832236.__slice__(0, (_pos_4831104.length)) : stdgo.Slice<stdgo.GoInt>);
                        _gotoNext = 4832537i32;
                    } else if (__value__ == (4832537i32)) {
                        if (!stdgo._internal.regexp.Regexp__same._same(_have_4832236, _pos_4831104)) {
                            _gotoNext = 4832557i32;
                        } else {
                            _gotoNext = 4831402i32;
                        };
                    } else if (__value__ == (4832557i32)) {
                        @:check2r _t.errorf(("%s:%d: %#q.FindSubmatchIndex(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno_4826151), stdgo.Go.toInterface(_pattern_4831418), stdgo.Go.toInterface(_text_4831016), stdgo.Go.toInterface(_have_4832236), stdgo.Go.toInterface(_pos_4831104));
                        _gotoNext = 4831402i32;
                    } else if (__value__ == (4832669i32)) {
                        _i_4831402 = 0i32;
                        _gotoNext = 4832670i32;
                    } else if (__value__ == (4832670i32)) {
                        if (_i_4831402 < (_keys_4831390.length)) {
                            _gotoNext = 4831413i32;
                        } else {
                            _gotoNext = 4826191i32;
                        };
                    } else if (__value__ == (4832675i32)) {
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
