package stdgo._internal.net.rpc.jsonrpc;
function newClientCodec(_conn:stdgo._internal.io.Io_readwritecloser.ReadWriteCloser):stdgo._internal.net.rpc.Rpc_clientcodec.ClientCodec {
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _dec : stdgo._internal.encoding.json.Json_newdecoder.newDecoder(_conn), _enc : stdgo._internal.encoding.json.Json_newencoder.newEncoder(_conn), _c : _conn, _pending : (({
            final x = new stdgo.GoMap.GoUInt64Map<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt64, stdgo.GoString>) : stdgo.GoMap<stdgo.GoUInt64, stdgo.GoString>) } : stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_clientcodec.T_clientCodec)) : stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_clientcodec.T_clientCodec>));
    }
