package stdgo._internal.encoding.xml;
function escapeText(_w:stdgo._internal.io.Io_writer.Writer, _s:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        return stdgo._internal.encoding.xml.Xml__escapetext._escapeText(_w, _s, true);
    }
