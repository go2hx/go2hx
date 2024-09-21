package _internal.vendor.golang_dot_org.x.net.http2.hpack;
function _appendHpackString(_dst:stdgo.Slice<stdgo.GoUInt8>, _s:stdgo.GoString):stdgo.Slice<stdgo.GoUInt8> {
        var _huffmanLength = (_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_huffmanEncodeLength.huffmanEncodeLength(_s?.__copy__()) : stdgo.GoUInt64);
        if ((_huffmanLength < (_s.length : stdgo.GoUInt64) : Bool)) {
            var _first = (_dst.length : stdgo.GoInt);
            _dst = _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack__appendVarInt._appendVarInt(_dst, (7 : stdgo.GoUInt8), _huffmanLength);
            _dst = _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_appendHuffmanString.appendHuffmanString(_dst, _s?.__copy__());
            _dst[(_first : stdgo.GoInt)] = (_dst[(_first : stdgo.GoInt)] | ((128 : stdgo.GoUInt8)) : stdgo.GoUInt8);
        } else {
            _dst = _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack__appendVarInt._appendVarInt(_dst, (7 : stdgo.GoUInt8), (_s.length : stdgo.GoUInt64));
            _dst = (_dst.__append__(...(_s : Array<stdgo.GoUInt8>)));
        };
        return _dst;
    }
