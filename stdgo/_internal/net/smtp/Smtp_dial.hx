package stdgo._internal.net.smtp;
function dial(_addr:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.smtp.Smtp_client.Client>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.net.Net_dial.dial(("tcp" : stdgo.GoString), _addr?.__copy__()), _conn:stdgo._internal.net.Net_conn.Conn = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        var __tmp__ = stdgo._internal.net.Net_splithostport.splitHostPort(_addr?.__copy__()), _host:stdgo.GoString = __tmp__._0, __0:stdgo.GoString = __tmp__._1, __1:stdgo.Error = __tmp__._2;
        return stdgo._internal.net.smtp.Smtp_newclient.newClient(_conn, _host?.__copy__());
    }
