package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
function _printPaddedUint8(_i:stdgo.GoUInt8):stdgo.GoString {
        var _b = (_i : stdgo.GoUInt8);
        return ((new stdgo.Slice<stdgo.GoUInt8>(3, 3, ...[((_b / (100 : stdgo.GoUInt8) : stdgo.GoUInt8) + (48 : stdgo.GoUInt8) : stdgo.GoUInt8), (((_b / (10 : stdgo.GoUInt8) : stdgo.GoUInt8) % (10 : stdgo.GoUInt8) : stdgo.GoUInt8) + (48 : stdgo.GoUInt8) : stdgo.GoUInt8), ((_b % (10 : stdgo.GoUInt8) : stdgo.GoUInt8) + (48 : stdgo.GoUInt8) : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
    }
