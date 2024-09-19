package stdgo._internal.net.http.internal;
function newChunkedWriter(_w:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_WriteCloser.WriteCloser {
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.net.http.internal.Internal_T_chunkedWriter.T_chunkedWriter(_w) : stdgo._internal.net.http.internal.Internal_T_chunkedWriter.T_chunkedWriter)) : stdgo.Ref<stdgo._internal.net.http.internal.Internal_T_chunkedWriter.T_chunkedWriter>));
    }
