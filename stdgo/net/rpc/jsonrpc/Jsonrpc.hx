package stdgo.net.rpc.jsonrpc;
var nil(get, set) : stdgo._internal.encoding.json.Json_rawmessage.RawMessage;
private function get_nil():stdgo._internal.encoding.json.Json_rawmessage.RawMessage return stdgo._internal.net.rpc.jsonrpc.Jsonrpc_nil.nil;
private function set_nil(v:stdgo._internal.encoding.json.Json_rawmessage.RawMessage):stdgo._internal.encoding.json.Json_rawmessage.RawMessage {
        stdgo._internal.net.rpc.jsonrpc.Jsonrpc_nil.nil = v;
        return v;
    }
/**
    * Package jsonrpc implements a JSON-RPC 1.0 ClientCodec and ServerCodec
    * for the rpc package.
    * For JSON-RPC 2.0 support, see https://godoc.org/?q=json-rpc+2.0
**/
class Jsonrpc {
    /**
        * NewClientCodec returns a new rpc.ClientCodec using JSON-RPC on conn.
    **/
    static public inline function newClientCodec(_conn:stdgo._internal.io.Io_readwritecloser.ReadWriteCloser):stdgo._internal.net.rpc.Rpc_clientcodec.ClientCodec return stdgo._internal.net.rpc.jsonrpc.Jsonrpc_newclientcodec.newClientCodec(_conn);
    /**
        * NewClient returns a new rpc.Client to handle requests to the
        * set of services at the other end of the connection.
    **/
    static public inline function newClient(_conn:stdgo._internal.io.Io_readwritecloser.ReadWriteCloser):stdgo.Ref<stdgo._internal.net.rpc.Rpc_client.Client> return stdgo._internal.net.rpc.jsonrpc.Jsonrpc_newclient.newClient(_conn);
    /**
        * Dial connects to a JSON-RPC server at the specified network address.
    **/
    static public inline function dial(_network:stdgo.GoString, _address:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_client.Client>; var _1 : stdgo.Error; } return stdgo._internal.net.rpc.jsonrpc.Jsonrpc_dial.dial(_network, _address);
    /**
        * NewServerCodec returns a new rpc.ServerCodec using JSON-RPC on conn.
    **/
    static public inline function newServerCodec(_conn:stdgo._internal.io.Io_readwritecloser.ReadWriteCloser):stdgo._internal.net.rpc.Rpc_servercodec.ServerCodec return stdgo._internal.net.rpc.jsonrpc.Jsonrpc_newservercodec.newServerCodec(_conn);
    /**
        * ServeConn runs the JSON-RPC server on a single connection.
        * ServeConn blocks, serving the connection until the client hangs up.
        * The caller typically invokes ServeConn in a go statement.
    **/
    static public inline function serveConn(_conn:stdgo._internal.io.Io_readwritecloser.ReadWriteCloser):Void stdgo._internal.net.rpc.jsonrpc.Jsonrpc_serveconn.serveConn(_conn);
}
