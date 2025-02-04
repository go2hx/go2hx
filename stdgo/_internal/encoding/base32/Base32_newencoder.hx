package stdgo._internal.encoding.base32;
function newEncoder(_enc:stdgo.Ref<stdgo._internal.encoding.base32.Base32_encoding.Encoding>, _w:stdgo._internal.io.Io_writer.Writer):stdgo._internal.io.Io_writecloser.WriteCloser {
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _enc : _enc, _w : _w } : stdgo._internal.encoding.base32.Base32_t_encoder.T_encoder)) : stdgo.Ref<stdgo._internal.encoding.base32.Base32_t_encoder.T_encoder>));
    }
