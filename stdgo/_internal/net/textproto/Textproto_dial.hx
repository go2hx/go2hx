package stdgo._internal.net.textproto;
function dial(_network:stdgo.GoString, _addr:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.textproto.Textproto_conn.Conn>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.net.Net_dial.dial(_network?.__copy__(), _addr?.__copy__()), _c:stdgo._internal.net.Net_conn.Conn = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        return { _0 : stdgo._internal.net.textproto.Textproto_newconn.newConn(_c), _1 : (null : stdgo.Error) };
    }
