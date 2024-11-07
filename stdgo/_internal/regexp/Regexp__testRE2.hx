package stdgo._internal.regexp;
function _testRE2(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _file:stdgo.GoString):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __tmp__ = stdgo._internal.os.Os_open.open(_file?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            __deferstack__.unshift(() -> _f.close());
            var _txt:stdgo._internal.io.Io_Reader.Reader = (null : stdgo._internal.io.Io_Reader.Reader);
            if (stdgo._internal.strings.Strings_hasSuffix.hasSuffix(_file?.__copy__(), (".bz2" : stdgo.GoString))) {
                var _z = (stdgo._internal.compress.bzip2.Bzip2_newReader.newReader(stdgo.Go.asInterface(_f)) : stdgo._internal.io.Io_Reader.Reader);
                _txt = _z;
                _file = (_file.__slice__(0, ((_file.length) - ((".bz2" : stdgo.GoString).length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            } else {
                _txt = stdgo.Go.asInterface(_f);
            };
            var _lineno = (0 : stdgo.GoInt);
            var _scanner = stdgo._internal.bufio.Bufio_newScanner.newScanner(_txt);
            var __0:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>), __1:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>), __2:Bool = false, __3:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>), __4:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>), __5:stdgo.GoInt = (0 : stdgo.GoInt), __6:stdgo.GoInt = (0 : stdgo.GoInt);
var _ncase = __6, _nfail = __5, _refull = __4, _re = __3, _inStrings = __2, _input = __1, _str = __0;
            {
                var _lineno = (1 : stdgo.GoInt);
                while (_scanner.scan()) {
                    var _line = (_scanner.text().__copy__() : stdgo.GoString);
if (_line == (stdgo.Go.str())) {
                        _t.fatalf(("%s:%d: unexpected blank line" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno));
                    } else if (_line[(0 : stdgo.GoInt)] == ((35 : stdgo.GoUInt8))) {
                        {
                            _lineno++;
                            continue;
                        };
                    } else if ((((65 : stdgo.GoUInt8) <= _line[(0 : stdgo.GoInt)] : Bool) && (_line[(0 : stdgo.GoInt)] <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _t.logf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(_line));
                        {
                            _lineno++;
                            continue;
                        };
                    } else if (_line == (("strings" : stdgo.GoString))) {
                        _str = (_str.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
                        _inStrings = true;
                    } else if (_line == (("regexps" : stdgo.GoString))) {
                        _inStrings = false;
                    } else if (_line[(0 : stdgo.GoInt)] == ((34 : stdgo.GoUInt8))) {
                        var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_line.__copy__()), _q:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            _t.fatalf(("%s:%d: unquote %s: %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno), stdgo.Go.toInterface(_line), stdgo.Go.toInterface(_err));
                        };
                        if (_inStrings) {
                            _str = (_str.__append__(_q.__copy__()));
                            {
                                _lineno++;
                                continue;
                            };
                        };
                        if ((_input.length) != ((0 : stdgo.GoInt))) {
                            _t.fatalf(("%s:%d: out of sync: have %d strings left before %#q" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno), stdgo.Go.toInterface((_input.length)), stdgo.Go.toInterface(_q));
                        };
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp__tryCompile._tryCompile(_q.__copy__());
                            _re = __tmp__._0;
                            _err = __tmp__._1;
                        };
                        if (_err != null) {
                            if (_err.error() == (("error parsing regexp: invalid escape sequence: `\\C`" : stdgo.GoString))) {
                                {
                                    _lineno++;
                                    continue;
                                };
                            };
                            _t.errorf(("%s:%d: compile %#q: %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno), stdgo.Go.toInterface(_q), stdgo.Go.toInterface(_err));
                            {
                                _nfail++;
                                if ((_nfail >= (100 : stdgo.GoInt) : Bool)) {
                                    _t.fatalf(("stopping after %d errors" : stdgo.GoString), stdgo.Go.toInterface(_nfail));
                                };
                            };
                            {
                                _lineno++;
                                continue;
                            };
                        };
                        var _full = (((("\\A(?:" : stdgo.GoString) + _q.__copy__() : stdgo.GoString) + (")\\z" : stdgo.GoString).__copy__() : stdgo.GoString).__copy__() : stdgo.GoString);
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp__tryCompile._tryCompile(_full.__copy__());
                            _refull = __tmp__._0;
                            _err = __tmp__._1;
                        };
                        if (_err != null) {
                            _t.fatalf(("%s:%d: compile full %#q: %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno), stdgo.Go.toInterface(_full), stdgo.Go.toInterface(_err));
                        };
                        _input = _str;
                    } else if (((_line[(0 : stdgo.GoInt)] == (45 : stdgo.GoUInt8)) || (((48 : stdgo.GoUInt8) <= _line[(0 : stdgo.GoInt)] : Bool) && (_line[(0 : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) : Bool)) {
                        _ncase++;
                        if ((_re == null || (_re : Dynamic).__nil__)) {
                            {
                                _lineno++;
                                continue;
                            };
                        };
                        if ((_input.length) == ((0 : stdgo.GoInt))) {
                            _t.fatalf(("%s:%d: out of sync: no input remaining" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno));
                        };
                        var _text:stdgo.GoString = ("" : stdgo.GoString);
                        {
                            final __tmp__0 = _input[(0 : stdgo.GoInt)].__copy__();
                            final __tmp__1 = (_input.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
                            _text = __tmp__0;
                            _input = __tmp__1;
                        };
                        if ((!stdgo._internal.regexp.Regexp__isSingleBytes._isSingleBytes(_text.__copy__()) && stdgo._internal.strings.Strings_contains.contains((_re.string() : stdgo.GoString).__copy__(), ("\\B" : stdgo.GoString)) : Bool)) {
                            {
                                _lineno++;
                                continue;
                            };
                        };
                        var _res = stdgo._internal.strings.Strings_split.split(_line.__copy__(), (";" : stdgo.GoString));
                        if ((_res.length) != ((stdgo._internal.regexp.Regexp__run._run.length))) {
                            _t.fatalf(("%s:%d: have %d test results, want %d" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno), stdgo.Go.toInterface((_res.length)), stdgo.Go.toInterface((stdgo._internal.regexp.Regexp__run._run.length)));
                        };
                        for (_i => _ in _res) {
                            var __tmp__ = stdgo._internal.regexp.Regexp__run._run[(_i : stdgo.GoInt)](_re, _refull, _text?.__copy__()), _have:stdgo.Slice<stdgo.GoInt> = __tmp__._0, _suffix:stdgo.GoString = __tmp__._1;
                            var _want = stdgo._internal.regexp.Regexp__parseResult._parseResult(_t, _file?.__copy__(), _lineno, _res[(_i : stdgo.GoInt)]?.__copy__());
                            if (!stdgo._internal.regexp.Regexp__same._same(_have, _want)) {
                                _t.errorf(("%s:%d: %#q%s.FindSubmatchIndex(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno), stdgo.Go.toInterface(stdgo.Go.asInterface(_re)), stdgo.Go.toInterface(_suffix), stdgo.Go.toInterface(_text), stdgo.Go.toInterface(_have), stdgo.Go.toInterface(_want));
                                {
                                    _nfail++;
                                    if ((_nfail >= (100 : stdgo.GoInt) : Bool)) {
                                        _t.fatalf(("stopping after %d errors" : stdgo.GoString), stdgo.Go.toInterface(_nfail));
                                    };
                                };
                                continue;
                            };
                            var __tmp__ = stdgo._internal.regexp.Regexp__match._match[(_i : stdgo.GoInt)](_re, _refull, _text?.__copy__()), _b:Bool = __tmp__._0, _suffix:stdgo.GoString = __tmp__._1;
                            if (_b != ((_want != null))) {
                                _t.errorf(("%s:%d: %#q%s.MatchString(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno), stdgo.Go.toInterface(stdgo.Go.asInterface(_re)), stdgo.Go.toInterface(_suffix), stdgo.Go.toInterface(_text), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(!_b));
                                {
                                    _nfail++;
                                    if ((_nfail >= (100 : stdgo.GoInt) : Bool)) {
                                        _t.fatalf(("stopping after %d errors" : stdgo.GoString), stdgo.Go.toInterface(_nfail));
                                    };
                                };
                                continue;
                            };
                        };
                    } else {
                        _t.fatalf(("%s:%d: out of sync: %s\n" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno), stdgo.Go.toInterface(_line));
                    };
                    _lineno++;
                };
            };
            {
                var _err = (_scanner.err() : stdgo.Error);
                if (_err != null) {
                    _t.fatalf(("%s:%d: %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno), stdgo.Go.toInterface(_err));
                };
            };
            if ((_input.length) != ((0 : stdgo.GoInt))) {
                _t.fatalf(("%s:%d: out of sync: have %d strings left at EOF" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno), stdgo.Go.toInterface((_input.length)));
            };
            _t.logf(("%d cases tested" : stdgo.GoString), stdgo.Go.toInterface(_ncase));
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
