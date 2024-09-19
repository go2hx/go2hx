package _internal.vendor.golang_dot_org.x.net.http2.hpack;
function _appendNewName(_dst:stdgo.Slice<stdgo.GoUInt8>, _f:_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField, _indexing:Bool):stdgo.Slice<stdgo.GoUInt8> {
        _dst = (_dst.__append__(_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack__encodeTypeByte._encodeTypeByte(_indexing, _f.sensitive)));
        _dst = _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack__appendHpackString._appendHpackString(_dst, _f.name?.__copy__());
        return _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack__appendHpackString._appendHpackString(_dst, _f.value?.__copy__());
    }
