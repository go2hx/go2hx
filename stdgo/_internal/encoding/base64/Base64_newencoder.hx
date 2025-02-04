package stdgo._internal.encoding.base64;
function newEncoder(_enc:stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding>, _w:stdgo._internal.io.Io_writer.Writer):stdgo._internal.io.Io_writecloser.WriteCloser {
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _enc : _enc, _w : _w } : stdgo._internal.encoding.base64.Base64_t_encoder.T_encoder)) : stdgo.Ref<stdgo._internal.encoding.base64.Base64_t_encoder.T_encoder>));
    }
