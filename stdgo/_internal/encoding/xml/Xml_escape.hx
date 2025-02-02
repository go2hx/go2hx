package stdgo._internal.encoding.xml;
function escape(_w:stdgo._internal.io.Io_Writer.Writer, _s:stdgo.Slice<stdgo.GoUInt8>):Void {
        stdgo._internal.encoding.xml.Xml_escapeText.escapeText(_w, _s);
    }
