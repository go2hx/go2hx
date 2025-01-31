package stdgo._internal.net.textproto;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
function dial(_network:stdgo.GoString, _addr:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.textproto.Textproto_Conn.Conn>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.net.Net_dial.dial(_network?.__copy__(), _addr?.__copy__()), _c:stdgo._internal.net.Net_Conn.Conn = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        return { _0 : stdgo._internal.net.textproto.Textproto_newConn.newConn(_c), _1 : (null : stdgo.Error) };
    }
