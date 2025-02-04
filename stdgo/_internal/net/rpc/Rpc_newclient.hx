package stdgo._internal.net.rpc;
function newClient(_conn:stdgo._internal.io.Io_readwritecloser.ReadWriteCloser):stdgo.Ref<stdgo._internal.net.rpc.Rpc_client.Client> {
        var _encBuf = stdgo._internal.bufio.Bufio_newwriter.newWriter(_conn);
        var _client = (stdgo.Go.setRef((new stdgo._internal.net.rpc.Rpc_t_gobclientcodec.T_gobClientCodec(_conn, stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(_conn), stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_encBuf)), _encBuf) : stdgo._internal.net.rpc.Rpc_t_gobclientcodec.T_gobClientCodec)) : stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_gobclientcodec.T_gobClientCodec>);
        return stdgo._internal.net.rpc.Rpc_newclientwithcodec.newClientWithCodec(stdgo.Go.asInterface(_client));
    }
