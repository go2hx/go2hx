package stdgo._internal.net.mail;
@:keep @:allow(stdgo._internal.net.mail.Mail.T_addrParser_asInterface) class T_addrParser_static_extension {
    @:keep
    @:tdfield
    static public function _decodeRFC2047Word( _p:stdgo.Ref<stdgo._internal.net.mail.Mail_t_addrparser.T_addrParser>, _s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; var _2 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.mail.Mail_t_addrparser.T_addrParser> = _p;
        var _word = ("" : stdgo.GoString), _isEncoded = false, _err = (null : stdgo.Error);
        var _dec = (@:checkr _p ?? throw "null pointer dereference")._dec;
        if ((_dec == null || (_dec : Dynamic).__nil__)) {
            _dec = (stdgo.Go.setRef(stdgo._internal.net.mail.Mail__rfc2047decoder._rfc2047Decoder) : stdgo.Ref<stdgo._internal.mime.Mime_worddecoder.WordDecoder>);
        };
        var _adec = ((_dec : stdgo._internal.mime.Mime_worddecoder.WordDecoder)?.__copy__() : stdgo._internal.mime.Mime_worddecoder.WordDecoder);
        var _charsetReaderError = (false : Bool);
        _adec.charsetReader = function(_charset:stdgo.GoString, _input:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo._internal.io.Io_reader.Reader; var _1 : stdgo.Error; } {
            if ((@:checkr _dec ?? throw "null pointer dereference").charsetReader == null) {
                _charsetReaderError = true;
                return { _0 : (null : stdgo._internal.io.Io_reader.Reader), _1 : stdgo.Go.asInterface((_charset : stdgo._internal.net.mail.Mail_t_charseterror.T_charsetError)) };
            };
            var __tmp__ = (@:checkr _dec ?? throw "null pointer dereference").charsetReader(_charset?.__copy__(), _input), _r:stdgo._internal.io.Io_reader.Reader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _charsetReaderError = true;
            };
            return { _0 : _r, _1 : _err };
        };
        {
            var __tmp__ = @:check2 _adec.decode(_s?.__copy__());
            _word = @:tmpset0 __tmp__._0?.__copy__();
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err == null) {
            return {
                final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; var _2 : stdgo.Error; } = { _0 : _word?.__copy__(), _1 : true, _2 : (null : stdgo.Error) };
                _word = __tmp__._0;
                _isEncoded = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        if (_charsetReaderError) {
            return {
                final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; var _2 : stdgo.Error; } = { _0 : _s?.__copy__(), _1 : true, _2 : _err };
                _word = __tmp__._0;
                _isEncoded = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; var _2 : stdgo.Error; } = { _0 : _s?.__copy__(), _1 : false, _2 : (null : stdgo.Error) };
            _word = __tmp__._0;
            _isEncoded = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _consumeComment( _p:stdgo.Ref<stdgo._internal.net.mail.Mail_t_addrparser.T_addrParser>):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.mail.Mail_t_addrparser.T_addrParser> = _p;
        var _depth = (1 : stdgo.GoInt);
        var _comment:stdgo.GoString = ("" : stdgo.GoString);
        while (true) {
            if ((@:check2r _p._empty() || (_depth == (0 : stdgo.GoInt)) : Bool)) {
                break;
            };
            if (((@:check2r _p._peek() == (92 : stdgo.GoUInt8)) && (@:check2r _p._len() > (1 : stdgo.GoInt) : Bool) : Bool)) {
                (@:checkr _p ?? throw "null pointer dereference")._s = ((@:checkr _p ?? throw "null pointer dereference")._s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            } else if (@:check2r _p._peek() == ((40 : stdgo.GoUInt8))) {
                _depth++;
            } else if (@:check2r _p._peek() == ((41 : stdgo.GoUInt8))) {
                _depth--;
            };
            if ((_depth > (0 : stdgo.GoInt) : Bool)) {
                _comment = (_comment + (((@:checkr _p ?? throw "null pointer dereference")._s.__slice__(0, (1 : stdgo.GoInt)) : stdgo.GoString))?.__copy__() : stdgo.GoString);
            };
            (@:checkr _p ?? throw "null pointer dereference")._s = ((@:checkr _p ?? throw "null pointer dereference")._s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        return { _0 : _comment?.__copy__(), _1 : _depth == ((0 : stdgo.GoInt)) };
    }
    @:keep
    @:tdfield
    static public function _skipCFWS( _p:stdgo.Ref<stdgo._internal.net.mail.Mail_t_addrparser.T_addrParser>):Bool {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.mail.Mail_t_addrparser.T_addrParser> = _p;
        @:check2r _p._skipSpace();
        while (true) {
            if (!@:check2r _p._consume((40 : stdgo.GoUInt8))) {
                break;
            };
            {
                var __tmp__ = @:check2r _p._consumeComment(), __0:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                if (!_ok) {
                    return false;
                };
            };
            @:check2r _p._skipSpace();
        };
        return true;
    }
    @:keep
    @:tdfield
    static public function _len( _p:stdgo.Ref<stdgo._internal.net.mail.Mail_t_addrparser.T_addrParser>):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.mail.Mail_t_addrparser.T_addrParser> = _p;
        return ((@:checkr _p ?? throw "null pointer dereference")._s.length);
    }
    @:keep
    @:tdfield
    static public function _empty( _p:stdgo.Ref<stdgo._internal.net.mail.Mail_t_addrparser.T_addrParser>):Bool {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.mail.Mail_t_addrparser.T_addrParser> = _p;
        return @:check2r _p._len() == ((0 : stdgo.GoInt));
    }
    @:keep
    @:tdfield
    static public function _peek( _p:stdgo.Ref<stdgo._internal.net.mail.Mail_t_addrparser.T_addrParser>):stdgo.GoUInt8 {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.mail.Mail_t_addrparser.T_addrParser> = _p;
        return (@:checkr _p ?? throw "null pointer dereference")._s[(0 : stdgo.GoInt)];
    }
    @:keep
    @:tdfield
    static public function _skipSpace( _p:stdgo.Ref<stdgo._internal.net.mail.Mail_t_addrparser.T_addrParser>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.mail.Mail_t_addrparser.T_addrParser> = _p;
        (@:checkr _p ?? throw "null pointer dereference")._s = stdgo._internal.strings.Strings_trimleft.trimLeft((@:checkr _p ?? throw "null pointer dereference")._s?.__copy__(), (" \t" : stdgo.GoString))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _consume( _p:stdgo.Ref<stdgo._internal.net.mail.Mail_t_addrparser.T_addrParser>, _c:stdgo.GoUInt8):Bool {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.mail.Mail_t_addrparser.T_addrParser> = _p;
        if ((@:check2r _p._empty() || (@:check2r _p._peek() != _c) : Bool)) {
            return false;
        };
        (@:checkr _p ?? throw "null pointer dereference")._s = ((@:checkr _p ?? throw "null pointer dereference")._s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        return true;
    }
    @:keep
    @:tdfield
    static public function _consumeDisplayNameComment( _p:stdgo.Ref<stdgo._internal.net.mail.Mail_t_addrparser.T_addrParser>):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.mail.Mail_t_addrparser.T_addrParser> = _p;
        if (!@:check2r _p._consume((40 : stdgo.GoUInt8))) {
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("mail: comment does not start with (" : stdgo.GoString)) };
        };
        var __tmp__ = @:check2r _p._consumeComment(), _comment:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("mail: misformatted parenthetical comment" : stdgo.GoString)) };
        };
        var _words = stdgo._internal.strings.Strings_fieldsfunc.fieldsFunc(_comment?.__copy__(), function(_r:stdgo.GoInt32):Bool {
            return ((_r == (32 : stdgo.GoInt32)) || (_r == (9 : stdgo.GoInt32)) : Bool);
        });
        for (_idx => _word in _words) {
            var __tmp__ = @:check2r _p._decodeRFC2047Word(_word?.__copy__()), _decoded:stdgo.GoString = __tmp__._0, _isEncoded:Bool = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _err };
            };
            if (_isEncoded) {
                _words[(_idx : stdgo.GoInt)] = _decoded?.__copy__();
            };
        };
        return { _0 : stdgo._internal.strings.Strings_join.join(_words, (" " : stdgo.GoString))?.__copy__(), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _consumeAtom( _p:stdgo.Ref<stdgo._internal.net.mail.Mail_t_addrparser.T_addrParser>, _dot:Bool, _permissive:Bool):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.mail.Mail_t_addrparser.T_addrParser> = _p;
        var _atom = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        var _size_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_6:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var loopBreak = false;
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_5 = (0 : stdgo.GoInt);
                    _gotoNext = 4212300i32;
                } else if (__value__ == (4212300i32)) {
                    var __blank__ = 0i32;
                    loopBreak = false;
                    _gotoNext = 4212307i32;
                } else if (__value__ == (4212307i32)) {
                    if (!loopBreak) {
                        _gotoNext = 4212311i32;
                    } else {
                        _gotoNext = 4212579i32;
                    };
                } else if (__value__ == (4212311i32)) {
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(((@:checkr _p ?? throw "null pointer dereference")._s.__slice__(_i_5) : stdgo.GoString)?.__copy__());
                        _r_6 = @:tmpset0 __tmp__._0;
                        _size_7 = @:tmpset0 __tmp__._1;
                    };
                    _gotoNext = 4212361i32;
                } else if (__value__ == (4212361i32)) {
                    if (((_size_7 == (1 : stdgo.GoInt)) && (_r_6 == (65533 : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 4212372i32;
                    } else if (((_size_7 == (0 : stdgo.GoInt)) || !stdgo._internal.net.mail.Mail__isatext._isAtext(_r_6, _dot, _permissive) : Bool)) {
                        _gotoNext = 4212482i32;
                    } else {
                        _gotoNext = 4212547i32;
                    };
                } else if (__value__ == (4212372i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("mail: invalid utf-8 in address: %q" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _p ?? throw "null pointer dereference")._s)) };
                        _atom = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4212307i32;
                } else if (__value__ == (4212482i32)) {
                    loopBreak = true;
                    _gotoNext = 4212307i32;
                } else if (__value__ == (4212547i32)) {
                    _i_5 = (_i_5 + (_size_7) : stdgo.GoInt);
                    _gotoNext = 4212307i32;
                } else if (__value__ == (4212579i32)) {
                    if (_i_5 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 4212589i32;
                    } else {
                        _gotoNext = 4212643i32;
                    };
                } else if (__value__ == (4212589i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("mail: invalid string" : stdgo.GoString)) };
                        _atom = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4212643i32;
                } else if (__value__ == (4212643i32)) {
                    {
                        final __tmp__0 = ((@:checkr _p ?? throw "null pointer dereference")._s.__slice__(0, _i_5) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = ((@:checkr _p ?? throw "null pointer dereference")._s.__slice__(_i_5) : stdgo.GoString)?.__copy__();
                        _atom = __tmp__0;
                        (@:checkr _p ?? throw "null pointer dereference")._s = __tmp__1;
                    };
                    if (!_permissive) {
                        _gotoNext = 4212688i32;
                    } else {
                        _gotoNext = 4212976i32;
                    };
                } else if (__value__ == (4212688i32)) {
                    if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_atom?.__copy__(), ("." : stdgo.GoString))) {
                        _gotoNext = 4212724i32;
                    } else {
                        _gotoNext = 4212786i32;
                    };
                } else if (__value__ == (4212724i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("mail: leading dot in atom" : stdgo.GoString)) };
                        _atom = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4212786i32;
                } else if (__value__ == (4212786i32)) {
                    if (stdgo._internal.strings.Strings_contains.contains(_atom?.__copy__(), (".." : stdgo.GoString))) {
                        _gotoNext = 4212818i32;
                    } else {
                        _gotoNext = 4212879i32;
                    };
                } else if (__value__ == (4212818i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("mail: double dot in atom" : stdgo.GoString)) };
                        _atom = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4212879i32;
                } else if (__value__ == (4212879i32)) {
                    if (stdgo._internal.strings.Strings_hassuffix.hasSuffix(_atom?.__copy__(), ("." : stdgo.GoString))) {
                        _gotoNext = 4212911i32;
                    } else {
                        _gotoNext = 4212976i32;
                    };
                } else if (__value__ == (4212911i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("mail: trailing dot in atom" : stdgo.GoString)) };
                        _atom = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4212976i32;
                } else if (__value__ == (4212976i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : _atom?.__copy__(), _1 : (null : stdgo.Error) };
                        _atom = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _consumeQuotedString( _p:stdgo.Ref<stdgo._internal.net.mail.Mail_t_addrparser.T_addrParser>):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.mail.Mail_t_addrparser.T_addrParser> = _p;
        var _qs = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        var _r_3:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var loopBreak = false;
        var _escaped_2:Bool = false;
        var _qsb_1:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
        var _i_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_4:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_0 = (1 : stdgo.GoInt);
                    _qsb_1 = (new stdgo.Slice<stdgo.GoInt32>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    _escaped_2 = false;
                    _gotoNext = 4211003i32;
                } else if (__value__ == (4211003i32)) {
                    var __blank__ = 0i32;
                    loopBreak = false;
                    _gotoNext = 4211010i32;
                } else if (__value__ == (4211010i32)) {
                    if (!loopBreak) {
                        _gotoNext = 4211014i32;
                    } else {
                        _gotoNext = 4211805i32;
                    };
                } else if (__value__ == (4211014i32)) {
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(((@:checkr _p ?? throw "null pointer dereference")._s.__slice__(_i_0) : stdgo.GoString)?.__copy__());
                        _r_3 = @:tmpset0 __tmp__._0;
                        _size_4 = @:tmpset0 __tmp__._1;
                    };
                    _gotoNext = 4211065i32;
                } else if (__value__ == (4211065i32)) {
                    if (_size_4 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 4211076i32;
                    } else if (((_size_4 == (1 : stdgo.GoInt)) && (_r_3 == (65533 : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 4211152i32;
                    } else if (_escaped_2) {
                        _gotoNext = 4211268i32;
                    } else if ((stdgo._internal.net.mail.Mail__isqtext._isQtext(_r_3) || stdgo._internal.net.mail.Mail__iswsp._isWSP(_r_3) : Bool)) {
                        _gotoNext = 4211482i32;
                    } else if (_r_3 == ((34 : stdgo.GoInt32))) {
                        _gotoNext = 4211633i32;
                    } else if (_r_3 == ((92 : stdgo.GoInt32))) {
                        _gotoNext = 4211665i32;
                    } else {
                        _gotoNext = 4211702i32;
                    };
                } else if (__value__ == (4211076i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("mail: unclosed quoted-string" : stdgo.GoString)) };
                        _qs = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4211791i32;
                } else if (__value__ == (4211152i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("mail: invalid utf-8 in quoted-string: %q" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _p ?? throw "null pointer dereference")._s)) };
                        _qs = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4211791i32;
                } else if (__value__ == (4211268i32)) {
                    if ((!stdgo._internal.net.mail.Mail__isvchar._isVchar(_r_3) && !stdgo._internal.net.mail.Mail__iswsp._isWSP(_r_3) : Bool)) {
                        _gotoNext = 4211355i32;
                    } else {
                        _gotoNext = 4211439i32;
                    };
                } else if (__value__ == (4211355i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("mail: bad character in quoted-string: %q" : stdgo.GoString), stdgo.Go.toInterface(_r_3)) };
                        _qs = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4211439i32;
                } else if (__value__ == (4211439i32)) {
                    _qsb_1 = (_qsb_1.__append__(_r_3));
                    _escaped_2 = false;
                    _gotoNext = 4211791i32;
                } else if (__value__ == (4211482i32)) {
                    _qsb_1 = (_qsb_1.__append__(_r_3));
                    _gotoNext = 4211791i32;
                } else if (__value__ == (4211633i32)) {
                    loopBreak = true;
                    _gotoNext = 4211010i32;
                } else if (__value__ == (4211665i32)) {
                    _escaped_2 = true;
                    _gotoNext = 4211791i32;
                } else if (__value__ == (4211702i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("mail: bad character in quoted-string: %q" : stdgo.GoString), stdgo.Go.toInterface(_r_3)) };
                        _qs = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4211791i32;
                } else if (__value__ == (4211791i32)) {
                    _i_0 = (_i_0 + (_size_4) : stdgo.GoInt);
                    _gotoNext = 4211010i32;
                } else if (__value__ == (4211805i32)) {
                    (@:checkr _p ?? throw "null pointer dereference")._s = ((@:checkr _p ?? throw "null pointer dereference")._s.__slice__((_i_0 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    return {
                        final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (_qsb_1 : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
                        _qs = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _consumePhrase( _p:stdgo.Ref<stdgo._internal.net.mail.Mail_t_addrparser.T_addrParser>):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.mail.Mail_t_addrparser.T_addrParser> = _p;
        var _phrase = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        stdgo._internal.net.mail.Mail__debug._debug.printf(("consumePhrase: [%s]" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _p ?? throw "null pointer dereference")._s));
        var _words:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        var _isPrevEncoded:Bool = false;
        while (true) {
            var _word:stdgo.GoString = ("" : stdgo.GoString);
            @:check2r _p._skipSpace();
            if (@:check2r _p._empty()) {
                break;
            };
            var _isEncoded = (false : Bool);
            if (@:check2r _p._peek() == ((34 : stdgo.GoUInt8))) {
                {
                    var __tmp__ = @:check2r _p._consumeQuotedString();
                    _word = @:tmpset0 __tmp__._0?.__copy__();
                    _err = @:tmpset0 __tmp__._1;
                };
            } else {
                {
                    var __tmp__ = @:check2r _p._consumeAtom(true, true);
                    _word = @:tmpset0 __tmp__._0?.__copy__();
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err == null) {
                    {
                        var __tmp__ = @:check2r _p._decodeRFC2047Word(_word?.__copy__());
                        _word = @:tmpset0 __tmp__._0?.__copy__();
                        _isEncoded = @:tmpset0 __tmp__._1;
                        _err = @:tmpset0 __tmp__._2;
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
            return {
                final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("mail: missing word in phrase: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
                _phrase = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        _phrase = stdgo._internal.strings.Strings_join.join(_words, (" " : stdgo.GoString))?.__copy__();
        return {
            final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : _phrase?.__copy__(), _1 : (null : stdgo.Error) };
            _phrase = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _consumeAddrSpec( _p:stdgo.Ref<stdgo._internal.net.mail.Mail_t_addrparser.T_addrParser>):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.mail.Mail_t_addrparser.T_addrParser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _spec = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        try {
            stdgo._internal.net.mail.Mail__debug._debug.printf(("consumeAddrSpec: %q" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _p ?? throw "null pointer dereference")._s));
            var _orig = ((_p : stdgo._internal.net.mail.Mail_t_addrparser.T_addrParser)?.__copy__() : stdgo._internal.net.mail.Mail_t_addrparser.T_addrParser);
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        if (_err != null) {
                            {
                                var __tmp__ = _orig?.__copy__();
                                var x = (_p : stdgo._internal.net.mail.Mail_t_addrparser.T_addrParser);
                                x._s = __tmp__?._s;
                                x._dec = __tmp__?._dec;
                            };
                        };
                    };
                    a();
                }) });
            };
            var _localPart:stdgo.GoString = ("" : stdgo.GoString);
            @:check2r _p._skipSpace();
            if (@:check2r _p._empty()) {
                {
                    final __ret__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = {
                        final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("mail: no addr-spec" : stdgo.GoString)) };
                        _spec = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            if (@:check2r _p._peek() == ((34 : stdgo.GoUInt8))) {
                stdgo._internal.net.mail.Mail__debug._debug.printf(("consumeAddrSpec: parsing quoted-string" : stdgo.GoString));
                {
                    var __tmp__ = @:check2r _p._consumeQuotedString();
                    _localPart = @:tmpset0 __tmp__._0?.__copy__();
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_localPart == ((stdgo.Go.str() : stdgo.GoString))) {
                    _err = stdgo._internal.errors.Errors_new_.new_(("mail: empty quoted string in addr-spec" : stdgo.GoString));
                };
            } else {
                stdgo._internal.net.mail.Mail__debug._debug.printf(("consumeAddrSpec: parsing dot-atom" : stdgo.GoString));
                {
                    var __tmp__ = @:check2r _p._consumeAtom(true, false);
                    _localPart = @:tmpset0 __tmp__._0?.__copy__();
                    _err = @:tmpset0 __tmp__._1;
                };
            };
            if (_err != null) {
                stdgo._internal.net.mail.Mail__debug._debug.printf(("consumeAddrSpec: failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                {
                    final __ret__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = {
                        final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _err };
                        _spec = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            if (!@:check2r _p._consume((64 : stdgo.GoUInt8))) {
                {
                    final __ret__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = {
                        final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("mail: missing @ in addr-spec" : stdgo.GoString)) };
                        _spec = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            var _domain:stdgo.GoString = ("" : stdgo.GoString);
            @:check2r _p._skipSpace();
            if (@:check2r _p._empty()) {
                {
                    final __ret__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = {
                        final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("mail: no domain in addr-spec" : stdgo.GoString)) };
                        _spec = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            {
                var __tmp__ = @:check2r _p._consumeAtom(true, false);
                _domain = @:tmpset0 __tmp__._0?.__copy__();
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                {
                    final __ret__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = {
                        final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _err };
                        _spec = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            {
                final __ret__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = {
                    final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : ((_localPart + ("@" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _domain?.__copy__() : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
                    _spec = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
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
                return { _0 : _spec, _1 : _err };
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
                return { _0 : _spec, _1 : _err };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _consumeGroupList( _p:stdgo.Ref<stdgo._internal.net.mail.Mail_t_addrparser.T_addrParser>):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_address.Address>>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.mail.Mail_t_addrparser.T_addrParser> = _p;
        var _group:stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_address.Address>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_address.Address>>);
        @:check2r _p._skipSpace();
        if (@:check2r _p._consume((59 : stdgo.GoUInt8))) {
            @:check2r _p._skipCFWS();
            return { _0 : _group, _1 : (null : stdgo.Error) };
        };
        while (true) {
            @:check2r _p._skipSpace();
            var __tmp__ = @:check2r _p._parseAddress(false), _addrs:stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_address.Address>> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_address.Address>>), _1 : _err };
            };
            _group = (_group.__append__(...(_addrs : Array<stdgo.Ref<stdgo._internal.net.mail.Mail_address.Address>>)));
            if (!@:check2r _p._skipCFWS()) {
                return { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_address.Address>>), _1 : stdgo._internal.errors.Errors_new_.new_(("mail: misformatted parenthetical comment" : stdgo.GoString)) };
            };
            if (@:check2r _p._consume((59 : stdgo.GoUInt8))) {
                @:check2r _p._skipCFWS();
                break;
            };
            if (!@:check2r _p._consume((44 : stdgo.GoUInt8))) {
                return { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_address.Address>>), _1 : stdgo._internal.errors.Errors_new_.new_(("mail: expected comma" : stdgo.GoString)) };
            };
        };
        return { _0 : _group, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _parseAddress( _p:stdgo.Ref<stdgo._internal.net.mail.Mail_t_addrparser.T_addrParser>, _handleGroup:Bool):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_address.Address>>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.mail.Mail_t_addrparser.T_addrParser> = _p;
        stdgo._internal.net.mail.Mail__debug._debug.printf(("parseAddress: %q" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _p ?? throw "null pointer dereference")._s));
        @:check2r _p._skipSpace();
        if (@:check2r _p._empty()) {
            return { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_address.Address>>), _1 : stdgo._internal.errors.Errors_new_.new_(("mail: no address" : stdgo.GoString)) };
        };
        var __tmp__ = @:check2r _p._consumeAddrSpec(), _spec:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            var _displayName:stdgo.GoString = ("" : stdgo.GoString);
            @:check2r _p._skipSpace();
            if ((!@:check2r _p._empty() && (@:check2r _p._peek() == (40 : stdgo.GoUInt8)) : Bool)) {
                {
                    var __tmp__ = @:check2r _p._consumeDisplayNameComment();
                    _displayName = @:tmpset0 __tmp__._0?.__copy__();
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_address.Address>>), _1 : _err };
                };
            };
            return { _0 : (new stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_address.Address>>(1, 1, ...[({ name : _displayName?.__copy__(), address : _spec?.__copy__() } : stdgo._internal.net.mail.Mail_address.Address)]) : stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_address.Address>>), _1 : _err };
        };
        stdgo._internal.net.mail.Mail__debug._debug.printf(("parseAddress: not an addr-spec: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        stdgo._internal.net.mail.Mail__debug._debug.printf(("parseAddress: state is now %q" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _p ?? throw "null pointer dereference")._s));
        var _displayName:stdgo.GoString = ("" : stdgo.GoString);
        if (@:check2r _p._peek() != ((60 : stdgo.GoUInt8))) {
            {
                var __tmp__ = @:check2r _p._consumePhrase();
                _displayName = @:tmpset0 __tmp__._0?.__copy__();
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_address.Address>>), _1 : _err };
            };
        };
        stdgo._internal.net.mail.Mail__debug._debug.printf(("parseAddress: displayName=%q" : stdgo.GoString), stdgo.Go.toInterface(_displayName));
        @:check2r _p._skipSpace();
        if (_handleGroup) {
            if (@:check2r _p._consume((58 : stdgo.GoUInt8))) {
                return @:check2r _p._consumeGroupList();
            };
        };
        if (!@:check2r _p._consume((60 : stdgo.GoUInt8))) {
            var _atext = (true : Bool);
            for (__0 => _r in _displayName) {
                if (!stdgo._internal.net.mail.Mail__isatext._isAtext(_r, true, false)) {
                    _atext = false;
                    break;
                };
            };
            if (_atext) {
                return { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_address.Address>>), _1 : stdgo._internal.errors.Errors_new_.new_(("mail: missing \'@\' or angle-addr" : stdgo.GoString)) };
            };
            return { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_address.Address>>), _1 : stdgo._internal.errors.Errors_new_.new_(("mail: no angle-addr" : stdgo.GoString)) };
        };
        {
            var __tmp__ = @:check2r _p._consumeAddrSpec();
            _spec = @:tmpset0 __tmp__._0?.__copy__();
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_address.Address>>), _1 : _err };
        };
        if (!@:check2r _p._consume((62 : stdgo.GoUInt8))) {
            return { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_address.Address>>), _1 : stdgo._internal.errors.Errors_new_.new_(("mail: unclosed angle-addr" : stdgo.GoString)) };
        };
        stdgo._internal.net.mail.Mail__debug._debug.printf(("parseAddress: spec=%q" : stdgo.GoString), stdgo.Go.toInterface(_spec));
        return { _0 : (new stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_address.Address>>(1, 1, ...[({ name : _displayName?.__copy__(), address : _spec?.__copy__() } : stdgo._internal.net.mail.Mail_address.Address)]) : stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_address.Address>>), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _parseSingleAddress( _p:stdgo.Ref<stdgo._internal.net.mail.Mail_t_addrparser.T_addrParser>):{ var _0 : stdgo.Ref<stdgo._internal.net.mail.Mail_address.Address>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.mail.Mail_t_addrparser.T_addrParser> = _p;
        var __tmp__ = @:check2r _p._parseAddress(true), _addrs:stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_address.Address>> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        if (!@:check2r _p._skipCFWS()) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("mail: misformatted parenthetical comment" : stdgo.GoString)) };
        };
        if (!@:check2r _p._empty()) {
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("mail: expected single address, got %q" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _p ?? throw "null pointer dereference")._s)) };
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
    @:tdfield
    static public function _parseAddressList( _p:stdgo.Ref<stdgo._internal.net.mail.Mail_t_addrparser.T_addrParser>):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_address.Address>>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.mail.Mail_t_addrparser.T_addrParser> = _p;
        var _list:stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_address.Address>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_address.Address>>);
        while (true) {
            @:check2r _p._skipSpace();
            if (@:check2r _p._consume((44 : stdgo.GoUInt8))) {
                continue;
            };
            var __tmp__ = @:check2r _p._parseAddress(true), _addrs:stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_address.Address>> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_address.Address>>), _1 : _err };
            };
            _list = (_list.__append__(...(_addrs : Array<stdgo.Ref<stdgo._internal.net.mail.Mail_address.Address>>)));
            if (!@:check2r _p._skipCFWS()) {
                return { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_address.Address>>), _1 : stdgo._internal.errors.Errors_new_.new_(("mail: misformatted parenthetical comment" : stdgo.GoString)) };
            };
            if (@:check2r _p._empty()) {
                break;
            };
            if (@:check2r _p._peek() != ((44 : stdgo.GoUInt8))) {
                return { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_address.Address>>), _1 : stdgo._internal.errors.Errors_new_.new_(("mail: expected comma" : stdgo.GoString)) };
            };
            while (@:check2r _p._consume((44 : stdgo.GoUInt8))) {
                @:check2r _p._skipSpace();
            };
            if (@:check2r _p._empty()) {
                break;
            };
        };
        return { _0 : _list, _1 : (null : stdgo.Error) };
    }
}
