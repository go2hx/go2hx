package stdgo._internal.net.rpc.jsonrpc;
function newServerCodec(_conn:stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser):stdgo._internal.net.rpc.Rpc_ServerCodec.ServerCodec {
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _dec : stdgo._internal.encoding.json.Json_newDecoder.newDecoder(_conn), _enc : stdgo._internal.encoding.json.Json_newEncoder.newEncoder(_conn), _c : _conn, _pending : ({
            final x = new stdgo.GoMap.GoUInt64Map<stdgo.Ref<stdgo._internal.encoding.json.Json_RawMessage.RawMessage>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.encoding.json.Json_RawMessage.RawMessage>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.encoding.json.Json_RawMessage.RawMessage>>) } : stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_serverCodec.T_serverCodec)) : stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_serverCodec.T_serverCodec>));
    }
