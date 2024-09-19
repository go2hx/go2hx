package stdgo._internal.regexp;
function _testFowler(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _file:stdgo.GoString):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            stdgo._internal.internal.Macro.controlFlow({
                var __tmp__ = stdgo._internal.os.Os_open.open(_file?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.error(stdgo.Go.toInterface(_err));
                    return;
                };
                __deferstack__.unshift(() -> _f.close());
                var _b = stdgo._internal.bufio.Bufio_newReader.newReader(stdgo.Go.asInterface(_f));
                var _lineno = (0 : stdgo.GoInt);
                var _lastRegexp = (stdgo.Go.str()?.__copy__() : stdgo.GoString);
                @:label("Reading") while (true) {
                    _lineno++;
                    var __tmp__ = _b.readString((10 : stdgo.GoUInt8)), _line:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                            _t.errorf(("%s:%d: %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno), stdgo.Go.toInterface(_err));
                        };
                        @:jump("Reading") break;
                    };
                    if (((_line[(0 : stdgo.GoInt)] == (35 : stdgo.GoUInt8)) || (_line[(0 : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) : Bool)) {
                        @:jump("Reading") continue;
                    };
                    _line = (_line.__slice__(0, ((_line.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    var _field = stdgo._internal.regexp.Regexp__notab._notab.findAllString(_line?.__copy__(), (-1 : stdgo.GoInt));
                    for (_i => _f in _field) {
                        if (_f == (("NULL" : stdgo.GoString))) {
                            _field[(_i : stdgo.GoInt)] = stdgo.Go.str()?.__copy__();
                        };
                        if (_f == (("NIL" : stdgo.GoString))) {
                            _t.logf(("%s:%d: skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno), stdgo.Go.toInterface(_line));
                            @:jump("Reading") continue;
                        };
                    };
                    if ((_field.length) == ((0 : stdgo.GoInt))) {
                        @:jump("Reading") continue;
                    };
                    var _flag = (_field[(0 : stdgo.GoInt)]?.__copy__() : stdgo.GoString);
                    {
                        final __value__ = _flag[(0 : stdgo.GoInt)];
                        if (__value__ == ((63 : stdgo.GoUInt8)) || __value__ == ((38 : stdgo.GoUInt8)) || __value__ == ((124 : stdgo.GoUInt8)) || __value__ == ((59 : stdgo.GoUInt8)) || __value__ == ((123 : stdgo.GoUInt8)) || __value__ == ((125 : stdgo.GoUInt8))) {
                            _flag = (_flag.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                            if (_flag == (stdgo.Go.str())) {
                                @:jump("Reading") continue;
                            };
                        } else if (__value__ == ((58 : stdgo.GoUInt8))) {
                            var _ok:Bool = false;
                            {
                                {
                                    var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_flag.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (":" : stdgo.GoString));
                                    _flag = __tmp__._1?.__copy__();
                                    _ok = __tmp__._2;
                                };
                                if (!_ok) {
                                    _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line));
                                    @:jump("Reading") continue;
                                };
                            };
                        } else if (__value__ == ((67 : stdgo.GoUInt8)) || __value__ == ((78 : stdgo.GoUInt8)) || __value__ == ((84 : stdgo.GoUInt8)) || __value__ == ((48 : stdgo.GoUInt8)) || __value__ == ((49 : stdgo.GoUInt8)) || __value__ == ((50 : stdgo.GoUInt8)) || __value__ == ((51 : stdgo.GoUInt8)) || __value__ == ((52 : stdgo.GoUInt8)) || __value__ == ((53 : stdgo.GoUInt8)) || __value__ == ((54 : stdgo.GoUInt8)) || __value__ == ((55 : stdgo.GoUInt8)) || __value__ == ((56 : stdgo.GoUInt8)) || __value__ == ((57 : stdgo.GoUInt8))) {
                            _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line));
                            @:jump("Reading") continue;
                        };
                    };
                    if (((_field.length) < (4 : stdgo.GoInt) : Bool)) {
                        _t.errorf(("%s:%d: too few fields: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno), stdgo.Go.toInterface(_line));
                        @:jump("Reading") continue;
                    };
                    if (stdgo._internal.strings.Strings_contains.contains(_flag?.__copy__(), ("$" : stdgo.GoString))) {
                        var _f = (((("\"" : stdgo.GoString) + _field[(1 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_f?.__copy__());
                                _field[(1 : stdgo.GoInt)] = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno), stdgo.Go.toInterface(_f));
                            };
                        };
                        _f = ((("\"" : stdgo.GoString) + _field[(2 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_f?.__copy__());
                                _field[(2 : stdgo.GoInt)] = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno), stdgo.Go.toInterface(_f));
                            };
                        };
                    };
                    if (_field[(1 : stdgo.GoInt)] == (("SAME" : stdgo.GoString))) {
                        _field[(1 : stdgo.GoInt)] = _lastRegexp?.__copy__();
                    };
                    _lastRegexp = _field[(1 : stdgo.GoInt)]?.__copy__();
                    var _text = (_field[(2 : stdgo.GoInt)]?.__copy__() : stdgo.GoString);
                    var __tmp__ = stdgo._internal.regexp.Regexp__parseFowlerResult._parseFowlerResult(_field[(3 : stdgo.GoInt)]?.__copy__()), _ok:Bool = __tmp__._0, _shouldCompile:Bool = __tmp__._1, _shouldMatch:Bool = __tmp__._2, _pos:stdgo.Slice<stdgo.GoInt> = __tmp__._3;
                    if (!_ok) {
                        _t.errorf(("%s:%d: cannot parse result %#q" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno), stdgo.Go.toInterface(_field[(3 : stdgo.GoInt)]));
                        @:jump("Reading") continue;
                    };
                    @:label("Testing") for (__0 => _c in _flag) {
                        var _pattern = (_field[(1 : stdgo.GoInt)]?.__copy__() : stdgo.GoString);
                        var _syn = (4 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        {
                            final __value__ = _c;
                            if (__value__ == ((69 : stdgo.GoInt32))) {} else if (__value__ == ((76 : stdgo.GoInt32))) {
                                _pattern = stdgo._internal.regexp.Regexp_quoteMeta.quoteMeta(_pattern?.__copy__())?.__copy__();
                            } else {
                                @:jump("Testing") continue;
                            };
                        };
                        for (__1 => _c in _flag) {
                            {
                                final __value__ = _c;
                                if (__value__ == ((105 : stdgo.GoInt32))) {
                                    _syn = (_syn | ((1 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                                };
                            };
                        };
                        var __tmp__ = stdgo._internal.regexp.Regexp__compile._compile(_pattern?.__copy__(), _syn, true), _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            if (_shouldCompile) {
                                _t.errorf(("%s:%d: %#q did not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno), stdgo.Go.toInterface(_pattern));
                            };
                            @:jump("Testing") continue;
                        };
                        if (!_shouldCompile) {
                            _t.errorf(("%s:%d: %#q should not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno), stdgo.Go.toInterface(_pattern));
                            @:jump("Testing") continue;
                        };
                        var _match = (_re.matchString(_text?.__copy__()) : Bool);
                        if (_match != (_shouldMatch)) {
                            _t.errorf(("%s:%d: %#q.Match(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno), stdgo.Go.toInterface(_pattern), stdgo.Go.toInterface(_text), stdgo.Go.toInterface(_match), stdgo.Go.toInterface(_shouldMatch));
                            @:jump("Testing") continue;
                        };
                        var _have = _re.findStringSubmatchIndex(_text?.__copy__());
                        if ((((_have.length) > (0 : stdgo.GoInt) : Bool)) != (_match)) {
                            _t.errorf(("%s:%d: %#q.Match(%#q) = %v, but %#q.FindSubmatchIndex(%#q) = %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno), stdgo.Go.toInterface(_pattern), stdgo.Go.toInterface(_text), stdgo.Go.toInterface(_match), stdgo.Go.toInterface(_pattern), stdgo.Go.toInterface(_text), stdgo.Go.toInterface(_have));
                            @:jump("Testing") continue;
                        };
                        if (((_have.length) > (_pos.length) : Bool)) {
                            _have = (_have.__slice__(0, (_pos.length)) : stdgo.Slice<stdgo.GoInt>);
                        };
                        if (!stdgo._internal.regexp.Regexp__same._same(_have, _pos)) {
                            _t.errorf(("%s:%d: %#q.FindSubmatchIndex(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno), stdgo.Go.toInterface(_pattern), stdgo.Go.toInterface(_text), stdgo.Go.toInterface(_have), stdgo.Go.toInterface(_pos));
                        };
                    };
                };
            });
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
