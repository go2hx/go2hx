package stdgo._internal.net.rpc.jsonrpc;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.json.Json;
import stdgo._internal.net.rpc.Rpc;
import stdgo._internal.net.Net;
import stdgo._internal.fmt.Fmt;
function dial(_network:stdgo.GoString, _address:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Client.Client>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.net.Net_dial.dial(_network?.__copy__(), _address?.__copy__()), _conn:stdgo._internal.net.Net_Conn.Conn = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        return { _0 : stdgo._internal.net.rpc.jsonrpc.Jsonrpc_newClient.newClient(_conn), _1 : _err };
    }
