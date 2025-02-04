package stdgo._internal.net.rpc;
function serveRequest(_codec:stdgo._internal.net.rpc.Rpc_servercodec.ServerCodec):stdgo.Error {
        return @:check2r stdgo._internal.net.rpc.Rpc_defaultserver.defaultServer.serveRequest(_codec);
    }
