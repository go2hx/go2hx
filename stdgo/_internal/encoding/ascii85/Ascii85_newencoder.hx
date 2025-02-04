package stdgo._internal.encoding.ascii85;
function newEncoder(_w:stdgo._internal.io.Io_writer.Writer):stdgo._internal.io.Io_writecloser.WriteCloser {
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _w : _w } : stdgo._internal.encoding.ascii85.Ascii85_t_encoder.T_encoder)) : stdgo.Ref<stdgo._internal.encoding.ascii85.Ascii85_t_encoder.T_encoder>));
    }
