package stdgo._internal.encoding.xml;
function newDecoder(_r:stdgo._internal.io.Io_reader.Reader):stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> {
        var _d = (stdgo.Go.setRef(({ _ns : (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>) : stdgo.GoMap<stdgo.GoString, stdgo.GoString>), _nextByte : (-1 : stdgo.GoInt), _line : (1 : stdgo.GoInt), strict : true } : stdgo._internal.encoding.xml.Xml_decoder.Decoder)) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L228"
        _d._switchToReader(_r);
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L229"
        return _d;
    }
