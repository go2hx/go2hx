package stdgo._internal.net.rpc.jsonrpc;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.json.Json;
import stdgo._internal.net.rpc.Rpc;
import stdgo._internal.net.Net;
import stdgo._internal.fmt.Fmt;
function serveConn(_conn:stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser):Void {
        stdgo._internal.net.rpc.Rpc_serveCodec.serveCodec(stdgo._internal.net.rpc.jsonrpc.Jsonrpc_newServerCodec.newServerCodec(_conn));
    }
