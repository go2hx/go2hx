package _internal.vendor.golang_dot_org.x.net.http2.hpack;
function _appendTableSize(_dst:stdgo.Slice<stdgo.GoUInt8>, _v:stdgo.GoUInt32):stdgo.Slice<stdgo.GoUInt8> {
        var _first = (_dst.length : stdgo.GoInt);
        _dst = _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack__appendVarInt._appendVarInt(_dst, (5 : stdgo.GoUInt8), (_v : stdgo.GoUInt64));
        _dst[(_first : stdgo.GoInt)] = (_dst[(_first : stdgo.GoInt)] | ((32 : stdgo.GoUInt8)) : stdgo.GoUInt8);
        return _dst;
    }
