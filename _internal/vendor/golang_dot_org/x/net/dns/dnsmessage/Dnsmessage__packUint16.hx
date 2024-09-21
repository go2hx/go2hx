package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
function _packUint16(_msg:stdgo.Slice<stdgo.GoUInt8>, _field:stdgo.GoUInt16):stdgo.Slice<stdgo.GoUInt8> {
        return (_msg.__append__(((_field >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8), (_field : stdgo.GoUInt8)));
    }
