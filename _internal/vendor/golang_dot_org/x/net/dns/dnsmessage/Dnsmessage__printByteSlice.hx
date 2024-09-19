package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
function _printByteSlice(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoString {
        if ((_b.length) == ((0 : stdgo.GoInt))) {
            return stdgo.Go.str()?.__copy__();
        };
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((5 : stdgo.GoInt) * (_b.length) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _buf = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__printUint8Bytes._printUint8Bytes(_buf, (_b[(0 : stdgo.GoInt)] : stdgo.GoUInt8));
        for (__0 => _n in (_b.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) {
            _buf = (_buf.__append__((44 : stdgo.GoUInt8), (32 : stdgo.GoUInt8)));
            _buf = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__printUint8Bytes._printUint8Bytes(_buf, (_n : stdgo.GoUInt8));
        };
        return (_buf : stdgo.GoString)?.__copy__();
    }
