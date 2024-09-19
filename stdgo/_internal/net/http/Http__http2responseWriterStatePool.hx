package stdgo._internal.net.http;
var _http2responseWriterStatePool : stdgo._internal.sync.Sync_Pool.Pool = ({ new_ : function():stdgo.AnyInterface {
        var _rws = (stdgo.Go.setRef((new stdgo._internal.net.http.Http_T_http2responseWriterState.T_http2responseWriterState() : stdgo._internal.net.http.Http_T_http2responseWriterState.T_http2responseWriterState)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriterState.T_http2responseWriterState>);
        _rws._bw = stdgo._internal.bufio.Bufio_newWriterSize.newWriterSize(stdgo.Go.asInterface((new stdgo._internal.net.http.Http_T_http2chunkWriter.T_http2chunkWriter(_rws) : stdgo._internal.net.http.Http_T_http2chunkWriter.T_http2chunkWriter)), (4096 : stdgo.GoInt));
        return stdgo.Go.toInterface(stdgo.Go.asInterface(_rws));
    } } : stdgo._internal.sync.Sync_Pool.Pool);
