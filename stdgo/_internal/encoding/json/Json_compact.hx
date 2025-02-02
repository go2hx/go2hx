package stdgo._internal.encoding.json;
function compact(_dst:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>, _src:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:check2r _dst.grow((_src.length));
        var _b = @:check2r _dst.availableBuffer();
        var __tmp__ = stdgo._internal.encoding.json.Json__appendCompact._appendCompact(_b, _src, false), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        @:check2r _dst.write(_b);
        return _err;
    }
