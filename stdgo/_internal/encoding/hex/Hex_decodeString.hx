package stdgo._internal.encoding.hex;
function decodeString(_s:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var _src = (_s : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = stdgo._internal.encoding.hex.Hex_decode.decode(_src, _src), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return { _0 : (_src.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
    }
