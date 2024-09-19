package stdgo._internal.encoding.xml;
function newEncoder(_w:stdgo._internal.io.Io_Writer.Writer):stdgo.Ref<stdgo._internal.encoding.xml.Xml_Encoder.Encoder> {
        var _e = (stdgo.Go.setRef((new stdgo._internal.encoding.xml.Xml_Encoder.Encoder(({ _w : stdgo._internal.bufio.Bufio_newWriter.newWriter(_w) } : stdgo._internal.encoding.xml.Xml_T_printer.T_printer)) : stdgo._internal.encoding.xml.Xml_Encoder.Encoder)) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_Encoder.Encoder>);
        _e._p._encoder = _e;
        return _e;
    }
