package stdgo._internal.encoding.xml;
function newDecoder(_r:stdgo._internal.io.Io_Reader.Reader):stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> {
        var _d = (stdgo.Go.setRef(({ _ns : ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>), _nextByte : (-1 : stdgo.GoInt), _line : (1 : stdgo.GoInt), strict : true } : stdgo._internal.encoding.xml.Xml_Decoder.Decoder)) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>);
        _d._switchToReader(_r);
        return _d;
    }