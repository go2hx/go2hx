package stdgo._internal.compress.bzip2;
function _mustDecodeHex(_s:stdgo.GoString):stdgo.Slice<stdgo.GoUInt8> {
        var __tmp__ = stdgo._internal.encoding.hex.Hex_decodestring.decodeString(_s?.__copy__()), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        return _b;
    }
