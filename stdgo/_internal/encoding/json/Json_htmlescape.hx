package stdgo._internal.encoding.json;
function hTMLEscape(_dst:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _src:stdgo.Slice<stdgo.GoUInt8>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/indent.go#L15"
        _dst.grow((_src.length));
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/indent.go#L16"
        _dst.write(stdgo._internal.encoding.json.Json__appendhtmlescape._appendHTMLEscape(_dst.availableBuffer(), _src));
    }
