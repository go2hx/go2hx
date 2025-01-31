package stdgo._internal.net.rpc.jsonrpc;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.json.Json;
import stdgo._internal.net.rpc.Rpc;
import stdgo._internal.net.Net;
import stdgo._internal.fmt.Fmt;
function newClient(_conn:stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser):stdgo.Ref<stdgo._internal.net.rpc.Rpc_Client.Client> {
        return stdgo._internal.net.rpc.Rpc_newClientWithCodec.newClientWithCodec(stdgo._internal.net.rpc.jsonrpc.Jsonrpc_newClientCodec.newClientCodec(_conn));
    }
