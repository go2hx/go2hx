package _internal.vendor.golang_dot_org.x.net.http2.hpack;
function _encodeTypeByte(_indexing:Bool, _sensitive:Bool):stdgo.GoUInt8 {
        if (_sensitive) {
            return (16 : stdgo.GoUInt8);
        };
        if (_indexing) {
            return (64 : stdgo.GoUInt8);
        };
        return (0 : stdgo.GoUInt8);
    }
