package stdgo._internal.encoding.json;
function hTMLEscape(_dst:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _src:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:check2r _dst.grow((_src.length));
        @:check2r _dst.write(stdgo._internal.encoding.json.Json__appendhtmlescape._appendHTMLEscape(@:check2r _dst.availableBuffer(), _src));
    }
