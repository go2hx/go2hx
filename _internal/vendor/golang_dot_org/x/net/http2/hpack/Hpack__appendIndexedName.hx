package _internal.vendor.golang_dot_org.x.net.http2.hpack;
function _appendIndexedName(_dst:stdgo.Slice<stdgo.GoUInt8>, _f:_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField, _i:stdgo.GoUInt64, _indexing:Bool):stdgo.Slice<stdgo.GoUInt8> {
        var _first = (_dst.length : stdgo.GoInt);
        var _n:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        if (_indexing) {
            _n = (6 : stdgo.GoUInt8);
        } else {
            _n = (4 : stdgo.GoUInt8);
        };
        _dst = _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack__appendVarInt._appendVarInt(_dst, _n, _i);
        _dst[(_first : stdgo.GoInt)] = (_dst[(_first : stdgo.GoInt)] | (_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack__encodeTypeByte._encodeTypeByte(_indexing, _f.sensitive)) : stdgo.GoUInt8);
        return _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack__appendHpackString._appendHpackString(_dst, _f.value?.__copy__());
    }
