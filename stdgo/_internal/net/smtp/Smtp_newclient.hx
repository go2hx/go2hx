package stdgo._internal.net.smtp;
function newClient(_conn:stdgo._internal.net.Net_conn.Conn, _host:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.smtp.Smtp_client.Client>; var _1 : stdgo.Error; } {
        var _text = stdgo._internal.net.textproto.Textproto_newconn.newConn(_conn);
        var __tmp__ = @:check2r _text.readResponse((220 : stdgo.GoInt)), __0:stdgo.GoInt = __tmp__._0, __1:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            @:check2r _text.close();
            return { _0 : null, _1 : _err };
        };
        var _c = (stdgo.Go.setRef(({ text : _text, _conn : _conn, _serverName : _host?.__copy__(), _localName : ("localhost" : stdgo.GoString) } : stdgo._internal.net.smtp.Smtp_client.Client)) : stdgo.Ref<stdgo._internal.net.smtp.Smtp_client.Client>);
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_conn) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>), _1 : false };
            };
            (@:checkr _c ?? throw "null pointer dereference")._tls = @:tmpset0 __tmp__._1;
        };
        return { _0 : _c, _1 : (null : stdgo.Error) };
    }
