package stdgo._internal.regexp;
function _testRE2(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _file:stdgo.GoString):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var __tmp__ = stdgo._internal.os.Os_open.open(_file?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L71"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L72"
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            {
                final __f__ = _f.close;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _txt:stdgo._internal.io.Io_reader.Reader = (null : stdgo._internal.io.Io_reader.Reader);
            //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L76"
            if (stdgo._internal.strings.Strings_hassuffix.hasSuffix(_file?.__copy__(), (".bz2" : stdgo.GoString))) {
                var _z = (stdgo._internal.compress.bzip2.Bzip2_newreader.newReader(stdgo.Go.asInterface(_f)) : stdgo._internal.io.Io_reader.Reader);
                _txt = _z;
                _file = (_file.__slice__(0, ((_file.length) - (((".bz2" : stdgo.GoString) : stdgo.GoString).length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            } else {
                _txt = stdgo.Go.asInterface(_f);
            };
            var _lineno = (0 : stdgo.GoInt);
            var _scanner = stdgo._internal.bufio.Bufio_newscanner.newScanner(_txt);
            var _str:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>), _input:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>), _inStrings:Bool = false, _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>), _refull:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>), _nfail:stdgo.GoInt = (0 : stdgo.GoInt), _ncase:stdgo.GoInt = (0 : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L94"
            {
                var _lineno = (1 : stdgo.GoInt);
                while (_scanner.scan()) {
                    var _line = (_scanner.text().__copy__() : stdgo.GoString);
//"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L96"
                    if (_line == ((stdgo.Go.str() : stdgo.GoString))) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L98"
                        _t.fatalf(("%s:%d: unexpected blank line" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno));
                    } else if (_line[(0 : stdgo.GoInt)] == ((35 : stdgo.GoUInt8))) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L100"
                        {
                            _lineno++;
                            continue;
                        };
                    } else if ((((65 : stdgo.GoUInt8) <= _line[(0 : stdgo.GoInt)] : Bool) && (_line[(0 : stdgo.GoInt)] <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L103"
                        _t.logf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(_line));
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L104"
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
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L112"
                        if (_err != null) {
                            //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L114"
                            _t.fatalf(("%s:%d: unquote %s: %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno), stdgo.Go.toInterface(_line), stdgo.Go.toInterface(_err));
                        };
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L116"
                        if (_inStrings) {
                            _str = (_str.__append__(_q.__copy__()) : stdgo.Slice<stdgo.GoString>);
                            //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L118"
                            {
                                _lineno++;
                                continue;
                            };
                        };
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L121"
                        if ((_input.length) != ((0 : stdgo.GoInt))) {
                            //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L122"
                            _t.fatalf(("%s:%d: out of sync: have %d strings left before %#q" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno), stdgo.Go.toInterface((_input.length)), stdgo.Go.toInterface(_q));
                        };
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp__trycompile._tryCompile(_q.__copy__());
                            _re = @:tmpset0 __tmp__._0;
                            _err = @:tmpset0 __tmp__._1;
                        };
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L125"
                        if (_err != null) {
                            //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L126"
                            if (_err.error() == (("error parsing regexp: invalid escape sequence: `\\C`" : stdgo.GoString))) {
                                //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L128"
                                {
                                    _lineno++;
                                    continue;
                                };
                            };
                            //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L130"
                            _t.errorf(("%s:%d: compile %#q: %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno), stdgo.Go.toInterface(_q), stdgo.Go.toInterface(_err));
                            //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L131"
                            {
                                _nfail++;
                                if ((_nfail >= (100 : stdgo.GoInt) : Bool)) {
                                    //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L132"
                                    _t.fatalf(("stopping after %d errors" : stdgo.GoString), stdgo.Go.toInterface(_nfail));
                                };
                            };
                            //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L134"
                            {
                                _lineno++;
                                continue;
                            };
                        };
                        var _full = (((("\\A(?:" : stdgo.GoString) + _q.__copy__() : stdgo.GoString) + (")\\z" : stdgo.GoString).__copy__() : stdgo.GoString).__copy__() : stdgo.GoString);
                        {
                            var __tmp__ = stdgo._internal.regexp.Regexp__trycompile._tryCompile(_full.__copy__());
                            _refull = @:tmpset0 __tmp__._0;
                            _err = @:tmpset0 __tmp__._1;
                        };
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L138"
                        if (_err != null) {
                            //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L140"
                            _t.fatalf(("%s:%d: compile full %#q: %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno), stdgo.Go.toInterface(_full), stdgo.Go.toInterface(_err));
                        };
                        _input = _str;
                    } else if (((_line[(0 : stdgo.GoInt)] == (45 : stdgo.GoUInt8)) || (((48 : stdgo.GoUInt8) <= _line[(0 : stdgo.GoInt)] : Bool) && (_line[(0 : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L145"
                        _ncase++;
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L146"
                        if (({
                            final value = _re;
                            (value == null || (value : Dynamic).__nil__);
                        })) {
                            //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L148"
                            {
                                _lineno++;
                                continue;
                            };
                        };
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L150"
                        if ((_input.length) == ((0 : stdgo.GoInt))) {
                            //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L151"
                            _t.fatalf(("%s:%d: out of sync: no input remaining" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno));
                        };
                        var _text:stdgo.GoString = ("" : stdgo.GoString);
                        {
                            final __tmp__0 = _input[(0 : stdgo.GoInt)].__copy__();
                            final __tmp__1 = (_input.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
                            _text = @:binopAssign __tmp__0;
                            _input = @:binopAssign __tmp__1;
                        };
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L155"
                        if ((!stdgo._internal.regexp.Regexp__issinglebytes._isSingleBytes(_text.__copy__()) && stdgo._internal.strings.Strings_contains.contains((_re.string() : stdgo.GoString).__copy__(), ("\\B" : stdgo.GoString)) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L161"
                            {
                                _lineno++;
                                continue;
                            };
                        };
                        var _res = stdgo._internal.strings.Strings_split.split(_line.__copy__(), (";" : stdgo.GoString));
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L164"
                        if ((_res.length) != ((stdgo._internal.regexp.Regexp__run._run.length))) {
                            //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L165"
                            _t.fatalf(("%s:%d: have %d test results, want %d" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno), stdgo.Go.toInterface((_res.length)), stdgo.Go.toInterface((stdgo._internal.regexp.Regexp__run._run.length)));
                        };
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L167"
                        for (_i => _ in _res) {
                            var __tmp__ = stdgo._internal.regexp.Regexp__run._run[(_i : stdgo.GoInt)](_re, _refull, _text?.__copy__()), _have:stdgo.Slice<stdgo.GoInt> = __tmp__._0, _suffix:stdgo.GoString = __tmp__._1;
                            var _want = stdgo._internal.regexp.Regexp__parseresult._parseResult(_t, _file?.__copy__(), _lineno, _res[(_i : stdgo.GoInt)]?.__copy__());
                            //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L170"
                            if (!stdgo._internal.regexp.Regexp__same._same(_have, _want)) {
                                //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L171"
                                _t.errorf(("%s:%d: %#q%s.FindSubmatchIndex(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno), stdgo.Go.toInterface(stdgo.Go.asInterface(_re)), stdgo.Go.toInterface(_suffix), stdgo.Go.toInterface(_text), stdgo.Go.toInterface(_have), stdgo.Go.toInterface(_want));
                                //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L172"
                                {
                                    _nfail++;
                                    if ((_nfail >= (100 : stdgo.GoInt) : Bool)) {
                                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L173"
                                        _t.fatalf(("stopping after %d errors" : stdgo.GoString), stdgo.Go.toInterface(_nfail));
                                    };
                                };
                                //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L175"
                                continue;
                            };
                            var __tmp__ = stdgo._internal.regexp.Regexp__match._match[(_i : stdgo.GoInt)](_re, _refull, _text?.__copy__()), _b:Bool = __tmp__._0, _suffix:stdgo.GoString = __tmp__._1;
                            //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L178"
                            if (_b != ((_want != null))) {
                                //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L179"
                                _t.errorf(("%s:%d: %#q%s.MatchString(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno), stdgo.Go.toInterface(stdgo.Go.asInterface(_re)), stdgo.Go.toInterface(_suffix), stdgo.Go.toInterface(_text), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(!_b));
                                //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L180"
                                {
                                    _nfail++;
                                    if ((_nfail >= (100 : stdgo.GoInt) : Bool)) {
                                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L181"
                                        _t.fatalf(("stopping after %d errors" : stdgo.GoString), stdgo.Go.toInterface(_nfail));
                                    };
                                };
                                //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L183"
                                continue;
                            };
                        };
                    } else {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L188"
                        _t.fatalf(("%s:%d: out of sync: %s\n" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno), stdgo.Go.toInterface(_line));
                    };
                    _lineno++;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L191"
            {
                var _err = (_scanner.err() : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L192"
                    _t.fatalf(("%s:%d: %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno), stdgo.Go.toInterface(_err));
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L194"
            if ((_input.length) != ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L195"
                _t.fatalf(("%s:%d: out of sync: have %d strings left at EOF" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno), stdgo.Go.toInterface((_input.length)));
            };
            //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L197"
            _t.logf(("%d cases tested" : stdgo.GoString), stdgo.Go.toInterface(_ncase));
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
