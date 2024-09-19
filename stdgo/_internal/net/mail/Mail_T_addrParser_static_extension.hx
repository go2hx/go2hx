package stdgo._internal.net.mail;
@:keep @:allow(stdgo._internal.net.mail.Mail.T_addrParser_asInterface) class T_addrParser_static_extension {
    @:keep
    static public function _decodeRFC2047Word( _p:stdgo.Ref<stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser>, _s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; var _2 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser> = _p;
        var _word = ("" : stdgo.GoString), _isEncoded = false, _err = (null : stdgo.Error);
        var _dec = _p._dec;
        if (_dec == null || (_dec : Dynamic).__nil__) {
            _dec = (stdgo.Go.setRef(stdgo._internal.net.mail.Mail__rfc2047Decoder._rfc2047Decoder) : stdgo.Ref<stdgo._internal.mime.Mime_WordDecoder.WordDecoder>);
        };
        var _adec = ((_dec : stdgo._internal.mime.Mime_WordDecoder.WordDecoder)?.__copy__() : stdgo._internal.mime.Mime_WordDecoder.WordDecoder);
        var _charsetReaderError = (false : Bool);
        _adec.charsetReader = function(_charset:stdgo.GoString, _input:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo._internal.io.Io_Reader.Reader; var _1 : stdgo.Error; } {
            if (_dec.charsetReader == null) {
                _charsetReaderError = true;
                return { _0 : (null : stdgo._internal.io.Io_Reader.Reader), _1 : stdgo.Go.asInterface((_charset : stdgo._internal.net.mail.Mail_T_charsetError.T_charsetError)) };
            };
            var __tmp__ = _dec.charsetReader(_charset?.__copy__(), _input), _r:stdgo._internal.io.Io_Reader.Reader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _charsetReaderError = true;
            };
            return { _0 : _r, _1 : _err };
        };
        {
            var __tmp__ = _adec.decode(_s?.__copy__());
            _word = __tmp__._0?.__copy__();
            _err = __tmp__._1;
        };
        if (_err == null) {
            return { _0 : _word?.__copy__(), _1 : true, _2 : (null : stdgo.Error) };
        };
        if (_charsetReaderError) {
            return { _0 : _s?.__copy__(), _1 : true, _2 : _err };
        };
        return { _0 : _s?.__copy__(), _1 : false, _2 : (null : stdgo.Error) };
    }
    @:keep
    static public function _consumeComment( _p:stdgo.Ref<stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser>):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser> = _p;
        var _depth = (1 : stdgo.GoInt);
        var _comment:stdgo.GoString = ("" : stdgo.GoString);
        while (true) {
            if ((_p._empty() || (_depth == (0 : stdgo.GoInt)) : Bool)) {
                break;
            };
            if (((_p._peek() == (92 : stdgo.GoUInt8)) && (_p._len() > (1 : stdgo.GoInt) : Bool) : Bool)) {
                _p._s = (_p._s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            } else if (_p._peek() == ((40 : stdgo.GoUInt8))) {
                _depth++;
            } else if (_p._peek() == ((41 : stdgo.GoUInt8))) {
                _depth--;
            };
            if ((_depth > (0 : stdgo.GoInt) : Bool)) {
                _comment = (_comment + ((_p._s.__slice__(0, (1 : stdgo.GoInt)) : stdgo.GoString))?.__copy__() : stdgo.GoString);
            };
            _p._s = (_p._s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        return { _0 : _comment?.__copy__(), _1 : _depth == ((0 : stdgo.GoInt)) };
    }
    @:keep
    static public function _skipCFWS( _p:stdgo.Ref<stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser>):Bool {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser> = _p;
        _p._skipSpace();
        while (true) {
            if (!_p._consume((40 : stdgo.GoUInt8))) {
                break;
            };
            {
                var __tmp__ = _p._consumeComment(), __0:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                if (!_ok) {
                    return false;
                };
            };
            _p._skipSpace();
        };
        return true;
    }
    @:keep
    static public function _len( _p:stdgo.Ref<stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser>):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser> = _p;
        return (_p._s.length);
    }
    @:keep
    static public function _empty( _p:stdgo.Ref<stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser>):Bool {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser> = _p;
        return _p._len() == ((0 : stdgo.GoInt));
    }
    @:keep
    static public function _peek( _p:stdgo.Ref<stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser>):stdgo.GoUInt8 {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser> = _p;
        return _p._s[(0 : stdgo.GoInt)];
    }
    @:keep
    static public function _skipSpace( _p:stdgo.Ref<stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser> = _p;
        _p._s = stdgo._internal.strings.Strings_trimLeft.trimLeft(_p._s?.__copy__(), (" \t" : stdgo.GoString))?.__copy__();
    }
    @:keep
    static public function _consume( _p:stdgo.Ref<stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser>, _c:stdgo.GoUInt8):Bool {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser> = _p;
        if ((_p._empty() || (_p._peek() != _c) : Bool)) {
            return false;
        };
        _p._s = (_p._s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        return true;
    }
    @:keep
    static public function _consumeDisplayNameComment( _p:stdgo.Ref<stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser>):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser> = _p;
        if (!_p._consume((40 : stdgo.GoUInt8))) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("mail: comment does not start with (" : stdgo.GoString)) };
        };
        var __tmp__ = _p._consumeComment(), _comment:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("mail: misformatted parenthetical comment" : stdgo.GoString)) };
        };
        var _words = stdgo._internal.strings.Strings_fieldsFunc.fieldsFunc(_comment?.__copy__(), function(_r:stdgo.GoInt32):Bool {
            return ((_r == (32 : stdgo.GoInt32)) || (_r == (9 : stdgo.GoInt32)) : Bool);
        });
        for (_idx => _word in _words) {
            var __tmp__ = _p._decodeRFC2047Word(_word?.__copy__()), _decoded:stdgo.GoString = __tmp__._0, _isEncoded:Bool = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                return { _0 : stdgo.Go.str()?.__copy__(), _1 : _err };
            };
            if (_isEncoded) {
                _words[(_idx : stdgo.GoInt)] = _decoded?.__copy__();
            };
        };
        return { _0 : stdgo._internal.strings.Strings_join.join(_words, (" " : stdgo.GoString))?.__copy__(), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _consumeAtom( _p:stdgo.Ref<stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser>, _dot:Bool, _permissive:Bool):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser> = _p;
        stdgo._internal.internal.Macro.controlFlow({
            var _atom = ("" : stdgo.GoString), _err = (null : stdgo.Error);
            var _i = (0 : stdgo.GoInt);
            @:label("Loop") while (true) {
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString((_p._s.__slice__(_i) : stdgo.GoString)?.__copy__()), _r:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
                {
                    var __switchIndex__ = -1;
                    var __run__ = true;
                    while (__run__) {
                        __run__ = false;
                        if (((_size == (1 : stdgo.GoInt)) && (_r == (65533 : stdgo.GoInt32)) : Bool)) {
                            return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("mail: invalid utf-8 in address: %q" : stdgo.GoString), stdgo.Go.toInterface(_p._s)) };
                            break;
                        } else if (((_size == (0 : stdgo.GoInt)) || !stdgo._internal.net.mail.Mail__isAtext._isAtext(_r, _dot, _permissive) : Bool)) {
                            @:jump("Loop") break;
                            break;
                        } else {
                            _i = (_i + (_size) : stdgo.GoInt);
                        };
                        break;
                    };
                };
            };
            if (_i == ((0 : stdgo.GoInt))) {
                return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("mail: invalid string" : stdgo.GoString)) };
            };
            {
                final __tmp__0 = (_p._s.__slice__(0, _i) : stdgo.GoString)?.__copy__();
                final __tmp__1 = (_p._s.__slice__(_i) : stdgo.GoString)?.__copy__();
                _atom = __tmp__0;
                _p._s = __tmp__1;
            };
            if (!_permissive) {
                if (stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_atom?.__copy__(), ("." : stdgo.GoString))) {
                    return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("mail: leading dot in atom" : stdgo.GoString)) };
                };
                if (stdgo._internal.strings.Strings_contains.contains(_atom?.__copy__(), (".." : stdgo.GoString))) {
                    return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("mail: double dot in atom" : stdgo.GoString)) };
                };
                if (stdgo._internal.strings.Strings_hasSuffix.hasSuffix(_atom?.__copy__(), ("." : stdgo.GoString))) {
                    return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("mail: trailing dot in atom" : stdgo.GoString)) };
                };
            };
            return { _0 : _atom?.__copy__(), _1 : (null : stdgo.Error) };
        });
    }
    @:keep
    static public function _consumeQuotedString( _p:stdgo.Ref<stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser>):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser> = _p;
        stdgo._internal.internal.Macro.controlFlow({
            var _qs = ("" : stdgo.GoString), _err = (null : stdgo.Error);
            var _i = (1 : stdgo.GoInt);
            var _qsb = (new stdgo.Slice<stdgo.GoInt32>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var _escaped = (false : Bool);
            @:label("Loop") while (true) {
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString((_p._s.__slice__(_i) : stdgo.GoString)?.__copy__()), _r:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
                {
                    var __switchIndex__ = -1;
                    var __run__ = true;
                    while (__run__) {
                        __run__ = false;
                        if (_size == ((0 : stdgo.GoInt))) {
                            return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("mail: unclosed quoted-string" : stdgo.GoString)) };
                            break;
                        } else if (((_size == (1 : stdgo.GoInt)) && (_r == (65533 : stdgo.GoInt32)) : Bool)) {
                            return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("mail: invalid utf-8 in quoted-string: %q" : stdgo.GoString), stdgo.Go.toInterface(_p._s)) };
                            break;
                        } else if (_escaped) {
                            if ((!stdgo._internal.net.mail.Mail__isVchar._isVchar(_r) && !stdgo._internal.net.mail.Mail__isWSP._isWSP(_r) : Bool)) {
                                return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("mail: bad character in quoted-string: %q" : stdgo.GoString), stdgo.Go.toInterface(_r)) };
                            };
                            _qsb = (_qsb.__append__(_r));
                            _escaped = false;
                            break;
                        } else if ((stdgo._internal.net.mail.Mail__isQtext._isQtext(_r) || stdgo._internal.net.mail.Mail__isWSP._isWSP(_r) : Bool)) {
                            _qsb = (_qsb.__append__(_r));
                            break;
                        } else if (_r == ((34 : stdgo.GoInt32))) {
                            @:jump("Loop") break;
                            break;
                        } else if (_r == ((92 : stdgo.GoInt32))) {
                            _escaped = true;
                            break;
                        } else {
                            return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("mail: bad character in quoted-string: %q" : stdgo.GoString), stdgo.Go.toInterface(_r)) };
                        };
                        break;
                    };
                };
                _i = (_i + (_size) : stdgo.GoInt);
            };
            _p._s = (_p._s.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            return { _0 : (_qsb : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
        });
    }
    @:keep
    static public function _consumePhrase( _p:stdgo.Ref<stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser>):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser> = _p;
        var _phrase = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        stdgo._internal.net.mail.Mail__debug._debug.printf(("consumePhrase: [%s]" : stdgo.GoString), stdgo.Go.toInterface(_p._s));
        var _words:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        var _isPrevEncoded:Bool = false;
        while (true) {
            var _word:stdgo.GoString = ("" : stdgo.GoString);
            _p._skipSpace();
            if (_p._empty()) {
                break;
            };
            var _isEncoded = (false : Bool);
            if (_p._peek() == ((34 : stdgo.GoUInt8))) {
                {
                    var __tmp__ = _p._consumeQuotedString();
                    _word = __tmp__._0?.__copy__();
                    _err = __tmp__._1;
                };
            } else {
                {
                    var __tmp__ = _p._consumeAtom(true, true);
                    _word = __tmp__._0?.__copy__();
                    _err = __tmp__._1;
                };
                if (_err == null) {
                    {
                        var __tmp__ = _p._decodeRFC2047Word(_word?.__copy__());
                        _word = __tmp__._0?.__copy__();
                        _isEncoded = __tmp__._1;
                        _err = __tmp__._2;
                    };
                };
            };
            if (_err != null) {
                break;
            };
            stdgo._internal.net.mail.Mail__debug._debug.printf(("consumePhrase: consumed %q" : stdgo.GoString), stdgo.Go.toInterface(_word));
            if ((_isPrevEncoded && _isEncoded : Bool)) {
                _words[((_words.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] = (_words[((_words.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] + (_word)?.__copy__() : stdgo.GoString);
            } else {
                _words = (_words.__append__(_word?.__copy__()));
            };
            _isPrevEncoded = _isEncoded;
        };
        if (((_err != null) && (_words.length == (0 : stdgo.GoInt)) : Bool)) {
            stdgo._internal.net.mail.Mail__debug._debug.printf(("consumePhrase: hit err: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("mail: missing word in phrase: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
        };
        _phrase = stdgo._internal.strings.Strings_join.join(_words, (" " : stdgo.GoString))?.__copy__();
        return { _0 : _phrase?.__copy__(), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _consumeAddrSpec( _p:stdgo.Ref<stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser>):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser> = _p;
        var __deferstack__:Array<Void -> Void> = [];
        var _spec = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        try {
            stdgo._internal.net.mail.Mail__debug._debug.printf(("consumeAddrSpec: %q" : stdgo.GoString), stdgo.Go.toInterface(_p._s));
            var _orig = ((_p : stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser)?.__copy__() : stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser);
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        if (_err != null) {
                            {
                                var __tmp__ = _orig?.__copy__();
                                (_p : stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser)._s = __tmp__._s;
                                (_p : stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser)._dec = __tmp__._dec;
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
                };
                a();
            });
            var _localPart:stdgo.GoString = ("" : stdgo.GoString);
            _p._skipSpace();
            if (_p._empty()) {
                {
                    final __ret__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("mail: no addr-spec" : stdgo.GoString)) };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            if (_p._peek() == ((34 : stdgo.GoUInt8))) {
                stdgo._internal.net.mail.Mail__debug._debug.printf(("consumeAddrSpec: parsing quoted-string" : stdgo.GoString));
                {
                    var __tmp__ = _p._consumeQuotedString();
                    _localPart = __tmp__._0?.__copy__();
                    _err = __tmp__._1;
                };
                if (_localPart == (stdgo.Go.str())) {
                    _err = stdgo._internal.errors.Errors_new_.new_(("mail: empty quoted string in addr-spec" : stdgo.GoString));
                };
            } else {
                stdgo._internal.net.mail.Mail__debug._debug.printf(("consumeAddrSpec: parsing dot-atom" : stdgo.GoString));
                {
                    var __tmp__ = _p._consumeAtom(true, false);
                    _localPart = __tmp__._0?.__copy__();
                    _err = __tmp__._1;
                };
            };
            if (_err != null) {
                stdgo._internal.net.mail.Mail__debug._debug.printf(("consumeAddrSpec: failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                {
                    final __ret__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : stdgo.Go.str()?.__copy__(), _1 : _err };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            if (!_p._consume((64 : stdgo.GoUInt8))) {
                {
                    final __ret__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("mail: missing @ in addr-spec" : stdgo.GoString)) };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            var _domain:stdgo.GoString = ("" : stdgo.GoString);
            _p._skipSpace();
            if (_p._empty()) {
                {
                    final __ret__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("mail: no domain in addr-spec" : stdgo.GoString)) };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            {
                var __tmp__ = _p._consumeAtom(true, false);
                _domain = __tmp__._0?.__copy__();
                _err = __tmp__._1;
            };
            if (_err != null) {
                {
                    final __ret__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : stdgo.Go.str()?.__copy__(), _1 : _err };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            {
                final __ret__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : ((_localPart + ("@" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _domain?.__copy__() : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : _spec, _1 : _err };
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : _spec, _1 : _err };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function _consumeGroupList( _p:stdgo.Ref<stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser>):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_Address.Address>>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser> = _p;
        var _group:stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_Address.Address>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_Address.Address>>);
        _p._skipSpace();
        if (_p._consume((59 : stdgo.GoUInt8))) {
            _p._skipCFWS();
            return { _0 : _group, _1 : (null : stdgo.Error) };
        };
        while (true) {
            _p._skipSpace();
            var __tmp__ = _p._parseAddress(false), _addrs:stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_Address.Address>> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_Address.Address>>), _1 : _err };
            };
            _group = (_group.__append__(...(_addrs : Array<stdgo.Ref<stdgo._internal.net.mail.Mail_Address.Address>>)));
            if (!_p._skipCFWS()) {
                return { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_Address.Address>>), _1 : stdgo._internal.errors.Errors_new_.new_(("mail: misformatted parenthetical comment" : stdgo.GoString)) };
            };
            if (_p._consume((59 : stdgo.GoUInt8))) {
                _p._skipCFWS();
                break;
            };
            if (!_p._consume((44 : stdgo.GoUInt8))) {
                return { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_Address.Address>>), _1 : stdgo._internal.errors.Errors_new_.new_(("mail: expected comma" : stdgo.GoString)) };
            };
        };
        return { _0 : _group, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _parseAddress( _p:stdgo.Ref<stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser>, _handleGroup:Bool):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_Address.Address>>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser> = _p;
        stdgo._internal.net.mail.Mail__debug._debug.printf(("parseAddress: %q" : stdgo.GoString), stdgo.Go.toInterface(_p._s));
        _p._skipSpace();
        if (_p._empty()) {
            return { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_Address.Address>>), _1 : stdgo._internal.errors.Errors_new_.new_(("mail: no address" : stdgo.GoString)) };
        };
        var __tmp__ = _p._consumeAddrSpec(), _spec:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            var _displayName:stdgo.GoString = ("" : stdgo.GoString);
            _p._skipSpace();
            if ((!_p._empty() && (_p._peek() == (40 : stdgo.GoUInt8)) : Bool)) {
                {
                    var __tmp__ = _p._consumeDisplayNameComment();
                    _displayName = __tmp__._0?.__copy__();
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_Address.Address>>), _1 : _err };
                };
            };
            return { _0 : (new stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_Address.Address>>(1, 1, ...[({ name : _displayName?.__copy__(), address : _spec?.__copy__() } : stdgo._internal.net.mail.Mail_Address.Address)]) : stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_Address.Address>>), _1 : _err };
        };
        stdgo._internal.net.mail.Mail__debug._debug.printf(("parseAddress: not an addr-spec: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        stdgo._internal.net.mail.Mail__debug._debug.printf(("parseAddress: state is now %q" : stdgo.GoString), stdgo.Go.toInterface(_p._s));
        var _displayName:stdgo.GoString = ("" : stdgo.GoString);
        if (_p._peek() != ((60 : stdgo.GoUInt8))) {
            {
                var __tmp__ = _p._consumePhrase();
                _displayName = __tmp__._0?.__copy__();
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_Address.Address>>), _1 : _err };
            };
        };
        stdgo._internal.net.mail.Mail__debug._debug.printf(("parseAddress: displayName=%q" : stdgo.GoString), stdgo.Go.toInterface(_displayName));
        _p._skipSpace();
        if (_handleGroup) {
            if (_p._consume((58 : stdgo.GoUInt8))) {
                return _p._consumeGroupList();
            };
        };
        if (!_p._consume((60 : stdgo.GoUInt8))) {
            var _atext = (true : Bool);
            for (__0 => _r in _displayName) {
                if (!stdgo._internal.net.mail.Mail__isAtext._isAtext(_r, true, false)) {
                    _atext = false;
                    break;
                };
            };
            if (_atext) {
                return { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_Address.Address>>), _1 : stdgo._internal.errors.Errors_new_.new_(("mail: missing \'@\' or angle-addr" : stdgo.GoString)) };
            };
            return { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_Address.Address>>), _1 : stdgo._internal.errors.Errors_new_.new_(("mail: no angle-addr" : stdgo.GoString)) };
        };
        {
            var __tmp__ = _p._consumeAddrSpec();
            _spec = __tmp__._0?.__copy__();
            _err = __tmp__._1;
        };
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_Address.Address>>), _1 : _err };
        };
        if (!_p._consume((62 : stdgo.GoUInt8))) {
            return { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_Address.Address>>), _1 : stdgo._internal.errors.Errors_new_.new_(("mail: unclosed angle-addr" : stdgo.GoString)) };
        };
        stdgo._internal.net.mail.Mail__debug._debug.printf(("parseAddress: spec=%q" : stdgo.GoString), stdgo.Go.toInterface(_spec));
        return { _0 : (new stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_Address.Address>>(1, 1, ...[({ name : _displayName?.__copy__(), address : _spec?.__copy__() } : stdgo._internal.net.mail.Mail_Address.Address)]) : stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_Address.Address>>), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _parseSingleAddress( _p:stdgo.Ref<stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser>):{ var _0 : stdgo.Ref<stdgo._internal.net.mail.Mail_Address.Address>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser> = _p;
        var __tmp__ = _p._parseAddress(true), _addrs:stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_Address.Address>> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        if (!_p._skipCFWS()) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("mail: misformatted parenthetical comment" : stdgo.GoString)) };
        };
        if (!_p._empty()) {
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("mail: expected single address, got %q" : stdgo.GoString), stdgo.Go.toInterface(_p._s)) };
        };
        if ((_addrs.length) == ((0 : stdgo.GoInt))) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("mail: empty group" : stdgo.GoString)) };
        };
        if (((_addrs.length) > (1 : stdgo.GoInt) : Bool)) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("mail: group with multiple addresses" : stdgo.GoString)) };
        };
        return { _0 : _addrs[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _parseAddressList( _p:stdgo.Ref<stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser>):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_Address.Address>>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser> = _p;
        var _list:stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_Address.Address>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_Address.Address>>);
        while (true) {
            _p._skipSpace();
            if (_p._consume((44 : stdgo.GoUInt8))) {
                continue;
            };
            var __tmp__ = _p._parseAddress(true), _addrs:stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_Address.Address>> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_Address.Address>>), _1 : _err };
            };
            _list = (_list.__append__(...(_addrs : Array<stdgo.Ref<stdgo._internal.net.mail.Mail_Address.Address>>)));
            if (!_p._skipCFWS()) {
                return { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_Address.Address>>), _1 : stdgo._internal.errors.Errors_new_.new_(("mail: misformatted parenthetical comment" : stdgo.GoString)) };
            };
            if (_p._empty()) {
                break;
            };
            if (_p._peek() != ((44 : stdgo.GoUInt8))) {
                return { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_Address.Address>>), _1 : stdgo._internal.errors.Errors_new_.new_(("mail: expected comma" : stdgo.GoString)) };
            };
            while (_p._consume((44 : stdgo.GoUInt8))) {
                _p._skipSpace();
            };
            if (_p._empty()) {
                break;
            };
        };
        return { _0 : _list, _1 : (null : stdgo.Error) };
    }
}