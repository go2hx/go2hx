package stdgo._internal.encoding.json;
function indent(_dst:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _src:stdgo.Slice<stdgo.GoUInt8>, _prefix:stdgo.GoString, _indent:stdgo.GoString):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/indent.go#L111"
        _dst.grow(((2 : stdgo.GoInt) * (_src.length) : stdgo.GoInt));
        var _b = _dst.availableBuffer();
        var __tmp__ = stdgo._internal.encoding.json.Json__appendindent._appendIndent(_b, _src, _prefix?.__copy__(), _indent?.__copy__()), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/indent.go#L114"
        _dst.write(_b);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/indent.go#L115"
        return _err;
    }
