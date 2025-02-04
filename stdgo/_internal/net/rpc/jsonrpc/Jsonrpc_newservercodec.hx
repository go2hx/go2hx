package stdgo._internal.net.rpc.jsonrpc;
function newServerCodec(_conn:stdgo._internal.io.Io_readwritecloser.ReadWriteCloser):stdgo._internal.net.rpc.Rpc_servercodec.ServerCodec {
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _dec : stdgo._internal.encoding.json.Json_newdecoder.newDecoder(_conn), _enc : stdgo._internal.encoding.json.Json_newencoder.newEncoder(_conn), _c : _conn, _pending : (({
            final x = new stdgo.GoMap.GoUInt64Map<stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>>) : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>>) } : stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_servercodec.T_serverCodec)) : stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_servercodec.T_serverCodec>));
    }
