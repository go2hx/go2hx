package stdgo._internal.net.http.internal;
function newChunkedWriter(_w:stdgo._internal.io.Io_writer.Writer):stdgo._internal.io.Io_writecloser.WriteCloser {
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.net.http.internal.Internal_t_chunkedwriter.T_chunkedWriter(_w) : stdgo._internal.net.http.internal.Internal_t_chunkedwriter.T_chunkedWriter)) : stdgo.Ref<stdgo._internal.net.http.internal.Internal_t_chunkedwriter.T_chunkedWriter>));
    }
