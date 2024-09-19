package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
function _printUint8Bytes(_buf:stdgo.Slice<stdgo.GoUInt8>, _i:stdgo.GoUInt8):stdgo.Slice<stdgo.GoUInt8> {
        var _b = (_i : stdgo.GoUInt8);
        if ((_i >= (100 : stdgo.GoUInt8) : Bool)) {
            _buf = (_buf.__append__(((_b / (100 : stdgo.GoUInt8) : stdgo.GoUInt8) + (48 : stdgo.GoUInt8) : stdgo.GoUInt8)));
        };
        if ((_i >= (10 : stdgo.GoUInt8) : Bool)) {
            _buf = (_buf.__append__((((_b / (10 : stdgo.GoUInt8) : stdgo.GoUInt8) % (10 : stdgo.GoUInt8) : stdgo.GoUInt8) + (48 : stdgo.GoUInt8) : stdgo.GoUInt8)));
        };
        return (_buf.__append__(((_b % (10 : stdgo.GoUInt8) : stdgo.GoUInt8) + (48 : stdgo.GoUInt8) : stdgo.GoUInt8)));
    }
