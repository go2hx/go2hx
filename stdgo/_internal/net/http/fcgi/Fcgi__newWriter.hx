package stdgo._internal.net.http.fcgi;
function _newWriter(_c:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_conn.T_conn>, _recType:stdgo._internal.net.http.fcgi.Fcgi_T_recType.T_recType, _reqId:stdgo.GoUInt16):stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter.T_bufWriter> {
        var _s = (stdgo.Go.setRef(({ _c : _c, _recType : _recType, _reqId : _reqId } : stdgo._internal.net.http.fcgi.Fcgi_T_streamWriter.T_streamWriter)) : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_streamWriter.T_streamWriter>);
        var _w = stdgo._internal.bufio.Bufio_newWriterSize.newWriterSize(stdgo.Go.asInterface(_s), (65535 : stdgo.GoInt));
        return (stdgo.Go.setRef((new stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter.T_bufWriter(stdgo.Go.asInterface(_s), _w) : stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter.T_bufWriter)) : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter.T_bufWriter>);
    }