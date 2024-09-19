package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
function _unpackText(_msg:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt):{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        if ((_off >= (_msg.length) : Bool)) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : _off, _2 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__errBaseLen._errBaseLen };
        };
        var _beginOff = (_off + (1 : stdgo.GoInt) : stdgo.GoInt);
        var _endOff = (_beginOff + (_msg[(_off : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt);
        if ((_endOff > (_msg.length) : Bool)) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : _off, _2 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__errCalcLen._errCalcLen };
        };
        return { _0 : ((_msg.__slice__(_beginOff, _endOff) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__(), _1 : _endOff, _2 : (null : stdgo.Error) };
    }
