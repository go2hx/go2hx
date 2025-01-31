package stdgo._internal.net.smtp;
import stdgo._internal.net.Net;
import stdgo._internal.net.textproto.Textproto;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.crypto.hmac.Hmac;
import stdgo._internal.crypto.md5.Md5;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.crypto.tls.Tls;
import stdgo._internal.encoding.base64.Base64;
function dial(_addr:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.smtp.Smtp_Client.Client>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.net.Net_dial.dial(("tcp" : stdgo.GoString), _addr?.__copy__()), _conn:stdgo._internal.net.Net_Conn.Conn = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        var __tmp__ = stdgo._internal.net.Net_splitHostPort.splitHostPort(_addr?.__copy__()), _host:stdgo.GoString = __tmp__._0, __0:stdgo.GoString = __tmp__._1, __1:stdgo.Error = __tmp__._2;
        return stdgo._internal.net.smtp.Smtp_newClient.newClient(_conn, _host?.__copy__());
    }
