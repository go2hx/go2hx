package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
function _packType(_msg:stdgo.Slice<stdgo.GoUInt8>, _field:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Type_.Type_):stdgo.Slice<stdgo.GoUInt8> {
        return _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__packUint16._packUint16(_msg, (_field : stdgo.GoUInt16));
    }
