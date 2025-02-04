package stdgo._internal.encoding.xml;
function newEncoder(_w:stdgo._internal.io.Io_writer.Writer):stdgo.Ref<stdgo._internal.encoding.xml.Xml_encoder.Encoder> {
        var _e = (stdgo.Go.setRef((new stdgo._internal.encoding.xml.Xml_encoder.Encoder(({ _w : stdgo._internal.bufio.Bufio_newwriter.newWriter(_w) } : stdgo._internal.encoding.xml.Xml_t_printer.T_printer)) : stdgo._internal.encoding.xml.Xml_encoder.Encoder)) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_encoder.Encoder>);
        (@:checkr _e ?? throw "null pointer dereference")._p._encoder = _e;
        return _e;
    }
