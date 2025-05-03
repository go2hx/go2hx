package stdgo._internal.encoding.xml;
function marshalIndent(_v:stdgo.AnyInterface, _prefix:stdgo.GoString, _indent:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var _b:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        var _enc = stdgo._internal.encoding.xml.Xml_newencoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)));
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L133"
        _enc.indent(_prefix?.__copy__(), _indent?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L134"
        {
            var _err = (_enc.encode(_v) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L135"
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L137"
        {
            var _err = (_enc.close() : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L138"
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L140"
        return { _0 : _b.bytes(), _1 : (null : stdgo.Error) };
    }
