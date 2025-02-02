package stdgo._internal.net.rpc;
function newClient(_conn:stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser):stdgo.Ref<stdgo._internal.net.rpc.Rpc_Client.Client> {
        var _encBuf = stdgo._internal.bufio.Bufio_newWriter.newWriter(_conn);
        var _client = (stdgo.Go.setRef((new stdgo._internal.net.rpc.Rpc_T_gobClientCodec.T_gobClientCodec(_conn, stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(_conn), stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_encBuf)), _encBuf) : stdgo._internal.net.rpc.Rpc_T_gobClientCodec.T_gobClientCodec)) : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_gobClientCodec.T_gobClientCodec>);
        return stdgo._internal.net.rpc.Rpc_newClientWithCodec.newClientWithCodec(stdgo.Go.asInterface(_client));
    }
