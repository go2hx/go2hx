package stdgo._internal.net.rpc;
import stdgo._internal.errors.Errors;
import stdgo._internal.html.template.Template;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.encoding.gob.Gob;
import stdgo._internal.net.Net;
import stdgo._internal.io.Io;
import stdgo._internal.net.http.Http;
import stdgo._internal.go.token.Token;
import stdgo._internal.log.Log;
import stdgo._internal.sort.Sort;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
function dial(_network:stdgo.GoString, _address:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Client.Client>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.net.Net_dial.dial(_network?.__copy__(), _address?.__copy__()), _conn:stdgo._internal.net.Net_Conn.Conn = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        return { _0 : stdgo._internal.net.rpc.Rpc_newClient.newClient(_conn), _1 : (null : stdgo.Error) };
    }
