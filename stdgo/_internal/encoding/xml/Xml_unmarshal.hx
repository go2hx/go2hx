package stdgo._internal.encoding.xml;
function unmarshal(_data:stdgo.Slice<stdgo.GoUInt8>, _v:stdgo.AnyInterface):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L134"
        return stdgo._internal.encoding.xml.Xml_newdecoder.newDecoder(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newreader.newReader(_data))).decode(_v);
    }
