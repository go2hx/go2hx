package stdgo._internal.net.smtp;
@:keep @:allow(stdgo._internal.net.smtp.Smtp.Client_asInterface) class Client_static_extension {
    @:keep
    @:tdfield
    static public function quit( _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_client.Client>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_client.Client> = _c;
        //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L416"
        {
            var _err = (_c._hello() : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L417"
                return _err;
            };
        };
        var __tmp__ = _c._cmd((221 : stdgo.GoInt), ("QUIT" : stdgo.GoString)), __0:stdgo.GoInt = __tmp__._0, __1:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L420"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L421"
            return _err;
        };
        //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L423"
        return (@:checkr _c ?? throw "null pointer dereference").text.close();
    }
    @:keep
    @:tdfield
    static public function noop( _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_client.Client>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_client.Client> = _c;
        //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L407"
        {
            var _err = (_c._hello() : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L408"
                return _err;
            };
        };
        var __tmp__ = _c._cmd((250 : stdgo.GoInt), ("NOOP" : stdgo.GoString)), __0:stdgo.GoInt = __tmp__._0, __1:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L411"
        return _err;
    }
    @:keep
    @:tdfield
    static public function reset( _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_client.Client>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_client.Client> = _c;
        //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L397"
        {
            var _err = (_c._hello() : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L398"
                return _err;
            };
        };
        var __tmp__ = _c._cmd((250 : stdgo.GoInt), ("RSET" : stdgo.GoString)), __0:stdgo.GoInt = __tmp__._0, __1:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L401"
        return _err;
    }
    @:keep
    @:tdfield
    static public function extension( _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_client.Client>, _ext:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_client.Client> = _c;
        //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L383"
        {
            var _err = (_c._hello() : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L384"
                return { _0 : false, _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__() };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L386"
        if ((@:checkr _c ?? throw "null pointer dereference")._ext == null) {
            //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L387"
            return { _0 : false, _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__() };
        };
        _ext = stdgo._internal.strings.Strings_toupper.toUpper(_ext?.__copy__())?.__copy__();
        var __tmp__ = ((@:checkr _c ?? throw "null pointer dereference")._ext != null && (@:checkr _c ?? throw "null pointer dereference")._ext.__exists__(_ext?.__copy__()) ? { _0 : (@:checkr _c ?? throw "null pointer dereference")._ext[_ext?.__copy__()], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _param:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L391"
        return { _0 : _ok, _1 : _param?.__copy__() };
    }
    @:keep
    @:tdfield
    static public function data( _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_client.Client>):{ var _0 : stdgo._internal.io.Io_writecloser.WriteCloser; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_client.Client> = _c;
        var __tmp__ = _c._cmd((354 : stdgo.GoInt), ("DATA" : stdgo.GoString)), __0:stdgo.GoInt = __tmp__._0, __1:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L293"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L294"
            return { _0 : (null : stdgo._internal.io.Io_writecloser.WriteCloser), _1 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L296"
        return { _0 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.net.smtp.Smtp_t_datacloser.T_dataCloser(_c, (@:checkr _c ?? throw "null pointer dereference").text.dotWriter()) : stdgo._internal.net.smtp.Smtp_t_datacloser.T_dataCloser)) : stdgo.Ref<stdgo._internal.net.smtp.Smtp_t_datacloser.T_dataCloser>)), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function rcpt( _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_client.Client>, _to:stdgo.GoString):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_client.Client> = _c;
        //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L269"
        {
            var _err = (stdgo._internal.net.smtp.Smtp__validateline._validateLine(_to?.__copy__()) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L270"
                return _err;
            };
        };
        var __tmp__ = _c._cmd((25 : stdgo.GoInt), ("RCPT TO:<%s>" : stdgo.GoString), stdgo.Go.toInterface(_to)), __0:stdgo.GoInt = __tmp__._0, __1:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L273"
        return _err;
    }
    @:keep
    @:tdfield
    static public function mail( _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_client.Client>, _from:stdgo.GoString):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_client.Client> = _c;
        //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L246"
        {
            var _err = (stdgo._internal.net.smtp.Smtp__validateline._validateLine(_from?.__copy__()) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L247"
                return _err;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L249"
        {
            var _err = (_c._hello() : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L250"
                return _err;
            };
        };
        var _cmdStr = (("MAIL FROM:<%s>" : stdgo.GoString) : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L253"
        if ((@:checkr _c ?? throw "null pointer dereference")._ext != null) {
            //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L254"
            {
                var __tmp__ = ((@:checkr _c ?? throw "null pointer dereference")._ext != null && (@:checkr _c ?? throw "null pointer dereference")._ext.__exists__(("8BITMIME" : stdgo.GoString)) ? { _0 : (@:checkr _c ?? throw "null pointer dereference")._ext[("8BITMIME" : stdgo.GoString)], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), __0:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    _cmdStr = (_cmdStr + ((" BODY=8BITMIME" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L257"
            {
                var __tmp__ = ((@:checkr _c ?? throw "null pointer dereference")._ext != null && (@:checkr _c ?? throw "null pointer dereference")._ext.__exists__(("SMTPUTF8" : stdgo.GoString)) ? { _0 : (@:checkr _c ?? throw "null pointer dereference")._ext[("SMTPUTF8" : stdgo.GoString)], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), __1:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    _cmdStr = (_cmdStr + ((" SMTPUTF8" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                };
            };
        };
        var __tmp__ = _c._cmd((250 : stdgo.GoInt), _cmdStr?.__copy__(), stdgo.Go.toInterface(_from)), __0:stdgo.GoInt = __tmp__._0, __1:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L262"
        return _err;
    }
    @:keep
    @:tdfield
    static public function auth( _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_client.Client>, _a:stdgo._internal.net.smtp.Smtp_auth.Auth):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_client.Client> = _c;
        //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L198"
        {
            var _err = (_c._hello() : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L199"
                return _err;
            };
        };
        var _encoding = stdgo._internal.encoding.base64.Base64_stdencoding.stdEncoding;
        var __tmp__ = _a.start((stdgo.Go.setRef((new stdgo._internal.net.smtp.Smtp_serverinfo.ServerInfo((@:checkr _c ?? throw "null pointer dereference")._serverName?.__copy__(), (@:checkr _c ?? throw "null pointer dereference")._tls, (@:checkr _c ?? throw "null pointer dereference")._auth) : stdgo._internal.net.smtp.Smtp_serverinfo.ServerInfo)) : stdgo.Ref<stdgo._internal.net.smtp.Smtp_serverinfo.ServerInfo>)), _mech:stdgo.GoString = __tmp__._0, _resp:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L203"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L204"
            _c.quit();
            //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L205"
            return _err;
        };
        var _resp64 = (new stdgo.Slice<stdgo.GoUInt8>((_encoding.encodedLen((_resp.length)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L208"
        _encoding.encode(_resp64, _resp);
        var __tmp__ = _c._cmd((0 : stdgo.GoInt), stdgo._internal.strings.Strings_trimspace.trimSpace(stdgo._internal.fmt.Fmt_sprintf.sprintf(("AUTH %s %s" : stdgo.GoString), stdgo.Go.toInterface(_mech), stdgo.Go.toInterface(_resp64))?.__copy__())?.__copy__()), _code:stdgo.GoInt = __tmp__._0, _msg64:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L210"
        while (_err == null) {
            var _msg:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L212"
            {
                final __value__ = _code;
                if (__value__ == ((334 : stdgo.GoInt))) {
                    {
                        var __tmp__ = _encoding.decodeString(_msg64?.__copy__());
                        _msg = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                } else if (__value__ == ((235 : stdgo.GoInt))) {
                    _msg = (_msg64 : stdgo.Slice<stdgo.GoUInt8>);
                } else {
                    _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ code : _code, msg : _msg64?.__copy__() } : stdgo._internal.net.textproto.Textproto_error.Error)) : stdgo.Ref<stdgo._internal.net.textproto.Textproto_error.Error>));
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L221"
            if (_err == null) {
                {
                    var __tmp__ = _a.next(_msg, _code == ((334 : stdgo.GoInt)));
                    _resp = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L224"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L226"
                _c._cmd((501 : stdgo.GoInt), ("*" : stdgo.GoString));
                //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L227"
                _c.quit();
                //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L228"
                break;
            };
            //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L230"
            if (_resp == null) {
                //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L231"
                break;
            };
            _resp64 = (new stdgo.Slice<stdgo.GoUInt8>((_encoding.encodedLen((_resp.length)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L234"
            _encoding.encode(_resp64, _resp);
            {
                var __tmp__ = _c._cmd((0 : stdgo.GoInt), (_resp64 : stdgo.GoString)?.__copy__());
                _code = @:tmpset0 __tmp__._0;
                _msg64 = @:tmpset0 __tmp__._1?.__copy__();
                _err = @:tmpset0 __tmp__._2;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L237"
        return _err;
    }
    @:keep
    @:tdfield
    static public function verify( _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_client.Client>, _addr:stdgo.GoString):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_client.Client> = _c;
        //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L184"
        {
            var _err = (stdgo._internal.net.smtp.Smtp__validateline._validateLine(_addr?.__copy__()) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L185"
                return _err;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L187"
        {
            var _err = (_c._hello() : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L188"
                return _err;
            };
        };
        var __tmp__ = _c._cmd((250 : stdgo.GoInt), ("VRFY %s" : stdgo.GoString), stdgo.Go.toInterface(_addr)), __0:stdgo.GoInt = __tmp__._0, __1:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L191"
        return _err;
    }
    @:keep
    @:tdfield
    static public function tLSConnectionState( _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_client.Client>):{ var _0 : stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState; var _1 : Bool; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_client.Client> = _c;
        var _state = ({} : stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState), _ok = false;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _c ?? throw "null pointer dereference")._conn) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>), _1 : false };
        }, _tc = __tmp__._0, _ok = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L173"
        if (!_ok) {
            //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L174"
            return { _0 : _state, _1 : _ok };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L176"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState; var _1 : Bool; } = { _0 : _tc.connectionState()?.__copy__(), _1 : true };
            _state = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function startTLS( _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_client.Client>, _config:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_client.Client> = _c;
        //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L155"
        {
            var _err = (_c._hello() : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L156"
                return _err;
            };
        };
        var __tmp__ = _c._cmd((220 : stdgo.GoInt), ("STARTTLS" : stdgo.GoString)), __0:stdgo.GoInt = __tmp__._0, __1:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L159"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L160"
            return _err;
        };
        (@:checkr _c ?? throw "null pointer dereference")._conn = stdgo.Go.asInterface(stdgo._internal.crypto.tls.Tls_client.client((@:checkr _c ?? throw "null pointer dereference")._conn, _config));
        (@:checkr _c ?? throw "null pointer dereference").text = stdgo._internal.net.textproto.Textproto_newconn.newConn((@:checkr _c ?? throw "null pointer dereference")._conn);
        (@:checkr _c ?? throw "null pointer dereference")._tls = true;
        //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L165"
        return _c._ehlo();
    }
    @:keep
    @:tdfield
    static public function _ehlo( _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_client.Client>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_client.Client> = _c;
        var __tmp__ = _c._cmd((250 : stdgo.GoInt), ("EHLO %s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _c ?? throw "null pointer dereference")._localName)), __0:stdgo.GoInt = __tmp__._0, _msg:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L133"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L134"
            return _err;
        };
        var _ext = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>) : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
        var _extList = stdgo._internal.strings.Strings_split.split(_msg?.__copy__(), ("\n" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L138"
        if (((_extList.length) > (1 : stdgo.GoInt) : Bool)) {
            _extList = (_extList.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
            //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L140"
            for (__1 => _line in _extList) {
                var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_line?.__copy__(), (" " : stdgo.GoString)), _k:stdgo.GoString = __tmp__._0, _v:stdgo.GoString = __tmp__._1, __2:Bool = __tmp__._2;
                _ext[_k] = _v?.__copy__();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L145"
        {
            var __tmp__ = (_ext != null && _ext.__exists__(("AUTH" : stdgo.GoString)) ? { _0 : _ext[("AUTH" : stdgo.GoString)], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _mechs:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                (@:checkr _c ?? throw "null pointer dereference")._auth = stdgo._internal.strings.Strings_split.split(_mechs?.__copy__(), (" " : stdgo.GoString));
            };
        };
        (@:checkr _c ?? throw "null pointer dereference")._ext = _ext;
        //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L149"
        return _err;
    }
    @:keep
    @:tdfield
    static public function _helo( _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_client.Client>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_client.Client> = _c;
        (@:checkr _c ?? throw "null pointer dereference")._ext = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
        var __tmp__ = _c._cmd((250 : stdgo.GoInt), ("HELO %s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _c ?? throw "null pointer dereference")._localName)), __0:stdgo.GoInt = __tmp__._0, __1:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L126"
        return _err;
    }
    @:keep
    @:tdfield
    static public function _cmd( _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_client.Client>, _expectCode:stdgo.GoInt, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_client.Client> = _c;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var __tmp__ = (@:checkr _c ?? throw "null pointer dereference").text.cmd(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>)), _id:stdgo.GoUInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L112"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L113"
                return { _0 : (0 : stdgo.GoInt), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : _err };
            };
            //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L115"
            (@:checkr _c ?? throw "null pointer dereference").text.startResponse(_id);
            {
                var _a0 = _id;
                final __f__ = (@:checkr _c ?? throw "null pointer dereference").text.endResponse;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
            };
            var __tmp__ = (@:checkr _c ?? throw "null pointer dereference").text.readResponse(_expectCode), _code:stdgo.GoInt = __tmp__._0, _msg:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L118"
            {
                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : _code, _1 : _msg?.__copy__(), _2 : _err };
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
                return { _0 : (0 : stdgo.GoInt), _1 : ("" : stdgo.GoString), _2 : (null : stdgo.Error) };
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
                return { _0 : (0 : stdgo.GoInt), _1 : ("" : stdgo.GoString), _2 : (null : stdgo.Error) };
            };
        };
    }
    @:keep
    @:tdfield
    static public function hello( _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_client.Client>, _localName:stdgo.GoString):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_client.Client> = _c;
        //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L99"
        {
            var _err = (stdgo._internal.net.smtp.Smtp__validateline._validateLine(_localName?.__copy__()) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L100"
                return _err;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L102"
        if ((@:checkr _c ?? throw "null pointer dereference")._didHello) {
            //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L103"
            return stdgo._internal.errors.Errors_new_.new_(("smtp: Hello called after other methods" : stdgo.GoString));
        };
        (@:checkr _c ?? throw "null pointer dereference")._localName = _localName?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L106"
        return _c._hello();
    }
    @:keep
    @:tdfield
    static public function _hello( _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_client.Client>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_client.Client> = _c;
        //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L83"
        if (!(@:checkr _c ?? throw "null pointer dereference")._didHello) {
            (@:checkr _c ?? throw "null pointer dereference")._didHello = true;
            var _err = (_c._ehlo() : stdgo.Error);
            //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L86"
            if (_err != null) {
                (@:checkr _c ?? throw "null pointer dereference")._helloError = _c._helo();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L90"
        return (@:checkr _c ?? throw "null pointer dereference")._helloError;
    }
    @:keep
    @:tdfield
    static public function close( _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_client.Client>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.smtp.Smtp_client.Client> = _c;
        //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L78"
        return (@:checkr _c ?? throw "null pointer dereference").text.close();
    }
}
