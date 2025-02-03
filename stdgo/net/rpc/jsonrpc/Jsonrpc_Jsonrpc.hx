package stdgo.net.rpc.jsonrpc;
/**
    Package jsonrpc implements a JSON-RPC 1.0 ClientCodec and ServerCodec
    for the rpc package.
    For JSON-RPC 2.0 support, see https://godoc.org/?q=json-rpc+2.0
**/
class Jsonrpc {
    /**
        NewClientCodec returns a new rpc.ClientCodec using JSON-RPC on conn.
    **/
    static public inline function newClientCodec(_conn:stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser):stdgo._internal.net.rpc.Rpc_ClientCodec.ClientCodec {
        return stdgo._internal.net.rpc.jsonrpc.Jsonrpc_newClientCodec.newClientCodec(_conn);
    }
    /**
        NewClient returns a new rpc.Client to handle requests to the
        set of services at the other end of the connection.
    **/
    static public inline function newClient(_conn:stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser):stdgo._internal.net.rpc.Rpc_Client.Client {
        return stdgo._internal.net.rpc.jsonrpc.Jsonrpc_newClient.newClient(_conn);
    }
    /**
        Dial connects to a JSON-RPC server at the specified network address.
    **/
    static public inline function dial(_network:String, _address:String):stdgo.Tuple<stdgo._internal.net.rpc.Rpc_Client.Client, stdgo.Error> {
        final _network = (_network : stdgo.GoString);
        final _address = (_address : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.rpc.jsonrpc.Jsonrpc_dial.dial(_network, _address);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        NewServerCodec returns a new rpc.ServerCodec using JSON-RPC on conn.
    **/
    static public inline function newServerCodec(_conn:stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser):stdgo._internal.net.rpc.Rpc_ServerCodec.ServerCodec {
        return stdgo._internal.net.rpc.jsonrpc.Jsonrpc_newServerCodec.newServerCodec(_conn);
    }
    /**
        ServeConn runs the JSON-RPC server on a single connection.
        ServeConn blocks, serving the connection until the client hangs up.
        The caller typically invokes ServeConn in a go statement.
    **/
    static public inline function serveConn(_conn:stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser):Void {
        stdgo._internal.net.rpc.jsonrpc.Jsonrpc_serveConn.serveConn(_conn);
    }
}
