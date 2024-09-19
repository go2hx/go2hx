package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
function _packText(_msg:stdgo.Slice<stdgo.GoUInt8>, _field:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var _l = (_field.length : stdgo.GoInt);
        if ((_l > (255 : stdgo.GoInt) : Bool)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__errStringTooLong._errStringTooLong };
        };
        _msg = (_msg.__append__((_l : stdgo.GoUInt8)));
        _msg = (_msg.__append__(...(_field : Array<stdgo.GoUInt8>)));
        return { _0 : _msg, _1 : (null : stdgo.Error) };
    }
