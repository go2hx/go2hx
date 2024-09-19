package stdgo._internal.encoding.json;
function htmlescape(_dst:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>, _src:stdgo.Slice<stdgo.GoUInt8>):Void {
        _dst.grow((_src.length));
        _dst.write(stdgo._internal.encoding.json.Json__appendHTMLEscape._appendHTMLEscape(_dst.availableBuffer(), _src));
    }
