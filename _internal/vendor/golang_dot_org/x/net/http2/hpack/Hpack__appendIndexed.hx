package _internal.vendor.golang_dot_org.x.net.http2.hpack;
function _appendIndexed(_dst:stdgo.Slice<stdgo.GoUInt8>, _i:stdgo.GoUInt64):stdgo.Slice<stdgo.GoUInt8> {
        var _first = (_dst.length : stdgo.GoInt);
        _dst = _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack__appendVarInt._appendVarInt(_dst, (7 : stdgo.GoUInt8), _i);
        _dst[(_first : stdgo.GoInt)] = (_dst[(_first : stdgo.GoInt)] | ((128 : stdgo.GoUInt8)) : stdgo.GoUInt8);
        return _dst;
    }
