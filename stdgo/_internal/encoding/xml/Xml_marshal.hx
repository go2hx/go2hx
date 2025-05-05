package stdgo._internal.encoding.xml;
function marshal(_v:stdgo.AnyInterface):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var _b:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        var _enc = stdgo._internal.encoding.xml.Xml_newencoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)));
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L83"
        {
            var _err = (_enc.encode(_v) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L84"
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L86"
        {
            var _err = (_enc.close() : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L87"
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L89"
        return { _0 : _b.bytes(), _1 : (null : stdgo.Error) };
    }
