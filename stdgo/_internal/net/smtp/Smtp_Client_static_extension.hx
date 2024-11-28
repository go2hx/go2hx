package stdgo._internal.net.smtp;
@:keep @:allow(stdgo._internal.net.smtp.Smtp.Client_asInterface) class Client_static_extension {
    @:keep
    static public function quit( _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_Client.Client>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_Client.Client> = _c;
        {
            var _err = (_c._hello() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        var __tmp__ = _c._cmd((221 : stdgo.GoInt), ("QUIT" : stdgo.GoString)), __0:stdgo.GoInt = __tmp__._0, __1:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return _err;
        };
        return _c.text.close();
    }
    @:keep
    static public function noop( _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_Client.Client>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_Client.Client> = _c;
        {
            var _err = (_c._hello() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        var __tmp__ = _c._cmd((250 : stdgo.GoInt), ("NOOP" : stdgo.GoString)), __0:stdgo.GoInt = __tmp__._0, __1:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        return _err;
    }
    @:keep
    static public function reset( _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_Client.Client>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_Client.Client> = _c;
        {
            var _err = (_c._hello() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        var __tmp__ = _c._cmd((250 : stdgo.GoInt), ("RSET" : stdgo.GoString)), __0:stdgo.GoInt = __tmp__._0, __1:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        return _err;
    }
    @:keep
    static public function extension( _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_Client.Client>, _ext:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_Client.Client> = _c;
        {
            var _err = (_c._hello() : stdgo.Error);
            if (_err != null) {
                return { _0 : false, _1 : stdgo.Go.str()?.__copy__() };
            };
        };
        if (_c._ext == null) {
            return { _0 : false, _1 : stdgo.Go.str()?.__copy__() };
        };
        _ext = stdgo._internal.strings.Strings_toUpper.toUpper(_ext?.__copy__())?.__copy__();
        var __tmp__ = (_c._ext != null && _c._ext.exists(_ext?.__copy__()) ? { _0 : _c._ext[_ext?.__copy__()], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _param:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
        return { _0 : _ok, _1 : _param?.__copy__() };
    }
    @:keep
    static public function data( _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_Client.Client>):{ var _0 : stdgo._internal.io.Io_WriteCloser.WriteCloser; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_Client.Client> = _c;
        var __tmp__ = _c._cmd((354 : stdgo.GoInt), ("DATA" : stdgo.GoString)), __0:stdgo.GoInt = __tmp__._0, __1:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : (null : stdgo._internal.io.Io_WriteCloser.WriteCloser), _1 : _err };
        };
        return { _0 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.net.smtp.Smtp_T_dataCloser.T_dataCloser(_c, _c.text.dotWriter()) : stdgo._internal.net.smtp.Smtp_T_dataCloser.T_dataCloser)) : stdgo.Ref<stdgo._internal.net.smtp.Smtp_T_dataCloser.T_dataCloser>)), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function rcpt( _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_Client.Client>, _to:stdgo.GoString):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_Client.Client> = _c;
        {
            var _err = (stdgo._internal.net.smtp.Smtp__validateLine._validateLine(_to?.__copy__()) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        var __tmp__ = _c._cmd((25 : stdgo.GoInt), ("RCPT TO:<%s>" : stdgo.GoString), stdgo.Go.toInterface(_to)), __0:stdgo.GoInt = __tmp__._0, __1:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        return _err;
    }
    @:keep
    static public function mail( _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_Client.Client>, _from:stdgo.GoString):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_Client.Client> = _c;
        {
            var _err = (stdgo._internal.net.smtp.Smtp__validateLine._validateLine(_from?.__copy__()) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err = (_c._hello() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        var _cmdStr = ("MAIL FROM:<%s>" : stdgo.GoString);
        if (_c._ext != null) {
            {
                var __tmp__ = (_c._ext != null && _c._ext.exists(("8BITMIME" : stdgo.GoString)) ? { _0 : _c._ext[("8BITMIME" : stdgo.GoString)], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), __0:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    _cmdStr = (_cmdStr + ((" BODY=8BITMIME" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                };
            };
            {
                var __tmp__ = (_c._ext != null && _c._ext.exists(("SMTPUTF8" : stdgo.GoString)) ? { _0 : _c._ext[("SMTPUTF8" : stdgo.GoString)], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), __1:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    _cmdStr = (_cmdStr + ((" SMTPUTF8" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                };
            };
        };
        var __tmp__ = _c._cmd((250 : stdgo.GoInt), _cmdStr?.__copy__(), stdgo.Go.toInterface(_from)), __0:stdgo.GoInt = __tmp__._0, __1:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        return _err;
    }
    @:keep
    static public function auth( _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_Client.Client>, _a:stdgo._internal.net.smtp.Smtp_Auth.Auth):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_Client.Client> = _c;
        {
            var _err = (_c._hello() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        var _encoding = stdgo._internal.encoding.base64.Base64_stdEncoding.stdEncoding;
        var __tmp__ = _a.start((stdgo.Go.setRef((new stdgo._internal.net.smtp.Smtp_ServerInfo.ServerInfo(_c._serverName?.__copy__(), _c._tls, _c._auth) : stdgo._internal.net.smtp.Smtp_ServerInfo.ServerInfo)) : stdgo.Ref<stdgo._internal.net.smtp.Smtp_ServerInfo.ServerInfo>)), _mech:stdgo.GoString = __tmp__._0, _resp:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            _c.quit();
            return _err;
        };
        var _resp64 = (new stdgo.Slice<stdgo.GoUInt8>((_encoding.encodedLen((_resp.length)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _encoding.encode(_resp64, _resp);
        var __tmp__ = _c._cmd((0 : stdgo.GoInt), stdgo._internal.strings.Strings_trimSpace.trimSpace(stdgo._internal.fmt.Fmt_sprintf.sprintf(("AUTH %s %s" : stdgo.GoString), stdgo.Go.toInterface(_mech), stdgo.Go.toInterface(_resp64))?.__copy__())?.__copy__()), _code:stdgo.GoInt = __tmp__._0, _msg64:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        while (_err == null) {
            var _msg:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            {
                final __value__ = _code;
                if (__value__ == ((334 : stdgo.GoInt))) {
                    {
                        var __tmp__ = _encoding.decodeString(_msg64?.__copy__());
                        _msg = __tmp__._0;
                        _err = __tmp__._1;
                    };
                } else if (__value__ == ((235 : stdgo.GoInt))) {
                    _msg = (_msg64 : stdgo.Slice<stdgo.GoUInt8>);
                } else {
                    _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ code : _code, msg : _msg64?.__copy__() } : stdgo._internal.net.textproto.Textproto_Error.Error)) : stdgo.Ref<stdgo._internal.net.textproto.Textproto_Error.Error>));
                };
            };
            if (_err == null) {
                {
                    var __tmp__ = _a.next(_msg, _code == ((334 : stdgo.GoInt)));
                    _resp = __tmp__._0;
                    _err = __tmp__._1;
                };
            };
            if (_err != null) {
                _c._cmd((501 : stdgo.GoInt), ("*" : stdgo.GoString));
                _c.quit();
                break;
            };
            if (_resp == null) {
                break;
            };
            _resp64 = (new stdgo.Slice<stdgo.GoUInt8>((_encoding.encodedLen((_resp.length)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            _encoding.encode(_resp64, _resp);
            {
                var __tmp__ = _c._cmd((0 : stdgo.GoInt), (_resp64 : stdgo.GoString)?.__copy__());
                _code = __tmp__._0;
                _msg64 = __tmp__._1?.__copy__();
                _err = __tmp__._2;
            };
        };
        return _err;
    }
    @:keep
    static public function verify( _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_Client.Client>, _addr:stdgo.GoString):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_Client.Client> = _c;
        {
            var _err = (stdgo._internal.net.smtp.Smtp__validateLine._validateLine(_addr?.__copy__()) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err = (_c._hello() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        var __tmp__ = _c._cmd((250 : stdgo.GoInt), ("VRFY %s" : stdgo.GoString), stdgo.Go.toInterface(_addr)), __0:stdgo.GoInt = __tmp__._0, __1:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        return _err;
    }
    @:keep
    static public function tlsconnectionState( _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_Client.Client>):{ var _0 : stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState; var _1 : Bool; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_Client.Client> = _c;
        var _state = ({} : stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState), _ok = false;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_c._conn) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>), _1 : false };
        }, _tc = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            return { _0 : _state, _1 : _ok };
        };
        return { _0 : _state = _tc.connectionState()?.__copy__(), _1 : _ok = true };
    }
    @:keep
    static public function startTLS( _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_Client.Client>, _config:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_Client.Client> = _c;
        {
            var _err = (_c._hello() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        var __tmp__ = _c._cmd((220 : stdgo.GoInt), ("STARTTLS" : stdgo.GoString)), __0:stdgo.GoInt = __tmp__._0, __1:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return _err;
        };
        _c._conn = stdgo.Go.asInterface(stdgo._internal.crypto.tls.Tls_client.client(_c._conn, _config));
        _c.text = stdgo._internal.net.textproto.Textproto_newConn.newConn(_c._conn);
        _c._tls = true;
        return _c._ehlo();
    }
    @:keep
    static public function _ehlo( _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_Client.Client>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_Client.Client> = _c;
        var __tmp__ = _c._cmd((250 : stdgo.GoInt), ("EHLO %s" : stdgo.GoString), stdgo.Go.toInterface(_c._localName)), __0:stdgo.GoInt = __tmp__._0, _msg:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return _err;
        };
        var _ext = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
        var _extList = stdgo._internal.strings.Strings_split.split(_msg?.__copy__(), ("\n" : stdgo.GoString));
        if (((_extList.length) > (1 : stdgo.GoInt) : Bool)) {
            _extList = (_extList.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
            for (__1 => _line in _extList) {
                var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_line?.__copy__(), (" " : stdgo.GoString)), _k:stdgo.GoString = __tmp__._0, _v:stdgo.GoString = __tmp__._1, __2:Bool = __tmp__._2;
                _ext[_k] = _v?.__copy__();
            };
        };
        {
            var __tmp__ = (_ext != null && _ext.exists(("AUTH" : stdgo.GoString)) ? { _0 : _ext[("AUTH" : stdgo.GoString)], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _mechs:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                _c._auth = stdgo._internal.strings.Strings_split.split(_mechs?.__copy__(), (" " : stdgo.GoString));
            };
        };
        _c._ext = _ext;
        return _err;
    }
    @:keep
    static public function _helo( _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_Client.Client>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_Client.Client> = _c;
        _c._ext = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
        var __tmp__ = _c._cmd((250 : stdgo.GoInt), ("HELO %s" : stdgo.GoString), stdgo.Go.toInterface(_c._localName)), __0:stdgo.GoInt = __tmp__._0, __1:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        return _err;
    }
    @:keep
    static public function _cmd( _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_Client.Client>, _expectCode:stdgo.GoInt, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_Client.Client> = _c;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __tmp__ = _c.text.cmd(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>)), _id:stdgo.GoUInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.str()?.__copy__(), _2 : _err };
            };
            _c.text.startResponse(_id);
            {
                var _a0 = _id;
                __deferstack__.unshift(() -> _c.text.endResponse(_a0));
            };
            var __tmp__ = _c.text.readResponse(_expectCode), _code:stdgo.GoInt = __tmp__._0, _msg:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            {
                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : _code, _1 : _msg?.__copy__(), _2 : _err };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : ("" : stdgo.GoString), _2 : (null : stdgo.Error) };
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
            final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : ("" : stdgo.GoString), _2 : (null : stdgo.Error) };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function hello( _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_Client.Client>, _localName:stdgo.GoString):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_Client.Client> = _c;
        {
            var _err = (stdgo._internal.net.smtp.Smtp__validateLine._validateLine(_localName?.__copy__()) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        if (_c._didHello) {
            return stdgo._internal.errors.Errors_new_.new_(("smtp: Hello called after other methods" : stdgo.GoString));
        };
        _c._localName = _localName?.__copy__();
        return _c._hello();
    }
    @:keep
    static public function _hello( _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_Client.Client>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_Client.Client> = _c;
        if (!_c._didHello) {
            _c._didHello = true;
            var _err = (_c._ehlo() : stdgo.Error);
            if (_err != null) {
                _c._helloError = _c._helo();
            };
        };
        return _c._helloError;
    }
    @:keep
    static public function close( _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_Client.Client>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_Client.Client> = _c;
        return _c.text.close();
    }
}
