package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
function _packBytes(_msg:stdgo.Slice<stdgo.GoUInt8>, _field:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        return (_msg.__append__(...(_field : Array<stdgo.GoUInt8>)));
    }
