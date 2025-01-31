package stdgo._internal.net.rpc;
import stdgo._internal.errors.Errors;
import stdgo._internal.html.template.Template;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.encoding.gob.Gob;
import stdgo._internal.net.Net;
import stdgo._internal.io.Io;
import stdgo._internal.net.http.Http;
import stdgo._internal.go.token.Token;
import stdgo._internal.log.Log;
import stdgo._internal.sort.Sort;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
function newClient(_conn:stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser):stdgo.Ref<stdgo._internal.net.rpc.Rpc_Client.Client> {
        var _encBuf = stdgo._internal.bufio.Bufio_newWriter.newWriter(_conn);
        var _client = (stdgo.Go.setRef((new stdgo._internal.net.rpc.Rpc_T_gobClientCodec.T_gobClientCodec(_conn, stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(_conn), stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_encBuf)), _encBuf) : stdgo._internal.net.rpc.Rpc_T_gobClientCodec.T_gobClientCodec)) : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_gobClientCodec.T_gobClientCodec>);
        return stdgo._internal.net.rpc.Rpc_newClientWithCodec.newClientWithCodec(stdgo.Go.asInterface(_client));
    }
