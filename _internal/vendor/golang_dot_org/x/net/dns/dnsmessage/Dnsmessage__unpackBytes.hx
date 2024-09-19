package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
function _unpackBytes(_msg:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt, _field:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _newOff = (_off + (_field.length) : stdgo.GoInt);
        if ((_newOff > (_msg.length) : Bool)) {
            return { _0 : _off, _1 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__errBaseLen._errBaseLen };
        };
        stdgo.Go.copySlice(_field, (_msg.__slice__(_off, _newOff) : stdgo.Slice<stdgo.GoUInt8>));
        return { _0 : _newOff, _1 : (null : stdgo.Error) };
    }
